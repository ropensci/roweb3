---
title: Dicas de comunicação para seu projeto de código aberto
author:
- Maëlle Salmon
editor:
- Mark Padgham
date: '2024-05-17'
slug: communication-tips-oss-project
output: hugodown::md_document
tags:
- community
params:
  doi: 10.59350/8sqxt-7zp92
---

Você mantém um projeto de código aberto, como um pacote R ou uma coleção deles, e quer saber como usar melhor os vários canais de comunicação para informar e interagir com sua comunidade de usuários?
Consolidamos esta lista de dicas para você.
Em nossa opinião, algumas delas são obrigatórias, enquanto outras são simplesmente boas de se ter.

## Obrigatórias: Ter boas notas de versão

Como você está desenvolvendo um produto, o primeiro ato de comunicação é escrever notas de lançamento informativas.
As notas de versão geralmente descrevem atualizações e alterações, geralmente em um arquivo chamado `NEWS.md`. Esses arquivos geralmente têm um cabeçalho por versão, com subcabeçalhos usados para agrupar as alterações em categorias significativas.

Os recursos para você começar a usar as notas de versão incluem:

- [`usethis::use_news_md()`](https://usethis.r-lib.org/reference/use_news_md.html) para criar o `NEWS.md` arquivo.
- [o capítulo sobre arquivos NEWS no guia de estilo do tidyverse](https://style.tidyverse.org/news.html)

Você pode automatizar parcialmente as notas de versão a partir de mensagens de confirmação usando, por exemplo, o comando [pacote fledge](https://fledge.cynkra.com/dev/) (bastante poderoso se combinado com o pacote [Convenção de commits convencionais](https://www.conventionalcommits.org/en/v1.0.0/)).

As notas de versão podem informar diretamente os usuários, que podem lê-las

- do GitHub por meio de [observando eventos de lançamento](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github/setting-up-notifications/configuring-notifications#configuring-your-watch-settings-for-an-individual-repository) para o repositório;
- do site de documentação, no qual o pkgdown se transforma `NEWS.md` em uma página chamada changelog.

Eles também serão úteis como matéria-prima para outras iniciativas de comunicação, como postagens em blogs sobre lançamentos.

## Necessário: Rastreadores de problemas

Seus repositórios não devem ter apenas rastreadores de problemas/tickets, mas você também deve garantir que um número suficiente de membros da equipe os observe ou analise novos tickets ou comentários pelo menos de vez em quando.
Manter e responder a problemas é uma parte importante da manutenção de uma comunidade de usuários.

O uso de problemas pelo seu projeto pode ser anunciado por meio de um problema fixado; você pode até mesmo [limitar temporariamente as interações](https://docs.github.com/en/communities/moderating-comments-and-conversations/limiting-interactions-in-your-repository).
Esses termos e links são para o GitHub, mas existem ideias e recursos semelhantes para outras plataformas de hospedagem de código.

## Necessário: Perfis de projetos poloneses

Todo software de código aberto tem um perfil, possivelmente espalhado por vários lugares, como organizações do GitHub ou contas do Mastodon. Um logotipo pode ser um identificador importante do seu perfil e deve aparecer de forma consistente em todos os seus perfis. Também é importante incluir descrições informativas e verificar todos os URLs ([docs para GitHub](https://docs.github.com/en/organizations/managing-organization-settings/verifying-or-approving-a-domain-for-your-organization), [docs para Mastodon](https://joinmastodon.org/verification)).

Para uma organização do GitHub, você pode perguntar aos seus membros se eles gostariam de fazer seus [associação à organização do GitHub pública](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-your-membership-in-organizations/publicizing-or-hiding-organization-membership) o que pode dar a você uma imagem mais colaborativa, mesmo antes de alguém mergulhar na atividade de commit.

O polimento do perfil não precisa levar muito tempo e só pode melhorar a imagem do seu projeto.

## Necessário: Certifique-se de que você lida com o acesso de forma inteligente

Para qualquer plataforma que exija logins ou algum tipo de direito de acesso, certifique-se de que todos os que precisam de acesso o tenham e que o acesso seja removido de qualquer pessoa que não precise mais dele.

Talvez você queira examinar sistemas de gerenciamento de senhas, como [1Password](https://1password.com/).

Como a composição de uma equipe de desenvolvimento muda com o tempo, talvez seja aconselhável revisar o acesso regularmente e fazer com que essa revisão faça parte de algum tipo de lista de verificação de integração/desinclusão.

## Necessário: ter um espaço para discussões privadas

Embora o desenvolvimento de código aberto exija que muita coisa aconteça [em um ambiente aberto](https://producingoss.com/en/producingoss.html#avoid-private-discussions) também é importante cultivar um espaço seguro onde os membros da equipe possam desabafar, discutir assuntos delicados ou compartilhar fotos de animais de estimação.
Isso pode ser feito por meio de um espaço de trabalho do Slack, Discord, Matrix ou servidor Element, ou por opções de ponta como [plano](https://try.flat.app) ou [CQ2](https://cq2.co/).

O ideal é que você seja o proprietário do espaço, a menos que possa contar com um parceiro externo (um financiador? uma coalizão maior de projetos?) para continuar fornecendo-o a você.

## Ter um fórum

Para um projeto pequeno, os rastreadores de problemas podem ser tudo o que você precisa para lidar com relatórios de bugs, solicitações de recursos e perguntas e respostas em geral.
No entanto, projetos maiores podem se beneficiar da criação e da curadoria de um fórum de discussão dedicado.

Você pode usar [Discurso](https://www.discourse.org/) ou [Discussões do GitHub](https://docs.github.com/fr/discussions).

## Ter um blog com um feed RSS

Em comparação com as notas de versão, as postagens de blog sobre novas versões fornecem mais uma narrativa e, portanto, podem ser mais fáceis de ler.
Eles ainda podem indicar aos usuários as notas de versão para obter mais informações.

O blog de um projeto de código aberto também pode conter outros tipos de publicações, como um aprofundamento em um recurso, anúncio de financiamento, solicitação de contribuições ou apoio financeiro.

Ao escolher um construtor de sites, tente escolher um que seja gratuito e que seja familiar para a equipe do seu projeto ou fácil o suficiente para que você se familiarize com ele.
As postagens de blog baseadas em Markdown são mais fáceis de escrever a partir de notas de versão.
Certifique-se também de que a publicação de uma nova postagem no blog não seja um processo complicado de 100 etapas, ou ninguém vai querer escrever uma.
Você pode optar por usar [GitHub para um processo de revisão e visualização de publicações de blog](https://blogguide.ropensci.org/).

Se você criar um blog, certifique-se de criar também um feed RSS para ele.
Na maioria dos geradores de sites estáticos, isso é padrão ou está disponível quando você ativa uma opção ([docs do Quarto](https://quarto.org/docs/websites/website-blog.html#rss-feed)).

Quando seu blog tiver um feed RSS, registre-o em agregadores relevantes, como [R Weekly](https://github.com/rweekly/rweekly.org?tab=readme-ov-file#regular-r-posts-submit-your-rss-feed) no mundo do R.

## Como você pode comentar nas postagens do blog

Se você optar por abrir comentários nas postagens do blog, certifique-se de integrar os comentários ao fórum do projeto.

Isso é muito fácil com o [Discourse](https://meta.discourse.org/t/embed-discourse-comments-on-another-website-via-javascript/31963) (que usamos neste mesmo blog) e o [GitHub Discussions via Giscus](https://giscus.app/fr) (que também são fáceis de integrar com o [Quarto](https://quarto.org/docs/output-formats/html-basics.html#commenting) entre outros).

Integrar os comentários ao fórum significa que você só precisa cuidar de um espaço e também ajuda a conectar os leitores das publicações do blog ao fórum.

## Ter perfis de mídia social

As mídias sociais podem ser úteis para divulgar o seu projeto e suas atualizações e para interagir com os usuários.
Você pode optar por tornar sua mídia social "somente leitura", declarando claramente que não tem recursos para responder a perguntas nela.

O ideal é que você concentre o uso da mídia social em [plataformas agradáveis](/blog/2023/06/22/ropensci-news-digest-june-2023/#ropenscis-communication-channels-for-safe-and-friendly-exchange) e plataformas em que os usuários e a comunidade de seus projetos provavelmente se reunirão.

## Conclusão

Nesta publicação, compartilhamos algumas dicas de comunicação para seu projeto de código aberto.
Use os canais de comunicação de acordo com as metas e os recursos de seu projeto.
Você também pode se interessar por nossa chamada anterior da comunidade [Configure seu pacote para promover uma comunidade](/blog/2021/04/28/commcall-pkg-community/).


