---
title: Atrair pessoas colaboradoras com *issues* marcadas como "procura-se ajuda"
author:
- Maëlle Salmon
- Yanina Bellini Saibene
- Steffi LaZerte
date: '2023-09-19'
slug: help-wanted
featured: true
tags:
- comunidades
- pacotes
- boas vindas
- manutenção
- contribuidores 
description: Dicas sobre como criar e divulgar issues de "procura-se ajuda" (*help wanted*).
params:
  doi: 10.59350/zh01g-yby98
---

A manutenção de um pacote pode ser uma atividade solitária, o que às vezes representa um problema se você preferir trabalhar em equipe ou se encontrar um problema muito espinhoso para você.
Além de pertencer a uma comunidade de mantenedores (como a rOpenSci :wink:), para obter ajuda colaborativa e comiseração, você pode tentar criar uma comunidade de colaboradores em torno do seu pacote!
Nesta publicação, exploraremos uma ferramenta que ajudará você a atingir esse objetivo: as *issues* marcadas como "procura-se ajuda" (*"help wanted"*), com os quais seu repositório pode atrair e manter novas pessoas desenvolvedoras! Discutiremos o que são *issues* de "procura-se ajuda", quais são as quatro etapas para solicitar ajuda externa e lembraremos que esse pode ser um processo benéfico, mesmo que você não acabe atraindo ajuda.

*Observe que esta postagem usa a terminologia específica do GitHub, como *issues* e *labels*. Se você usa o GitLab ou outra plataforma git, provavelmente há um equivalente.* :slightly_smiling_face:

## O que são *issues* de "procura-se ajuda"?

 As *issues* "procura-se ajuda" são *issues* para as quais você aceitaria ou precisaria de contribuições externas.
Elas são rotuladas com a *label* padrão da comunidade "help wanted" (em inglês) ([exemplo](https://github.com/ropensci/osmextract/issues/286); opcionalmente com um emoji, se você executou [`usethis::use_tidy_github_labels()`](https://usethis.r-lib.org/reference/use_github_labels.html)).

Para alguns desses casos, quando a tarefa não é muito complexa, ou quando serve como uma boa porta de entrada para sua quem está conhecendo o código, você também pode usar a *label* [*"good first issue"* (bom primeiro problema)](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/encouraging-helpful-contributions-to-your-project-with-labels).

A seguir, abordaremos quatro etapas para solicitar ajuda externa.

## Etapa 1. Selecionar *issues* de "procura-se ajuda"

### Temas que você *realmente* precisa de ajuda: obstáculos ao desenvolvimento

Às vezes, um obstáculo com o qual você não sabe como lidar aparece no caminho para o seu próximo marco de desenvolvimento.
Nesse estágio, você pode

- pedir ajuda em um canal comum (por exemplo, o canal de manutenção de pacotes no Slack da rOpenSci, se você estiver [nesse canal](https://contributing.ropensci.org/resources.html#channels); [Fórum de discussão da rOpenSci](/blog/2022/01/11/ropensci-forum/); [Fórum da comunidade Posit](https://community.rstudio.com/));
- abra uma *issue* em uma dependência upstream se for aí onde está o problema real;
- abra uma *issue* no seu repositório descrevendo o problema.

Por exemplo, ao trabalhar no pacote tinkr, Maëlle abriu uma [*issue* muito específica](https://github.com/ropensci/tinkr/issues/9) que acabou recebendo uma ajuda externa milagrosa.

Você também pode adicionar a *label* "procura-se ajuda" a um informe de erro ou solicitação de funcionalidade que outra pessoa abriu em seu pacote!
Com um pouco de sorte, a própria pessoa que criou a *issue* poderá participar.

### Temas em que você poderia obter ajuda: delegar ou vontade de aumentar a sua equipe

Às vezes, há algumas ideias de manutenção ou aprimoramento que você tem para o seu pacote e para as quais não tem tempo no momento ou que não são urgentes.
Por exemplo, [atualizar a infraestrutura de testes para utilizar a terceira edição do pacote testthat](https://github.com/ropensci/geojsonio/issues/183) ou [adicionar suporte do pacote terra a um pacote espacial](https://github.com/ropensci/landscapetools/issues/33).
Ao adicioná-los em sua lista de *issues*,

- você mostra para as pessoas usuárias curiosas que essas ideias estão em sua mente,
- você pode organizar seu próprio trabalho,
- e pode receber ajuda externa, especialmente se você solicitar explicitamente ajuda com a *label* "procura-se ajuda".

## Etapa 2. Aprimore a sua *issue* e o guia de contribuição

Quando você tiver um tópico em mente, deixe o título e o texto da *issue* o mais claro possível.
Mesmo que você seja a única pessoa a corrigir o problema no final, no futuro você ficará feliz por não ter anotado um comentário indecifrável.
Se necessário, faça links para recursos e certifique-se de incluir o contexto.
Aborde a redação de uma *issue* em seu próprio repositório da mesma forma que você faria em um repositório que não é seu: descrição do desafio, resultado desejado, perdas e ganhos (*trade-offs*), etc.

Além dos esforços em uma *issue* individual, é fundamental que você tenha um [guia de contribuição](https://devguide.ropensci.org/collaboration.html#contributing-guide) destacando tudo o que é necessário saber sobre como contribuir para o seu pacote: ferramentas usadas, e preferências de estilo e design. [^ctb]
Não duplique recursos externos; em vez disso, faça um link para eles.
Tente ser um pouco flexível para não sobrecarregar ou assustar as pessoas colaboradoras com requisitos muito rígidos: você provavelmente pode terminar os PRs sozinho ou ensiná-los aos poucos.

[^ctb]: Você pode achar <https://contributing.streamlit.app/> útil, mas outra maneira de aprimorar seu guia de contribuição é continuar a alterá-lo com base na sua experiência com novas colaborações.

## Etapa 3. Divulgue sua necessidade de ajuda

Em primeiro lugar, para os pacotes da rOpenSci, as *issues* marcadas com a *label* "procura-se ajuda" são transmitidas para a comunidade por meio do [site](/help-wanted) e de publicações nas mídias sociais!

Você também pode compartilhá-lo em suas próprias redes: no slack da rOpenSci, em suas redes sociais, um canal de comunicação local de pessoas usuárias de R, etc.

Você também pode considerar a possibilidade de aproveitar eventos hack-a-thon como [Hacktoberfest](https://hacktoberfest.com/) por exemplo (se você adicionar a *label* ["hacktoberfest" ao seu repositório](https://hacktoberfest.com/participation/)), mas em eventos realmente grandes como esse você não pode necessariamente contar que alguém descubra sua pequena *issue* nesse mar de *issues*.

## Etapa 4. Agradeça as pessoas colaboradoras

Se alguém responder a uma questão ou abrir uma RP, tente ser receptivo.
Verifique se suas configurações permitem que você receba notificações sobre comentários de *issues* e PRs. Talvez seja necessário [habilitar a opção *watch*](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github/managing-subscriptions-for-activity-on-github/viewing-your-subscriptions) no seu repositório.

Reconheça contribuições [generosamente](https://devguide.ropensci.org/collaboration.html?q=generous#attributions)!

## Não se desespere

Mesmo que você tenha escrito uma excelente *issue*, talvez ela não seja escolhida.
Nesse caso, considere a possibilidade de fazer uma nova divulgação, peça dicas gerais para as pessoas mantenedoras que você conhece e considere a possibilidade de solicitar um financiamento (portanto, tempo, seu ou de uma pessoa externa contratada) para seus esforços de manutenção.
Por exemplo, o site da [R Consortium abre uma chamada para solicitar propostas de financiamento duas vezes por ano](https://www.r-consortium.org/all-projects/call-for-proposals#Rstats).

Mesmo que ninguém resolva o problema no final, passar por esse processo pode ser útil, pois dá a você a chance de pensar detalhadamente sobre o problema e considerar possíveis resoluções, o que pode ajudá-lo a resolver o problema por conta própria.
Além disso, um problema bem documentado é uma ótima maneira de documentar suas decisões sobre o software de forma transparente e pode ajudar futuros usuários e colaboradores a entender os motivos das suas escolhas.

## Conclusão

Abrir edições de "procura-se ajuda" pode ser uma forma de aumentar a comunidade de colaboradores do seu pacote.
Elas podem ser uma porta melhor para a contribuição do que edições menos específicas com uma lista de tarefas necessárias, já que são menos sobrecarregadas.
Os colaboradores podem consertar um problema "help wanted" e depois sair, ou ir em frente e resolver mais problemas.
Às vezes, uma conversa nos comentários pode ajudar você a encontrar uma solução, mesmo que um colaborador não envie um PR.

Como colaborador, sempre comente um problema antes de resolvê-lo, para garantir que ele ainda esteja atualizado e que ninguém mais esteja preparando um PR duplicado no momento!
Como seria irritante se você trabalhasse para nada.

Para obter mais informações sobre como fomentar uma comunidade em torno do seu pacote, você pode aproveitar a gravação e os materiais em nosso passado [chamada da comunidade sobre o tema](/commcalls/apr2021-pkg-community/).


