---
slug: first-review-experiences
title: Experiências como revisor de pacotes rOpenSci pela primeira vez
date: '2017-09-08'
author: Verena Haunschmid
topicid: 861
tags:
- software
- Software Peer Review
- reviewer
params:
  doi: 
---

Tudo começou em 26 de janeiro<sup>de</sup> deste ano, quando me inscrevi para ser voluntária como
como revisora de pacotes R enviados para a rOpenSci. Minha principal motivação para
querer ser voluntária foi aprender algo novo e
contribuir com a comunidade R de código aberto. Se você está se perguntando por que as
pessoas por trás da rOpenSci estão fazendo isso, você pode ler [Como a rOpenSci usa a revisão de código para promover a ciência reprodutível](https://www.numfocus.org/blog/how-ropensci-uses-code-review-to-promote-reproducible-science/).

Três meses depois, fui contatada por [Maëlle Salmon](https://twitter.com/masalmon) perguntando se eu estava interessada em
revisar o pacote R [`patentsview`](https://github.com/ropensci/patentsview) para a rOpenSci. E sim, eu
estava! Para ser sincera, fiquei um pouco emocionada.

Os pacotes são enviados para a análise da rOpenSci por meio de uma *issue* em seu repositório do GitHub e as revisões também acontecem lá. Portanto, você pode conferir
[todos os envios e as revisões de pacotes anteriores](https://github.com/ropensci/software-review/issues).
Com todas as informações que você obtém da rOpenSci e também com a ajuda da pessoa editora, é fácil fazer a revisão do pacote. Antes de começar, li os guias de revisores (links abaixo) e dei uma olhada em alguns dos pacotes existentes. Instalei o pacote `patentsview` do GitHub e também baixei o código-fonte para que eu pudesse verificar como ele foi implementado.

Comecei testando a funcionalidade principal do pacote executando os exemplos mencionados no README do pacote. Acho que isso é um bom ponto de partida, pois você tem uma ideia do que a pessoa autora deseja alcançar com o pacote. Mais tarde, criei as minhas próprias consultas (observação: esse pacote do R interage com uma API a partir da qual você pode consultar patentes). Durante o processo, eu costumava alternar entre
escrever consultas como uma pessoa usuária normal do pacote
faria e verificava o código. Quando eu via algo no código que
não estava muito claro para mim ou parecia errado, eu voltava a escrever novas
consultas para verificar se o comportamento dos métodos estava como o esperado.

Com essa abordagem, pude dar um feedback ao autor do pacote
o que levou à inclusão de um teste de unidade adicional, uma função auxiliar
que torna o pacote mais fácil de usar, o esclarecimento de uma mensagem de erro
e uma documentação a
primorada. Você pode encontrar a revisão que fiz [aqui](https://github.com/ropensci/software-review/issues/112#issuecomment-303462505).

Há vários pacotes R que me ajudaram a começar a minha revisão,
por exemplo [`devtools`](https://github.com/hadley/devtools) e
[`goodpractice`](https://github.com/MangoTheCat/goodpractice). Estes
também podem ajudá-lo(a) quando você começar a escrever os seus próprios pacotes. Um exemplo de um método muito útil é o `devtools::spell_check()` que
executa uma verificação ortográfica na descrição do pacote e nas páginas do manual.
No início, tive um problema com `goodpractice::gp()` mas Maelle Salmon
(a editora) me ajudou a resolver o problema.

No restante deste artigo, você pode ler o que ganhei pessoalmente ao fazer uma revisão.

### Contribuindo para a comunidade de código aberto

Quando as pessoas pensam em contribuir com a comunidade de código aberto, o primeiro pensamento é sobre a criação de um novo pacote R ou a contribuição para um dos principais pacotes existentes. Mas nem todo mundo tem os recursos (por exemplo, tempo) para fazer isso. Você também não tem ideias incríveis todos os dias
que podem ser imediatamente implementadas em novos pacotes R para serem usados pela comunidade. Além de contribuir com o código, há também muitas outras coisas que podem ser úteis para as outras pessoas usuárias do R, por exemplo, escrever
postagens em blogs sobre problemas que você resolveu, falar em encontros ou revisar
código para ajudar a melhorá-lo. O que eu mais gosto na revisão de código é que as pessoas veem as coisas de forma diferente e têm outras experiências. Como uma pessoa revisora,
você vê um novo pacote da perspectiva do(a) usuário(a), o que pode ser difícil para
o(a) próprio(a) programador(a). Ter outra pessoa para
revisar o código ajuda você a encontrar coisas que estão faltando, porque elas parecem
óbvias para o(a) autor(a) do pacote ou a detectar partes do código que exigem mais
testes. Tive uma ótima sensação quando terminei a revisão, pois eu tinha
ajudado a melhorar um pouco mais um pacote do R que já era incrível.

### A revisão ajuda a aprimorar o seu próprio estilo de codificação

Quando escrevo um código em R, geralmente tento fazê-lo da melhor maneira possível.
O [Guia de estilo R do Google](https://google.github.io/styleguide/Rguide.xml)
é um bom começo para você se acostumar com as práticas recomendadas de codificação no R, e eu também
gostei de ler as [Dicas de Boas Práticas de programação](https://github.com/timoxley/best-practices). Então, normalmente
quando acho que algum trecho de código pode ser aprimorado (com relação à velocidade,
legibilidade ou uso de memória), verifico on-line se posso encontrar uma solução melhor. Muitas vezes, você simplesmente acha que algo não pode ser
melhorado porque você sempre o fez de uma determinada maneira ou porque da última vez que você verificou não havia uma solução melhor. É nesse momento que você pode seguir
o código de outras pessoas. Eu faço isso lendo seus blogs, seguindo muitos(as) usuários(as)
no Twitter e verificando as suas contas no GitHub. Revisar um pacote R
também me ajudou muito a obter novas ideias, porque eu
verifiquei cada função com muito mais cuidado do que quando leio publicações em blogs.
Na minha opinião, um bom código não usa apenas o melhor pacote para cada problema, mas também faz com que os pequenos detalhes sejam bem implementados. Uma coisa que eu
costumava fazer errado por muito tempo era o preenchimento de data.frames, até que
encontrei uma solução melhor (muito mais rápida)
[solução no stackoverflow](https://stackoverflow.com/a/29419402).
E com relação a isso, você pode aprender muito com o código de outra pessoa. O que achei muito legal no
pacote que analisei foi o uso de pequenas funções auxiliares (consulte
[utils.R](https://github.com/ropensci/patentsview/blob/c03e1ab2537873d7a9b76025b0072953efb475c1/R/utils.R)).
Funções como `paste0_stop` e `paste0_message` tornam o restante do
código muito mais fácil de ler.

### É um bom começo para você escrever os seus próprios pacotes

Ao revisar um pacote do R, você verifica o código como uma pessoa usuária realmente observadora. Notei muitas coisas com as quais normalmente não nos importamos ao usar um pacote R, como os comentários, a utilidade da documentação e dos exemplos, e também quão bem os testes unitários cobrem o código. Acredito que
revisar alguns bons pacotes pode prepará-lo(a) muito bem para escrever os seus próprios pacotes.

### Você quer contribuir com a rOpenSci?

Se eu te motivei a se tornar um(a) revisor(a) da rOpenSci, inscreva-se! Aqui está uma lista de coisas úteis se você quiser se tornar uma pessoa revisora da rOpenSci como eu.

- [Formulário de inscrição (leva apenas um minuto)](/onboarding/)

- [Informações para revisores](https://devguide.ropensci.org/reviewerguide.html)

- [Guia de revisão da Mozilla](https://mozillascience.github.io/codeReview/review.html)

- Enquanto escrevia esta postagem para o blog, encontrei um bom artigo sobre [contribuição
  para o tidyverse](https://www.tidyverse.org/articles/2017/08/contributing/) que, na minha opinião, também é muito aplicável para a outros pacotes R.

Se você estiver interessado(a) em enviar ou revisar um pacote R, gostaria de convidá-lo(a) para a [Chamada da comunidade sobre revisão e integração de software rOpenSci](/blog/2017/08/31/comm-call-v14).
