---
title: O que significa manter um pacote?
author:
- Maëlle Salmon
date: '2023-02-07'
slug: what-does-it-mean-to-maintain-a-package
categories:
- blog
tags:
- package
- maintenance
package_version: 0.1.0
description: Uma tentativa de definir o que significa a manutenção de pacotes, com
  algumas dicas.
params:
  doi: 10.59350/vv6xb-53139
---

Parte do que pretendemos fazer na rOpenSci é cultivar uma comunidade de mantenedores de pacotes que se ajudam mutuamente.
Além do suporte durante a manutenção do pacote, também queremos dar suporte aos mantenedores que desejam seguir em frente. As situações podem mudar e pode chegar um momento em que um mantenedor queira passar a manutenção para outro. Se um mantenedor se encontrar nessa situação e quiser transferir a manutenção, nós o ajudaremos da seguinte forma [publicidade](/blog/2022/10/17/maintain-or-co-maintain-an-ropensci-package/) e também ajudamos o(s) novo(s) mantenedor(es) com conselhos, geralmente do tipo "olhe ao redor para ver se há algo que precise de conserto e, em seguida, faça a manutenção de rotina".
Mas o que é manutenção de rotina? Esta postagem é uma tentativa de definir o que significa manutenção de pacotes, com algumas dicas.

## Manutenção de pacotes como propriedade

Como mantenedor de pacotes (ou equipe de mantenedores),

- você é responsável pelo escopo do pacote: Você quer adicionar um recurso? A decisão é sua!
- você está encarregado de planejar o trabalho na base de código: Você deve pensar em melhorias e organizá-las em marcos.
- você está no controle da qualidade do código: Você quer dedicar mais tempo a esse pull request? Ou você aceitará e acumulará um pouco de [dívida técnica](https://en.wikipedia.org/wiki/Technical_debt)? Novamente, a decisão é sua!

No entanto, você não possui apenas esses aspectos técnicos e de produtividade.
Em nossa chamada da comunidade anterior sobre [Manutenção de um pacote R](/commcalls/2020-03-18/) Erin Grand definiu a manutenção de um pacote como "propriedade em torno da comunidade do pacote".
Que ótima maneira de reconhecer a *pessoas* que criam e usam um software!
Como mantenedor de pacotes, uma das suas funções é apoiar e incentivar uma comunidade próspera de usuários e colaboradores... Você também é o tema de uma chamada anterior da comunidade: [Configure seu pacote para promover uma comunidade](/commcalls/apr2021-pkg-community/).

## Manutenção de pacotes como capacidade de resposta

Agora, infelizmente, você não possui toda a agenda de manutenção de pacotes. :sweat\_smile:
A menos que seu pacote não tenha usuários visíveis, seu trabalho de manutenção provavelmente será algum tipo de suporte ao usuário e triagem de problemas.
Você também pode receber solicitações dos mantenedores das dependências do seu pacote ou do repositório em que você publicou o pacote (CRAN, Bioconductor).

O suporte ao usuário, em particular, pode ser uma fonte de alegria: ver o seu pacote sendo usado, ajudar as pessoas a superar obstáculos, resolver problemas.
Entretanto, todas essas demandas externas podem ser exaustivas e até mesmo estressantes.
Como podemos evitar isso?
Bem, infelizmente, essa é uma situação comum. No entanto, embora não exista uma solução mágica, aqui estão algumas coisas que podem ajudar.

- A manutenção do pacote como uma equipe pode ajudar a dividir a carga e também pode fornecer um canal de apoio para você desabafar. Se você achar que precisa de algum suporte prático, considere convidar alguns co-mantenedores para o projeto.
- Se você quiser suporte, mas não necessariamente do tipo prático, considere a possibilidade de conversar com outros mantenedores. Você pode discutir bugs específicos ou problemas de codificação, ou dicas gerais para gerenciamento ou envolvimento da comunidade. Você pode até mesmo compartilhar alguns problemas e obter simpatia. O rOpenSci tem um canal #package-maintenance em seu [slack semiaberto](https://contributing.ropensci.org/resources.html#channels) ao qual todos os mantenedores de pacotes da rOpenSci devem ter acesso (caso contrário, envie-nos um e-mail).
- Você não precisa resolver todos os problemas assim que eles surgirem (além dos prazos rigorosos do CRAN, é claro). Você pode planejar períodos de atividade e inatividade no seu repositório, possivelmente indicando isso claramente em um problema fixado ou na documentação. O manual de metas explica [períodos de ausência do escritório](https://books.ropensci.org/targets/help.html#out-of-office) mas a inatividade também pode muito bem ser o estado mais comum do seu pacote, com atividade em rajadas. Seu pacote, sua escolha!
- Você pode ajustar suas diretrizes de contribuição ao longo do tempo. Não é vergonha nenhuma pedir a um usuário que forneça uma resposta em vez de passar horas tentando adivinhar o significado do texto do problema. Por meio de diretrizes de contribuição e explicações gentis, você pode transferir perguntas gerais sobre o seu pacote para um local onde seja mais fácil para você, por exemplo, GitHub Discussions em vez de Issues.
- Certifique-se de receber as notificações (seu endereço de e-mail correto está listado, você observa seu próprio repositório?) Você não precisa ler ou agir sobre elas imediatamente, mas é bom não perdê-las.
- Você pode escolher onde seu pacote será publicado. Se as regras de um repositório de publicação forem uma fonte de muita dor em comparação com a facilidade de distribuição, você pode optar por deixá-lo.
- Você também pode tentar obter financiamento para o seu trabalho. Consulte, por exemplo, a seção [R Consortium call for proposals](https://www.r-consortium.org/all-projects/call-for-proposals) (duas vezes por ano).

## Manutenção de pacotes como serviço de limpeza

Além das solicitações de recursos interessantes, a manutenção de pacotes geralmente garante um trabalho mais "rotineiro".

Você pode tentar manter-se atualizado sobre as práticas recomendadas de desenvolvimento de pacotes (e diretrizes externas :sweat\_smile:) por meio dos canais de desenvolvimento de pacotes.
Lembre-se de que você [Boletim informativo da rOpenSci](/news) tem um canto de desenvolvimento de pacotes :wink:
Após perguntas sobre, por exemplo, o [fórum rOpenSci](https://discuss.ropensci.org/) ou no fórum da comunidade Posit [Categoria de desenvolvimento de pacotes](https://community.rstudio.com/c/package-development/11) pode ser uma forma de monitoramento de notícias e prática deliberada.
Com essa leitura/acompanhamento, você pode chegar a um novo entendimento de um método de teste, pode descobrir que é melhor trocar uma dependência por outra, etc.

Agora, quando e como você aprimora seu pacote?
Você pode tentar pagar alguma dívida técnica sempre que planejar algum trabalho em um recurso.
Você pode imitar o [limpeza de primavera do tidyverse](/blog/2022/03/18/ropensci-news-digest-march-2022/#get-inspired-by-the-tidyverse-spring-cleaning) você pode imitar a limpeza de primavera do tidyverse, tanto a ideia quanto os itens reais listados na lista de verificação pública, como a atualização das configurações de integração contínua.
Se esse trabalho não parecer divertido, novamente, fazê-lo em equipe pode ajudar, ou você pode participar de um [evento de trabalho conjunto do rOpenSci](/events) para que você tenha um tempo dedicado para trabalhar na manutenção regular de pacotes em um ambiente divertido.

## Conclusão

Nesta postagem, tentamos dar uma visão geral do que significa manter um pacote: propriedade do escopo, código e comunidade; capacidade de resposta autocontrolada a solicitações externas; manutenção regular.
Tudo isso pode dar muito trabalho e precisa ser contrabalançado com as recompensas que você recebe como desenvolvedor de pacotes (dependendo da sua situação, elas podem incluir: satisfação pessoal de criar uma ferramenta útil; alegria de colaborar com outras pessoas; renda; desenvolvimento de experiência em codificação; demonstração de suas habilidades; reconhecimento do seu trabalho).

Se você sentir que não há equilíbrio, considere suas necessidades. Talvez seja hora de tentar recrutar co-mantenedores ou participar de uma comunidade de outros desenvolvedores, ou até mesmo encontrar um novo mantenedor ou retirar o pacote.
Para os pacotes rOpenSci, podemos ajudar anunciando a necessidade de ajuda do seu pacote, portanto, sinta-se à vontade para entrar em contato conosco.
Por último, mas não menos importante, nós da rOpenSci gostaríamos de agradecer a todos os mantenedores de pacotes, passados, presentes e futuros! O trabalho que você faz, fez ou fará é valioso e incrível, e nós realmente o apreciamos!

Estamos sempre tentando pensar em maneiras de apoiar os mantenedores de pacotes. Fique à vontade para adicionar um comentário abaixo com qualquer sugestão que você possa ter.


