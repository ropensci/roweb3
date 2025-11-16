---
title: Um exemplo dos princípios DRY/DAMP para testes de pacotes
author:
- Maëlle Salmon
translator: 
- Francesca Belem Lopes Palmeira
editor:
- Steffi LaZerte
- Yanina Bellini Saibene
date: '2024-03-18'
slug: dry-damp
output: hugodown::md_document
tags:
- notas técnicas
- desenvolvimento de pacotes
- programa de campeões e campeõas
- how-to
- testing
params:
  doi: 10.59350/bymbn-0sj70
---

rOpenSci's [O segundo grupo de campeões e campeãs foi integrado](/blog/2024/02/15/champions-program-champions-2024/)!
O treinamento começou com uma [sessão sobre estilo de código](/blog/2024/02/22/beautiful-code/), foi seguido por três sessões sobre os fundamentos do desenvolvimento de pacotes R e terminou com uma sessão sobre [desenvolvimento avançado de pacotes R](https://rpkgdev-rocket-2024.netlify.app/) que consistiu em um pot-pourri de dicas com discussão, seguido de tempo para aplicar esses princípios aos pacotes das pessoas participantes.
Aqui, quero compartilhar um dos tópicos abordados: Testes de pacotes e, em particular, os princípios DRY ("não se repita") e DAMP ("frases descritivas e significativas").
Para esse tópico, usamos um [repositório do GitHub](https://github.com/maelle/swamp) que contém um pacote R cujos diferentes commits ilustram os dois princípios. Em cada etapa, compartilharemos um commit ou diff que ilustra as alterações feitas.

## Etapa 1: lamacento!

Primeiro commit: Configurar nossos arquivos de teste, [test-works.R](https://github.com/maelle/swamp/blob/c67cc053cafb2cc5f5125cbc745b2f392a84e3df/tests/testthat/test-works.R) e [test-ok.R](https://github.com/maelle/swamp/blob/c67cc053cafb2cc5f5125cbc745b2f392a84e3df/tests/testthat/test-ok.R)

Esses arquivos de teste iniciais definem um objeto chamado `test_object` no nível superior, que é usado em dois testes em cada arquivo.

**test-works.R**

```r
test_object <- list(a = 1, b = 2)

test_that("multiplication works", {
  expect_equal(test_object[["b"]] * 2, 4)
})

test_that("addition works", {
  expect_equal(test_object[["a"]] + 2, 3)
})
```

e

**test-ok.R**

```r
test_object <- list(a = 1, b = 2)

test_that("division works", {
  expect_equal(test_object[["b"]] / 2, 1)
})

test_that("substraction works", {
  expect_equal(test_object[["a"]] - 1, 0)
})
```


Esse não é um padrão ideal porque você não pode examinar cada teste `test_that()` isoladamente e entender rapidamente o que está acontecendo.

Em um arquivo de teste muito longo, você teria que rolar a tela para cima e para baixo!
Além disso, estamos sendo repetitivos ao definir o mesmo objeto de teste em dois arquivos de teste.

## Estágio 2: SECO!

Próximo commit: [Descompactar esses arquivos](https://github.com/maelle/swamp/commit/381f244f56f1837207f2150a7e76c70bd59c0422)

Nesta etapa, lembramos diligentemente sobre DRY, Don't Repeat Yourself (Não se repita), e sobre a mecânica de [arquivos auxiliares de teste](https://blog.r-hub.io/2020/11/18/testthat-utility-belt/):
arquivos cujos nomes começam com `helper-` são carregados antes de todos os testes.

Portanto, criamos um arquivo auxiliar (`helper-swamp.R`) no qual o `test_object` é definido e, desta forma, disponível para testes!

Em `tests/testthat/helper-swamp.R`,

```r
test_object <- list(a = 1, b = 2)
```

Nos arquivos de teste, removemos a primeira linha que definia `test_object`.

Agora as coisas ainda não estão perfeitas.
Quando olhamos para qualquer um dos arquivos de teste, não podemos realmente saber o que é `test_object`, pois seu nome não é "descritivo e significativo".

Além disso, agora temos `test_object` que é *sempre* definido, mesmo que não seja usado em um teste.
 Na melhor das hipóteses, isso é desnecessário e inútil; na pior, pode ter efeitos colaterais indesejados, especialmente em códigos mais complexos! [^leak]

[^leak]: Isso é um vazamento. Em outro teste, você poderia se perguntar por que um objeto existe, por que uma opção específica foi definida, etc., e isso é um pesadelo para depurar.

## Etapa 3: Foco no DAMP

Terceiro compromisso: [Aplicar os princípios do DAMP](https://github.com/maelle/swamp/commit/9cc08937e1cabf112955004212e1d0bccf2ccda4)

No arquivo auxiliar, `tests/testthat/helper-swamp.R` reescrevemos o código em um arquivo *função* com um nome mais significativo (pelo menos vamos fingir que é!).

```r
basic_list <- function() {
  list(a = 1, b = 2)
}
```

Em seguida, chamamos essa função para definir o objeto em todos os testes em que ele for necessário.
Assim, os arquivos de teste se tornam

```r
test_that("division works", {
  test_object <- basic_list()
  expect_equal(test_object[["b"]] / 2, 1)
})
```

e

```r
test_that("substraction works", {
  test_object <- basic_list()
  expect_equal(test_object[["a"]] - 1, 0)
})
```

Agora, embora a definição real da lista básica não esteja em todos os testes, temos uma ideia melhor do que está acontecendo ao ler o teste.

Além disso, se o teste falhasse, poderíamos executar `devtools::load_all()` no console e executar o código do teste,  já que `devtools::load_all()` carrega os arquivos auxiliares do testthat, tornando `basic_list()` disponível.


## Conclusão

O equilíbrio entre DRY ("Don't repeat yourself") e DAMP ("Descriptive and meaningful phrases") é uma troca.
Para manter a analogia com a água, também precisamos garantir que nosso código não tenha efeitos que possam "vazar" inesperadamente.
O que devemos buscar são testes autônomos que possamos entender e executar sem muito contexto.

Outra consideração que não abordamos aqui são os testes que exigem elementos específicos, como variáveis de ambiente ou opções. Nesses casos, tente usar [withr](https://withr.r-lib.org/) como [`withr::local_envvar()`](https://withr.r-lib.org/reference/with_envvar.html) em cada teste que o exigir.

Uma ideia poderosa do livro ["Software Engineering at Google"](https://www.oreilly.com/library/view/software-engineering-at/9781492082781/) de Titus Winters, Tom Manshreck e Hyrum Wright, é que o código pode se dar ao luxo de ser um pouco menos óbvio porque tem testes que o cobrem, mas o código de teste, que não é coberto por testes, não tem esse privilégio.

## Outros recursos

- Os três capítulos sobre testes de pacotes do livro R packages, de Hadley Wickham e Jenny Bryan, são uma leitura altamente recomendada: [Testing basics](https://r-pkgs.org/testing-basics.html), [Designing your test suite](https://r-pkgs.org/testing-design.html), [Advanced testing techniques](https://r-pkgs.org/testing-advanced.html).

- Postagem no blog [Why Good Developers Write Bad Unit Tests](https://mtlynch.io/good-developers-bad-tests/) por Michael Lynch.


