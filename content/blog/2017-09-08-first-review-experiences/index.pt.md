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

Tudo começou em 26 de janeiro<sup>de</sup> deste ano, quando me inscrevi para ser voluntário como
como revisor de pacotes R enviados para a rOpenSci. Minha principal motivação para
querer ser voluntário foi aprender algo novo e
contribuir com a comunidade de código aberto do R. Se você está se perguntando por que o
pessoas por trás do rOpenSci estão fazendo isso, você pode ler [Como o rOpenSci usa a revisão de código para promover a ciência reprodutível](https://www.numfocus.org/blog/how-ropensci-uses-code-review-to-promote-reproducible-science/).

Três meses depois, fui contatado por [Maëlle Salmon](https://twitter.com/masalmon) perguntando se eu estava interessado em
revisar o pacote R [`patentsview`](https://github.com/ropensci/patentsview) para o rOpenSci. E sim, eu
estava! Para ser sincero, fiquei um pouco emocionado.

Os pacotes são enviados para análise da rOpenSci por meio de uma edição para o site
no repositório do GitHub e as revisões também acontecem lá. Portanto, você pode conferir
[todos os envios e revisões de pacotes anteriores](https://github.com/ropensci/software-review/issues).
Com todas as informações que você
que você obtém do rOpenSci e também com a ajuda do editor, é fácil
para você fazer a revisão do pacote. Antes de começar, li a seção
guias do revisor (links abaixo) e dei uma olhada em alguns dos pacotes existentes.
revisões existentes. Instalei o pacote `patentsview` do GitHub e também o pacote
baixei o código-fonte para que eu pudesse verificar como ele foi implementado.

Comecei testando a funcionalidade principal do pacote com
executando os exemplos que foram mencionados no README do pacote
do pacote. Acho que isso é uma boa maneira de você
ponto de partida, pois você tem uma ideia do que o autor deseja
você quer alcançar com o pacote. Mais tarde, criei meu
próprias consultas (observação: esse pacote do R interage com uma API a partir da qual você pode usar o R.
você pode consultar patentes). Durante o processo, eu costumava alternar entre
escrever consultas como um usuário normal do pacote
faria e verificava o código. Quando eu via algo no código que
não estava muito claro para mim ou parecia errado, eu voltava a escrever novas
consultas para verificar se o comportamento dos métodos era o esperado.

Com essa abordagem, pude dar feedback ao autor do pacote
o que levou à inclusão de um teste de unidade adicional, uma função auxiliar
que torna o pacote mais fácil de usar, o esclarecimento de uma mensagem de erro
e uma documentação aprimorada. Você pode encontrar a revisão que fiz [aqui](https://github.com/ropensci/software-review/issues/112#issuecomment-303462505).

Há vários pacotes R que me ajudaram a começar minha análise,
por exemplo [`devtools`](https://github.com/hadley/devtools) e
[`goodpractice`](https://github.com/MangoTheCat/goodpractice). Estes
também podem ajudá-lo quando você começar a escrever seus próprios pacotes. E
exemplo de um método muito útil é o `devtools::spell_check()` que
executa uma verificação ortográfica na descrição do pacote e nas páginas do manual.
No início, tive um problema com `goodpractice::gp()` mas Maelle Salmon
(a editora) me ajudou a resolver o problema.

No restante deste artigo, você pode ler o que ganhei pessoalmente ao fazer um
revisão.

### Contribuindo para a comunidade de código aberto

Quando as pessoas pensam em contribuir com a comunidade de código-fonte aberto, a palavra-chave é "contribuir".
primeiro pensamento é sobre a criação de um novo pacote R ou a contribuição para um pacote de código aberto.
dos principais pacotes existentes. Mas nem todo mundo tem os recursos que você precisa.
(por exemplo, tempo) para fazer isso. Você também não tem ideias incríveis a cada dois dias
que podem ser implementadas imediatamente em novos pacotes R para serem usados por você.
comunidade. Além de contribuir com o código, você também pode fazer muitas outras coisas.
outras coisas que podem ser úteis para outros usuários do R, por exemplo, escrever
postagens em blogs sobre problemas que você resolveu, falar em encontros ou revisar
código para ajudar você a melhorá-lo. O que eu mais gosto na revisão de código é que
é que as pessoas veem as coisas de forma diferente e têm outras experiências. Como revisor,
você vê um novo pacote da perspectiva do usuário, o que pode ser difícil para
o próprio programador. Ter outra pessoa
revisar o código ajuda você a encontrar coisas que estão faltando, porque elas parecem
óbvios para o autor do pacote ou detectar partes do código que exigem mais
testes. Tive uma ótima sensação quando terminei a revisão, pois eu tinha
ajudado a melhorar um pacote do R que já era incrível.

### A revisão ajuda a aprimorar seu próprio estilo de codificação

Quando escrevo código R, geralmente tento fazer isso da melhor maneira possível.
[Guia de estilo R do Google](https://google.github.io/styleguide/Rguide.xml)
é um bom começo para você se acostumar com as práticas recomendadas de codificação no R, e eu também
gostei de ler o [Práticas recomendadas de programação
Dicas](https://github.com/timoxley/best-practices). Então, normalmente
quando acho que algum trecho de código pode ser aprimorado (com relação à velocidade,
legibilidade ou uso de memória), verifico on-line se posso encontrar um código que possa ser melhorado.
solução melhor. Muitas vezes, você simplesmente acha que algo não pode ser
melhorado porque você sempre o fez de uma determinada maneira ou porque da última vez que o fez
você verificou, não havia uma solução melhor. É nesse momento que você pode seguir
o código de outras pessoas. Eu faço isso lendo seus blogs, seguindo muitos códigos R
no Twitter e verificando suas contas no GitHub. Revisando um código R
também me ajudou muito a obter novas ideias, porque eu
verifiquei cada função com muito mais cuidado do que quando leio publicações em blogs.
Na minha opinião, um bom código não usa apenas o melhor pacote para cada função, mas também usa o melhor pacote para cada função.
problema, mas também os pequenos detalhes são bem implementados. Uma coisa que eu
costumava fazer errado por muito tempo era o preenchimento de data.frames, até que
encontrei um método melhor (muito mais rápido)
[solução no stackoverflow](https://stackoverflow.com/a/29419402).
E com relação a isso, você
você pode aprender muito com o código de outra pessoa. O que eu achei muito legal em
pacote que analisei foi o uso de pequenas funções auxiliares (consulte
[utils.R](https://github.com/ropensci/patentsview/blob/c03e1ab2537873d7a9b76025b0072953efb475c1/R/utils.R)).
Funções como `paste0_stop` e `paste0_message` fazem com que o restante do
código muito mais fácil de ler.

### É um bom começo para você escrever seus próprios pacotes

Ao revisar um pacote do R, você verifica o código como um observador muito atento
usuário. Notei muitas coisas com as quais você normalmente não se importa ao usar o
um pacote R, como os comentários, a utilidade da documentação e a
exemplos são úteis, e também o quanto os testes unitários cobrem o código. Eu acho que
revisar alguns bons pacotes pode preparar você muito bem para escrever o seu
seus próprios pacotes.

### Você quer contribuir com o rOpenSci?

Se eu motivei você a se tornar um revisor da rOpenSci, inscreva-se! Aqui você encontra
está uma lista de coisas úteis se você quiser se tornar um revisor da rOpenSci
como eu.

- [Formulário para você se inscrever (leva apenas um minuto)](/onboarding/)

- [Informações para revisores](https://devguide.ropensci.org/reviewerguide.html)

- [Guia de revisão da Mozilla](https://mozillascience.github.io/codeReview/review.html)

- Enquanto escrevia esta postagem do blog, encontrei um bom artigo sobre [contribuição
  para o tidyverse](https://www.tidyverse.org/articles/2017/08/contributing/) que é
  que, em minha opinião, também se aplica a outros pacotes do R.

Se você estiver interessado em enviar ou revisar um pacote R, gostaria de convidá-lo para o [ Chamada da comunidade sobre revisão e integração de software rOpenSci](/blog/2017/08/31/comm-call-v14).


