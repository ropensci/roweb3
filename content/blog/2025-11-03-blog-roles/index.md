---
title: Recognition beyond blog post authors
author: 
- Maëlle Salmon
editor:
date: '2025-11-03'
slug: blog-roles
description: How we acknowledge different types of contributions to our blog
output: hugodown::md_document
tags:
  - metadata
  - tech notes
  - community manager tools
params:
  doi: "10.59350/510pg-zzf58"
---

Our own dev guide [states](https://devguide.ropensci.org/maintenance_collaboration.html#attributions)

> Be generous with attributions

Recognizing the diverse forms of [contributions](https://contributing.ropensci.org/) to our mission is very important to us:
we like thanking [package reviewers](/blog/2018/03/16/thanking-reviewers-in-metadata/) and more generally [all package contributors](/blog/2024/11/26/allcontributors/), [organizations as well as individuals](/blog/2025/05/09/ror/).

We have recently extended our efforts to acknowledging the different efforts it takes to publish a blog post.

## New blog roles: editors, translators, interviewees

The metadata of our blog posts can now feature:

- who edited the blog post. [Example with Steffi LaZerte as editor](/blog/2025/09/18/markdown-programmatic-parsing/).
- who translated the blog post to this language. [Example with Yanina Bellini Saibene as translator, in Spanish](/es/blog/2025/06/23/edicion-multilingue-preguntas-frecuentes/).
- who was _interviewed_ for a blog post. [Example with Athanasia Mo Mowinckel as interviewee](/blog/2023/03/30/r-universe-stars-3-en/).

The "author page" of contributors list their various contributions to the content in the current language:

- [Steffi LaZerte's author page](/author/steffi-lazerte)
- [Yanina Bellini Saibene's author page in Spanish](/es/author/yanina-bellini-saibene)
- [Athanasia Mo Mowinckel's author page](/author/athanasia-mo-mowinckel/)

To achieve this new functionality, we

- modified the Hugo layouts (templates) for [blog posts](https://github.com/ropensci/roweb3/blob/main/themes/ropensci/layouts/partials/blogs/blog-single.html) and [author pages](https://github.com/ropensci/roweb3/blob/main/themes/ropensci/layouts/author/list.html). 
- documented the corresponding new metadata fields in our [blog guide](https://blogguide.ropensci.org/editorchecklistany.html).

## Conclusion

We are thrilled to be able to acknowledge more contributions to our blog.

This differentiation of roles also allows us to analyze in greater detail how blog-related collaborations occur among members of our community. With this information, we can create more ways of participation for interested individuals, including the support they need for successful participation. 

We also hope that it will be useful for other communities in identifying different types of contributions and ways of giving credit.

Further work will include having more of those contributions featured in our feed on [Rogue Scholar](https://rogue-scholar.org/communities/ropensci/records?q=&l=list&p=1&s=10&sort=newest).