---
slug: pkgcheck-action
title: O pkgcheck agora está disponível como uma ação do GitHub (GitHub Action)!
date: '2022-02-01'
author:
- Mark Padgham
- Jacob Wujciak-Jens
featured: false
description: Todos os pacotes enviados para revisão por pares com o rOpenSci são verificados
  pelo nosso pacote pkgcheck. Esta publicação descreve uma nova ação do GitHub (GitHub Action) que
  pode ser usada para executar o pkgcheck.
tags:
- ropensci-review-bot
- pkgcheck
- tech notes
params:
  doi: 10.59350/51cp7-pb060
---

## O que é o pkgcheck?

O [pacote pkgcheck](https://github.com/ropensci-review-tools/pkgcheck) foi desenvolvido pela rOpenSci para automatizar o processo de checagem de todos os pacotes submetidos.
O `ropensci-review-bot` executa automaticamente o pkgcheck em todas as submissões, e a checagem também podem ser chamadas a qualquer momento pelos editores usando o comando:

```r
@ropensci-review-bot check package
```

O bot retornará uma lista de verificações que, idealmente, deve ser semelhante a esta:

{{< figure src="cffr-pkgcheck.png" alt="Resultados do pkgcheck para envio recente"  link="https://github.com/ropensci/software-review/issues/463#issuecomment-921010197">}}

Para estar pronto para a revisão por pares, o pkgcheck deve retornar uma série de ✔, indicando verificações bem-sucedidas, e não deve haver nenhum símbolo ✘, que indica verificações com falha. Recomenda-se que qualquer pessoa que esteja preparando um pacote para enviar ["use o pkgcheck"](https://devguide.ropensci.org/authors-guide.html) para confirmar que um pacote está de fato pronto para ser enviado. Até agora, isso só era possível [instalando o pacote localmente e executando o comando `pkgcheck()`](https://devguide.ropensci.org/authors-guide.html). As verificações locais têm duas desvantagens importantes:

1. Os resultados podem ser reprodutíveis apenas em um sistema local, em vez de serem reprodutíveis em geral; e
2. As verificações executadas pelo pkgcheck incluem todas as verificações executadas pelo [pacote rcmdcheck](https://r-lib.github.io/rcmdcheck/), que pode levar algum tempo para ser executado.

Assim como a [ação do GitHub rcmdcheck](https://github.com/r-lib/actions/blob/v2-branch/examples/check-standard.yaml), que pode ser facilmente instalada com uma das [`use_github_action_check_...` funções do pacote `usethis`](https://usethis.r-lib.org/reference/github_actions.html), o pkgcheck agora também tem uma ação do GitHub que supera essas duas desvantagens ao ser executado remotamente (no GitHub) e gerar resultados reprodutíveis.

## A ação do GitHub pkgcheck-action 

Esta postagem é o anúncio de lançamento "oficial" do pkgcheck-action, uma ação do GitHub que permite que as verificações sejam executadas toda vez que o código é enviado para o GitHub. A ação foi desenvolvida por um de nós (Jacob) e pode ser encontrada [no GitHub em ropensci-review-tools/pkgcheck-action](https://github.com/ropensci-review-tools/pkgcheck-action). A maneira mais fácil de usar essa ação em seu próprio repositório é instalar [o pacote pkgcheck](https://docs.ropensci.org/pkgcheck/#installation) e executar [a função `use_github_action_pkgcheck()`](https://docs.ropensci.org/pkgcheck/reference/use_github_action_pkgcheck.html). Isso colocará um novo arquivo no diretório `.github/workflows` do seu pacote chamado "pkgcheck.yaml", um exemplo do qual é mostrado [no README principal do repositório pkgcheck-action](https://github.com/ropensci-review-tools/pkgcheck-action#usage). A ação consiste em um único trabalho expresso nas linhas finais:

```yaml
jobs:
  check:
    runs-on: ubuntu-latest
    steps:
      - uses: ropensci-review-tools/pkgcheck-action@main
```

Há vários parâmetros também descritos no arquivo README principal, que podem ser passados como parâmetros para [a função `use_github_action_pkgcheck()`](https://docs.ropensci.org/pkgcheck/reference/use_github_action_pkgcheck.html) ou adicionada ao arquivo de fluxo de trabalho YAML, conforme também descrito no README. Depois que a ação tiver sido criada em seu repositório, ela poderá ser ativada adicionando o arquivo em um commit do git e subindo para o GitHub.

### Publicando resultados do pkgcheck em uma *Issue* do GitHub

Além de o fluxo de trabalho imprimir os detalhes completos retornados pela função principal do pkgcheck, a saída do pkgcheck também pode ser postada em uma *Issue* do GitHub, onde aparecerá exatamente como o exemplo mostrado acima. Assim que o fluxo de trabalho for concluído, você receberá uma notificação e poderá visualizar os resultados da verificação (com um `summary-only` que determina se apenas um resumo dos resultados, como o mostrado acima, será publicado na *Issue* ou se serão publicados os resultados completos, que incluem o resumo seguido de muito mais detalhes). O fluxo de trabalho só será bem-sucedido quando todas as verificações do pkgcheck forem aprovadas.

## Usando o pkgcheck-action para preparar o envio

Essa ação facilita muito a preparação de pacotes para envio à revisão por pares com o rOpenSci, confirmando automaticamente se um pacote atende aos requisitos gerais para envios à rOpenSci. Você pode usar o pkgcheck-action para confirmar que um pacote está pronto para ser enviado, seguindo estas três etapas simples:

1. Insira a ação em seu repositório com [`pkgcheck::use_github_action_pkgcheck()`](https://docs.ropensci.org/pkgcheck/reference/use_github_action_pkgcheck.html).
2. Adicione o arquivo criado em um commit do git, e faça push para o GitHub para ativá-lo.
3. Examine os resultados na *Issue* criada automaticamente no seu repositório do GitHub, modifique o código no repositório para resolver qualquer falha nas verificações, e repita esse processo.
4. Quando a ação for aprovada, você verá "✔ Este pacote pode ser enviado".

Você também pode colocar um selo pkgcheck em seu README inserindo uma versão modificada dessas linhas:

```md
[![pkgcheck](https://github.com/<org>/<repo>/workflows/pkgcheck/badge.svg)](https://github.com/<org>/<repo>/actions?query=workflow%3Apkgcheck)
```

Quando seu pacote passar em todos os testes, o selo ficará verde e terá a seguinte aparência:

<svg xmlns="http://www.w3.org/2000/svg" width="128" height="20">
  <defs>
    <linearGradient id="workflow-fill" x1="50%" y1="0%" x2="50%" y2="100%">
      <stop stop-color="#444D56" offset="0%"></stop>
      <stop stop-color="#24292E" offset="100%"></stop>
    </linearGradient>
    <linearGradient id="state-fill" x1="50%" y1="0%" x2="50%" y2="100%">
      <stop stop-color="#34D058" offset="0%"></stop>
      <stop stop-color="#28A745" offset="100%"></stop>
    </linearGradient>
  </defs>
  <g fill="none" fill-rule="evenodd">
    <g font-family="&#39;DejaVu Sans&#39;,Verdana,Geneva,sans-serif" font-size="11">
      <path id="workflow-bg" d="M0,3 C0,1.3431 1.3552,0 3.02702703,0 L102,0 L102,20 L3.02702703,20 C1.3552,20 0,18.6569 0,17 L0,3 Z" fill="url(#workflow-fill)" fill-rule="nonzero"></path>
      <text fill="#010101" fill-opacity=".3">
        <tspan x="22.1981982" y="15">pkgcheck</tspan>
      </text>
      <text fill="#FFFFFF">
        <tspan x="22.1981982" y="14">pkgcheck</tspan>
      </text>
    </g>
    <g transform="translate(79)" font-family="&#39;DejaVu Sans&#39;,Verdana,Geneva,sans-serif" font-size="11">
      <path d="M0 0h46.939C48.629 0 50 1.343 50 3v14c0 1.657-1.37 3-3.061 3H0V0z" id="state-bg" fill="url(#state-fill)" fill-rule="nonzero"></path>
      <text fill="#010101" fill-opacity=".3">
        <tspan x="4" y="15">passing</tspan>
      </text>
      <text fill="#FFFFFF">
        <tspan x="4" y="14">passing</tspan>
      </text>
    </g>
    <path fill="#959DA5" d="M11 3c-3.868 0-7 3.132-7 7a6.996 6.996 0 0 0 0 4.786 6.641c.35.062.482-.148.482-.332 0-.166-.01-.718-.01-1.304-1.758.324-2.213-.429-2.353-.822-.079-.202-.42-.823-.717-.99-.245-.13-.595-.454-.01-.463.552-.009.946.508 1.077.718.63 1.058 1.636.76 2.039.577.061-.455.245-.761.446-.936-1.557-.175-3.185-.779-3.185-3.456 0-.762.271-1.392.718-1.882-.07-.175-.315-.892.07-1.855 0 0 .586-.183 1.925.718a6.5 6.5 0 0 1 1.75-.236 6.5 6.5 0 0 1 1.75.236c1.338-.91 1.925-.718 1.925-.718.385.963.14 1.68.07 1.855.446.49.717 1.112.717 1.882 0 2.686-1.636 3.28-3.194 3.456.254.219.473.639.473 1.295 0 .936-.009 1.689-.009 1.925 0 .184.131.402.481.332A7.011 7.011 0 0 0 18 10c0-3.867-3.133-7-7-7z"></path>
  </g>
</svg>

Assim, você saberá que seu pacote está pronto para ser enviado!

E, por fim, sinta-se à vontade para fazer perguntas sobre o uso do pkgcheck-action ou relatar quaisquer erros em <https://github.com/ropensci-review-tools/pkgcheck-action/issues>.


