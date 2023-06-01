---
slug: "r-universe-stars-4-en"
title: "Meeting the Stars of the R-Universe: PEcAn, an Open Source Project to Take Care of the Planet"
author:
  - Yanina Bellini Saibene
  - Alejandra Bellini
  - Lucio Casalla  
  - Steffi LaZerte
date: '2023-06-06'
tags:
  - community
  - r-universe
  - interviews
  - r-universe-stars
featured: true
# The summary below will be used by e.g. Twitter cards
description: "Climate change and research in this area have diverse and complex data that demand increasingly complex analysis models. The PEcAn project works to develop this ability."

---

A new post of our interview series [“Meeting the stars of the R-universe”](/tags/r-universe-stars/). We aim to introduce the teams and people behind the development of software and packages many of us use and which are available through the R-Universe. We want to highlight and explore different teams and projects around the world, the work they do, their processes and users. Our third stop is the __United States__ to talk with members of the PEcAn project. Be sure to watch the video at the end with excerpts from the interview.


#### Climate change and research in this area have diverse and complex data that demand increasingly complex analysis models. The PEcAn project works to develop this ability.

In this next interview, we will go into the science of climate change, and explore where data analysis and ecosystem modeling tools are developed. That is the main objective of the [PEcAn project](https://pecanproject.github.io/), where they collaboratively seek new ways to collect and synthesize data and develop accessible tools to perform these tasks in a reproducible way.

Our discussion was attended by Rob Kooper, Chris Black, Eric Scott, Michael C. Dietze, and David LeBauer. All members of the PEcAn project with the same goal: to find more and better ways to integrate the enormous amount of existing data on climate change.

{{< figure src = "team.jpg" alt = "Profile photos of David LeBauer, Michael C. Dietze, Rob Kooper, Eric Scott, and Chris Black" caption = "<center><strong>David LeBauer, Michael C. Dietze, Rob Kooper, Eric Scott, and Chris Black</strong></center>">}}

According to Michael C. Dietze's own account, the project _"is like a kind of computerized data modeling system. It's a set of tools that facilitate the combination of process and data models, with a special focus on ecological models."_

In the project description, the concept of community quickly comes up. They have a large network of people distributed geographically and strategically, allowing them to reach more students involved in different parts of the process and in different projects. Thus, they can share work with many people simultaneously, have a significant number of collaborators and disseminate knowledge beyond academic boundaries because, as Rob explains, those students will continue their developments in other places where they are likely to bring their tools and data packages. In these connections and collaborative work lies much of the strength of the PEcAn Project.

An example of this practice is the project they are developing with Brooklyn National Laboratory, where they are working on NASA carbon monitoring that uses a data simulation system. In this case, there are both PhD students and Post Doctoral Researchers working on the project.

## A tree that keeps growing 

In this work structure, one of the main objectives is to become a kind of "Hacker" that solves problems in a more general sense that can then be applied in other contexts and in other areas. According to Rob, knowledge can be sustained and grow thanks to the research developed across multiple institutions including University of Illinois, Boston University, University of Arizona, University of Wisconsin and Brookhaven National Laboratory. 

Working with Google Summer of Code, which has helped with developing and promoting an ecosystem of modeling tools, Chris explains that part of the success is that it is not just one university doing research but a large team of people all over the world working together. Although it takes longer, the result is used by a much wider community.

## Doing more in less time with standards

During the talk, the team shared the work ["Beyond ecosystem modeling: A roadmap to community
cyberinfrastructure for ecological data-model integration"](https://onlinelibrary.wiley.com/doi/pdfdirect/10.1111/gcb.15409) as an example, where they explain with a diagram how the PEcAn project makes the life of researchers who have to do multi-model analysis "352" times easier.

{{< figure src = "diagram.png" alt = "A flow diagram showing the standards approach for reducing redundant work when adopting common formats. There are “ n” data types that must be linked to “m” simulation models and “k” post-simulation analyses. In the top panel, the conventional approach where modeling teams work independently requires implementing n × m different input and m × k different output conversions. As data, models, and analyses are added, and effort scales quadratically. On the other hand, the bottom panel shows that by working as a community, and adopting common formats and shared analytical tools, the number of converters necessary to link models, data, and analyses reduces to an m + n and m + k problem, and scales linearly. " caption = "<center><strong>Conventional and Standards approach to modeling. PEcAn project is an example of the standards approach for modeling.</strong></center>">}}

By using standards and having packages that can solve the reading, embedding and writing of all the data involved in the process, researchers don't need to know how many different formats work, or communicate with many different research teams, in order to do this kind of work.  

This allows an individual researcher to run a whole ensemble models. "Just a couple of years ago analyzing multi-models was not something that was accessible to individual researchers" Michael explains.  


## The R-Universe experience

PEcAn packages are organized into different groups, such as basic packages, useful tools, and modules that include packages for data management and also packages to do statistical analysis on the inputs and outputs of the models.

One of the most important points of [having all the packages in an orderly manner in the R-Universe](https://pecanproject.r-universe.dev/builds) is to simplify the work of researchers. Having easy and organized access to these models saves years of work and resources.

In addition, with so many people working on the packages, errors are more likely to discovered. Although the team knows that the PEcAn project code is not bug-free, they have a better chance of finding and fixing bugs by having more eyes looking at the same thing.

In the following video, the team shares how they organize the packages in the R-Universe and the strengths of using this tool:


{{< vimeo id=829850626 title="Meeting R-Universe Stars - PEcAn project" >}}

