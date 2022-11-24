---
title: Expanding our Community through Multilingual Publishing 
author:
  - Yanina Bellini Saibene
  - Paola Corrales
  - Elio Campitelli
  - Maëlle Salmon
date: '2022-11-29'
slug: multilingual-publishing-en
tags:
  - community
description: ""

---

Open Source and Open Science are global movements, but most of their material and resources are published in English, meaning non-English speakers face a significant barrier to being part of these movements.  
Publishing multilingual resources can lower these barriers by increasing access to knowledge, which helps democratize access to quality resources, and therefore increases the potential for contributing to software and open science projects.

We’re excited to announce that with the support of the [Chan-Zuckerberg Initiative](/blog/2021/12/20/inclusive-leadership-program/), [NumFOCUS](https://numfocus.org/) and the [R Consortium](https://www.r-consortium.org/), we have started translating into Spanish rOpenSci’s material on best practices for software development, code review, and contribution to open source projects.
As part of this effort we are also developing guidelines and tools for translating open source resources to a wider audience.


## Language representation

Approximately 64% of Internet content is in English, although only 4.8% of the world's population speaks English as a first language. For this reason, we are embarking on an effort to translate rOpenSci’s material on best practices for software development, code review, and contribution to open source projects beyond the English language starting with Spanish.

Spanish is the second most-spoken native language in the world. It is also one of the most geographically widespread languages, reaching many countries with Spanish as an official language. 

The Spanish-speaking R Community has been growing and very active in the last years. Furthermore, it has carried out various activities related to translations of materials such as books, cheatshets, guides and datasets. 

In 2017 several Latin American R-Ladies start with the translations to Spanish of the R-Ladies' [Code of Conduct](https://github.com/rladies/starter-kit/wiki/Code-of-Conduct#spanish) and their Rules and Guidelines. 

In 2018, the R Community in Latin America collectively translated the [R for Data Science (R4DS) book](https://es.r4ds.hadley.nz/) to Spanish.  This includes the translation of the package [datos](https://github.com/cienciadedatos/datos) to Spanish and dados to [Portuguese](https://cran.r-project.org/web/packages/dados/index.html), becoming an excellent tool for teaching. From the success of the collective and volunteer translation of R4DS, the community also translated [Teaching Tech Together](http://teachtogether.tech/es/index.html) and contributed to several translations to Spanish of [RStudio CheatSheets](https://posit.co/resources/cheatsheets/?type=translations/#translation-12), [The Carpentries](https://software-carpentry.org/lessons/)’ and [The Programming Historian](https://programminghistorian.org/es/) lessons. 

Driven by this active and growing Spanish-speaking community, rOpenSci [successfully piloted](https://ropensci.org/blog/2021/07/27/censo2017/) our first [Spanish-language peer review](https://ropensci.org/commcalls/2019-06-28/), where the submission itself, and all reviews, and editorial responses were in Spanish.

All this work and previous experience generated the right conditions to start our multilingual publishing with Spanish.

## Technical materials, technical solutions

rOpenSci provides community support, standards, and infrastructure for scientists and research software engineers working in R to develop, maintain, and publish high-quality open-source scientific software. In addition, we develop and maintain high-quality documentation and [resources](/resources/) to support these activities.  

We publish our material using technical documents which are rendered using software. The translations of technical documents have two aspects (a) the internationalization (i18n) that provides the framework to support translation and requires technical knowledge (need to deal with source code vs. rendered version of the material), and (b) the localization (l10n), which is the task of translating the text and requires linguistic knowledge. 

Besides, technical translations of living documents have two well-defined stages involving different resources:  (a) achieving a first version of the translated material and (b) keeping the material updated and synchronized between the different languages.

There are several approaches and technologies to work on translations. Based on the experience gain on the mentions previews projects this project aims to advance in stage (a) achieving a first revised translation in Spanish of the rOpenSci materials and testing two different technical workflows to perform the translations.

The first workflow will use GitHub and GitHub review as a platform for translations and revisions since our materials are on this platform, and it has already been used in other translation projects.  

The second approach will test to generate a workflow using an API of an automatic translator to generate a first translated version of the documents that will be later reviewed by professional bilingual developers also using GitHUb as platform.

The advantage of the second workflow is to reduce the time it takes to produce a quality translation.  Reviewers will focus on linguistic tasks such as the use of inclusive language, the localization of examples, and the correct translation of phrases, metaphors, or analogies. They will also look for references in the language of the translation. In addition, if the workflow proves feasible and useful, it could be incorporated into the pipeline to keep the texts in different languages synchronized, contributing to solve stage (b).

Besides systematizing both experiences, other products of the project will be: (a) a general guide of rules to follow when translating technical documents, (b) a particular guide for the Spanish language, (c) a list of technical terms that are translated to Spanish and those that are not, (d) an R package with our workflow to translate technical documents. 

## Building Community

Translating rOpenSci material to Spanish will help democratize access to these quality resources to learn and teach the necessary digital skills to become contributors to Open Source projects not only because you can now learn how to be a developer, a maintainer, a reviewer or an editor; but also because translation is often a good first way to contribute, and is recognized as valuable by the community. This material is also useful for learning and teaching how to have a workflow to perform computationally reproducible Open Science.

At rOpenSci, we understand review as a way of building community, the material for our review process in Spanish will allow rOpenSci to continue building the community in Spanish-speaking regions, like Latin America, to increase the pull of contributors and get feedback on how our tools and processes can be improved to serve these community members better.  

We also expect the project's documentation and tooling will be useful to extend this effort to other languages and for other communities and projects with translation efforts.
