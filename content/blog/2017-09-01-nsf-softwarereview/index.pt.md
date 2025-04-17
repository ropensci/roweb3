---
slug: nf-softwarereview
title: Como a rOpenSci usa a revisão de código para promover a ciência reprodutível
crossposts:
- name: NumFOCUS blog
  url: https://numfocus.org/blog/how-ropensci-uses-code-review-to-promote-reproducible-science
preface: NumFOCUS is a nonprofit that supports and promotes world-class, innovative,
  open source scientific computing, including rOpenSci.
date: '2017-09-01'
author:
- Noam Ross
- Scott Chamberlain
- Karthik Ram
- Maëlle Salmon
topicid: 850
tags:
- software
- Software Peer Review
- community
params:
  doi: 10.59350/4y3kj-1re56
---

Na rOpenSci, criamos e organizamos softwares para ajudar os cientistas no ciclo de vida dos dados. Essas ferramentas acessam, baixam, gerenciam e arquivam dados científicos de forma aberta e reproduzível. Logo no início, percebemos que isso só poderia ser um esforço da comunidade. A variedade de dados científicos e fluxos de trabalho só poderia ser resolvida com a contribuição de cientistas com conhecimentos específicos da área.

Com a abordagem da comunidade, surgiram desafios. **Como poderíamos garantir a qualidade do código escrito por cientistas sem treinamento formal em práticas de desenvolvimento de software? Como poderíamos promover a adoção de práticas recomendadas entre nossos colaboradores? Como poderíamos criar uma comunidade que apoiaria uns aos outros nesse trabalho?**

**Tivemos muito sucesso ao lidar com esses desafios por meio do *revisão por pares*.** Extraímos elementos de um processo que é familiar à nossa comunidade-alvo. *avaliação acadêmica por pares* - e uma prática do mundo do desenvolvimento de software - o *revisão do código de produção* - para criar um sistema que promova a qualidade do software, a educação contínua e o desenvolvimento da comunidade.

## Um processo de revisão aberto

**Revisão de software de produção** ocorre em equipes de desenvolvimento de software, de código aberto ou não. As contribuições para um projeto de software são revisadas por um ou mais membros da equipe antes de serem incorporadas ao código-fonte do projeto. Normalmente, as contribuições são pequenos patches, e a revisão serve como uma verificação da qualidade, bem como uma oportunidade de treinamento nos padrões da equipe.

**Na revisão por pares acadêmica** os avaliadores externos criticam um produto completo, geralmente um manuscrito, com um mandato muito amplo para abordar quaisquer áreas que considerem deficientes. A revisão acadêmica geralmente é anônima e, ao passar por ela, o produto e o autor recebem uma marca pública de validação.

**Nós combinamos essas abordagens.** Em nosso processo, os autores enviam pacotes completos do R para a rOpenSci. Os editores verificam se os pacotes se enquadram no escopo do nosso projeto, executam uma série de testes automatizados para garantir uma linha de base de qualidade e integridade do código e, em seguida, designam dois revisores independentes. Os revisores fazem comentários sobre a usabilidade, a qualidade e o estilo do código do software, bem como sobre a documentação. Os autores fazem alterações em resposta e, quando os revisores estiverem satisfeitos com as atualizações, o pacote recebe um selo de aprovação e passa a fazer parte do nosso pacote.

Esse processo é bastante iterativo. Depois que os revisores publicam uma primeira rodada de revisões extensas, os autores e revisores conversam em um bate-papo informal, moderado apenas levemente por um editor. Isso permite que tanto os revisores quanto os autores façam perguntas uns aos outros e expliquem as diferenças de opinião. Isso pode ocorrer em um ritmo muito mais rápido do que a correspondência típica de revisão acadêmica. Usamos o sistema de problemas do GitHub para essa conversa, e as respostas levam de minutos a dias, em vez de semanas a meses.

**A troca também é aberta e pública**. Autores, revisores e editores conhecem as identidades uns dos outros. A comunidade mais ampla pode ver ou até mesmo participar da conversa enquanto ela acontece. Isso incentiva você a ser minucioso e a fazer revisões construtivas e não contraditórias. Tanto os autores quanto os revisores relatam que gostam e aprendem mais com essa troca aberta e direta. Isso também traz o benefício de criar uma comunidade. Os participantes têm a oportunidade de se relacionar de forma significativa com novos colegas, e novas colaborações surgiram por meio de ideias geradas durante o processo de revisão.

Estamos cientes de que os sistemas abertos podem ter desvantagens. Por exemplo, na revisão acadêmica tradicional, a revisão por pares duplamente cega [pode aumentar a representação de autores do sexo feminino](https://www.sciencedirect.com/science/article/pii/S0169534707002704) sugerindo preconceito em revisões não cegas. Também é possível que os revisores sejam menos críticos na revisão aberta. No entanto, afirmamos que a abertura da conversa sobre a revisão fornece uma verificação da qualidade e da parcialidade da revisão; é mais difícil injetar comentários subjetivos ou sem embasamento em público e sem a cobertura do anonimato. Em última análise, acreditamos que a capacidade dos autores e revisores de se comunicarem direta e publicamente melhora a qualidade e a imparcialidade.

## Orientação e padrões

**O rOpenSci fornece orientação sobre a revisão.** Isso se divide em duas categorias principais: **práticas recomendadas de alto nível** e **padrões de baixo nível**. As práticas recomendadas de alto nível são gerais e amplamente aplicáveis a todas as linguagens e aplicativos. São práticas como "Escreva funções reutilizáveis em vez de repetir o mesmo código", "Teste casos extremos" ou "Escreva documentação para todas as suas funções". Devido à sua natureza geral, elas podem ser extraídas de outras fontes e não desenvolvidas do zero. Nossas práticas recomendadas são baseadas em orientações originalmente desenvolvidas por [Laboratório de Ciências da Mozilla](https://mozillascience.github.io/codeReview/intro.html).

Os padrões de baixo nível são específicos para uma linguagem (no nosso caso, R), aplicativos (interfaces de dados) e base de usuários (pesquisadores). Eles incluem itens específicos, como convenções de nomenclatura para funções, melhores escolhas de dependências para determinadas tarefas e adesão a um guia de estilo de código. Temos um conjunto extenso de padrões para nossos revisores verificarem. Eles mudam com o tempo, à medida que o ecossistema do software R evolui, as práticas recomendadas mudam e as ferramentas e os recursos educacionais disponibilizam novos métodos para os desenvolvedores.

**Nossos padrões também mudam com base no feedback dos revisores.** Adotamos em nossos padrões sugestões que surgem de vários revisores em diferentes pacotes. Descobrimos que muitas delas têm a ver com a facilidade de uso e a consistência das APIs de software e com o tipo e o local das informações na documentação que facilitam a localização. Isso destaca uma das vantagens dos revisores externos: eles podem oferecer uma nova perspectiva sobre a usabilidade, além de testar o software em casos de uso diferentes dos imaginados pelo autor.

**À medida que nossos padrões se tornaram mais abrangentes, passamos a confiar mais em ferramentas automatizadas.** O ecossistema do R, como a maioria das linguagens, tem um conjunto de ferramentas para code linting, teste de função, análise de código estático e integração contínua. Exigimos que os autores as utilizem, e os editores executam os envios por meio de um conjunto de testes antes de enviá-los para revisão. Isso libera os revisores do fardo das tarefas de baixo nível para que se concentrem nas críticas de alto nível, onde podem agregar mais valor.

## A comunidade de revisores

Um dos principais desafios e recompensas de nosso trabalho tem sido o desenvolvimento de uma comunidade de revisores.

**A revisão é uma atividade de alta habilidade.** Os revisores precisam ter conhecimento dos métodos de programação usados em um pacote de software e também do campo científico de sua aplicação. ("Encontre-me alguém que conheça ecologia sensorial e estruturas de dados esparsas!") Eles precisam de boas habilidades de comunicação e de tempo e disposição para se voluntariar. Felizmente, os mundos da ciência aberta e do código aberto estão repletos de pessoas generosas e especializadas. Conseguimos expandir nosso grupo de revisores à medida que o ritmo dos envios e os domínios de suas aplicações aumentaram.

O desenvolvimento do grupo de revisores exige recrutamento constante. Nossos editores se envolvem de forma ativa e ampla com as comunidades de desenvolvedores e pesquisadores para encontrar novos revisores. Recrutamos autores de envios anteriores, colegas de trabalho e colegas, em conferências, por meio de outros trabalhos colaborativos e nas mídias sociais. No ecossistema de software de código aberto, muitas vezes é possível identificar pessoas com conhecimentos específicos observando seus softwares publicados ou sua contribuição para outros projetos, e muitas vezes enviamos e-mails frios para possíveis revisores cujo trabalho publicado sugere que eles seriam uma boa opção para um envio.

Cultivamos nosso grupo de revisores e também o expandimos. Trazemos revisores de volta para que eles possam desenvolver a revisão como uma habilidade, mas não com tanta frequência a ponto de sobrecarregá-los. Fornecemos orientação e feedback aos novos recrutas. Ao designar revisores para uma submissão, nosso objetivo é juntar revisores experientes com novos revisores, ou revisores com experiência nos métodos de programação de um pacote com aqueles experientes em seu campo de aplicação. **Esses revisores aprendem uns com os outros, e a diversidade de perspectivas é uma vantagem** Os desenvolvedores menos experientes geralmente fornecem insights que os mais experientes não têm sobre a usabilidade do software, o design da API e a documentação. Os desenvolvedores mais experientes identificarão com mais frequência ineficiências no código, armadilhas devido a casos extremos ou sugerirão abordagens de implementação alternativas.

## Expansão da revisão por pares para código

A revisão de código tem sido uma das melhores iniciativas da rOpenSci. Criamos software, desenvolvemos habilidades e criamos comunidade, e o processo de revisão por pares tem sido um importante catalisador para todos os três. Ele tornou o software que desenvolvemos internamente e o que aceitamos de colaboradores externos mais confiável, utilizável e passível de manutenção. Assim **estamos trabalhando para promover a revisão por pares aberta do código por mais organizações** que trabalham com software científico. Ajudamos a lançar o [O Journal of Open Source Software](https://joss.theoj.org/) que usa uma versão do nosso processo de revisão para oferecer um local de publicação favorável ao desenvolvedor. O sucesso do JOSS levou a um spin-off, o [Journal of Open Source Education (Jornal de Educação de Código Aberto)](https://jose.theoj.org/) que usa um processo aberto, semelhante à revisão de código, para fornecer feedback sobre currículos e materiais educacionais. Também estamos desenvolvendo um programa piloto em que os artigos de software enviados a uma revista acadêmica parceira recebem um selo por passarem pela revisão do rOpenSci. Somos incentivados por outras iniciativas de revisão, como [ReScience](https://rescience.github.io/) e [O historiador da programação](https://programminghistorian.org/). [BioConductor](https://www.bioconductor.org/) que antecedeu a nossa em vários anos, recentemente mudou para um modelo aberto.

**Se a sua organização estiver desenvolvendo ou fazendo a curadoria de códigos científicos, você pode usar o modelo** acreditamos que a revisão de código, bem implementada, pode ser um grande benefício. Você pode precisar de um esforço considerável para começar, mas **aqui estão algumas das principais lições que aprendemos e que podem ajudar você:**

- **Desenvolver padrões e diretrizes** Para que seus autores e revisores usem. Pegue-os emprestados livremente de outros projetos (sinta-se à vontade para usar os nossos) e modifique-os iterativamente à medida que você avança.
- **Use ferramentas automatizadas** como code linters, conjuntos de testes e medidas de cobertura de testes para reduzir ao máximo a carga dos autores, revisores e editores.
- **Tenha um escopo claro.** Explique a vocês mesmos e aos possíveis colaboradores o que o projeto aceitará e por quê. Isso evitará muita confusão e esforço no futuro.
- **Crie uma comunidade** por meio de incentivos de networking, oportunidades de aprendizado e gentileza.

**A rOpenSci está ansiosa para trabalhar com outros grupos interessados em desenvolver processos de revisão semelhantes** O rOpenSci é um grupo de trabalho que tem como objetivo trabalhar com outros grupos interessados em desenvolver processos de revisão semelhantes, especialmente se você estiver interessado em revisar e curar software científico em linguagens diferentes do R ou além do nosso escopo de suporte ao ciclo de vida dos dados. O software que implementa algoritmos estatísticos, por exemplo, é uma área propícia para a revisão aberta de código por pares. Por favor [entre em contato conosco](/contact/) se você tiver dúvidas ou quiser co-pilotar um sistema de revisão para o seu projeto.

E, é claro, se você quiser fazer revisões, estamos sempre procurando voluntários. Inscreva-se em /onboarding.

***

Você pode apoiar a rOpenSci [tornando-se um membro do NumFOCUS](https://www.numfocus.org/community/donate/) ou fazendo uma doação de [doação para o projeto](https://www.numfocus.org/open-source-projects/).


