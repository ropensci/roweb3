---
title: 'Guia de desenvolvimento da rOpenSci 1.0.0: trilíngue e aprimorado'
author:
- Maëlle Salmon
- Mark Padgham
- Noam Ross
translator: Francesca Belem Lopes Palmeira
date: '2026-01-09'
slug: guia_de_desenvolvimento_da_r_open_sci_1_0_0_trilíngue_e_aprimorado
tags:
- Software Peer Review
- dev guide
- multilingual
description: 'Atualizações na versão 1.0.0 do livro on-line "rOpenSci Packages: Development,
  Maintenance, and Peer Review" (Pacotes rOpenSci: Desenvolvimento, Manutenção e Revisão por pares)'
socialImg: img/blog-images/2019-05-16-dev-guide-update/cover.png
output: ~
socialAlt: Capa do guia de desenvolvimento da rOpenSci, mostrando uma linha de produção de pacotes com pequenos seres humanos que debatem, examinam e promovem pacotes
params:
  doi: 10.59350/g1ytb-6xq15
---

A orientação da revisão por pares de Software rOpenSci está reunida em um [livro on-line](https://devguide.ropensci.org/booknews) que continua melhorando!
Esta postagem do blog resume o que há de novo em nosso Dev Guide 1.0.0, com todas as alterações listadas na seção [changelog](https://devguide.ropensci.org/booknews.html).

## Agora disponível em português!

O nosso guia agora é trilíngue ([Inglês](https://devguide.ropensci.org/index.html), [Espanhol](https://devguide.ropensci.org/es/index.es.html) e [Português](https://devdevguide.netlify.app/pt/index.pt))!

Saiba mais sobre o incrível projeto de tradução para o português, iniciado e impulsionado por nossos membros lusófonos em nossa [postagem no blog](/blog/2025/11/25/translation-devguide-pt/).

O projeto de tradução e manutenção multilíngue contínua usa o nosso [pacote babelquarto](https://docs.ropensci.org/babelquarto/) para produzir livros e sites multilíngues em Quarto.
Ele foi recentemente [revisado por pares](https://github.com/ropensci/software-review/issues/720) por Ella Kaye e João Granja-Correia.

Estamos trabalhando ativamente em nosso [pacote babeldown](https://docs.ropensci.org/babeldown/) para criar e atualizar as traduções usando a API DeepL.

No [guia de desenvolvimento](https://github.com/ropensci/dev_guide/pull/940/files), também são mencionadas as ferramentas úteis para internacionalizar *pacotes*: [potools](https://michaelchirico.github.io/potools/), o pacote experimental [rhelpi18n](https://eliocamp.github.io/rhelpi18n/) e a seleção de um [idioma](https://pkgdown.r-lib.org/articles/translations.html) para um site pkgdown.

## Atualizações de políticas

Fizemos algumas alterações nas políticas e no escopo da rOpenSci:

- Nova categoria para [ferramentas internas e de revisão por pares da rOpenSci](https://devdevguide.netlify.app/pt/softwarereview_policies.pt.html#package-categories#:~:text=ferramentas%20internas%20da%20rOpenSci).

- Atualizações da [categoria de recuperação de dados](https://devdevguide.netlify.app/pt/softwarereview_policies.pt.html#package-categories#:~:text=recupera%C3%A7%C3%A3o%20de%20dados).

- Nova regra explícita para somente [enviar um pacote por vez](https://devdevguide.netlify.app/pt/softwarereview_author.pt.html#lifecycle#:~:text=n%C3%A3o%20envie%20v%C3%A1rios).

- Novo requisito para não chamar a [branch padrão de "master"](https://devdevguide.netlify.app/pt/pkg_building.pt.html#version-control#:~:text=O%20nome%20da%20ramifica%C3%A7%C3%A3o%20(branch)%20padr%C3%A3o).

- Removido o requisito de usar um `codemeta.json`, agora obsoleto. O Codemeta continua a ser [ativamente usado e desenvolvido](https://codemeta.github.io/), mas descobrimos que ele é redundante com outros metadados e pode gerar esses dados conforme necessário a partir de arquivos DESCRIPTION.

## Guia para a equipe editorial, guia para revisores e guia para autores de pacotes

Os guias que vivem em nosso guia. :smile_cat:

Toda o [guia para a equipe editorial](https://devdevguide.netlify.app/pt/softwarereview_editor.pt.html) foi reestruturado para seguir o fluxo típico de envios
e para explicar melhor como usar o [painel de revisão de software](https://dashboard.ropensci.org/).
Adicionamos uma seção sobre os desafios e documentamos como colocar o sistema em férias (o que geralmente fazemos no período de ano novo).

Da mesma forma, melhoramos a organização e o conteúdo da seção [guia para autores](https://devdevguide.netlify.app/pt/softwarereview_author.pt.html) (graças ao [Alec Robitaille](https://github.com/robitalec) e ao [Joan Maspons](https://github.com/jmaspons)).

No [guia para revisores](https://devdevguide.netlify.app/pt/softwarereview_reviewer.pt.html), removemos o link externo para o guia de revisão da Mozilla que não é mais mantido (uma de nossas primeiras fontes de inspiração para a revisão por pares), em favor de itens enumerados explicitamente.

## Melhores práticas de empacotamento

No guia de desenvolvimento de pacotes (outro guia dentro do guia!), adicionamos orientações para a escolha de [exemplos de conjuntos de dados](https://devdevguide.netlify.app/pt/pkg_building.pt.html#example-datasets).
Além disso, criamos uma seção para [pacotes que envolvem software externo](https://devdevguide.netlify.app/pt/pkg_building.pt.html#external-software).
A [seção sobre licenças](https://devdevguide.netlify.app/pt/pkg_building.pt.html#licence) agora exige explicitamente que as pessoas autoras do código incluído sejam mencionadas.
Por último, mas não menos importante, a [seção sobre dependências](https://devdevguide.netlify.app/pt/pkg_building.pt.html#pkgdependencies) recomenda verificar o status de desenvolvimento das dependências.

O livro inteiro agora menciona o [CLI do Air](https://posit-dev.github.io/air/) sempre que menciona o pacote styler, pois o Air pode ser considerado o seu sucessor.

No capítulo sobre a evolução de pacotes, adicionamos orientações sobre a [depreciação de *dados*](https://devdevguide.netlify.app/pt/maintenance_evolution.pt.html#data-deprecate) e explicamos as [desvantagens de renomear um pacote amplamente utilizado](https://devdevguide.netlify.app/pt/maintenance_evolution.pt.html#renaming-packages).

## Orientação para testes

Atualizamos as nossas [diretrizes para testes](https://devdevguide.netlify.app/pt/pkg_building.pt.html#testing) com

- a [menção ao tinytest](https://devdevguide.netlify.app/pt/pkg_building.pt.html#testing#:~:text=tinytest) como uma alternativa ao testthat;
- uma nota sobre como manter os testes escritos com o testthat [autônomo](https://devdevguide.netlify.app/pt/pkg_building.pt.html#testing#:~:text=autocontidos).

## Documentação do pacote

Um agradecimento especial ao [Alasdair Warwick ](https://github.com/rmgpanw) que nos ajudou a melhorar a documentação :wink: do nosso sistema de criação de documentação, incluindo:

- Mais detalhes sobre os [aspectos técnicos](https://devdevguide.netlify.app/pt/pkg_ci.pt.html#rodocsci) da criação de documentos para pacotes rOpenSci;
- Atualização das [orientações matemáticas](https://devdevguide.netlify.app/pt/pkg_building.pt.html#mathjax) após a atualização do pkgdown.

Também esclarecemos diferentes estratégias para [documentar funções internas](https://devdevguide.netlify.app/pt/pkg_building.pt.html#:~:text=nord) graças ao [Claudiu Forgaci](https://github.com/cforgaci).

## Metadados e informações do pacote

Documentamos mais maneiras de reconhecer as pessoas colaboradoras:

- na seção [autoria](https://devdevguide.netlify.app/pt/pkg_building.pt.html#authorship) do guia de desenvolvimento de pacotes, com [IDs do Registro de Organização de Pesquisa (ROR)](/blog/2025/05/09/ror/);

- no capítulo sobre [colaboração](https://devdevguide.netlify.app/pt/maintenance_collaboration.pt.html#attributions) com o [pacote allcontributors](https://docs.ropensci.org/allcontributors/).

## Conclusão

Nesta postagem, resumimos as alterações na versão mais recente do nosso livro ["Pacotes rOpenSci: Development, Maintenance, and Peer Review" (Desenvolvimento, Manutenção e Revisão por Pares)](https://devguide.ropensci.org).
Somos gratos por todas as contribuições que criaram esta versão.
Já estamos trabalhando na próxima versão.
Não hesite em nos ajudar a moldá-la, abrindo uma solicitação [_issue_](https://github.com/ropensci/dev_guide/issues)!


