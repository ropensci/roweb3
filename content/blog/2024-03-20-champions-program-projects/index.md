---
title: "rOpenSci Champions Pilot Year: Projects Wrap-Up"
slug: "champions-program-projects-cohort1"
author:
  - Yanina Bellini Saibene
editor:
- Steffi LaZerte
date: '2024-03-20'
tags:
  - community
  - champions program
description: "Our first cohort of Champions complete the program. In this blog post, we share each champions projects, their achievements and outreach activities."
---

Our first cohort of the [rOpenSci Champions Program](/champions/) has now completed the second phase of the program by developing their project and carrying out outreach activities. In this article, we share each Champion's project, their achievements and their outreach activities.

## Champions' Projects

In their applications Champions choose to develop a new package or to participate in the review process as authors or reviewers.

### Projects related to rOpenSci Software Peer Review

-   **Carolina Pradier** from Argentina worked on the [eph](https://docs.ropensci.org/eph/) package, which facilitated working with data from the Permanent Household Survey - INDEC, Argentina. Carolina added functionality to the package, reduced the number of dependencies, improved error messages and increased test coverage before submitting the package for review. After peer review in Spanish, her package is now part of the rOpenSci suite and was published on CRAN. Her mentor was [Athanasia Mo Mowinckel](/author/athanasia-mo-mowinckel/) from Norway.

-   **Victor Ordu,** from Nigeria, worked on the [naijR](https://docs.ropensci.org/naijR/) package, which contains a suite of functions which make it easier to deal with data and datasets related to Nigeria and its constituent parts. Victor worked on improving error messaging and replacing dependencies for spatial packages. After peer review, his package became part of the rOpenSci suite and was published on CRAN. His mentor was [Laura DeCicco](/author/laura-decicco/) from the US.  

-   **Alican Cagri Gokcek** from Turkey [reviewed Victor’s package](https://github.com/ropensci/software-review/issues/600). As a blind developer, in his review Cagri focused on the accessibility of the visualizations the package created. His mentor was [Elio Campitelli](/author/elio-campitelli/) from Argentina. 

-   **Cesar Aybar** from Peru, developed the [rgeeExtra](https://github.com/r-earthengine/rgeeExtra) package that extends the functionality of rgee, a package for accessing the Google Earth Engine API. rgeeExtra was designed to modify rgee's accessing and processing of remote sensing spatial data to have a more friendly syntax for R users. Cesar worked on adding functionality, changing the syntax of the package, improving test coverage and error messages, and replaced spatial dependencies. His package is [under review](https://github.com/ropensci/software-review/issues/608). His mentor was [Marc Choisy](/author/marc-choisy/) from Vietnam.

-   **Paola Corrales** from Argentina, developed the [agroclimatico package](https://github.com/AgRoMeteorologiaINTA/agroclimatico) which calculates climatic and hydrological indices and statistics from sorted data, including a function to plot geo-referenced results and cartographic information. Paola replaced dependencies, improved error messages, and increased test coverage. She had to make difficult decisions, such as changing the package’s name and some of the functions to avoid confusion with other existing packages. agroclimatico is [under review in Spanish](https://github.com/ropensci/software-review/issues/599). Her mentor was [Adam Sparks](/author/adam-sparks/) from Australia.

-   **Marcos Prunello** from Argentina, worked on his package [karel](https://mpru.github.io/karel/), which implements Karel the robot in R. By writing programs to help Karel complete tasks, users learn introductory concepts about programming in an interactive and fun way. Marcos worked on improving error messages and developed infrastructure that allow the package to provides functions, arguments, messages, and documentation in both English and Spanish. The multilingual solution enables additional languages to be added. The package [is under review](https://github.com/ropensci/software-review/issues/620), being the first to have a **bilingual review**! His mentor was [Lukas Wallrich](/author/lukas-wallrich/) from the UK. 


### Projects developing new packages

-   **Haydee Svab**, from Brazil, developed a new package called [odbr](https://cran.r-project.org/web/packages/odbr/index.html) that helps with accessing and processing data from the Brazilian origin and destination (od) surveys and implements many of the algorithms that Haydee developed for her master's thesis. She had the goal to publish the package on CRAN, and after several attempts, and with the support of her mentor, [Beatriz Milz](/author/beatriz-milz/) from Brazil, the package was [published](https://cran.r-project.org/web/packages/odbr/index.html). 

-   **Bilikisu Wunmi Olatunji** from Nigeria, developed the new package [chartkickR](https://github.com/BWOlatunji/chartkickR). The package is an htmlwidget that seamlessly integrates with the Chartkick JavaScript library. It provides R users with a straightforward interface to generate beautiful and interactive charts using R code. The package provides ten types of plots that you can produce with very few lines of code. [You can read more in Bilikisu's blog post](/blog/2023/12/19/champions-program-2023-experience/). Her mentor was [Christina Maimone](/author/christina-maimone/) from the US.

-   **Ghozayel Elotteebi** from Saudi Arabia, worked on a new package called [Lextale](https://ghozayel.github.io/Lextale/). To Ghozayel's knowledge, this is the first R package in the field of linguistics developed in Saudi Arabia and would be the first local contribution to rOpenSci. She is working on polishing the package functionality in order to send it through the review process. Her mentor was [Zebulun Arendsee](/author/zebulun-arendsee/) from the US.


## Outreach Activities

Our Champions carried out a wide range of outreach activities like talks, conference papers, workshops, blog articles, community calls and meetups. The objective of these activities was to share what they did and learned during the program with their communities beyond rOpenSci.  

Outreach activities were carried out from May 2023 to December 2023 involving local communities (universities, RUGs, R-Ladies Chapters, conferences, and organizations) and delivered in Champions’ native language (English, Spanish, and Portuguese). 

### Workshops

Paola Corrales developed and delivered an online workshop for non-selected applicants on [Git and GitHub](https://paocorrales.github.io/git-developing-software-together/) already giving back to the program. She will also teach this workshop for the second cohort.

{{< figure src = "pao-git-github.png" alt = "Paola Corrales sharing a slide about the git workshop" caption = "<strong>Paola Corrales teaching Git for the Champions Program</strong>">}}

Marcos Prunello developed a workshop on [how to create R packages and make them multilingual](https://mpru.github.io/charla_renrosario_2023/crear_paq_multiling.html) in Spanish for an in-person meetup hosted with the National University of Rosario (Argentina) and RenRosario R User Group, reactivating the activities of this local community after a hiatus during the pandemic. 

{{< figure src = "RenRosario.jpeg" alt = "Marcos Prunello and the attendees to his workshop on multilingual packages" caption = "<strong>Attendees to Marcos Prunello's workshop on Multilingual Packages</strong>">}}

Bilikisu Wunmi Olatunji delivered a workshop on _Working with JavaScript in R_ for the R-Ladies Abuja chapter. She learned about this topic for the development of her package for the Champions Program.

{{< figure src = "r-ladies-abuja-meetup.jpeg" alt = "Workshop flyer for the Abuja R-Ladies Chapter featuring Bilikisu" caption = "<strong>R-Ladies Abuja flyer for the Workshop Working with JavaScript in R</strong>" class = "center" >}}

### Community Calls and Coworking sessions

Carolina Pradier, Victor Ordu, Paola Corrales, Haydee Svab (Champions), Beatriz Milz, Elio Campitelli, and Adam Spark (mentors) participated in [Community Calls](/commcalls/july2023-championprogram/) and [Coworking sessions ](/coworking/) for the Champions Program. They shared their experience, their work, and tips for applying to the program. They also spoke with and joined the community manager in talks with local groups about the program to encourage other people to participate. 

{{< figure src = "comm_call.png" alt = "Community Call Speaker details. A head shoot of Beatriz, Carolina and Victor and a short bio about each of them." caption = "<strong>Carolina, Victor and Beatriz as speaker of the community call about the champions program.</strong>" class = "center" >}}

Carolina Pradier also organized [an online event in Spanish](https://vimeo.com/899372049) for the community of users and developers of her package eph. In this event Carolina updated the community about all the improvements she made to the package through the Champions Program and three panelists explained how they use the package.


### Talks

Our Champions are part of other communities like R-Ladies, LatinR and local R User Groups, and organized several activities with these groups. 

Cesar Aybar delivered the talk ["Preparing remote sensing data for deep learning using r-spatial"](https://docs.google.com/presentation/d/1Ws2o5WwcRMcYd9YjKcfyLv5X4lOAwJztEU1sMRADTVk/edit#slide=id.p) for the Environmental Data Science Book.  

{{< figure src = "cesar-talk.png" alt = "Event flyer. Featuring Cesar's headshot picture and his talk title Preparing remote sensing data for deep learning using r-spatial. May 8. 9:00-10:00 UTC+1 - Register on Eventbrite." caption = "<strong>Cesar's talk event flyer</strong>">}}

At a meetup with RenRosario RUG and the Universidad Nacional de Rosario, Marcos Prunello talked about [rOpenSci](https://mpru.github.io/charla_renrosario_2023/presentacion_ropensci.html) and Carolina Pradier delivered a talk about her project [Paquete {eph}: Novedades e ideas para su uso](https://caropradier.github.io/slides_eph_ropensci/#1). 

{{< figure src = "flyers.png" alt = "Events flyers in Spanish. First flyer shows a short bio about Marcos and information on the event venue in the Universidad Nacional de Rosario. Marcos' talk title Que es rOpenSci y como ser parte. Second flyer for the eph event featuring talks by Valentin, Vladimiro and Guido. " caption = "<strong>RenRosario and eph event flyers in Spanish</strong>">}}

Haydee Svab and Beatriz Milz organized an in person event with R-Ladies Sao Paulo in portuguese [Pacotes em R de dados brasileiros](https://r-ladies-sao-paulo.github.io/2023-11-pacotes-br/) where Haydee delivered a talk about the rOpenSci Champions Program and the odbr package she developed as her project in the program. The event also highlighted others women developers from Brazil. This blog post (in [Portuguese](https://rladies-sp.org/posts/2023-12-evento-pacotes/) and [English](https://rladies-sp.org/posts/2023-12-evento-pacotes/english.html)) summarizes the event and shares the slides of all the talks. 

{{< figure src = "R-Ladies-SaoPaulo.jpg" alt = "R-Ladies Sao Paulo attendees' group photo. The group is around 30 people smiling. Haydee is wearing an R-Ladies T-shirt" caption = "<strong>R-Ladies Sao Paulo event group photo</strong>">}}

All the Latin American participants of the program [wrote a summary of their experiences in the program](/es/blog/2024/01/09/champions-program-latinr/) which was accepted at LatinR (2023 at the Universidad de La Republica, Uruguay) and [presented in Portugese by Haydee Svab](https://hsvab.github.io/latinr2023-championsprogram/#/) representing all the authors. 

All our champions and mentors wrote blog posts for the rOpenSci webpage ([English](/tags/champions-program/), [Spanish](/es/tags/champions-program/)). 

## Champions' accomplishments and next steps

Our Champions have been very successful in the delivery of their projects, building high quality software with a focus on their countries and discipline. The impact of their work also spread to their home institutions and related local communities. Not only through their outreach activities sharing information and knowledge contextualized for their audience, but also through their researching and developing solutions to common barriers to participation such as language. 

Many of our Champions will continue engage with rOpenSci, and even have already planned activities for 2024. Stay tuned to learn about them! 

## Acknowledgements

We want to thank the [CSCCE](https://www.cscce.org/) team, especially *Lou Woodley*, *Camille Santistevan*, and *Maya Sanghvi*, for their support in designing the overall program.

The rOpenSci Champions Program is funded by [The Chan Zuckerberg Initiative](https://chanzuckerberg.com/). This phase of the Champions Program was made possible by the work and feedback of many people.