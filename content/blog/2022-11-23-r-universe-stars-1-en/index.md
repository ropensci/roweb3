---
slug: "r-universe-stars-1-en"
title: "Meeting the stars of the R-universe: R Community, Exchange and Learn"
author:
  - Yanina Bellini Saibene
  - Alejandra Bellini
  - Lucio Casalla  
  - Steffi LaZerte
date: '2022-11-23'
tags:
  - community
  - r-universe
  - interviews
# The summary below will be used by e.g. Twitter cards
description: "This is the first post of our interview series __\"Meeting the stars of the R-universe\"__. We begin our journey in _Argentina_ with a team that uses R and develops R packages in the Argentinean State."
preface: "[Lee la versión en español de este artículo](/blog/2022/11/23/r-universe-stars-1-es/)"
---

This is the first post of our interview series __"Meeting the stars of the R-universe"__. We aim to introduce the working groups and people behind the development of software and packages many of us use and which are available through the _R-Universe_.  We want to highlight and explore different teams and projects around the world, the work they do, their processes and users. We begin our journey in _Argentina_  with a team that uses R and develops R packages for the Argentinean State. Be sure to watch the [video](#video-of-the-interview) at the end with excerpts from the interview.


## Working with R packages in the Argentinian state
{{< figure src = "tq-picture.jpg" class = "pull-right" width = "300" alt = "Profile photo of Juan Pablo Ruiz Nicolini." caption = "<center><strong>Juan Pablo Ruiz Nicolini</strong><br>National Director of Markets and Statistics<br>of the vicesecretary of Strategic Development <br>of the Ministry of Tourism and Sports of the Nation</center>">}}
Two years ago, [Juan Pablo Ruiz Nicolini](https://twitter.com/TuQmano) (also known as _Tucu_) was invited to join the Markets and Statistics Department of the National Ministry of Sports and Tourism, headed by Matías Lammens. As part of this work, Juan Pablo leads a team that handles large volumes of data and the possibility of using it for multiple purposes. For these reasons, Juan Pablo and his team rely heavily on R and the R community for their work.

[^1]:National Director of Markets and Statistics of the vicesecretary of Strategic Development of the Ministry of Tourism and Sports of the Nation.


The team is large in comparison with other similar government agencies and with permanent large-scale projects such as those developed in conjunction with INDEC (National Institute of Statistics and Census of Argentina).

_“There is a large amount of work and information available and when we started our review we found that there was a lot of great stuff, a lot of data, a lot of processes(...) there was a lot of room to take advantage of all the information that was living inside the computers of the teams working in our office.”_ This is how Juan Pablo explains the challenge and the opportunity that joining this office represented. Their goals were to collect this information and also to be able to share it externally and accessibly with different audiences.


From the beginning, the process involved several steps. First they made the decision that R packages and open source software were the way to go. Then came the internal training stage. 

{{< figure src = "pablo-picture.jpeg" class = "pull-left" width = "300" alt = "Profile picture of Pablo Tiscornia." caption = "<center><strong>Pablo Tiscornia</strong><br>Process coordinator.<br>Ministry of Tourism and Sports of the Nation. <br>National Office of Markets and Statistics</center>">}}

[Pablo Tiscornia](https://twitter.com/pabblo_h) is part of _Tucu_'s team, and explains that the starting point of the work, in an office that until recently combined manual processes and almost everything was in proprietary software, was the free software philosophy added to all that the R community had been offering in the region.  Until now, the work in the office combined manual processes and almost everything used proprietary software. Pablo and Tucu met with a team of approximately 17 people who worked in some way with data processing and who were all very involved with the processes: _“first we needed to solve an internal work dynamic (...) there was a lot to do. Today I think out of those 17 people 15, 14 all of them know how to open R, they know how to put together a script and they know how they want to be involved in the process we define. From the moment you have a piece of data until you communicate at the end.”_

At this stage, their objective was achieved: the team learned the tool and the work dynamics that they had defined as the most appropriate.

The second step was to _"open the process"_ as well as to _"improve the workflow"_. Pablo explains that they also incorporated the _"dynamics of an open State"_ by _"[opening] our process, not hiding how we do our work."_ It is hoped that the future will also include the opportunity to receive contributions from the community and for their code to be reviewed by others.

All processes are complex and many of them involve simultaneous and even "chaotic" steps, as _Tucu_ describes. These involve different people with diverse knowledge contributing to the design of the projects that are currently under development.

To integrate these different elements, _Tucu_ gives as an example the _Thursday meeting_. There, they show and share their code so that others can use them in different parts of the process. _"We do live coding where we raise doubts and do exercises (...) we try to generate a dynamic in which we share, sometimes even in a playful way, showing each part and what they are doing to be shared with others."_


## Free software and in our language

In addition to the free nature of open source software and the importance of resource management for a State, Pablo Tiscornia explains what appears almost as a declaration of principles: _“It is a work philosophy, and an idea about how we develop and promote knowledge. I think what we can give, today to the State, is thanks to free software. So, it would be almost irresponsible not to promote what formed us.”_

Juan Pablo reinforces the idea with his personal experience: _“I was a master's thesis student in political science and seven years ago I forced myself to do my thesis in R in order to learn (...) and what I quickly found, luckily, was the R community.”_

> and what I quickly found, luckily, was the R community"
__Exchange with the R community and learn from the R community" seems to be the main mantra that both _Tucu_ and Pablo share with the team.__

They also add two important objectives to the whole process: to present the R language in a way that is accessible to all people, even those who do not necessarily come from programming backgrounds, and to _"develop the packages in Spanish as much as possible”_. This helped reduce barriers for the team: _"We couldn't get into thinking whether we know English, if we don't know English, or even how much English we know. We wanted to get that barrier out of the way."_


## A work for the community

The work developed by this office serves a many different audiences.

{{< figure src = "sinta.png" class = "pull-left" width = "380" alt = "Screenshot of the SINTA system home page showing access to its open datasets." >}}

Today they have a site called [SINTA (Sistema de Información Turístico de la Argentina -- Argentina's Tourist Information System)](https://www.yvera.tur.ar/sinta/) where the _"different ways of accessing information"_ are present in an organized fashion. Juan Pablo explains that _"the work was to develop tools. R has much to do with this, bringing the information closer to different audiences."_

Those audiences include academics (people who research and teach) and government. For example, offices at different levels of the State can use the information for decision-making and setting public policy. As this is an open data portal, the information is also available to anyone else who wants to interact with it.


</br>
</br>

## The R-Universe experience

The concept of community is closely related to social and communication networks, and it was precisely Twitter that first brought Juan Pablo closer to the [R-Universe](https://r-universe.dev/search/) where he discovered [step-by-step instructions on how to build his own R universe](/blog/2021/09/21/creando-tu-r-universe/).

_“It is the logical next place to share the things that we're doing openly, to make the packages in our GitHub available. It is possible to open up our little marketplace, our mini CRAN, in R-Universe, to share the libraries that we're starting to develop”_, this is how _Tucu_ explains the first use of the platform and adds, _“to me it looks spectacular, as I see how it is changing over time, how comprehensive it is, the way one can visualize all the development that one is sharing in the R-Universe.”_

Pablo adds that developing packages was the logical next step of the process after incorporating the R language and training: _“we put together, on the one hand, the tools with which we improve our workflow, the package [{Herramientas}](https://dnme-minturdep.r-universe.dev/ui#package:herramientas), and on the other hand, the package [{Comunicación}](https://dnme-minturdep.r-universe.dev/ui#package:comunicacion), that the idea was mainly, and still is today, to improve the workflow of our team, our day-to-day work.”_


{{< figure src = "dnme-r-universe.png" class = "pull-right" width = "500" alt = "Screenshot of an R-Universe profile showing SINTA's packages" >}}


Both Pablo and Juan Pablo agree that the main benefit of the R-Universe to their office is being able to host all the packages they have under development. Pablo describes the R-Universe as _"a great place where we can put all of our toolboxes and we can even show our packages as well. We have a [place](https://dnme-minturdep.r-universe.dev/ui#packages) with our tools that are consistent with each other, that have a common philosophy of work.”_

The work of Juan Pablo and Pablo as well as that of the R-Universe are in a world that has changed how programming is used. In Pablo's words: _“We are in a world where programming is no longer for programmers in terms of who studied for it, we are in a world where there are many people who collaborate and want to collaborate even with only one little piece.”_

Juan Pablo concludes by saying: _“There are more barriers that can be lowered, especially for those of us who do not come from programming, we come from the social sciences and began to program and started using tools that made our work easier"_  and importantly, _"we can also do it in Spanish."_ 

## Video of the interview

If you want to hear more details about the experience, be sure to watch the protagonists in the video with excerpts from the interview. You can activate the subtitles in English and Spanish.

{{< vimeo b3116c79b8 title="Entrevista a Juan Pablo y Pablo >}}
