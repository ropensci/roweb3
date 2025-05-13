---
title: Bridges and Communities. My Journey as an rOpenSci Champion
author:
- Andrea Gomez Vargas
date: '2025-05-15'
slug: puentes-comunidades-campeones-ropensci
description: Developing the ARcenso package with rOpenSci and presenting it to R communities
package_version: 0.1.0
tags:
- champions program
- packages
- community
editor:
- Yanina Bellini Saibene
- Steffi LaZerte
doi: 10.59350/6ckxv-axw35
---

To be part of the [rOpenSci Champions program](https://champions-program.ropensci.org) has been an experience of **professional growth and an opportunity to contribute to the rOpenSci community**. I learned about R package development while working on a tool to facilitate access to census data from Argentina.

In this blog, I want to share how this experience *opened new opportunities, connected me with people and communities, and led me to be part of new projects, strengthening my commitment to open access to data*.

## My project in the program

From the beginning, my goal was to develop a package in R that would allow structured access to Argentina's census data. The idea arose from the need to have historical information organized and ready to be used in statistical analysis and research projects. My work as a population statistics analyst led me to identify the importance of having a tool that would facilitate the processing of these data. In historical censuses, these data are scattered in different formats (books, PDFs, spreadsheets and REDATAM), which makes it difficult to access and use.

{{<figure src = "censos-argentina.png" caption = "Collage with the covers of the national censuses of Argentina from 1970 to 2022. " alt = "Official logos of the national censuses of Argentina from 1970 to 2022, from left to right, 1970. Blue cover of the report of the National Census of Population, Families and Dwellings, with drawings of dwellings and people; 1980. Animated figure of a smiling pencil with the text 'Census 80'; 1991. Icon with a white grid, two black eyes and a red smile next to the text 'Census '91'; 2001. Blue squares forming a geometric figure and the text 'Census 2001'; 2010. Text 'Census 2010 - Bicentennial Year', with the zero represented as an Argentine cockade; 2022. Blue circle with abstract white lines and the text 'Census 2022 - Argentine Republic'. ">}}

During the program, I worked on the organization and standardization of the data, facing challenges such as the structuring of the information (tidy data) and the creation of efficient functions for its manipulation. One of the most enriching aspects of the program were the training sessions provided by rOpenSci (special thanks to [Maëlle](/author/maëlle-salmon/) and [Yani](/author/yanina-bellini-saibene/) for all the patience and learning), and the continuous discussion of projects with the other Champions in the program.

We participated in virtual trainings on (among other topics) code management, use of efficient packages for the creation of R packages, and automation with GitHub Actions, all with a focus on best practices. In addition, I had the opportunity to benefit from the personalized mentoring of [Luis Verde](/author/luis-verde-arregoitia/) a friend of the LatinR community, who accompanied me throughout the package development process, providing key guidance at each stage.

## Expectation vs. reality

{{<figure src = "codehero.png" alt = "Illustration of a person wearing a cape that says 'code hero' and saying 'I'm doing something all by myself' while flying with a laptop. Below is a safety net held by people holding signs that say 'support' and 'community'. There are also hot air balloons supporting them, with labels like 'teachers', 'bloggers', 'friends', 'developers', and 'contributors'." class = "pull-right" caption = "Illustration by [Allison Horst](https://www.allisonhorst.com/)">}}

As I progressed in the development of the package, I faced a key challenge: the structure of the data. As I incorporated information from different census years, I realized that each census brought with it thousands of excel files in different formats making automation difficult and making the transformation one by one, which made the standardization task even more complex.
It was then that I decided to invite [*Emanuel Ciardullo*](https://github.com/ECiardullo) to join the project. We formed a duo from our complementary points of view - me from sociology, him from statistics - to face this first phase of the package. This alliance was key to rethinking the approach and sharing the technical and conceptual work.

My intention was to cover all the census years in the package, but over time I realized that it was going to take more time than I had estimated. It was not only a matter of organizing data, but also of designing a structure that would allow the integration of information in a scalable and reusable way in the future.

With a volume of work already done and a clearer strategy, we reordered the project outline, defined a roadmap for the different phases of data availability, and then were able to focus on finalizing the data we had already structured. Finally, we put together the documentation and developed the first functions: `get_census()`, `check_repository()` and `arcenso()`.

## ARcenso

{{<figure src = "arcenso-hex.png" width = "200px" caption = "Hex from the `arcenso` package, created as part of the rOpenSci champions program." alt = "Blue hex sticker from the R arcenso package, with a design inspired by the sun of the Argentinean flag, and the name of the AR_censo package in white letters in the center." class = "pull-left">}}}

In the midst of these reflections and technical challenges, [ARcenso](https://soyandrea.github.io/arcenso/) was born. This project, with the package {{arcenso}}, not only seeks to facilitate access to census data, but also to promote its use among researchers, the public sector and citizens in general by means of free software tools. The possibility of contributing with a useful, open and community-oriented tool has been one of the most important motivations of this process.

The project is in its first stage: you can already install the package using `remotes` and explore the first census years available, 1970 and 1980. The purpose is to continue development so that ARcenso becomes more robust, undergoes [rOpenSci peer review](/software-review/), and eventually become available on CRAN. The Champions Program was the starting point, but development of the package continues because the potential to facilitate access to key data in an open and reusable way is enormous.

## The community

### A scholarship, a conference and a global community

I had the opportunity to receive the scholarship to attend Posit::Conf, one of the most important international conferences in the R ecosystem. It was a transformative experience: I learned a lot, met people I admire and experienced firsthand what it means to be part of a global community that is committed to free software, open access and collaborative development. In addition, it was very special to meet in person with part of the rOpenSci team and other people who are part of this community. The exchange helped me to rethink key aspects of ARcenso, from its structure to its potential to attract open collaboration. I came away with new ideas, inspiration and a network of people to continue growing with.

{{<figure caption = "Key moments of the tour: meeting with the rOpenSci community at posit::conf and arcenso presentation at LatinR." src = "communities.png" alt = "Collage with two images. On the left, group of rOpenSci champions at Posit Conf from left to right, Luis Verde, Andrea Gomez, Sunny Tseng and Francisco Cardozo; on the right, an image of the screen during the arcenso package presentation at LatinR.">}}}

### LatinR

In November 2024, [we presented ARcenso at LatinR](https://youtu.be/YYfyBrQhMQc?si=lQZMormzo83ImToS), the Latin American conference on the use of R in research and development. Together with Emanuel, we shared the work done during the program and how we worked together to build this first phase of the project. It was a very special moment to show the regional community what we had achieved and to receive their feedback and support during the panel on the Package Development Process.

### R in Network

And to close this great 2024, from the organization 'R in Buenos Aires', together with R-Ladies Buenos Aires, we gave a local presentation of the package. As part of the R in Buenos Aires organizing team, I coordinated this activity with the aim of sharing the project with the community, showing what we were building and inviting more people to get to know it. This instance was very good, as not only did I receive valuable feedback from the community, but I was also able to connect with other people who had faced similar problems. We also took the opportunity to spread the word about the rOpenSci Champions Program, in the hope that more people in our region will be encouraged to apply for the next cohort.

{{<figure src = "arcenso-meet.png" caption = "Presentation in the local chapters of R-Ladies and R in Buenos Aires of the arcenso package: community, functions and the behind the scenes of the work in Dupla." alt = "Collage of three moments of the ARcenso, Opportunities and Community event. On the left, group photo of the people who attended the event; in the middle, Andrea presents and points out the main functions of the arcenso package on the screen; on the right, Andrea and Emanuel explain how they organized the work, in front of the meetup participants.">}}}


Presenting the project and discussing it with the community allowed me to reaffirm the importance of creating accessible and well-documented tools. It was also a reminder that we were not alone in this process: the R community is a space where knowledge is built collectively, and actively participating in it was fundamental to move forward with the package.

### What remains after the momentum

Participating in the rOpenSci Champions Program was the starting point to create something I didn't know I could build. It encouraged me to move from using R to developing a package in R, and from the chaos of data to designing a tool meant for other people to work better. But, above all, it connected me with a community that believes in sharing what it knows, in accompanying each other in the process and in opening paths for those who come after. Today ARcenso continues to grow, and so do I: with new ideas, new challenges and the desire to continue building in community and for the community.


