---
title: O que significa manter um pacote?
author:
- Maëlle Salmon
date: '2023-02-07'
slug: what-does-it-mean-to-maintain-a-package
categories:
- blog
tags:
- pacote
- manutenção
package_version: 0.1.0
description: Uma tentativa de definir o que significa a manutenção de pacotes, com
  algumas dicas.
params:
  doi: 10.59350/vv6xb-53139
---

Parte do que pretendemos fazer na rOpenSci é cultivar uma comunidade de pessoas mantenedoras de pacotes que se ajudam mutuamente.
Além do suporte durante a manutenção do pacote, também queremos dar suporte às pessoas mantenedores que desejam seguir em frente. As situações podem mudar e pode chegar um momento em que uma pessoa que mantém o pacote queira passar a manutenção para outra. Se uma pessoa mantenedora se encontrar nessa situação e quiser transferir a manutenção, nós ajudaremos [divulgando](/blog/2022/10/17/maintain-or-co-maintain-an-ropensci-package/) e também ajudamos a(s) nova(s) pessoa(s) mantenedora(s) com conselhos, geralmente do tipo "olhe ao redor para ver se há algo que precise de conserto e, em seguida, faça a manutenção de rotina".
Mas o que é manutenção de rotina? Esta postagem é uma tentativa de definir o que envolve a manutenção de um pacote, com algumas dicas.

## Manutenção de pacotes como compromisso de quem assume o pacote

Como mantenedor(a) de pacotes (ou equipe de pessoas mantenedoras),

- você é responsável pelo escopo do pacote: Você quer adicionar uma funcionalidade? A decisão é sua!
- você define o planejamento do trabalho na base de código: você deve pensar em melhorias e organizá-las em marcos.
- você está no controle da qualidade do código: Você quer dedicar mais tempo a esse *pull request*? Ou você aceitará e acumulará um pouco de [dívida técnica](https://en.wikipedia.org/wiki/Technical_debt)? Novamente, a decisão é sua!

No entanto, você não possui apenas esses aspectos técnicos e de produtividade.
Em nossa chamada da comunidade anterior sobre [manutenção de pacotes em R](/commcalls/2020-03-18/), Erin Grand definiu a manutenção de um pacote como "assumir responsabilidade pela comunidade em torno do pacote".
Que ótima maneira de reconhecer as *pessoas* que criam e usam um software!
Como pessoa mantenedora do pacote, um dos seus papéis é apoiar e incentivar uma comunidade ativa de pessoas usuárias e colaboradoras... Isso também foi tema de uma chamada comunitária anterior: [Configure seu pacote para fomentar uma comunidade](/commcalls/apr2021-pkg-community/).

## Manutenção de pacotes como capacidade de resposta

Infelizmente, você não controla toda a agenda de manutenção de um pacote. :sweat\_smile:
A menos que seu pacote não tenha pessoas usuárias visíveis, o trabalho de manutenção provavelmente envolverá algum nível de suporte para as pessoas que usam o pacote, e triagem de *issues*.
Você também pode receber solicitações das pessoas mantenedoras das dependências do seu pacote ou do repositório em que você publicou o pacote (CRAN, Bioconductor).

O suporte a pessoas usuárias, em particular, pode ser uma fonte de alegria: ver o seu pacote sendo usado, ajudar as pessoas a superarem obstáculos, resolver problemas.
Entretanto, todas essas demandas externas podem ser exaustivas e até mesmo estressantes.
Como podemos evitar isso?
Bem, infelizmente, essa é uma situação comum. No entanto, embora não exista uma solução mágica, aqui estão algumas coisas que podem ajudar.

- Manter o pacote em equipe pode ajudar a dividir a carga e também pode fornecer um canal de apoio para você desabafar. Se você achar que precisa de algum suporte prático, considere convidar algumas pessoas co-mantenedoras para o projeto.
- Se você quiser suporte, mas não necessariamente do tipo prático, considere a possibilidade de conversar com outras pessoas mantenedoras. Você pode discutir bugs específicos ou dúvidas específicas de código, ou dicas gerais para gerenciamento ou envolvimento da comunidade. Você pode até mesmo compartilhar alguns problemas e obter apoio. O rOpenSci tem um canal chamado #package-maintenance em seu [slack semiaberto](https://contributing.ropensci.org/resources.html#channels), ao qual todas as pessoas mantenedores de pacotes da rOpenSci devem ter acesso (caso contrário, envie-nos um e-mail).
- Você não precisa resolver todas as *issues*  assim que elas surgirem (além dos prazos rigorosos do CRAN, é claro). Você pode planejar períodos de atividade e inatividade no seu repositório, possivelmente indicando isso claramente em uma *issue* fixada ou na documentação. O manual do pacote targets explica os [períodos de inatividade](https://books.ropensci.org/targets/help.html#out-of-office), e isso pode ser até mesmo o estado usual do pacote, com atividade em ciclos. Seu pacote, sua escolha!
- Você pode ajustar suas diretrizes de contribuição ao longo do tempo. Não é vergonha nenhuma pedir a uma pessoa usuária que forneça um *reprex* em vez de passar horas tentando adivinhar o significado do texto da *issue*. Por meio de diretrizes de contribuição e explicações gentis, você pode transferir perguntas gerais sobre o seu pacote para um local onde seja mais fácil para você, por exemplo, *GitHub Discussions* em vez de *Issues*.
- Verifique se você realmente está recebendo notificações (o e-mail listado está correto? a opção de acompanhar o repositório (*watch*) está ativada?). Não é necessário ler ou agir imediatamente, mas é importante não perder os avisos.
- Você pode escolher onde seu pacote será publicado. Se as regras de um repositório de publicação forem uma fonte de muita dor em comparação com a facilidade de distribuição, você pode optar por deixá-lo.
- Você também pode tentar obter financiamento para o seu trabalho. Consulte, por exemplo, a [chamada de propostas da R Consortium](https://www.r-consortium.org/all-projects/call-for-proposals) (duas vezes por ano).

## Manutenção de pacotes como "arrumação da casa"

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


