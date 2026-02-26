---
title: 'Guia de desenvolvimento do rOpenSci 1.0.0: trilíngue e aprimorado'
author:
- Maëlle Salmon
- Mark Padgham
- Noam Ross
date: '2026-01-09'
slug: guia_de_desenvolvimento_do_r_open_sci_1_0_0_trilíngue_e_aprimorado
tags:
- Software Peer Review
- dev guide
- multilingual
description: 'Atualizações na versão 1.0.0 do livro on-line ''rOpenSci Packages: Development,
  Maintenance, and Peer Review" (Desenvolvimento, manutenção e revisão por pares)'
twitterImg: img/blog-images/2019-05-16-dev-guide-update/cover.png
output: ~
twitterAlt: cover of rOpenSci dev guide, showing a package production line with small
  humans discussing, examining and promoting packages
params:
  doi: 10.59350/pthhe-b9v52
---

A orientação da Revisão por Pares do Software rOpenSci está reunida em um [livro on-line](https://devguide.ropensci.org/booknews) que continua melhorando!
Esta postagem do blog resume o que há de novo em nosso Dev Guide 1.0.0, com todas as alterações listadas na seção [changelog](https://devguide.ropensci.org/booknews.html).

## Agora disponível em português!

Nosso guia agora é trilíngue ([inglês](https://devguide.ropensci.org/index.html), [Espanhol](https://devguide.ropensci.org/es/index.es.html), [português](https://devdevguide.netlify.app/pt/index.pt))!

Saiba mais sobre o incrível projeto de tradução para o português, iniciado e impulsionado por nossos membros lusófonos em nosso [postagem no blog](/blog/2025/11/25/translation-devguide-pt/).

O projeto de tradução e a manutenção multilíngue contínua usam nosso [pacote babelquarto](https://docs.ropensci.org/babelquarto/) para renderizar livros e sites multilíngues da Quarto.
Ele foi recentemente [revisado por pares](https://github.com/ropensci/software-review/issues/720) por Ella Kaye e João Granja-Correia.

Estamos trabalhando ativamente em nosso [pacote babeldown](https://docs.ropensci.org/babeldown/) para criar e atualizar traduções usando a API DeepL.

No pacote [guia de desenvolvimento](https://github.com/ropensci/dev_guide/pull/940/files) as ferramentas úteis para internacionalizar *pacotes* são mencionadas: [potools](https://michaelchirico.github.io/potools/), o experimental [rhelpi18n](https://eliocamp.github.io/rhelpi18n/) selecionando um pacote [idioma](https://pkgdown.r-lib.org/articles/translations.html) para um site pkgdown.

## Atualizações de políticas

Fizemos algumas alterações nas políticas e no escopo do rOpenSci:

- Nova categoria para [Ferramentas internas e de revisão por pares da rOpenSci](https://devdevguide.netlify.app/softwarereview_policies#package-categories#:~:text=rOpenSci%20internal%20tools).

- Atualizações do [categoria de recuperação de dados](https://devdevguide.netlify.app/softwarereview_policies#package-categories#:~:text=data%20retrieval).

- Nova regra explícita para somente [enviar um pacote de cada vez](https://devdevguide.netlify.app/softwarereview_author#lifecycle#:~:text=do%20not%20submit%20several).

- Novo requisito para não ligar para o [ramificação padrão como "master"](https://devdevguide.netlify.app/pkg_building#version-control#:~:text=not%20be%20master).

- Removido o requisito de usar um `codemeta.json` agora obsoleto. O Codemeta continua a ser [ativamente usado e desenvolvido](https://codemeta.github.io/) mas descobrimos que ele é redundante com outros metadados e o Codemeta pode gerar esses dados conforme necessário a partir de arquivos DESCRIPTION.

## Guia do Editor, Guia do Autor e Guia do Revisor

Os guias que vivem em nosso guia. :smile\_cat:

Toda a [guia do editor](https://devdevguide.netlify.app/softwarereview_editor) foi reestruturado para seguir o fluxo típico de envios,
e para explicar melhor como usar o [painel de revisão de software](https://dashboard.ropensci.org/).
Adicionamos uma seção sobre desafios e documentamos como colocar o sistema em férias (o que geralmente fazemos no período do ano novo).

Da mesma forma, melhoramos a organização e o conteúdo da seção [guia do autor](https://devdevguide.netlify.app/softwarereview_author) (graças a [Alec Robitaille](https://github.com/robitalec) e [Joan Maspons](https://github.com/jmaspons)).

No [guia do revisor](https://devdevguide.netlify.app/softwarereview_reviewer) removemos o link externo para o guia de revisão do Mozilla Review, que não é mais mantido (uma de nossas primeiras fontes de design para revisão por pares), em favor de itens enumerados explicitamente.

## Melhores práticas de empacotamento

No guia de embalagem (outro guia dentro do guia!), adicionamos orientações para a escolha de [conjuntos de dados de exemplo](https://devdevguide.netlify.app/pkg_building#example-datasets).
Além disso, criamos uma seção para [Pacotes que envolvem software externo](https://devdevguide.netlify.app/pkg_building#external-software).
Os [seção de licenciamento](https://devdevguide.netlify.app/pkg_building#licence) agora exige explicitamente o reconhecimento dos autores do código empacotado.
Por último, mas não menos importante, a seção [seção sobre dependências](https://devdevguide.netlify.app/pkg_building#pkgdependencies) recomenda verificar o status de desenvolvimento das dependências.

O livro inteiro agora menciona o [CLI do Air](https://posit-dev.github.io/air/) toda vez que menciona o pacote styler, pois o Air pode ser visto como o sucessor do styler.

No capítulo sobre evolução de pacotes, adicionamos orientações sobre [depreciar *dados*](https://devdevguide.netlify.app/maintenance_evolution#data-deprecate) e explicou a [as desvantagens de renomear um pacote amplamente utilizado](https://devdevguide.netlify.app/maintenance_evolution#renaming-packages).

## Orientação para testes

Atualizamos nosso [orientação para testes](https://devdevguide.netlify.app/pkg_building.html#testing) com

- a [menção ao tinytest](https://devdevguide.netlify.app/pkg_building.html#testing#:~:text=tinytest) como uma alternativa ao testthat;
- uma nota sobre como manter os testes escritos com o testthat [autônomo](https://devdevguide.netlify.app/pkg_building.html#testing#:~:text=self-contained).

## Documentação do pacote

Com agradecimentos especiais a [Alasdair Warwick ](https://github.com/rmgpanw) melhoramos a documentação :wink: de nosso sistema de criação de documentação, incluindo:

- Mais detalhes sobre o [aspectos técnicos](https://devdevguide.netlify.app/pkg_ci#rodocsci) da criação de documentos para pacotes rOpenSci;
- Atualização [orientação matemática](https://devdevguide.netlify.app/pkg_building.html#mathjax) após a atualização do pkgdown.

Também esclarecemos diferentes estratégias para [documentar funções internas](https://devdevguide.netlify.app/pkg_building#:~:text=nord) graças a [Claudiu Forgaci](https://github.com/cforgaci).

## Metadados e informações do pacote

Documentamos mais maneiras de reconhecer os colaboradores:

- na seção [autoria](https://devdevguide.netlify.app/pkg_building.html#authorship) do guia de embalagem, com [IDs de Registro de Organização de Pesquisa (ROR)](/blog/2025/05/09/ror/);

- no capítulo sobre [colaboração](https://devdevguide.netlify.app/maintenance_collaboration.html#attributions) o [pacote R allcontributors](https://docs.ropensci.org/allcontributors/).

## Conclusão

Nesta postagem, resumimos as alterações na versão mais recente de nosso livro ["Pacotes rOpenSci: Development, Maintenance, and Peer Review" (Desenvolvimento, manutenção e revisão por pares)](https://devguide.ropensci.org).
Somos gratos por todas as contribuições que criaram esta versão.
Já estamos trabalhando na próxima versão.
Não hesite em nos ajudar a moldá-la, abrindo uma solicitação de ajuda. [problema](https://github.com/ropensci/dev_guide/issues)!


