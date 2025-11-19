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

### Tópicos que você *que vorealmente* você precisa de ajuda: obstáculos ao desenvolvimento

Às vezes, um obstáculo com o qual você não sabe como lidar aparece no caminho para o seu próximo marco de desenvolvimento.
Nesse estágio, você pode

- pedir ajuda em um canal comum (por exemplo, o canal de manutenção de pacotes do rOpenSci Slack, se você estiver nesse canal) [espaço de trabalho](https://contributing.ropensci.org/resources.html#channels); [Fórum de discussão rOpenSci](/blog/2022/01/11/ropensci-forum/); [Fórum da comunidade Posit](https://community.rstudio.com/));
- abra um problema em uma dependência upstream se for aí que está o problema real;
- abra um problema em seu repositório descrevendo o problema.

Por exemplo, ao trabalhar no pacote tinkr, Maëlle abriu um arquivo [problema muito específico](https://github.com/ropensci/tinkr/issues/9) que acabou recebendo uma ajuda externa milagrosa.

Você também pode adicionar o rótulo "procura-se ajuda" a um relatório de bug ou solicitação de recurso que outra pessoa abriu em seu pacote!
Com um pouco de sorte, o próprio criador do problema poderá participar.

### Tópicos em que você poderia obter ajuda: delegação ou vontade de aumentar a sua equipe

Às vezes, há algumas ideias de manutenção ou aprimoramento que você tem para o seu pacote e para as quais não tem tempo no momento ou que não são urgentes.
Por exemplo, [atualizar a infraestrutura de testes para testar a terceira edição](https://github.com/ropensci/geojsonio/issues/183) ou [adicionar suporte de terra a um pacote espacial](https://github.com/ropensci/landscapetools/issues/33).
Ao listá-los em seu rastreador de problemas,

- você mostra aos usuários curiosos que eles estão em sua mente,
- você pode organizar seu próprio trabalho,
- e pode receber ajuda externa, especialmente se você solicitar explicitamente ajuda com o rótulo "help wanted".

## Etapa 2. Aprimore seu problema e o guia de contribuição

Quando você tiver um tópico em mente, deixe o título e o texto da questão o mais claro possível.
Mesmo que você seja o único a corrigir o problema no final, no futuro você ficará feliz por não ter anotado um comentário indecifrável.
Se necessário, faça links para recursos e certifique-se de incluir o contexto.
Aborde a redação de um problema em seu próprio repositório da mesma forma que você faria em um repositório que não é seu: descrição do desafio, resultado desejado, compensações, etc.

Além dos esforços em uma questão individual, é fundamental que você tenha um [guia de contribuição](https://devguide.ropensci.org/collaboration.html#contributing-guide) destacando tudo o que você deve saber sobre como contribuir para o seu pacote: ferramentas usadas, preferências de estilo e design. [^ctb]
Não duplique recursos externos; em vez disso, aponte para eles.
Tente ser um pouco flexível para não sobrecarregar ou assustar os colaboradores com requisitos muito rígidos: você provavelmente pode terminar os PRs sozinho ou ensiná-los aos poucos.

[^ctb]: Você pode encontrar<https://contributing.streamlit.app/> mas outra maneira de aprimorar seu guia de contribuição é continuar a alterá-lo com base na sua experiência com novos colaboradores.

## Etapa 3. Divulgue sua necessidade de ajuda

Em primeiro lugar, para os pacotes rOpenSci, as questões de "procura-se ajuda" são transmitidas para a comunidade por meio do site [site](/help-wanted) e publicações nas mídias sociais!

Você também pode compartilhá-lo em suas próprias redes: espaço de trabalho rOpenSci slack, suas mídias sociais, um canal de comunicação local do R User Group etc.

Você também pode considerar a possibilidade de aproveitar eventos hack-a-thon como [Hacktoberfest](https://hacktoberfest.com/) por exemplo (se você adicionar o ["hacktoberfest" ao seu repositório](https://hacktoberfest.com/participation/)), mas em eventos realmente grandes como esse você não pode necessariamente contar com alguém que descubra seu pequeno problema nesse mar de problemas.

## Etapa 4. Agradeça aos colaboradores

Se alguém responder a uma questão ou abrir uma RP, tente ser receptivo.
Verifique se suas configurações permitem que você seja notificado sobre comentários de problemas e PRs. Talvez seja necessário [observar](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github/managing-subscriptions-for-activity-on-github/viewing-your-subscriptions) seu repositório.

Reconhecer contribuições [generosamente](https://devguide.ropensci.org/collaboration.html?q=generous#attributions)!

## Não se desespere

Mesmo que você tenha escrito uma excelente edição, talvez ela não seja escolhida.
Nesse caso, considere a possibilidade de fazer uma nova transmissão, peça dicas gerais aos seus colegas mantenedores e considere a possibilidade de solicitar financiamento (portanto, tempo, seu ou de um contratante externo) para seus esforços de manutenção.
Consulte, por exemplo, o site [R Consortium duas vezes por ano para solicitar propostas](https://www.r-consortium.org/all-projects/call-for-proposals#Rstats).

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


