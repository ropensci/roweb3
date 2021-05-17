---
title: rOpenSci News Digest, May 2021
author:
  - The rOpenSci Team
date: '2021-05-21'
slug: ropensci-news-digest-may-2021
categories: []
tags: 
  - newsletter
description: social co-working, R-universe, rOpenSci at useR! 2021, new packages and package news
output:
  html_document:
    keep_md: yes
params:
  last_newsletter: '2021-04-16'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2021/05/21/ropensci-news-digest-may-2021).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

We have no less than three categories of (online :wink:) events coming up: social co-working events, a community call, a conference with contributions from four rOpenSci staff members. :sparkles:

### Community Calls

* Our next community call is about [**rOpenSci's R-universe Project**](/commcalls/may2021-r-universe/) and will take place on Tuesday, 25 May 2021 17:00 UTC. The R-universe platform is a new umbrella project under which rOpenSci experiments with new ideas for improving publication and discovery of research software in R. In this 1-hour community call, **Jeroen Ooms** will introduce the R-universe, including providing a user perspective, and share how we think this sort of tooling can help scientists publish and discover research software.

* Ressources from our past community call [**Set Up Your Package to Foster a Community**](/commcalls/apr2021-pkg-community/) were posted. rOpenSci puts ongoing effort into exploring and communicating how developers can best attract attention to their package (e.g. usage, citations, or feedback), or how to set up their repository to encourage the types of contributions they want. In this 1-hour community call, **Maëlle Salmon**, **Hugo Gruson**, and **Steffi LaZerte** shared tips and examples on how to do this! **Sina Rüeger** [summarized the call](/blog/2021/04/28/commcall-pkg-community/) with help from Mark Padgham.

### Social Co-Working

We held our first two **Social Co-Working and Label-athon events** on April 29th and May 13th. 
These were truly **international events** with 14 participants from Canada, Germany, Switzerland, USA, the UK, France, Singapore, and Mexico. 
We had a blast **socializing (scavenger hunts!) and co-working on our personal R projects** including repository organization, creating/labelling issues, preliminary research, personal GitHub README files, and those packages you can never find time for. 
We had **quiet and noisy rooms** to work in, so everyone was able to find an environment that worked best for them.
Sound like fun? We have **two more coming up**! 

- [Thursday May 27th 9am Pacific](/events/labelathon03/) (16:00 UTC) - [Registration encouraged!](https://form.jotform.com/211236537172249).

- [Thursday June 10th 5pm Pacific](/events/labelathon04/) (Fri June 11th 00:00 UTC) - [Registration encouraged!](https://form.jotform.com/211236201763243).

### rOpenSci at useR! 2021

[Registration](https://user2021.r-project.org/participation/registration/) for the **useR! 2021 conference** has begun, with  Early Bird Deadline until May 28th. 
useR! conferences are non-profit conferences organized by community volunteers for the community, supported by the R Foundation.
useR! 2021 will take place online.

Get excited for four contributions by rOpenSci staff members:

* **Jeroen Ooms**, rOpenSci Lead Infrastructure Engineer, will give a [**keynote talk**](https://user2021.r-project.org/program/keynotes/) about **building a modern and scalable package build infrastructure**, such as R-universe.

* **Maëlle Salmon**, Research Software Engineer with rOpenSci, will give a [tutorial](https://user2021.r-project.org/program/tutorials/), _**GET better at testing your R package!**_ on Wednesday, July the 7th at 9-12AM GMT+2. This tutorial is about advanced testing of R packages, with HTTP testing as a case study.

* **Stefanie Butland**, rOpenSci community manager, will present on **rOpenSci's Model for Managing a Federated Open Source Software Community**.

* **Mark Padgham**, rOpenSci Software Research Scientist, will also give a regular talk, about his original **autotest** package for automatic testing of packages.

Find out about more [events](/events).

## Software :package:

### New packages




The following two packages recently became a part of our software suite:

+ [censo2017](https://docs.ropensci.org/censo2017), developed by Mauricio Vargas: Provee un acceso conveniente a mas de 17 millones de registros de la base de datos del Censo 2017. Los datos fueron importados desde el DVD oficial del INE usando el Convertidor REDATAM creado por Pablo De Grande. Esta paquete esta documentado intencionalmente en castellano asciificado para que funcione sin problema en diferentes plataformas. (Provides convenient access to more than 17 million records from the Chilean Census 2017 database. The datasets were imported from the official DVD provided by the Chilean National Bureau of Statistics by using the REDATAM converter created by Pablo De Grande and in addition it includes the maps accompanying these datasets.).  It is available on [CRAN]( https://CRAN.R-project.org/package=censo2017). It has been [reviewed](https://github.com/ropensci/software-review/issues/414) by Frans van Dunné, Maria Paula Caldas.

+ [exoplanets](https://docs.ropensci.org/exoplanets), developed by Tyler Littlefield: The goal of exoplanets is to provide access to NASA's Exoplanet Archive TAP Service. For more information regarding the API please read the documentation <https://exoplanetarchive.ipac.caltech.edu/index.html>. It has been [reviewed](https://github.com/ropensci/software-review/issues/309) by Maëlle Salmon, Nichole Monhait.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following thirty-seven packages have had an update since the latest newsletter: [gert](https://docs.ropensci.org/gert "Simple Git Client for R") ([`v1.3.0`](https://github.com/r-lib/gert/releases/tag/v1.3.0)), [babette](https://docs.ropensci.org/babette "Control BEAST2") ([`v2.3`](https://github.com/ropensci/babette/releases/tag/v2.3)), [BaseSet](https://docs.ropensci.org/BaseSet "Working with Sets the Tidy Way") ([`v0.0.16`](https://github.com/ropensci/BaseSet/releases/tag/v0.0.16)), [beastier](https://docs.ropensci.org/beastier "Call BEAST2") ([`v2.3.1`](https://github.com/ropensci/beastier/releases/tag/v2.3.1)), [beautier](https://docs.ropensci.org/beautier "BEAUti from R") ([`v2.5`](https://github.com/ropensci/beautier/releases/tag/v2.5)), [bold](https://docs.ropensci.org/bold "Interface to Bold Systems API") ([`v1.2.0`](https://github.com/ropensci/bold/releases/tag/v1.2.0)), [brranching](https://docs.ropensci.org/brranching "Fetch Phylogenies from Many Sources") ([`v0.7.0`](https://github.com/ropensci/brranching/releases/tag/v0.7.0)), [c14bazAAR](https://docs.ropensci.org/c14bazAAR "Download and Prepare C14 Dates from Different Source Databases") ([`2.3.0`](https://github.com/ropensci/c14bazAAR/releases/tag/2.3.0)), [circle](https://docs.ropensci.org/circle "R Client Package for Circle CI") ([`v0.7.1`](https://github.com/ropensci/circle/releases/tag/v0.7.1)), [codemetar](https://docs.ropensci.org/codemetar "Generate CodeMeta Metadata for R Packages") ([`v0.3.0`](https://github.com/ropensci/codemetar/releases/tag/v0.3.0)), [drake](https://docs.ropensci.org/drake "A Pipeline Toolkit for Reproducible Computation at Scale") ([`7.13.2`](https://github.com/ropensci/drake/releases/tag/7.13.2)), [exoplanets](https://docs.ropensci.org/exoplanets "Access NASA's Exoplanet Archive Data") ([`v0.2.1`](https://github.com/ropensci/exoplanets/releases/tag/v0.2.1)), [ijtiff](https://docs.ropensci.org/ijtiff "Comprehensive TIFF I/O with Full Support for ImageJ
    TIFF Files") ([`v2.2.6`](https://github.com/ropensci/ijtiff/releases/tag/v2.2.6)), [jqr](https://docs.ropensci.org/jqr "Client for jq, a JSON Processor") ([`v1.2.1`](https://github.com/ropensci/jqr/releases/tag/v1.2.1)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.5`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.5)), [magick](https://docs.ropensci.org/magick "Advanced Graphics and Image-Processing in R") ([`v2.7.2`](https://github.com/ropensci/magick/releases/tag/v2.7.2)), [mauricer](https://docs.ropensci.org/mauricer "Install BEAST2 Packages") ([`v2.4`](https://github.com/ropensci/mauricer/releases/tag/v2.4)), [mcbette](https://docs.ropensci.org/mcbette "Model Comparison Using babette") ([`v1.14`](https://github.com/ropensci/mcbette/releases/tag/v1.14)), [MtreeRing](https://docs.ropensci.org/MtreeRing "A Shiny Application for Automatic Measurements of Tree-Ring Widths on Digital Images") ([`v1.4.5`](https://github.com/ropensci/MtreeRing/releases/tag/v1.4.5)), [oai](https://docs.ropensci.org/oai "General Purpose Oai-PMH Services Client") ([`v0.3.2`](https://github.com/ropensci/oai/releases/tag/v0.3.2)), [opencv](https://docs.ropensci.org/opencv "Bindings to OpenCV Computer Vision Library") ([`v0.2.1`](https://github.com/ropensci/opencv/releases/tag/v0.2.1)), [pangaear](https://docs.ropensci.org/pangaear "Client for the Pangaea Database") ([`v1.1.0`](https://github.com/ropensci/pangaear/releases/tag/v1.1.0)), [pathviewr](https://docs.ropensci.org/pathviewr "Wrangle, Analyze, and Visualize Animal Movement Data") ([`v1.0.1`](https://github.com/ropensci/pathviewr/releases/tag/v1.0.1)), [rbhl](https://docs.ropensci.org/rbhl "Interface to the Biodiversity Heritage Library") ([`v0.9.2`](https://github.com/ropensci/rbhl/releases/tag/v0.9.2)), [rdhs](https://docs.ropensci.org/rdhs "API Client and Dataset Management for the Demographic and Health Survey (DHS) Data") ([`0.7.2`](https://github.com/ropensci/rdhs/releases/tag/0.7.2)), [rglobi](https://docs.ropensci.org/rglobi "R Interface to Global Biotic Interactions") ([`v0.2.22`](https://github.com/ropensci/rglobi/releases/tag/v0.2.22)), [rzmq](https://docs.ropensci.org/rzmq "R Bindings for ZeroMQ") ([`v0.9.8`](https://github.com/ropensci/rzmq/releases/tag/v0.9.8)), [solrium](https://docs.ropensci.org/solrium "General Purpose R Interface to Solr") ([`v1.2.0`](https://github.com/ropensci/solrium/releases/tag/v1.2.0)), [ssh](https://docs.ropensci.org/ssh "Secure Shell (SSH) Client for R") ([`v0.8.0`](https://github.com/ropensci/ssh/releases/tag/v0.8.0)), [stantargets](https://docs.ropensci.org/stantargets "Targets for Stan Workflows") ([`0.0.2`](https://github.com/ropensci/stantargets/releases/tag/0.0.2)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.2.0`](https://github.com/ropensci/tarchetypes/releases/tag/0.2.0)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Workflows") ([`0.4.2`](https://github.com/ropensci/targets/releases/tag/0.4.2)), [terrainr](https://docs.ropensci.org/terrainr "Landscape Visualizations in R and Unity") ([`v0.4.0`](https://github.com/ropensci/terrainr/releases/tag/v0.4.0)), [tracerer](https://docs.ropensci.org/tracerer "Tracer from R") ([`v2.2`](https://github.com/ropensci/tracerer/releases/tag/v2.2)), [UCSCXenaTools](https://docs.ropensci.org/UCSCXenaTools "Download and Explore Datasets from UCSC Xena Data Hubs") ([`v1.4.4`](https://github.com/ropensci/UCSCXenaTools/releases/tag/v1.4.4)), [workloopR](https://docs.ropensci.org/workloopR "Analysis of Work Loops and Other Data from Muscle Physiology Experiments") ([`v1.1.4`](https://github.com/ropensci/workloopR/releases/tag/v1.1.4)), [writexl](https://docs.ropensci.org/writexl "Export Data Frames to Excel xlsx Format") ([`v1.4.0`](https://github.com/ropensci/writexl/releases/tag/v1.4.0)).

## Software Peer Review

There are fifteen recently closed and active submissions and 4 submissions on hold. Issues are at different stages: 

* Three at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [stantargets](https://github.com/ropensci/software-review/issues/430), Targets for Stan Workflows. Submitted by [Will Landau](https://wlandau.github.io).

    * [dataspice](https://github.com/ropensci/software-review/issues/426), Create Lightweight Schema.org Descriptions of Data. Submitted by [Bryce Mecum](https://brycemecum.com).

    * [censo2017](https://github.com/ropensci/software-review/issues/414), Base de Datos de Facil Acceso del Censo 2017 de Chile. Submitted by [Pachamaltese](https://pacha.dev).

* Three at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [tidytags](https://github.com/ropensci/software-review/issues/382), Simple Collection and Powerful Analysis of Twitter Data. Submitted by [Bret Staudt Willet](http://bretsw.com).

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com).

    * [chemspiderapi](https://github.com/ropensci/software-review/issues/329), R Wrapper for ChemSpider's API Services. Submitted by [Raoul Wolf](https://github.com/RaoulWolf).

* Five at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [gendercoder](https://github.com/ropensci/software-review/issues/435), Recodes Sex/Gender Descriptions Into A Standard Set. Submitted by [Emily Kothe](http://emilykothe.com).

    * [mctq](https://github.com/ropensci/software-review/issues/434), An R Package for the Munich ChronoType Questionnaire. Submitted by [Daniel Vartanian](https://orcid.org/0000-0001-7782-759X).

    * [ROriginStamp](https://github.com/ropensci/software-review/issues/433), Interface to OriginStamp API to Obtain Trusted Time Stamps. Submitted by [Rainer M Krug](https://github.com/rkrug).

    * [awardFindR](https://github.com/ropensci/software-review/issues/432), QDR awardFindR. Submitted by [Michael C. McCall](http://mccall.cc).

    * [occCite](https://github.com/ropensci/software-review/issues/407), Querying and Managing Large Biodiversity Occurrence Datasets. Submitted by [Hannah Owens](http://hannahlowens.weebly.com/).

* Four at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [rsat](https://github.com/ropensci/software-review/issues/437), Tools for Downloading, Customizing, and Processing Time Series of Satellite Images from Landsat, MODIS, and Sentinel. Submitted by [Unai Pérez-Goya](https://unai-perez.github.io/).

    * [allodb](https://github.com/ropensci/software-review/issues/436), Tree Biomass Estimation at Extratropical Forest Plots. Submitted by [Erika Gonzalez-Akre](https://sites.google.com/site/forestecoclimlab/home).

    * [jagstargets](https://github.com/ropensci/software-review/issues/425), Targets for JAGS Workflows. Submitted by [Will Landau](https://wlandau.github.io).

    * [slopes](https://github.com/ropensci/software-review/issues/420), Calculate Slopes of Roads, Rivers and Trajectories. Submitted by [RFlx](http://www.rosafelix.bike).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Software Review

* [What's New in terrainr 0.4.0?](/blog/2021/05/04/what-s-new-in-terrainr-0-4-0) by Mike Mahoney. The new CRAN release of terrainr improves consistency, CRS logic, and fixes some bugs.{{< figure src="washington.jpg" alt="A 3D rendering of the summit of Mt. Washington, including watershed boundaries and river lines." width="400" >}}



### Other topics

* [Set Up Your Package to Foster a Community - Community Call Summary](/blog/2021/04/28/commcall-pkg-community) by Sina Rüeger, Maëlle Salmon, Hugo Gruson, Steffi LaZerte, Mark Padgham. Summary of the Community Call on Setting Up Your Package to Foster a Community.

## Citations



No new citations added to our database this month ([browse all citations](/citations)).
Thanks for citing our tools!



## Use cases



Three use cases of our packages and resources have been reported since we sent the last newsletter.

* [Scraping Google Play Reviews with RSelenium](https://discuss.ropensci.org/t/scraping-google-play-reviews-with-rselenium/2449). Reported by .

* [Easily analyzing tweets using rtweet](https://discuss.ropensci.org/t/easily-analyzing-tweets-using-rtweet/2454). Reported by Amit Arora.

* [Most tweeted words each month: a year snapshot](https://discuss.ropensci.org/t/most-tweeted-words-each-month-a-year-snapshot/2461). Reported by Soraya Campbell.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

There's no open call for new maintainers at this point but you can refer to our [contributing guide](https://contributing.ropensci.org/) for finding ways to get involved!
As the maintainer of an rOpenSci package, feel free to contact us on Slack or email `info@ropensci.org` to get your call for maintainer featured in the next newsletter. 

## Package development corner

Some useful tips for R package developers. :eyes:

Sometimes you find yourself documenting internal functions with roxygen2 without really wanting everyone to get to see the docs.
Do you know the [difference between the `@internal` and `@NoRd` tags](https://community.rstudio.com/t/keywords-internal-vs-nord/35119/3)?
* Keyword [`@internal`](https://roxygen2.r-lib.org/articles/rd.html#indexing) means there will be a manual page for the function but it won't be in the documentation index. " `@keywords internal` is useful because it removes the function from the documentation index; it’s useful for functions aimed primarily at other developers, not typical users of the package."
* `@NoRd` means there won't even be a manual page so the roxygen2 documentation of that function only lives in the R script. 
We at rOpenSci [recommend not having manual pages for internal functions](https://devguide.ropensci.org/building.html): " Add `#' @noRd` to internal functions". It is also recommended in the [tidyverse style guide](https://style.tidyverse.org/documentation.html#internal-functions).

Speaking of documentation, when writing examples, do you know the difference between **`\dontrun{}`**, **`\donttest{}`** and **`\dontshow{}`**?
(Is this newsletter section turning into a quizz? :sweat_smile:)
The roxygen2 docs feature [a  table](https://roxygen2.r-lib.org/articles/rd.html#functions) explaining when different types of examples are run depending on the context (in `example()`,	`help()`, `R CMD check`, `R CMD check –as-cran`) which is very useful when you wonder how to safeguard your package examples on e.g. CRAN.
The same documentation section introduces the very handy **`@examplesIf`** roxygen2 tag that you can use for finer control.

Now on to code archeology!
Do you want to ["pinpoint the version at which a certain argument appeared in a specific function of a package (or that its default value changed)"](https://twitter.com/JennyBryan/status/1343636610982662144), e.g. to figure out the minimal version required?
You might like the [apicheck package by David Hugh-Jones](https://github.com/hughjonesd/apicheck), that helps you "explore the historical API of functions in CRAN packages"; and [rcheology by the same author](https://github.com/hughjonesd/rcheology) for data on base packages.
Related to this are:

* [Using git blame on the package NAMESPACE to see when a function appeared](https://twitter.com/JennyBryan/status/1387439721157038080),
* The R-hub's [CRAN source code mirror](https://docs.r-hub.io/#cran-source-code-mirror): each repo is a CRAN package, each commit is the change between two versions of that package.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
