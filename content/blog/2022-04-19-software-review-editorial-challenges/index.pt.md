---
title: Desafios e soluções editoriais na revisão de software por pares
author:
- Maëlle Salmon
- Noam Ross
date: '2022-04-19T00:00:02-07:00'
slug: software-review-editorial-challenges
translator: Francesca Belem Lopes Palmeira
tags:
- Software Peer Review
- editors
package_version: 0.1.0
description: Os desafios encontrados pelas pessoas editoras e as medidas que tomamos para
  tentar aliviar esses problemas.
featured: true
params:
  doi: 10.59350/tfy8g-0e676
---

rOpenSci [Revisão de software por pares](/software-review/) e [Revisão de software estatístico por pares](/software-review/) dependem do trabalho voluntário de revisores(as) e editores(as).
Os(As) editores(as) gerenciam o fluxo diário de envios, recrutam revisores(as) e orientam o processo de revisão por pares do início ao fim (Sua função, como grande parte do nosso processo, é [codificada no Guia do Desenvolvedor da rOpenSci](https://devguide.ropensci.org/editorguide.html)). Embora muitas pessoas membros da nossa comunidade tenham participado do processo de revisão por pares, apenas algumas se envolveram como editoras convidadas. Aqui, pensamos em esclarecer alguns dos desafios que nossos(as) editores(as) enfrentam e algumas das soluções que encontramos ao longo dos anos, para tornar essa parte do nosso trabalho mais transparente.

## Decisões de escopo

Depois que um pacote é enviado, antes de receber um(a) editor(a) e revisores, o(a) Editor(a)-chefe rotativo(a) deve avaliar se ele está *no escopo* para o processo de revisão. Tradicionalmente, o [escopo](https://devguide.ropensci.org/policies.html#aims-and-scope) da rOpenSci tem se concentrado em pacotes que gerenciam o ciclo de vida dos dados de pesquisa. Isso serve para que os pacotes da rOpenSci formem um conjunto coerente de ferramentas e também para nos limitar a pacotes que nossos(as) editores(as) e revisores(as) possam analisar com padrões e conhecimentos relevantes.

As decisões sobre o escopo podem ser complicadas e, embora não haja como contornar essa complexidade, descobrimos que ficou mais fácil ao refinar as [descrições de escopo](https://devguide.ropensci.org/policies.html#aims-and-scope) ao longo do tempo, à medida que temos mais casos extremos.
Melhores frases e exemplos também ajudam as pessoas autoras a avaliar o possível escopo de seus pacotes antes de enviá-los. Agora que o nosso escopo [está se expandindo para incluir pacotes estatísticos](https://stats-devguide.ropensci.org/overview.html#overview-categories) esperamos continuar a refinar essas categorias nos próximos meses e anos.

Quando o escopo de um pacote é ambíguo, a pessoa Editora-chefe conduz uma discussão no canal editorial do Slack com outros(as) editores(as) para chegar a um consenso.
Nessas discussões, reconhecemos que alguns de nós podem ter mais experiência em alguns tópicos e, às vezes, até consultamos especialistas externos à diretoria para obter mais insights.

Observe que incentivamos as pessoas autoras de pacotes a enviar uma *consulta pré-submissão* antes de um envio completo, para esclarecer qualquer dúvida sobre o escopo.

## Recrutamento e substituição de revisores

A revisão de um pacote toma um tempo precioso das agendas ocupadas das pessoas revisoras.
Esperamos que a experiência seja valiosa para as pessoas avaliadoras (e tentamos facilitar a tarefa com o nosso [guia da pessoa revisora](https://devguide.ropensci.org/reviewerguide.html)), mas consideramos que é uma tarefa e tanto, que exige aproximadamente o mesmo tempo que a revisão de um artigo científico.
Embora isto possa aumentar a dificuldade de encontrar revisores disponíveis, temos uma lista de [critérios para a escolha de revisores](https://devguide.ropensci.org/editorguide.html#criteria-for-choosing-a-reviewer) para garantir a diversidade (tanto em termos de habilidades quanto de formação) e para formar continuamente um grupo de pessoas revisoras experientes sem sobrecarregar nenhuma delas.

No ano passado, lançamos um [novo formulário de voluntariado para revisores](/blog/2021/11/18/devguide-0.7.0/#a-new-form-for-volunteer-reviewing) que nos permite coletar dados mais refinados sobre conhecimentos técnicos e tópicos, bem como uma pergunta opcional: "Você se considera parte de um grupo subrepresentado nas áreas de ciência de dados, programação ou em seu campo principal de trabalho?
Mantemos essas informações em um banco de dados (gerenciado pelo Airtable), juntamente com o histórico de avaliações de cada pessoa revisora. Esse banco de dados é um recurso para os(as) editores(as), pois eles(as) procuram pessoas revisoras com conhecimentos específicos, experiência ou disponibilidade.

Quando isso não for suficiente, por exemplo, após repetidas recusas ou não respostas de possíveis avaliadores, os(as) editores(as) podem solicitar recomendações de outros(a) editores(as) em nosso canal do Slack (Alguns de nós somos editores(as) de revistas científicas tradicionais e gostaríamos de ter um bate-papo tão útil com nossos(as) coeditores(as) lá!)

Um desafio ao entrar em contato com as pessoas avaliadoras é saber quando você deve seguir em frente depois de esperar por uma resposta. Por isso, acrescentamos a frase "Se eu não receber uma resposta sua dentro de uma semana, presumirei que você não pode fazer uma revisão no momento" ao nosso [modelo padrão de solicitação de revisão](https://devguide.ropensci.org/reviewrequesttemplate.html). Com isso, todas as pessoas ficam na mesma página e você esclarece tanto os(as) editores(as) quanto as possíveis pessoas avaliadoras.

Por fim, quando uma pessoa revisora sai do processo de revisão (ou não pode mais ser contatada),
o(a) editor(a) responsável pelo tratamento recruta um(a) substituto(a), geralmente uma pessoa a quem ele(a) pode pedir uma resposta rápida (digamos, outro(a) editor(a)!), ou o(a) editor(a) atua como um(a) segundo(a) revisor(a).
O objetivo é não atrasar muito o processo de revisão.

## Desistência de autores

É uma situação ainda mais triste quando o pacote *autores* para de responder, pois o processo de revisão precisa ser interrompido.
É especialmente decepcionante quando isso acontece depois que as revisões já foram feitas, pois os(as) revisores(as) podem sentir que o seu trabalho foi desperdiçado.
No final, não há nada que possamos fazer a respeito, pois isso está fora do controle de nossos(as) editores(as) e revisores(as) (e das pessoas autoras).

No entanto, para evitar problemas simples com comunicações perdidas, recomendamos que os(as) autores(as) se certifiquem de que recebem notificações do GitHub, pois tentamos manter a comunicação transparente por meio do GitHub e geralmente não usamos e-mail.
Para lidar com problemas maiores relacionados a tempo e comprometimento, recentemente adicionamos frases à (versão de desenvolvimento de) [guia da pessoa autora](https://devdevguide.netlify.app/authors-guide.html) e aos modelos de envio: "Espero manter este pacote por pelo menos dois anos ou encontrar uma pessoa substituta".
Isso deve fazer com que as pessoas autoras de pacotes pensem na manutenção do pacote a longo prazo.
Embora isso não evite todos os problemas, esperamos que as pessoas autoras de pacotes pensem na manutenção do pacote a longo prazo antes de enviar os seus pacotes para a revisão.

Também entendemos que, embora as pessoas autoras possam ter boas intenções, a vida pode se transformar inesperadamente.
Portanto, outro esforço que fazemos é suspender as revisões (aplicando rótulos de suspensão) conforme necessário.
Essas retenções são revisadas a cada três meses, até um ano.

## Sobrecarga de trabalho das pessoas editoras (e revisoras)

A revisão de software exige trabalho de todas as pessoas: editores, revisores e, obviamente, autores.

Para reduzir o trabalho editorial em particular, aprimoramos a automação, que foi o tópico de uma chamada da comunidade, ["Aprimorando a revisão de software por pares com a automação do GitHub"](/commcalls/dec2021-automation/).
A rOpenSci trabalhou com o The Journal of Open Source Software para estender a abordagem do JOSS de publicação orientada por chatops para um novo chat-bot do GitHub que gerencia nosso processo editorial: atribuição de tarefas, marcação de problemas, execução de testes em envios de software, retorno de relatórios para revisores e editores e registro de revisões em um banco de dados externo (Airtable). Tudo isso no conforto de um comentário de problema do GitHub!
Por exemplo, você poderia clonar um repositório localmente, instalar dependências, executar verificações e publicar manualmente os resultados... **ou** você poderia simplesmente digitar o seguinte em um comentário de problema do GitHub:

```
@ropensci-review-bot check package
```

Da mesma forma, você pode usar o seguinte para registrar uma pessoa revisora nos metadados do problema de envio, bem como em nosso banco de dados Airtable.

```
@ropensci-review-bot add @maelle to reviewers
```

Uma grande parte da limitação da carga de trabalho das pessoas editoras é ter editores suficientes! Nós temos [expandindo nossa equipe editorial](/tags/editors/) com o objetivo de esperar que os(as) editores(as) lidem apenas com [cerca de 4 envios por ano](https://devdevguide.netlify.app/editorguide.html#editors-responsabilities).  
À medida que o volume de envios aumenta e os(as) editores(as) saem (pedimos compromissos de dois anos com opção de renovação), recrutamos novas pessoas editoras, em grande parte a partir do nosso grupo de revisores.
Convidamos pessoas revisoras experientes para editar como convidadas e perguntamos se elas querem continuar se tudo der certo.  
Nosso [guia da pessoa editora](https://devguide.ropensci.org/editorguide.html) facilita a integração... e a integração de novas pessoas editoras leva a comentários e, portanto, a melhorias nesse guia.
Se você quiser tentar editar [comece sendo revisor(a) voluntário(a)](/software-reviewer)!

## Conclusão

Resumimos aqui alguns problemas comuns de nossos conselhos editoriais.
Descobrimos que é muito importante automatizar os processos, mas também que as pessoas editoras possam se comunicar diretamente umas com as outras para encontrar soluções, bem como para se solidarizar e incentivar umas as outras.
À medida que a revisão de software continuar, certamente encontraremos novos desafios a serem enfrentados.
Esperamos que as nossas experiências sejam úteis para outras pessoas editoras e que possam ajudar a informar outros conselhos editoriais.


