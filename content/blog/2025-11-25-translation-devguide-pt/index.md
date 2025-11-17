---
slug: translation-devguide-pt
title: 'Translating the rOpenSci Dev Guide into Portuguese: Collaboration, Community, Challenges, and Impact'
author: 
  - Francesca Belem Lopes Palmeira
  - Beatriz Milz
  - Ariana Moura Cabral  
  - Yanina Bellini Saibene
  - Daniel Vartanian
  - Pedro Faria
date: '2025-11-25'
description: "We are very pleased to announce that our guide on package development, maintenance, and peer review is now available in Portuguese. In this blog post, the people who led the translation project share how the process unfolded, the challenges faced, the results achieved, and what participating in this effort meant to them."
tags:
  - community
  - Software Peer Review
doi: 10.59350/fgbq0-zcn87   
---

## Introduction

rOpenSci manages packages developed in the R programming language and also offers a peer review process for those packages, an activity that is already well established within the community. To guide this entire process, rOpenSci created the **"rOpenSci Packages: Development, Maintenance, and Peer Review"** guide (also known as the "Dev Guide"). The guide presents recommended procedures for developing and submitting packages to the rOpenSci collection, making each step easier to follow and ensuring transparency throughout the process.

Initially, the Dev Guide was created in [English](https://devguide.ropensci.org/) and later gained a [Spanish](https://devguide.ropensci.org/es/index.es.html) version, thanks to a community-driven translation effort. More recently, a group of collaborators worked together to translate the Dev Guide into Portuguese. In this post, we describe how this collaborative translation process unfolded, recognizing that translating resources is one way to contribute to rOpenSci’s mission of fostering a culture of open and reproducible research.


## Why translate the Dev Guide into Portuguese?

Translating the Dev Guide is part of rOpenSci’s broader effort to reduce language barriers in the scientific community. English remains the dominant language in technical and scientific materials, which limits the participation of those who do not speak it fluently.

Portuguese is the sixth most spoken language in the world and connects research communities across Latin America, Europe, and Africa. Translating the guide is a concrete way to broaden the diversity of contributors, strengthen local communities, and encourage the review and development of R packages in Portuguese-speaking countries.

## Translation project timeline

After the release of the Spanish version, Brazilian contributor Pedro Faria [began translating the Dev Guide into Portuguese](https://github.com/ropensci/dev_guide/issues/670) in June 2023. This initiative provided the perfect opportunity to test, in another language, the entire process and tools used for the Spanish translation.

But that was only the beginning. Shortly afterward, the rOpenSci team wrote a [call for contributors](/blog/2023/10/20/news-october-2023/#help-us-translate-our-dev-guide-to-portuguese) to bring more people into the effort. This led to the formation of the first group of collaborators committed to translating and reviewing the guide, continuing the work started by Pedro.

The initiative continued to take shape and gradually reached more people. Among them was António Pedro from Angola, leader of the [Angola Open Source Community](https://angolaosc.org/) (AOSC), who expressed interest in involving his community in this collective effort.

Over time, rOpenSci organized several meetings to introduce the initiative, connect contributors, and keep the enthusiasm for the translation alive. The first of these was an online session ("[Translating the rOpenSci Dev Guide into Portuguese](/events/portuguese-translation/)"), where Pedro presented the translation workflow. Those interested in collaborating joined the rOpenSci Slack and began working on the revisions.

As a next step to maintain engagement, a community call in Portuguese was held, "[A Comunidade R Fala Português](/commcalls/translation-portuguese/)", was held, marking the first rOpenSci event conducted in that language. In addition to sharing updates on the Portuguese translation project, the call highlighted other similar initiatives within the R community. To further encourage participation, a [translation hackathon](https://latinr.org/en/cronograma/translaton/translaton-en.html) was organized in partnership with the [LatinR](https://latinr.org/pt/) conference later that same year. Pedro Faria, Beatriz Milz, and Francesca Belem Lopes Palmeira led both activities, presenting the initiative, guiding discussions, and inspiring collaborative contributions.

Over time, more people joined the project, and the translation was completed in October 2025. More than two years passed between the first translated lines and the completion of this collaborative translation initiative.

**Figure 1** – Timeline of how the events unfolded.

{{< figure src = "fig-1-en.png" alt = "Timeline, beginning in June 2023 and ending in October 2025." >}}

Source: by Francesca Belem Lopes Palmeira and Ariana Moura Cabral.

## Translation process

The [rOpenSci Translation Guide](https://translationguide.ropensci.org) played a key role in the translation process. This guide documents the infrastructure, roles, and technical steps involved in translating and maintaining rOpenSci’s multilingual materials. It was created based on lessons learned from previous translation efforts and is inspired by rOpenSci’s own peer-review system for packages.

All tasks related to the Portuguese translation were organized on GitHub, in the [Dev Guide repository](https://github.com/ropensci/dev_guide). The Dev Guide is written in R Markdown, with each chapter stored in a separate `.Rmd` file. Each original English chapter was first automatically translated using the [{babeldown}](https://docs.ropensci.org/babeldown/) package[^1]. This package, part of the rOpenSci collection, relies on the [DeepL](https://www.deepl.com) API, an AI-powered translation tool.

[^1]: Salmon M (2025). _babeldown: Helpers for Automatic Translation of Markdown-based Content_. R package version 0.0.0.9000. <https://github.com/ropensci-review-tools/babeldown>.

The initial translation was submitted to the repository through a Pull Request (PR), so it could be reviewed before being merged into the guide. Then, two different people reviewed the automatically translated text. Having two reviewers was essential to refine the result and ensure the fluency of the writing. After incorporating the reviewers’ suggestions, the PR was approved.

**Figure 2** - Visual representation of the translation process for each chapter of the Dev Guide.

{{< figure src = "fig-2-en.png" alt = "Visual representation of the translation process for each chapter: 1) Original file (index.Rmd); 2) Automatic translation (API); 3) Translated file (index.pt.Rmd); 4) Review 1; 5) Review 2; 6) Finalized review (Merged)." >}}

Source: by Francesca Belem Lopes Palmeira.

This year, the new version of the Dev Guide will be published, including the Portuguese translation. Everyone who contributed to the translation and review will be credited as authors of the translation. This version will have its own DOI (Digital Object Identifier), and the PDF will be available on [Zenodo](https://zenodo.org/), in addition to the guide’s official website, enabling formal citation of the translation using these details.

## Translation team

The Dev Guide is composed of multiple chapters, which means that many people participated and collaborated in the review process. Community involvement was essential to completing each stage of the translation effort. Collaboration among contributors from different Portuguese-speaking countries enriched the process, making it more diverse and bringing multiple perspectives. It was especially meaningful to see contributors from Angola, Brazil, and Portugal working together, and this plurality is also part of the project’s strength.

Below is a list of the contributors, in alphabetical order:

-   António Pedro, Angola

-   Ariana Moura Cabral, Brasil

-   Beatriz Milz, Brasil

-   Daniel Vartanian, Brasil

-   Francesca Belem Lopes Palmeira, Brasil

-   Ildeberto Vasconcelos, Angola

-   João Granja-Correia, Portugal

-   Marcelo Perlin, Brasil

-   Pedro Faria, Brasil

-   Rafael Fontenelle, Brasil

-   Samuel Carleial Fernandes, Brasil

In addition, the translation project was coordinated by [Yanina Bellini Saibene](https://yabellini.netlify.app/), rOpenSci’s Community Manager. Other members of the rOpenSci team also played key roles in reviewing Pull Requests, including [Maëlle Salmon](https://masalmon.eu/).

## Testimonials

{{< quote footer="Francesca Belem Lopes Palmeira">}}
Participating in the translation of the Dev Guide into Portuguese was an incredibly enriching experience for my professional journey. It was the first time I worked within a transparent, reproducible, and collaborative peer-review process. Overall, it has been very rewarding to see the project completed and accessible to the entire Portuguese-speaking community.
{{< /quote >}}

{{< quote footer="Pedro Faria">}}
In my point of view, one of the greatest strengths of the R community is its commitment to advancing and improving science through open projects and open data, valuing transparency and collective contribution. This translation project was yet another example of that philosophy. As an author of open books myself (including my [introductory R book](https://pedropark99.github.io/Introducao_R/), in Portuguese 😉), this was the first time I experienced an open translation workflow like this, and I must say I greatly enjoyed the experience.

One interesting aspect of this project was the methodology used, which relied on tools such as [Quarto](https://quarto.org/), [`{rmarkdown}`](https://rmarkdown.rstudio.com/), [`{babeldown}`](https://docs.ropensci.org/babeldown/index.html), and [DeepL](https://developers.deepl.com/docs/getting-started/intro). This approach proved highly effective in several steps of the translation process, and it may be a compelling option for others seeking a methodology that: 1) is open and inclusive for its audience; 2) introduces some degree of automation into the workflow; and 3) provides good file organization for the project (since, depending on the size of the material, file management can become a crucial part of the workflow).
{{< /quote >}}

{{< quote footer="Ariana Moura Cabral">}}

For me, contributing to this translation project was both a learning journey and an exchange of experiences. On one hand, I was able to meet people who, like me, value knowledge sharing and believe in the transformative power of words, learn more about rOpenSci’s values, and update myself on best practices for developing and managing R packages. On the other hand, I had the chance to contribute, even if just a little, to someone else’s learning, which is deeply rewarding to me. I hope the translated material opens new pathways for those who also appreciate the R language and wish to explore its vast universe. In the end, I see this experience as a continuous cycle of sharing and growth, which reminds me of the words of Cora Coralina: “Happy is he who transfers what he knows and learns what he teaches.”
{{< /quote >}}

{{< quote footer="Beatriz Milz">}}
Even though I already had experience with package development, reviewing the chapters was an opportunity to learn more and update myself on best practices. Until now, we did not have such a complete, free, and online resource in Portuguese about R package development. The translated version of the Dev Guide will be very useful for people interested in learning more about package development, even for those who do not plan to submit a package to rOpenSci’s peer-review system.
{{< /quote >}}

{{< quote footer="Daniel Vartanian">}}
Translating a text into a language with so many dialects, such as Portuguese, brought several challenges. For example, which variant should be used: Brazilian, European, Angolan, or another Lusophone variety? The pronoun “você” (you) is very common among Brazilian Portuguese speakers, but it may sound unusual to speakers of European Portuguese. No translation will please everyone, but the team made a conscious effort to reflect on these issues and, whenever possible, propose satisfactory solutions. I learned a lot throughout this process and through the discussions it sparked. I hope the Portuguese translation of the Dev Guide helps include more Portuguese speakers and supports the spread of good practices in R development.
{{< /quote >}}

## Challenges

Translating a document goes far beyond simply replacing words from one language with another. In reality, it is a nuanced process, and several challenges can emerge along the way.

In the translation of the Dev Guide, one of the main challenges was preserving the meaning and tone of the original text, including maintaining consistent terminology and style from beginning to end, especially considering that the initial translation was automated. To ensure consistency across the material, the text underwent multiple rounds of review by more than one person, guaranteeing that the final result remained readable, technical, and free of unnecessary linguistic barriers.

Throughout the process, important discussions arose about consistent terminology and how to adapt technical expressions without losing precision. Some of those conversations took place directly in the Pull Requests (e.g., [#717](https://github.com/ropensci/dev_guide/pull/717), [#855](https://github.com/ropensci/dev_guide/pull/855), [#856](https://github.com/ropensci/dev_guide/pull/856)), where collaborators debated stylistic alternatives, vocabulary adjustments, and specific translation decisions. These records clearly illustrate how the work was collective, iterative, and attentive, reflecting a balance between clarity, technical accuracy, and linguistic sensitivity.

During the review process, particular attention was also given to reducing gendered language (for example, changing “os usuários” (the users) to “os(as) usuários(as)” or “as pessoas usuárias”)[^2], while still prioritizing fluid and inclusive writing. Additionally, because automatic translation tends to translate everything, another recurring concern was restoring proper names (books, packages, or functions) back to English when appropriate.

[^2]: Translation note: In English, the expression “the users” is gender-neutral, but in Portuguese it defaults to the masculine form. In this translation, inclusive alternatives were adopted where appropriate to avoid unnecessary gender marking.

One barrier that remains for readers of the Portuguese Dev Guide is that most of the function names, package documentation, and book references still point to English-language content. However, the rOpenSci team has been working to translate blog posts referenced in the Dev Guide into Portuguese, which gradually helps reduce this gap.

## Impact and Next Steps

The Portuguese version of the Dev Guide becomes a valuable study resource across Portuguese-speaking countries, not only for those interested in developing R packages following best practices, but also for anyone seeking to better understand rOpenSci’s submission guidelines and peer review process. It helps open doors, reduce language barriers, and strengthen open science.

The translated guide also lays important groundwork for future rOpenSci initiatives, including the possibility of a Portuguese-language cohort of the [**rOpenSci Champions**](/champions/) program. This program supports individuals from historically and systematically excluded groups who want to contribute to rOpenSci and to open source and open science communities more broadly. Its goal is to make the scientific software ecosystem more diverse, sustainable, and accessible, reflecting the plurality of the communities it serves.

In addition, the Portuguese translation enables the launch of a pilot package review conducted entirely in Portuguese, led by Ana Carolina Moreno as part of her project in the [rOpenSci Champions 2025 cohort](/blog/2025/07/03/champions-2025/). This pilot will make it possible to test the peer-review process in another language and expand access and participation among new contributors.

With the translation now complete, we plan to integrate the lessons learned into rOpenSci’s [official translation guidelines](https://translationguide.ropensci.org/). The goal is to update the [translation guide](https://translationguide.ropensci.org/) to incorporate the agreements and instructions developed by the Portuguese translation team, making it easier to support future collaborations and translations into other languages. This update aims to document successful practices from the project and strengthen rOpenSci’s infrastructure for future translation efforts.
