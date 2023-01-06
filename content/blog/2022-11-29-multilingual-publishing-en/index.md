---
title: Expanding our Community through Multilingual Publishing 
author:
  - Yanina Bellini Saibene
  - Paola Corrales
  - Elio Campitelli
  - Maëlle Salmon
date: '2023-01-12'
slug: multilingual-publishing-en
tags:
  - community
  - multilingual
description: "We are translating rOpenSci's materials on best practices for software development, code review, and contribution to open source projects into Spanish! We are also developing guidelines and tools for translating open source resources to reach a wider audience. Learn about the project in this blog post."

---

We are excited to announce that, with the support of the Chan Zuckerberg Initiative, NumFOCUS, and the R Consortium, we have begun the process of translating rOpenSci's materials on best practices for software development, code review, and contribution to open source projects into Spanish. 
As part of this effort, we are also developing guidelines and tools for translating open source resources to reach a wider audience.

According to a [recent report](https://www.linuxfoundation.org/research/the-2021-linux-foundation-report-on-diversity-equity-and-inclusion-in-open-source) from The Linux Foundation, _language access_ is one of the _environmental barriers to equity in open source_. The report states that 

> The predominant language of open source is English—in code, content, and community interactions—and English proficiency is a metric by which performance and personality can be judged[^1]. 

This might remind some readers of the famous [quote](https://www.imdb.com/title/tt4166966/characters/nm0005527) from [Modern Family](https://www.tiktok.com/@primevideouk/video/6899066588121713921), where a character called Gloria exclaims:

> Do you even know how smart I am in Spanish?

By publishing multilingual resources, we can lower these barriers by increasing access to knowledge and democratizing access to quality resources, thereby increasing the potential for individuals to contribute to software and open science projects.

## Language representation

The Spanish-speaking R community has been very active and growing in recent years, and has undertaken various translation activities for technical materials such as books, cheatsheets, guides, and datasets.

In 2017, several Latin American R-Ladies began translating the R-Ladies' [Code of Conduct](https://github.com/rladies/starter-kit/wiki/Code-of-Conduct#spanish) and their Rules and Guidelines into Spanish.

In 2018, the [R community in Latin America collectively translated](https://youtu.be/kuHjpdgkSxg) the [R for Data Science](https://es.r4ds.hadley.nz/) book into Spanish. This included the translation of all the data sets used in the book, which were compiled in the [datos](https://github.com/cienciadedatos/datos) package, making it an excellent tool for teaching.

The community continued with the translation of [Teaching Tech Together](https://teachtogether.tech/es/index.html) and contributed to the translations into Spanish of the [Posit Cheatsheets](https://posit.co/resources/cheatsheets/?type=translations/#translation-12),
[The Carpentries](https://software-carpentry.org/lessons/)’ 
and [The Programming Historian](https://programminghistorian.org/es/) lessons.

Driven by this active and growing Spanish-speaking community, rOpenSci [successfully piloted](/blog/2021/07/27/censo2017/) our first [Spanish-language peer review](/commcalls/2019-06-28/), where the submission itself, as well as all reviews and editorial responses, were in Spanish.


All of this work and previous experience created the right conditions for us to start our multilingual publishing with _Spanish_. 
Spanish is the second most-spoken native language in the world and is one of the most geographically widespread languages, being an official language in many countries[^2].

## Technical materials, technical solutions

rOpenSci provides community support, standards, and infrastructure for scientists and research software engineers working in R to develop, maintain, and publish high-quality open-source scientific software. 
In addition, we develop and maintain high-quality documentation and [resources](/resources/) to support these activities.

Multilingual publishing of documentation and resources involves two aspects:

* The _internationalization_ refers to the technological solution allowing the software to adapt to different regions without requiring engineering changes to the source code. It is what enables us to localize our content[^3].

* The _localization_ is the process of taking a piece of content in its original form and converting it into something more accessible and suitable for another region, country, or audience[^3]. This includes language, date formats, currency, measurement units, and support for different character sets. 


In addition, technical translations of living documents have two well-defined stages that involve different resources:

  1. achieving a first version of the translated material, and
  
  2. keeping the material updated and synchronized between the supported languages.

There are many solutions for internationalizing and localizing content and software. _Translation_ is typically the most time-consuming component of these efforts[^3].

Based on the experience gained from our first experiences and the characteristics of our community, this project aims to progress to stage 1 by achieving a first revised translation in Spanish of the rOpenSci materials, and testing a technical workflow for performing the translations.

Our approach will test and develop a workflow using the automatic translator [DeepL](https://www.deepl.com) API to generate an initial translated version of the documents, which will be later reviewed by professional bilingual developers using GitHub as a platform.

The advantage of this workflow is that it reduces the time it takes to produce a quality translation. 
Reviewers will focus on linguistic tasks such as the use of inclusive language, the localization of examples, and the correct translation of phrases, metaphors, or analogies. 
They will also look for reference material in the language of the translation.
In addition, if the workflow proves feasible and useful, it could be incorporated into the pipeline to keep the texts in different languages synchronized, contributing to solve stage 2.

Besides systematizing the experiences, other products of the project will be:

* a general guide of rules to follow when translating technical documents,
* a specific guide for the Spanish language,
* a list of technical terms which will be translated into Spanish and a list of those that will not be,
* an R package with our workflow for translating technical documents.

## Building community

Multilingual publishing will help democratize access to quality resources for learning and teaching the necessary digital skills to become contributors to open source projects and to have a workflow for performing computationally reproducible open science.

At rOpenSci, we understand review as a way of building community.
Developing the material for our review process in Spanish will allow rOpenSci to continue building the community in Spanish-speaking regions (such as Latin America), to increase the number of contributors, and to get feedback on how our tools and processes can be improved to better serve these community members.

In addition to learning how to be a developer, maintainer, reviewer, or editor, people can also contribute through translation.
This type of contribution is often a good first step and is recognized as valuable by the community.

We also expect that the project's documentation and tooling will be useful for extending this effort to other languages and for other communities and projects with translation efforts.

### Sources

[^1]: Hilary Carter and Jessica Groopman, “Diversity, Equity, and Inclusion in Open Source: Exploring the Challenges and Opportunities to Create Equity and Agency Across Open Source Ecosystems”, foreword by Jim Zemlin, The Linux Foundation, December, 2021, https://www.linuxfoundation.org/research/the-2021-linux-foundation-report-on-diversity-equity-and-inclusion-in-open-source
[^2]: List of languages by number of native speakers. Accessed on December 1, 2022. https://en.wikipedia.org/wiki/List_of_languages_by_number_of_native_speakers
[^3]: Internationalization and localization. Accessed on December 1, 2022. https://en.wikipedia.org/wiki/Internationalization_and_localization 