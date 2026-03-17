---
title: Por favor, cale-se! Controle de verbosidade em pacotes
author:
- Mark Padgham
- Maëlle Salmon
date: '2024-02-06'
slug: verbosidade-control-pacotes
categories: []
output: hugodown::md_document
tags:
- desenvolvimento do pacote
params:
  doi: 10.59350/c0z4e-0b50
---

Recentemente, introduzimos um novo parágrafo na versão de desenvolvimento do nosso guia dev

> Forneça uma maneira de as pessoas usuárias optarem por não usar a verbosidade, preferencialmente no nível do pacote: torne a criação de mensagens dependente de uma variável ou opção de ambiente (como ["usethis.quiet"](https://usethis.r-lib.org/reference/ui.html?q=usethis.quiet#silencing-output) no pacote usethis), em vez de um parâmetro de função. O controle das mensagens pode ser feito em vários níveis ("nenhum", "informar", "depurar") em vez de ser lógico (nenhuma mensagem / todas as mensagens). O controle da verbosidade é útil para usuários(as) finais, mas também em testes. Você pode encontrar comentários mais interessantes em um artigo do [edição do guia de design do tidyverse](https://github.com/tidyverse/design/issues/42).

Isso complementa o [requisitos de revisão de software estatístico para software bayesiano](https://stats-devguide.ropensci.org/standards.html#output-verbosity).

O objetivo desta nota técnica é tornar o novo requisito mais alto, demonstrar algumas abordagens para o controle de verbosidade e obter a opinião da comunidade!

## Controle de verbosidade no nível do pacote

O controle da verbosidade no nível da função significa que para silenciar as mensagens é necessário escrever códigos como:

```r
x <- mypackage::my_function(thing = 1, verbose = FALSE)
y <- mypackage::my_function(thing = 2, verbose = FALSE)
z <- mypackage::my_function(thing = 3, verbose = FALSE)
```

Embora esse seja um padrão muito difundido e bastante claro, ele tem a desvantagem de introduzir desordem nas chamadas de função e de ser necessário em todas as chamadas de função.
Além disso, ter o controle de verbosidade no nível da função geralmente exige que outros pacotes que usam essas funções codifiquem a verbosidade (ou deixem valores padrão e imutáveis).
Isso não apenas torna o controle de verbosidade difícil ou até mesmo impossível, mas também impede a depuração eficaz.

Controlar a verbosidade no nível do pacote significa que o usuário, em vez disso, escreve:

```r
options(mypackage.quiet = TRUE) # or rlang::local_options() or withr::local_options()
x <- mypackage::my_function(thing = 1)
y <- mypackage::my_function(thing = 2)
z <- mypackage::my_function(thing = 3)
```

O controle em nível de pacote é muito mais fácil!

### Como implementar o controle de verbosidade em nível de pacote no seu pacote

Uma opção :sweat\_smile: seria escrever o seu próprio wrapper para mensagens como,

```r
pkg_message <- function(...) {
  if (getOption("mypackage.quiet", FALSE)) {
    return()
  }
  message(...)
}
```

Felizmente, há outros pacotes que cuidam disso para você, principalmente o [rlang](https://rlang.r-lib.org) e [cli](https://cli.r-lib.org), ambos incluem seus próprios equivalentes às funções do R base [`message()`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/message.html), [`warning()`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/warning.html) e [`stop()`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/stop.html).
(As funções cli acabam chamando as versões rlang, portanto, não importa qual delas você usa).
É claro que as funções básicas do R são perfeitamente adequadas e podem ser usadas.
As alternativas apenas tornam alguns aspectos mais convenientes, incluindo:

1. O [pacote cli](https://blog.r-hub.io/2023/11/30/cliff-notes-about-cli/#how-to-make-cli-quiet-or-not) baseia-se nas funções do rlang, mas com formato aprimorado na tela e amplas opções de personalização; e
2. A verbosidade pode ser controlada em qualquer pacote que use rlang ou cli por [variáveis de ambiente globais](https://rlang.r-lib.org/reference/abort.html#muffling-and-silencing-conditions).

A segunda vantagem é particularmente relevante para o tópico desta postagem.
Substituir qualquer chamada `message()` ou `warning()` pelo equivalente do rlang ou cli permite que as pessoas usuárias suprimam mensagens e avisos globalmente:

- Substituir `message()` por `rlang::inform()` ou `cli::cli_inform()`. As pessoas usuárias agora podem silenciar com `options(rlib_message_verbosity = "quiet")`.
- Substituir `warning()` por `rlang::warn()` ou `cli::cli_warn()`. As pessoas usuárias agora podem silenciar com `options(rlib_warning_verbosity = "quiet")`.
- Substituir `stop()` por `rlang::abort()` ou `cli::cli_abort()`. Abortar não tem opção de silenciamento.

Observe que também há uma maneira "rlang" de definir opções, a função [`rlang::local_options()`](https://rlang.r-lib.org/reference/local_options.html) (ou a mesma função no [pacote withr](https://withr.r-lib.org/reference/with_options.html)).
Como nas mensagens acima, a versão do R base é adequada; as versões rlang/withr simplesmente implementam alguns recursos adicionais.
Em particular, as opções do R base são sempre definidas globalmente, enquanto as opções locais do rlang são definidas dentro do arquivo [R atual](http://adv-r.had.co.nz/Environments.html#env-basics) e são desinstaladas quando o quadro é encerrado.
O código na seção final abaixo fornece um exemplo das vantagens dessa abordagem.

Por fim, o `rlang::local_options()` pode ser usado para definir `rlib_message_verbosity = "quiet"` em arquivos de teste, para suprimir a parede de texto que, geralmente, aparece ao executar testes.
Essa parede de texto pode ser um obstáculo ao tentar depurar os logs de teste; o uso de rlang ou cli para mensagens e avisos fornece uma maneira fácil de controlar ativamente os logs de teste e melhorar a depuração.

## Um passo adiante: vários níveis de verbosidade

O controle de verbosidade geralmente é implementado como uma opção binária, normalmente controlada por um parâmetro lógico, como `verbose = FALSE`, ou `quiet = TRUE`.
O `rlib_message_verbosity` descrito acima também tem apenas dois níveis primários, "quiet" e "verbose".
Observe que esses não são parâmetros lógicos, mas variáveis de caracteres.
O comportamento padrão (de "verbose") também pode ser substituído por um parâmetro adicional nas funções `rlang_inform/warn` , o `.frequency` que controla a frequência com que as mensagens são emitidas.
Isso é particularmente útil para emitir mensagens apenas uma vez por sessão do R, definindo `frequency = "once"`.
De modo mais geral, muitas vezes pode ser útil implementar diferentes níveis de verbosidade para as pessoas usuárias e desenvolvedoras, como "silencioso", "informar" e "depurar".
Essa prática corresponde à ideia de deixar um [painel de acesso](https://speakerdeck.com/jennybc/object-of-type-closure-is-not-subsettable?slide=77) para simplificar a solução de problemas no futuro.
Mesmo que apenas dois níveis sejam implementados, é fácil estender os níveis no futuro se eles já estiverem definidos como cadeias de caracteres; a alteração do controle de verbosidade de lógico (nível duplo) para multinível é mais complexa e pode ser evitada se você não usar sinalizadores lógicos em primeiro lugar.

### "verboso" ou "silencioso"?

"verboso".
Porque "silecioso" sempre significa que nada deve ser feito.
Mas como o código faz coisas, isso se traduz em ter que verificar se um parâmetro "silencioso" é de alguma forma *não* silencioso.
Essa é uma lógica negativa, que torna o código mais difícil de ler.
A lógica positiva é muito mais clara e menos propensa a erros: `if (verbose) { ... do something }` como demonstrado na seção a seguir.

## Seção de bônus: Recuperação do controle no nível do pacote a partir de opções globais

Um pacote que usa pacotes do tipo rlang/cli/withr para emitir e controlar mensagens responderá às opções locais (ou globais) da mesma forma que todos os outros pacotes que usam esse sistema.
Dessa forma, essas opções se tornam verdadeiramente globais, pois são compartilhadas e compreendidas por vários pacotes.
Um problema com isso é que as pessoas usuárias muitas vezes podem querer depurar apenas o seu próprio pacote, deixando todos os outros pacotes quietos.
Novamente, isso requer manipuladores de mensagens personalizados, como os seguintes (lembrando que o segundo parâmetro para a função `getOption()` é o padrão para os casos em que essa opção não foi definida):

```r
pkg_message <- function(...) {
  is_verbose_mode <- (getOption("mypackage.verbose", "quiet") == "verbose")
  if (is_verbose_mode) {
    # Options local to this function only; reset on exit!
    rlang::local_options(rlib_message_verbosity = "verbose")
  }
  rlang::inform(...)
}
```

Isso permite um comportamento como este:

```r
pkg_message("normal message")
rlang::local_options(rlib_message_verbosity = "quiet")
pkg_message("suppressed message")
rlang::local_options(mypackage.verbose = "verbose")
pkg_message("reawakened message")
```

```
normal message
reawakened message
```

E minhas opções locais de verbosidade no nível do pacote podem substituir os controles de verbosidade do rlang.

### Estendendo os níveis de verbosidade

Por fim, demonstraremos brevemente como o controle de verbosidade de dois níveis do rlang/cli, "silencioso"/"verboso", pode ser estendido para implementar um nível de "depuração" em seu próprio pacote.
Novamente, isso requer um manipulador de mensagens personalizado, ligeiramente modificado em relação ao anterior, para emitir apenas mensagens de depuração:

```r
debug_msg <- function(...) {
  is_debug_mode <- (getOption("mypackage.verbose", "quiet") == "debug")
  if (is_debug_mode) {
    rlang::local_options(rlib_message_verbosity = "verbose")
    rlang::inform(...) # or rlang::warn, cli::cli_alert_info, whatever
  }
}
```

Isso permite esse comportamento:

```r
my_fn <- function(x) {
    # ... do stuff
    debug_msg(paste0("'x' has wrong value: ", x))
}
my_fn(1) # no message issued
rlang::local_options(rlib_message_verbosity = "verbose")
my_fn(1) # still not issued
rlang::local_options(mypackage.verbose = "debug")
my_fn(1) # debug message is issued!
```

```
'x' has wrong value: 1
```

## Conclusão

Nesta nota técnica, explicamos nosso novo requisito de que o controle de verbosidade deve ser feito no pacote, e não no nível da função, por meio da definição de uma opção pelas pessoas usuárias.
Também apresentamos a aspiração de ter o controle de verbosidade como uma opção entre *graus* de verbosidade e mostramos como isso permite que o controle de verbosidade seja refinado no desenvolvimento futuro de pacotes.
Agora vá fazer barulho, mas certifique-se de que você possa controlá-lo!

Como o controle de verbosidade é implementado nos pacotes que você desenvolve ou gosta de usar?
Você tem algum comentário ou pergunta?
Por favor, não fique calado. :wink:


