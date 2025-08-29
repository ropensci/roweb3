---
title: Código bonito, porque valemos a pena!
author:
- Maëlle Salmon
- Yanina Bellini Saibene
editor:
- Steffi LaZerte
date: '2024-02-22'
slug: beautiful-code
output: hugodown::md_document
tags:
- champions program
- tech notes
- beginner
- package development
- clean code
params:
  doi: 10.59350/tbdps-5xc82
---

rOpenSci's [segundo grupo de campeões foi integrado](/blog/2024/02/15/champions-program-champions-2024/)!
O treinamento começou com uma sessão sobre estilo de código, que resumiremos aqui neste post.
Saber mais sobre a qualidade do código é relevante para todos os projetos da Champion, seja na criação de um novo pacote, no envio de um pacote para revisão de software ou na revisão de um pacote.
Essa sessão de treinamento consistiu em uma palestra e discussão, enquanto as próximas sessões de treinamento de desenvolvimento de pacotes serão mais práticas.

## Por que escrever um código bonito?

Embora seu código seja executado por máquinas, ele será lido por humanos.
Esses humanos, sejam eles futuros você, colaboradores que você conhece ou colaboradores que você não conhece, precisarão entender seu código para verificar se não há erros, corrigir possíveis bugs e desenvolvê-lo adicionando novos recursos.
Portanto, é fundamental facilitar a compreensão do seu código.

## Código bem proporcionado

Na primeira parte, compartilhamos dicas que tornaram o código mais "bem proporcionado".
Não se trata apenas de uma questão de estética.
Um código bem proporcionado é mais fácil de ser analisado por humanos.

### Espaçamento regular entre os elementos

Compare

```r
starwars%>%
  select(name,height, mass,homeworld) %>%
  mutate(
    mass=NULL,
    height =height *0.0328084 # convert to feet
  )
```

com

```r
starwars %>%
  select(name, height, mass, homeworld) %>%
  mutate(
    mass = NULL,
    height = height * 0.0328084 # convert to feet
  )
```

No primeiro bloco, o espaçamento entre os elementos é irregular.
Por exemplo, não há espaço antes de `height` não há espaço ao redor do sinal de igual que vem depois de `mass`.

Em vez disso, recomendamos que você siga as regras de espaçamento (e de quebra de linha!) de forma consistente.
A menos que você tenha um [opinião muito diferente](https://github.com/ropensci-review-tools/spaceout) a estratégia mais fácil é seguir o guia de estilo de seus colaboradores ou um guia de estilo popular como o [guia de estilo do tidyverse](https://style.tidyverse.org/).

Então, como você implementa essas regras na prática?
Primeiro, você precisa estar acostumado a usar um estilo específico.
Ferramentas automáticas como o [pacote styler](https://styler.r-lib.org/) ou seu IDE podem ajudar você.
Por exemplo, no IDE do RStudio, o atalho de teclado `Ctrl+I` corrige a indentação.

### Não muito largo

Uma regra tradicional é que você não deve ter mais de 80 caracteres por linha.
O número exato não é importante, o importante é evitar muita rolagem horizontal!

Os [pacote lintr](https://lintr.r-lib.org/) pode avisar você sobre linhas muito largas, entre muitas outras coisas.
Em comparação com o styler, o lintr não corrige as coisas sozinho.

Há também uma configuração no RStudio IDE para mostrar uma margem de 80 caracteres (Code > Display > Show Margin).

### Não muito longo: parágrafos, funções existentes e caseiras

O espaço vertical é limitado no código, tanto pela tela quanto pelo que o leitor pode ver de relance (sem considerar os limites de quanto ele pode armazenar em sua cabeça).

Uma maneira de tornar seu código mais curto, mas ainda assim fácil de analisar, é usar *parágrafos de código*.
As quebras de linha não são gratuitas, pois ocupam espaço vertical.
Use quebras de linha para separar blocos de código que fazem algo relacionado.
Como na prosa, um parágrafo deve corresponder aproximadamente a uma ideia.
Por exemplo, no exemplo de código abaixo, o primeiro bloco faz algo relacionado ao cabeçalho de uma página do site, enquanto o segundo bloco lida com o corpo da página do site.

```r
head <- collect_metadata(website)
head_string <- stringify(head)

body <- create_content(website)
body_string <- stringify(body)
```

Uma segunda maneira de tornar seu código menos longo é dividi-lo em funções.
Em uma função principal, você pode terceirizar tarefas para outras funções.
Dessa forma, um leitor pode ver rapidamente o que a função principal faz e, em seguida, ir para as outras funções para ler mais detalhes, como no exemplo abaixo, em que `create_content()` chama outras funções para criar um título, uma página e, em seguida, criar sua saída que combina os dois.

```r
create_content <- function(website) {
  title <- create_title(website)
  page <- create_page(website)
  combine_elements(title = title, page = page)
}
```

Em seu livro [Aprenda programação Python assistida por IA](https://www.manning.com/books/learn-ai-assisted-python-programming) Leo Porter e Daniel Zingaro compartilham os atributos de boas funções: Uma tarefa clara a ser executada, comportamento claramente definido, número reduzido de linhas de código, entrada e saída claras, valor geral sobre uso específico.

Também é útil saber como navegar rapidamente entre as funções em seu IDE!
No IDE do RStudio, você pode usar `Ctrl+click` no nome da função ou digitar seu nome na barra de pesquisa acessada com `Ctrl+.`.

Uma terceira maneira de encurtar seu código é usar funções existentes do R básico ou de pacotes complementares.
Por exemplo, para combinar uma lista de valores padrão com uma lista de valores personalizados, você pode usar a função [`modifyList()` função](https://masalmon.eu/2023/06/06/basic-patterns/#combine-a-list-of-default-values-with-a-list-of-custom-values).
Assim como nos idiomas humanos, aprendemos mais palavras R [com o tempo](https://masalmon.eu/tags/useful-functions/) Você pode aprender mais palavras em R com o tempo, lendo o código de outras pessoas e fazendo com que elas leiam o nosso código.

### Não muito prolixo: apenas a quantidade certa de comentários

Esta parte do treinamento foi uma versão mais curta da publicação no blog do R-hub [Por que comentar seu código o mínimo (e o melhor) possível](https://blog.r-hub.io/2023/01/26/code-comments-self-explaining-code/).

Os comentários de código não são uma narração do código, eles devem ser pequenos alertas.
Quanto mais comentários você tiver, maior será a probabilidade de o leitor ignorá-los.

Os comentários de código não devem ser um "band-aid" para nomes ruins ou código excessivamente complexo: em vez de adicionar um comentário, você pode renomear uma variável ou refatorar um trecho de código?

Uma ideia útil é usar [funções ou variáveis autoexplicativas](https://blog.r-hub.io/2023/01/26/code-comments-self-explaining-code/#use-helper-functions-or-explaining-variables) onde códigos como

```r
if (!is.na(x) && nzchar(x)) {
  use_string(x)
}
```

se torna

```r
x_is_not_empty_string <- (!is.na(x) && nzchar(x))
if (x_is_not_empty_string) {
  use_string(x)
}
```

É claro que os comentários de código continuam sendo importantes quando necessários!
Exemplos de bons comentários incluem:

- documentação de funções com o roxygen2,
- aspectos que você gostaria de apontar para um revisor de código, como `# This query can not be done via GraphQL, so have to use v3 REST API`,
- [comentários que fornecem uma tabela de conteúdo](https://blog.r-hub.io/2023/01/26/code-comments-self-explaining-code/#use-comments-for-the-scripts-outline).

## Limpar código

Na segunda parte do treinamento, compartilhamos dicas que melhoram a clareza do código.

### Nomes autoexplicativos

Dar nomes às coisas é notoriamente difícil.
Nós compartilhamos essas ideias:

- Siga a moda, ou seja, use as mesmas palavras que outras pessoas em sua área ou linguagem de programação.

- Felienne Hermans, em seu livro [O cérebro do programador](https://www.manning.com/books/the-programmers-brain) aconselha que você escolha os conceitos que compõem o nome, as palavras para dizê-lo e, em seguida, junte-os. Essa abordagem em três etapas é uma boa maneira de você se livrar do problema.

- Seguindo o conselho anterior, os nomes devem ser consistentes em toda a base de código e você deve escolher o que deseja dizer. *moldes de nomes* são uma ferramenta muito boa para isso. Os moldes de nomes são padrões nos quais os elementos de um nome são combinados; por exemplo, se você calcular o valor máximo do rendimento da colheita, precisará concordar se `maximum` será `max` ou `maximum` e se a palavra estiver no início ou no final do nome da variável: deve ser `maxYield` ou `yieldMax`?  Ao normalizar a forma de nomear as coisas, nosso código será mais fácil de ler.

- "Quanto maior a distância entre a declaração de um nome e seus usos, mais longo deve ser o nome" (Andrew Gerrand). Entretanto, não importa o quão perto da definição de uma variável você a use, não use uma abreviação inteligente e muito curta.

- Há várias maneiras de escrever nomes de variáveis. O estilo camelCase leva a uma maior precisão na leitura do código (Dave Binkley, 2009) e é melhor para a leitura do código com leitores de tela.  Sabemos que é difícil alterar o estilo de um projeto existente, mas se você estiver em uma situação em que possa decidir do zero, considere usar Camel Case? Se você não tiver certeza sobre os nomes dos casos, consulte o artigo de Allison Horst [de Allison Horstsobre casos](https://allisonhorst.com/everything-else) (role para baixo até "Representações em desenho animado de casos comuns em codificação").

- Um nome é claro se a pessoa que estiver revisando seu código concordar com ele.

Outra dica é que não há problema algum em criar funções que envolvam funções existentes apenas para mudar o nome delas.
Essa estratégia é comum para alterar a ordem dos argumentos, mas também é adequada para a nomeação.
Digamos que você prefira que os nomes das funções sejam ações (verbos) em vez de descrições passivas, você pode ter:

```r
# In utils.R
remove_extension <- function(path) {
  tools::file_path_sans_ext(path)
}

# In other scripts
remove_extension(path)
```

### Dicas de lógica: early `return()`, `switch()`

Em uma função,

```r
do_thing <- function(x) {
  if (is.na(x)) {
    NA
  } else {
    x + 1
  }
}
```

é equivalente a

```r
do_thing <- function(x) {
  if (is.na(x)) {
    return(NA)
  } 
  
  x + 1
}
```

mas o último, com o início `return()` tem menos aninhamento e enfatiza o ["caminho feliz"](https://github.com/jennybc/code-smells-and-feels).

O [`switch()`](https://rdrr.io/r/base/switch.html) também pode ajudar você a remover if-else aninhados.
Com ela, você pode,

```r
if (type == "mean") {
  mean(x)
} else if (type == "median") {
  median(x)
} else if (type == "trimmed") {
  mean(x, trim = .1)
}
```

torna-se

```r
switch(type,
  mean = mean(x),
  median = median(x),
  trimmed = mean(x, trim = .1)
)
```

### Menos código

O código que você *vocênão* não tem nenhum bug (pelo qual você é responsável) e não precisa ser lido:

Antes de tudo, seja rigoroso quanto ao escopo do que você está tentando realizar.

Em segundo lugar, use dependências confiáveis para terceirizar parte do trabalho.
Você pode ["Dependências: Mindset and Background
"](https://r-pkgs.org/dependencies-mindset-background.html) do livro R packages, de Hadley Wickham e Jenny Bryan, é uma ótima leitura sobre o assunto.

## Como você pode melhorar seu código?

Na prática, como você aplica o que aprendeu sobre estilo de código?
E como você atualiza suas bases de código legadas criadas antes de você conhecer alguns desses aspectos?

### Limpeza de primavera

Talvez você possa trabalhar regularmente no estilo e na refatoração do código

- Uma vez por ano? Andy Teucher escreveu uma postagem interessante no blog sobre o [limpeza de primavera do tidyverse](https://www.tidyverse.org/blog/2023/06/spring-cleaning-2023/).

- Com mais frequência?

- Uma boa estratégia também é trabalhar um pouco na refatoração sempre que você entrar em uma base de código para corrigir um bug ou adicionar um recurso. A refatoração não precisa ir para o mesmo commit/ramo, mantenha suas alterações de código nucleares e fáceis de revisar.

### lintr

O pacote lintr é um pacote fantástico.
Seus linters, ou regras, o lembrarão ou ensinarão sobre elementos a serem corrigidos que você não conhecia ou não conseguia manter na cabeça.
Você pode executá-lo de vez em quando ou fazer com que ele seja executado em integração contínua.

Mesmo com a simples leitura de seus [referência](https://lintr.r-lib.org/reference/index.html) pode mostrar funções ou padrões que você não conhecia.
Uma verdadeira joia do ecossistema R!

### Revisão humana

Outros seres humanos terão uma boa perspectiva externa do seu código e, provavelmente, boas dicas para você!

- Leia o código de seus colegas e vice-versa! A equipe do tidyverse tem um [guia de revisão de código](https://code-review.tidyverse.org/).

- Na rOpenSci, executamos um [sistema de revisão por pares de pacotes de software](/software-review/) :grin:

## Outros recursos

Estas são as referências para a maior parte do conteúdo do treinamento: :smile\_cat:

- Palestra de Jenny Bryan [Códigos com cheiros e sensações](https://github.com/jennybc/code-smells-and-feels)

- Livro [A arte do código legível](https://www.oreilly.com/library/view/the-art-of/9781449318482/) por Dustin Boswell e Trevor Foucher

- Livro [Tidy Design, de Hadley Wickham, em andamento](https://design.tidyverse.org/) com [boletim informativo associado](https://tidydesign.substack.com/)

- Livro [Uma filosofia de design de software, de John Ousterhout](https://masalmon.eu/2023/10/19/reading-notes-philosophy-software-design/)


