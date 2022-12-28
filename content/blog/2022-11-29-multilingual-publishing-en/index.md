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
  - multilingual
description: ""

---

> The predominant language of open source is English—in code, content, and community interactions—and English proficiency is a metric by which performance and personality can be judged[^1]. 

The Linux Foundation report also identify _language access_ as one of the _environmental Barriers to Equity in Open Source_.

Publishing multilingual resources can lower these barriers by increasing access to knowledge, which helps democratize access to quality resources, and therefore increases the potential for contributing to software and open science projects.

We’re excited to announce that with the support of the [Chan-Zuckerberg Initiative](/blog/2021/12/20/inclusive-leadership-program/),
[NumFOCUS](https://numfocus.org/) and the [R Consortium](https://www.r-consortium.org/), 
we have started translating into Spanish rOpenSci’s material on best practices for software development, code review, and contribution to open source projects.
As part of this effort we are also developing guidelines and tools for translating open source resources to a wider audience.


## Language representation

The Spanish-speaking R Community has been growing and very active in the last years. Furthermore, it has carried out various activities related to translations of technical materials such as books, cheatshets, guides and datasets. 

In 2017 several Latin American R-Ladies start with the translations to Spanish of the R-Ladies' [Code of Conduct](https://github.com/rladies/starter-kit/wiki/Code-of-Conduct#spanish) and their Rules and Guidelines. 

In 2018, the R Community in Latin America collectively translated the [R for Data Science](https://es.r4ds.hadley.nz/) book to Spanish.
This includes the translation of all the data sets used in the book compiled in the package [datos](https://github.com/cienciadedatos/datos) in Spanish, 
becoming an excellent tool for teaching.

The community continue with the translation of [Teaching Tech Together](http://teachtogether.tech/es/index.html), 
and contributed to the translations to Spanish of [Posit CheatSheets](https://posit.co/resources/cheatsheets/?type=translations/#translation-12),
[The Carpentries](https://software-carpentry.org/lessons/)’ 
and [The Programming Historian](https://programminghistorian.org/es/) lessons. 

Driven by this active and growing Spanish-speaking community, rOpenSci [successfully piloted](https://ropensci.org/blog/2021/07/27/censo2017/) our first [Spanish-language peer review](https://ropensci.org/commcalls/2019-06-28/), 
where the submission itself, and all reviews, and editorial responses were in Spanish.

All this work and previous experience generated the right conditions to start our multilingual publishing with _Spanish_. 
Plus, Spanish is the second most-spoken native language in the world. It is also one of the most geographically widespread languages, reaching many countries with Spanish as an official language[^2].

## Technical materials, technical solutions

rOpenSci provides community support, standards, and infrastructure for scientists 
and research software engineers working in R to develop, maintain, and publish high-quality open-source scientific software.
In addition, we develop and maintain high-quality documentation and [resources](/resources/) to support these activities.  

Miltilingual Publishing of documentation and resources involve two aspects:  

* The _internationalization_ refers to the technological solution allowing the software to adapt to several regions without engineering changes to the source code. It is what allow us to localize our content[^3].

* The _localization_ is when you take a piece of content in its original form and convert it into something more accessible and suitable for another region, country, or audience [^3]. Includes language, date formats, currency, measure units, and support for different characters.

Besides, technical translations of living documents have two well-defined stages involving different resources: 

  1. achieving a first version of the translated material and

  2. keeping the material updated and synchronized between the different languages.

There are many solutions for internationalizing and localizing content and software. _Translation_ is typically the most time-consuming component of these efforts[^3]. 

Based on the experience gain on the previews projects and the characteristics of our community, this project aims to advance in stage 1 achieving a first revised translation in Spanish of the rOpenSci materials, and testing a technical workflow to perform the translations.

Our approach will test and generate a workflow using an API of an automatic translator to generate a first translated version of the documents that will be later reviewed by professional bilingual developers using GitHUb as platform.


The advantage of this workflow is to reduce the time it takes to produce a quality translation.
Reviewers will focus on linguistic tasks such as the use of inclusive language, the localization of examples, and the correct translation of phrases, metaphors, or analogies.
They will also look for reference external material in the language of the translation. In addition, if the workflow proves feasible and useful, it could be incorporated into the pipeline to keep the texts in different languages synchronized, contributing to solve stage 2.

Besides systematizing the experiences, other products of the project will be: 

* a general guide of rules to follow when translating technical documents, 
* a particular guide for the Spanish language, 
* a list of technical terms that are translated to Spanish and those that are not, 
* an R package with our workflow to translate technical documents. 

## Building Community

The multilinugal publishing will help democratize access to quality resources to learn and teach the necessary digital skills to become contributors to Open Source projects and to have a workflow to perform computationally reproducible Open Science.

At rOpenSci, we understand review as a way of building community, the material for our review process in Spanish will allow rOpenSci to continue building the community in Spanish-speaking regions, like Latin America, to increase the pull of contributors and get feedback on how our tools and processes can be improved to serve these community members better.  

In addition to learning how to be a developer, a maintainer, a reviewer or an editor; people can contribute with the translation. This type of contribution is often a good first way to contribute, and is recognized as valuable by the community. 

We also expect the project's documentation and tooling will be useful to extend this effort to other languages and for other communities and projects with translation efforts.

### Sources

[^1]: Hilary Carter and Jessica Groopman, “Diversity, Equity, and Inclusion in Open Source: Exploring the Challenges and Opportunities to Create Equity and Agency Across Open Source Ecosystems,” foreword by Jim Zemlin, The Linux Foundation, December, 2021.
[^2]: List of languages by number of native speakers. Accessed on December 1, 2022. https://en.wikipedia.org/wiki/List_of_languages_by_number_of_native_speakers
[^3]: Internationalization and localization. Accessed on December 1, 2022. https://en.wikipedia.org/wiki/Internationalization_and_localization 