+++
date = "2017-07-13T22:00:37-07:00"
title = "The R-universe project"
description = "Launching a whole new galaxy"

+++

The R-universe platform is a new umbrella project under which we experiment with various new ideas for improving publication and discovery of research software in R.

The system consists of several components and subprojects, that come together on the front-end dashboard on [https://r-universe.dev](https://r-universe.dev).


## Development infrastructure

The R-universe system provides an array of services to users and developers of R packages, with integrated measuring and monitoring tools to analyze the state and evolution of the ecosystem.
The platform is based around a modern build infrastructure, which enables users or research groups to seamlessly setup automated R package repositories for publishing software directly to users.

A lot of the early work on R-universe has gone into iterating with designs to gradually build up such a system in a way that is robust and scalable, while keeping complexity under control.
A brief introduction to the design of the system is described in the technote titled: [*A first look at the R-universe build infrastructure*](/blog/2021/03/04/r-universe-buildsystem/).



## The package server

The technical core of the system is provided by a high-performance [package server](https://www.npmjs.com/package/cranlike) which is implemented in a NodeJS/MongoDB docker stack.

Whereas the traditional R package repository tooling is based on statically generated content, our package server dynamically generates the cran-like repository structure from a database and provides extensive APIs for interacting with repositories. Thereby we can provide cran-like servers that are fully compatible R, yet at the same time automate the build process, track revisions, perform network analysis on the dependency trees, collect statistics, or annotate software with external information such as scientific metrics and citations.

The package server provides [REST APIs](https://ropensci.r-universe.dev/man) for managing package submissions and querying information about individual packages as well as on the repository level. These data can be accessed programmatically or displayed in a [front-end dashboard](https://ropensci.r-universe.dev).


## Monitoring health and activity

One major goal of the project is to combine live data from the build system with other sources of information, to get a more complete picture of the health, role, and impact of a piece of research software.

This part of the project is still in early development. Once the core build system is in place, we will start experimenting with measuring and showing various software metrics and indicators that a potential user may find interesting. These could range from simple statistics on commit activity and software downloads, towards more complex measures based on code analysis or the dependency network.

In addition, we are collaborating with a team to build machine learning models to recognize software mentions in scientific literature. More of these ideas are extensively discussed in the presentation [*Monitoring health and impact of open-source projects*](https://resources.rstudio.com/resources/rstudioglobal-2021/monitoring-health-and-impact-of-open-source-projects/) at rstudio::global 2021.


## Discovery and recommendation

Finally, our goal is to make this platform a fun and interesting place to browse for research software, get to know the authors, and find other related work.

In the [front-end dashboard](https://r-universe.dev) we try to cross-reference other related software, for example by linking other work from the same authors, organizations, categories, and by automatically publishing [articles](https://ropensci.r-universe.dev/#articles) about the software. Eventually we want to develop something close to a recommender system, that can really aid the discovery of research software for R.
