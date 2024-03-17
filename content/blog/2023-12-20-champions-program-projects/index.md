---
title: "rOpenSci Champions Pilot Year: Projects Wrap-Up"
slug: "champions-program-training"
author:
  - Yanina Bellini Saibene

date: '2024-01-30'
tags:
  - community
  - champions program
description: ""
---

Our first cohort of the [rOpenSci Champions Program](/champions/) has now completed the second phase of the program by developing their project and carrying out outreach activities. In this article, we share each champions projects, their achievements and outreach activities.

## Champions' Projects

In their applications Champions choose to develop a new package or to participate in the review process as authors or reviewers.

### Project related to our Software Peer Review

-   **Carolina Pradier** from Argentina worked on the [eph](https://docs.ropensci.org/eph/) package, which facilitated the work with data from the Permanent Household Survey - INDEC, Argentina. Carolina added functionality to the package, reduced the number of dependencies, improved error messages and increased test coverage before submitting the package for review. After peer review in Spanish, her package is now part of the rOpenSci suite and was published in CRAN. Her mentor was [Athanasia Mo Mowinckel](/author/athanasia-mo-mowinckel/)

-   **Victor Ordu,** from Nigeria, worked on the [naijR ](https://docs.ropensci.org/naijR/)package, which contains a suite of functions that make it easier to deal with data and datasets about the country Nigeria and its constituent parts. Victor works on improving error messaging and replacing dependencies for spatial packages. After peer review, his package became part of the rOpenSci suite and was published in CRAN. His mentor was [Laura DeCicco](/author/laura-decicco/) from the US.  

-   **Alican Cagri Gokcek** from Turkey [reviewed Victor’s package](https://github.com/ropensci/software-review/issues/600). As a blind developer, Cagri add a focus on the accessibility of the visualization the package created in his review. His mentor was [Elio Campitelli](/author/elio-campitelli/) from Argentina. 

-   **Cesar Aybar** from Peru, developed the [rgeeExtra](https://r-earthengine.com/rgeeExtra/index.html) package that extends the functionality of {rgee}, a package to access Google Earth Engine API, to be able to access and process remote sensing spatial data with a friendly syntax for R users. Cesar worked on adding functionality, change the sintaxis of the package, improve test coverage and error messages, and replaced spatial dependencies that will be removed. His package is [under review](https://github.com/ropensci/software-review/issues/608). His mentor was [Marc Choisy](/author/marc-choisy/) from Vietnam.

-   **Paola Corrales** from Argentina, developed the [agroclimatico package](https://github.com/AgRoMeteorologiaINTA/agroclimatico) that calculates climatic and hydrological indices and statistics from sorted data, including a function to plot geo-referenced results and cartographic information. Paola replaced dependencies, improved error messages, and increased test coverage. She had to make difficult decisions, such as changing the package’s name and some of the functions to avoid confusion with other existing packages. Agroclimatico is [under review in Spanish](https://github.com/ropensci/software-review/issues/599). Her mentor was [Adam Sparks](/author/adam-sparks/) from Australia.

-   **Marcos Prunello** from Argentina, worked on his package [karel](https://mpru.github.io/karel/), which implements Karel the robot in R, a useful tool to teach introductory concepts about programming in an interactive and fun way, by writing programs for Karel to complete tasks. Marcos worked on improving error messages and develop a infrastructure that allow the package to provides functions, arguments, messages, and documentation in both English and Spanish.  The multilingual solution enables additional languages to be added. The package [is in the process of review](https://github.com/ropensci/software-review/issues/620), being the first to have a **bilingual review**!. His mentor was [Lukas Wallrich](author/lukas-wallrich/) from the UK. 


### Developing new packages

The other type of project was to develop a new package.

-   **Haydee Svab**, from Brazil, developed a new package called [odbr](https://cran.r-project.org/web/packages/odbr/index.html) that allows accessing and processing data from the Brazilian origin and destination (od) surveys and implements many of the algorithms that Haydee developed for her master's thesis. She has the goal to publish the package on CRAN, and after several attemps, and with the support of her mentor, the package was [published](https://cran.r-project.org/web/packages/odbr/index.html. 

-   **Bilikisu Wunmi Olatunji** from Nigeria, developed the new package [ChartkickR](https://github.com/BWOlatunji/chartkickR). The package is an htmlwidget that seamlessly integrates with the Chartkick JavaScript library. It provides R users with a straightforward interface to generate beautiful and interactive charts using R code. The package provides ten types of plots that you can accomplish with very few lines of code. [You can read more in Bilikisu's blog post](/blog/).

-   **Ghozayel Elotteebi** from Saudi Arabia, worked on a new package called [Lextale](https://ghozayel.github.io/Lextale/). To Ghozayel knowledge, this is the first R package in the field of linguistics developed in Saudi Arabia and would be the first local contribution to rOpenSci. She is working on fixing functionalities on the package to send to the review process. 


### Outreach Activities

Our champions carried out a wide range of outreach activities like talks, conference papers, workshops, blog articles, community calls and meetups. The objective of these activities was to share what they did and learned during the program with their communities beyond rOpenSci.  

Outreach activities were carried out from May 2023 to December 2023 involving local communities (universities, RUGs, R-Ladies Chapters, conferences, and organizations) and delivered in Champions’ native language (English, Spanish, and Portuguese). 

### Workshops

Paola Corrales developed and delivered the online workshop for non-selected applicants on [Git and GitHub](https://paocorrales.github.io/git-developing-software-together/) already giving back to the program. She will teach this workshop for the second cohort.

{{< figure src = "pao-git-github.png" alt = "Paola Corrales sharing a slide about the git workshop" caption = "<strong>Paola Corrales teaching Git for the Champions Program</strong>">}}

Marcos Prunello developed a workshop on [how to create R packages and make them multilingual](https://mpru.github.io/charla_renrosario_2023/crear_paq_multiling.html) in Spanish for an in-person meetup hosted with the National University of Rosario (Argentina) and RenRosario R User Group, reactivating the activities of this local community after a hiatus for the pandemic. 

{{< figure src = "RenRosario.jpeg" alt = "Marcos Prunello and the attendees to his workshop on multilingual packages" caption = "<strong>Attendees to Marcos Prunello's workshop on Multilingual Packages</strong>">}}

Bilikisu Wunmi Olatunji delivered a workshop on _Working with JavaScript in R_ for the R-Ladies Abuja chapter. She have to learn this topic for the development of her package for the Champions Program.

{{< figure src = "r-ladies-abuja-meetup.jpeg" alt = "Workshop flyer for the Abuja R-Ladies Chapter featuring Bilikisu" caption = "<strong>R-Ladies Abuja flyer for the Workshop Working with JavaScript in R</strong>">}}

## Community Calls and Co-working sessions

Carolina Pradier, Victor Ordu, Paola Corrales, Haydee Svab (champions), Beatriz Milz, Elio Campitelli, and Adam Spark (mentors) participated in [Community Calls](/commcalls/july2023-championprogram/) and [Co-working sessions ](https://ropensci.org/coworking/) for the champions program. They shared their experience, their work, and tips for applying to the program. They also spoke with and joined the community manager in talks with local groups about the program to encourage other people to participate. 

{{< figure src = "R-Ladies-BASR-Meetup.png" alt = "A post in social media that shows Pao Corrales sharing her experience being a champions at the R-Ladies Buenos Aires and Santa Rosa meetup. The zoom meeting shows a slides with the training topics of the champions program" caption = "<strong>Pao Corrales sharing her experience being a champions at the R-Ladies Buenos Aires and Santa Rosa meetup</strong>">}}

Carolina Pradier also organized an event online in Spanish to get together the community of users and developers of her package eph. In this event ["eph package - news and ideas to use it"](https://vimeo.com/899372049) Carolina updated the community about all the improvements she made to the package under the champions program and three other panelist explain how they use eph.

{{< figure src = "eph.jpeg" alt = "Event flyer. Featuring Valentin, Vladimiro and Guido talks titles in Spanish" caption = "<strong>eph event flyer in Spanish</strong>">}}

## Talks

Our champions are part of other communities like R-Ladies, LatinR and R User Groups. They organize severals activities with these groups. 

Cesar Aybar delivered the talk ["Preparing remote sensing data for deep learning using r-spatial"](https://docs.google.com/presentation/d/1Ws2o5WwcRMcYd9YjKcfyLv5X4lOAwJztEU1sMRADTVk/edit#slide=id.p) for the Environmental Data Science Book.  

Marcos talks about [rOpenSci](https://mpru.github.io/charla_renrosario_2023/presentacion_ropensci.html) in Spanish was part of a meetup with RenRosario RUG and the Universidad Nacional de Rosario. 

Haydee Svab and Beatriz Milz organized an in person event with R-Ladies Sao Paulo

Champions and mentors (, , , Marcos Prunello, Mauro Lepore, Elio Campitelli, Paola Corrales, and ) delivered talks on , Buenos Aires, Abuja and Santa Rosa R-Ladies Chapters, RenRosario and Abuja R User Groups, Universidad Nacional de Rosario (Argentina), LatinR 2023 Conference, Universidad de La Republica (Uruguay), and 



All our champions and mentors wrote blog posts for the rOpenSci webpage (English, Spanish). 



Activities are also planned for 2024. Stay tuned to learn about them. 







## Acknowledgements

The rOpenSci Champions Program is funded by [The Chan Zuckerberg Initiative](https://chanzuckerberg.com/). This phase of the Champions Program was made possible by the work and feedback of many people.

We want to thank the [CSCCE](https://www.cscce.org/) team, especially *Lou Woodley*, *Camille Santistevan*, and *Maya Sanghvi*, for their support in designing the overall program.

