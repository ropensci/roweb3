---
slug: translation-devguide-pt
title: 'Traduzindo o Dev Guide da rOpenSci para o Português: Colaboração, Comunidade, Desafios e Impacto'
author: 
  - Francesca Belem Lopes Palmeira
  - Beatriz Milz
  - Ariana Moura Cabral  
  - Yanina Bellini Saibene
  - Daniel Vartanian
  - Pedro Faria
date: '2025-11-25'
tags:
  - comunidade
---

## Introdução

A rOpenSci faz a gestão de pacotes desenvolvidos na linguagem de programação R e também oferece um processo de revisão por pares para esses pacotes, uma atividade já bem consolidada dentro da comunidade. Para guiar todo esse processo, a rOpenSci desenvolveu o guia **"Pacotes rOpenSci: Desenvolvimento, Manutenção e Revisão por Pares"** (chamado também de “Dev Guide”). O guia apresenta os procedimentos recomendados para desenvolver e submeter pacotes à coleção da rOpenSci, tornando a condução de cada etapa mais simples e garantindo transparência em todo o processo.

Inicialmente, o Dev Guide foi concebido em [inglês](https://devguide.ropensci.org/) e, posteriormente, ganhou uma versão em [espanhol](https://devguide.ropensci.org/es/index.es.html), graças a um esforço de tradução da comunidade envolvida com a organização. Mais recentemente, algumas pessoas colaboradoras fizeram esforços em conjunto para a tradução do Dev Guide para o português. Neste texto, iremos relatar como foi esse processo de tradução colaborativa, levando em conta que a tradução de materiais é uma das formas de contribuir com a missão da rOpenSci de promover uma cultura de pesquisa aberta e reprodutível.

## Por que traduzir o Dev Guide para o português?

A tradução do Dev Guide faz parte de um esforço mais amplo da rOpenSci para reduzir barreiras linguísticas na comunidade científica. Isso porque o inglês ainda é o idioma predominante em materiais técnicos e científicos, o que limita a participação de pessoas que não o dominam. 

O português é a sexta língua mais falada do mundo e conecta comunidades de pesquisa na América Latina, Europa e África. Traduzir o guia é uma forma concreta de ampliar a diversidade de contribuições, fortalecer comunidades locais e incentivar a revisão e o desenvolvimento de pacotes em R em países lusófonos.

## Linha do tempo do projeto de tradução

Após o lançamento da versão em espanhol, o brasileiro Pedro Faria [começou a traduzir o Dev Guide para o português](https://github.com/ropensci/dev_guide/issues/670) em junho de 2023. Essa iniciativa foi a oportunidade perfeita para testar, em outro idioma, todo o processo e as ferramentas utilizadas na tradução para o espanhol.

Mas esse foi apenas o início da história. Logo depois, a equipe da rOpenSci lançou uma [chamada a fim de alcançar colaboradores](https://ropensci.org/blog/2023/10/20/news-october-2023/#help-us-translate-our-dev-guide-to-portuguese) para somar forças. Assim, formou-se o primeiro grupo de pessoas interessadas em colaborar com a revisão e tradução, dando continuidade, portanto, ao trabalho iniciado pelo Pedro.

A iniciativa continuou ganhando forma e, pouco a pouco, foi atingindo mais pessoas. Dentre elas, o angolano António Pedro, líder da [Angola Open Source Community](https://angolaosc.org/) (AOSC), que manifestou o desejo de engajar também sua comunidade nesse esforço conjunto.

Ao longo do tempo, a rOpenSci promoveu alguns encontros com o intuito de apresentar a iniciativa, aproximar as pessoas colaboradoras e manter vivo o entusiasmo pela tradução. Em um primeiro momento, a rOpenSci organizou uma reunião online (“[Traduzindo o Guia Dev da rOpenSci para o Português](https://ropensci.org/events/portuguese-translation/)”), na qual o Pedro apresentou o processo de tradução. As pessoas interessadas em colaborar entraram no Slack da rOpenSci e passaram a trabalhar nas revisões.

Em um segundo momento, para manter o engajamento, houve uma chamada comunitária em português, “[A Comunidade R Fala Português](https://ropensci.org/commcalls/translation-portuguese/)”, sendo o primeiro encontro realizado nessa língua. Nessa oportunidade, além da divulgação do projeto da rOpenSci de tradução para o português, também foram apresentados outros projetos similares conduzidos dentro da comunidade R. Para inspirar as pessoas a participarem, foi realizado ainda um [hackathon de tradução](https://latinr.org/en/cronograma/translaton/translaton-en.html) em conjunto com o evento [LatinR](https://latinr.org/pt/) naquele mesmo ano. Pedro Faria, Beatriz Milz e Francesca Palmeira estiveram à frente desses dois eventos, apresentando a iniciativa, guiando as discussões e inspirando a colaboração entre as pessoas.

Com o passar do tempo, mais pessoas se juntaram ao projeto e a tradução foi concluída em outubro de 2025. Mais de dois anos se passaram entre as primeiras linhas traduzidas e a concretização dessa iniciativa de tradução colaborativa.

**Figura 1** - Linha do tempo de como os eventos se desenrolaram. 

{{< figure src="fig-1-pt.png"  alt="Linha do tempo, iniciando em junho de 2023 até outubro de 2025." >}}

Fonte: Elaborado por Francesca Belem Lopes Palmeira e Ariana Moura Cabral.

## Processo de tradução

O [Guia de Tradução da rOpenSci](https://translationguide.ropensci.org) foi importante para o processo de tradução. Esse guia documenta a infraestrutura, os papéis e as etapas técnicas envolvidas na tradução e manutenção de materiais multilíngues da rOpenSci. Ele foi criado com base na experiência acumulada em traduções anteriores e inspira-se no próprio sistema de revisão por pares de pacotes da rOpenSci.

Todas as tarefas relacionadas a esse projeto de tradução para o português foram organizadas usando o GitHub, no [repositório do Dev Guide](https://github.com/ropensci/dev_guide). O Dev Guide foi escrito em R Markdown, com cada capítulo organizado em um arquivo `.Rmd`. Cada capítulo original em inglês foi submetido a uma tradução inicial automática utilizando o pacote [{babeldown}](https://docs.ropensci.org/babeldown/)[^1]. Esse pacote, que faz parte da coleção da rOpenSci, utiliza a API do [DeepL](https://www.deepl.com), uma ferramenta que utiliza inteligência artificial para realizar traduções.

[^1]: Salmon M (2025). _babeldown: Helpers for Automatic Translation of Markdown-based Content_. R package version 0.0.0.9000. <https://github.com/ropensci-review-tools/babeldown>.

A tradução inicial era submetida ao repositório através de um *Pull Request* (PR), para que pudesse ser revisada antes de ser integrada ao guia. Em seguida, duas pessoas diferentes realizavam a revisão do texto traduzido automaticamente. A participação de duas pessoas revisoras foi fundamental para refinar o resultado e garantir a fluidez do texto. Após a consolidação com as sugestões das pessoas revisoras, o PR era aceito.


**Figura 2** - Representação visual do processo de tradução feita para cada capítulo do Dev Guide. 

{{< figure src="fig-2-pt.png"  alt="Representação visual do processo de tradução feita para cada capítulo: 1) Arquivo original (index.Rmd);  2) Tradução automática (API); 3) Arquivo traduzido (index.pt.Rmd); 4) Revisão 1; 5) Revisão 2; 6) Revisão concluída (Merged)." >}}

Fonte: Elaborado por Francesca Belem Lopes Palmeira.


Este ano teremos a publicação da nova versão do Dev Guide, incluindo a tradução para o português. Todas as pessoas que participaram desse trabalho de tradução e revisão serão creditadas como autoras da tradução. Essa versão contará com um DOI (*Digital Object Identifier*) próprio e o PDF ficará disponível no [Zenodo](https://zenodo.org/), além do site oficial do guia, permitindo que a tradução seja citada formalmente usando essas informações.

## Equipe envolvida na tradução

O Dev Guide é composto de diversos capítulos, e por este motivo, muitas pessoas participaram e colaboraram no processo de revisão. A participação da comunidade foi fundamental para concluir cada etapa desse processo. Além disso, a colaboração entre pessoas de diferentes países lusófonos enriqueceu o processo de tradução, tornando-o mais plural e trazendo diversidade de perspectivas. Foi muito especial ver que tivemos pessoas da Angola, do Brasil e de Portugal colaborando na tradução, essa pluralidade também faz parte da força do projeto.

A seguir, são listados, em ordem alfabética, os nomes dessas pessoas:

-   António Pedro, Angola

-   Ariana Moura Cabral, Brasil

-   Beatriz Milz, Brasil

-   Daniel Vartanian, Brasil

-   Francesca Belem Lopes Palmeira, Brasil

-   Ildeberto Vasconcelos, Angola

-   João Granja-Correia, Portugal

-   Marcelo Perlin, Brasil

-   Pedro Faria, Brasil

-   Rafael Fontenelle, Brasil

-   Samuel Carleial Fernandes, Brasil

Além disso, a gestão deste projeto de tradução foi realizada por [Yanina Bellini Saibene](https://yabellini.netlify.app/), gestora de comunidades da rOpenSci. Outras pessoas da equipe da rOpenSci também foram importantes na revisão de Pull Requests, como a [Maëlle Salmon](http://masalmon.eu/).

## Depoimentos

{{< quote footer="Francesca Palmeira">}}
Participar do projeto de tradução do Dev Guide para o português foi uma experiência muito enriquecedora para a minha trajetória profissional. Foi a primeira vez que trabalhei utilizando um processo de revisão por pares transparente, reprodutível e colaborativo. De modo geral, está sendo muito satisfatório ver o projeto pronto e acessível para toda a comunidade lusófona.
{{< /quote >}}

{{< quote footer="Pedro Faria">}}
Na minha interpretação pessoal, um dos maiores valores da comunidade de R é a expansão e melhoria da ciência por meio de projetos e dados abertos, prezando assim, pela transparência e pela contribuição de todos. Esse projeto de tradução foi mais um exemplo dessa filosofia. Eu, como um autor de livros abertos (inclusive, [leia o meu livro introdutório de R](https://pedropark99.github.io/Introducao_R/) 😉), foi a primeira vez que experimentei um processo de tradução aberto como esse, e devo dizer que gostei muito da experiência. 

Um ponto interessante desse projeto foi a metodologia utilizada, que é baseada nas tecnologias do [Quarto](https://quarto.org/), [`{rmarkdown}`](https://rmarkdown.rstudio.com/), [`{babeldown}`](https://docs.ropensci.org/babeldown/index.html) e [DeepL](https://developers.deepl.com/docs/getting-started/intro). Essa metodologia se mostrou muito efetiva em vários aspectos no processo de tradução, e pode ser um caminho interessante para alguém que busca uma metodologia: 1) que seja mais aberta e inclusiva para o seu público; 2) que inclua um pouco de automatização no processo; 3) e que gera uma boa organização de arquivos para o seu projeto (i.e. dependendo do tamanho do material a ser traduzido, a organização de arquivos pode se tornar algo crucial para o seu *workflow*).
{{< /quote >}}


{{< quote footer="Ariana Moura Cabral">}}
TODO: EM BREVE!
{{< /quote >}}

{{< quote footer="Beatriz Milz">}}
Mesmo já tendo experiência com desenvolvimento de pacotes, revisar os capítulos foi uma oportunidade de aprender mais e me atualizar sobre as boas práticas. Até então, não tínhamos um material tão completo em português, gratuito e online sobre desenvolvimento de pacotes em R. A versão traduzida do Dev Guide será muito útil para as pessoas que querem aprender mais sobre desenvolvimento de pacotes, mesmo para quem não pretende submeter um pacote à revisão por pares da rOpenSci.
{{< /quote >}}

## Desafios

Traduzir um material vai muito além de simplesmente trocar palavras de um idioma para outro. Na verdade, é um processo cheio de nuances e vários desafios podem surgir ao longo do caminho.

Na tradução do Dev Guide, um dos principais desafios enfrentados foi preservar o sentido e o tom do texto original, como usar os mesmos termos e estilo do começo ao fim do texto, tendo em vista que a tradução era inicialmente automática. No entanto, para manter a consistência do material, o texto foi revisado várias vezes, por mais de uma pessoa, garantindo que a leitura permanecesse agradável, técnica, mas sem muitos obstáculos linguísticos.

Ao longo do processo de tradução, surgiram discussões importantes sobre o uso consistente de termos e sobre como adaptar expressões técnicas sem perder precisão. Algumas dessas conversas ocorreram diretamente nos Pull Requests (por exemplo: [#717](https://github.com/ropensci/dev_guide/pull/717), [#855](https://github.com/ropensci/dev_guide/pull/855), [#856](https://github.com/ropensci/dev_guide/pull/856)), onde as pessoas que colaboraram no projeto debateram alternativas de estilo, ajustes de vocabulário e decisões específicas de tradução. Esses registros ilustram bem como o trabalho foi coletivo, iterativo e cuidadoso, refletindo o esforço de alinhar clareza, rigor técnico e sensibilidade linguística.

Durante as revisões, houve ainda um cuidado especial em diminuir a marcação de gênero do texto (por exemplo, mudando de “os usuários” para “os(as) usuários(as)” ou “as pessoas usuárias”), priorizando manter a leitura fluida e mais inclusiva. Além disso, como a tradução automática tende a traduzir todo o conteúdo, outra preocupação recorrente foi restaurar corretamente os nomes próprios (de livros, pacotes ou funções) para o inglês.

Uma barreira que ainda existe para quem lê o Dev Guide em português é que a maior parte dos nomes de funções, pacotes e livros sugeridos ao longo dos capítulos direciona para um texto em inglês. Mas, a equipe da rOpenSci tem feito esforços para traduzir os posts do blog da rOpenSci que estão referenciados no Dev Guide para o português.

## Impacto e próximos passos

A versão em português do Dev Guide se torna um material valioso de estudo entre os países lusófonos, não apenas para quem deseja desenvolver pacotes em R utilizando boas práticas, mas também para quem busca compreender melhor as diretrizes de submissão e o processo de revisão por pares na rOpenSci. É uma forma de abrir portas, reduzir barreiras linguísticas e fortalecer a ciência aberta.

O guia traduzido também estabelece uma base importante para futuras iniciativas da rOpenSci, incluindo a possibilidade de uma coorte do programa [**rOpenSci Champions**](https://ropensci.org/champions/) em português. Esse programa é uma iniciativa voltada a pessoas de grupos historicamente e sistematicamente excluídos que desejam contribuir para a rOpenSci e para as comunidades de código aberto e ciência aberta em geral. O programa busca tornar o ecossistema de software científico mais diverso, sustentável e acessível, refletindo a pluralidade das comunidades que ele serve.

Além disso, a tradução do Dev Guide facilita a realização de um projeto piloto de revisão de pacote inteiramente em português, liderado por Ana Carolina Moreno como parte de seu projeto no programa [rOpenSci Champions (coorte 2025)](https://ropensci.org/blog/2025/07/03/champions-2025/). Esse piloto permitirá testar o processo de revisão por pares em outro idioma e ampliar o acesso e a inclusão de novas pessoas no processo de revisão.

Com a conclusão da tradução, planejamos incorporar o aprendizado obtido nesse processo às [diretrizes oficiais da rOpenSci para tradução](https://translationguide.ropensci.org/). O objetivo é atualizar o [guia de tradução](https://translationguide.ropensci.org/) para incluir os acordos e instruções específicos definidos pela equipe de tradução em português, de modo a facilitar futuras colaborações e traduções em outros idiomas. Essa atualização busca registrar as práticas bem-sucedidas do projeto e fortalecer a infraestrutura da rOpenSci para apoiar iniciativas de tradução no futuro.
