---
slug: "news-september-2026"
title: rOpenSci News Digest, September 2026
author:
  - The rOpenSci Team
date: '2026-09-28'
tags:
  - newsletter
description: Champions Program; Openscapes comm call; Quinceañera; new packages and package news
params:
  last_newsletter: '2026-08-28'
  doi: "10.59350/em84w-2869"
rmd_hash: 0646298abf08e5d7

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2026/09/28/news-september-2026). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Yani and Mark at "Open Communities in the age of AI"

rOpenSci community manager [Yani](/author/yanina-bellini-saibene) and software-review lead [Mark](/author/mark-padgham) will participate in the upcoming Openscapes community call on October 1st (this Thursday!) at 9:30AM PT (16:30 UTC) entitled *"Open Communities in the Age of AI"*, together with Mara Averick, Senior Developer Advocate at Quansight and Hadley Wickham, Chief Scientist at Posit.

[Event page](https://openscapes.org/events/2026-10-01-community-call-open-communities-ai/), including link for free registration.

### Champions Program update

Our current 2026--2027 cohort has completed the training phase and is now focused on developing their individual projects with the support of their mentors, as well as on their outreach activities.

Meanwhile, the 2025--2026 cohort will wrap up their journey with a closing community call, [**Más Allá del Código: muestra abierta de los proyectos de nuestros campeon(a\|e)s (Beyond the Code: an open showcase of our Champions' Projects)**](/commcalls/mas-alla-del-codigo-2026/). At the call, the Champions will present their final projects, from creating, improving, and reviewing R packages to the outreach work that brought those projects to their communities. They'll also share what their projects led to, including scholarships, new collaborations, and professional growth. The event is in Spanish. The call will take place on [Monday, October 12 at 15:00 UT](/commcalls/mas-alla-del-codigo-2026/). Come get inspired, ask your questions live, and help us celebrate our growing open-source community!

## We're still celebrating our 15th anniversary! :tada:

In July, we started to share stories from members of our community about their experiences with rOpenSci. Our second story features [Yi-Chin Sunny Tseng](/author/yi-chin-sunny-tseng/) and her connection with rOpenSci. Read it on our blog: [Happy Birthday rOpenSci --- My Journey from First-Time Developer to Current Opportunities](/blog/2026/09/15/birthday-post-sunny/) Stay tuned for more stories from our community as we continue celebrating 15 years of rOpenSci!

## rOpenSci at LatinR 2026 in Medellín, Colombia. See you there!

[Registration for LatinR 2026 (November 11--13, Universidad de Antioquia, Medellín) is now open](https://www.eventbrite.com.ar/e/1998690018649), and rOpenSci will have a strong presence.

[Jeroen](/author/jeroen-ooms) will give a talk on R-Universe. [Yani](/author/yanina-bellini-saibene) will lead a workshop on R package development and give a talk on the Champions Program's open curriculum. [Nic Crane](/author/nic-crane) is one of the conference's keynote speakers. [Evelia Lorena Coss Navarrete](/author/evelia-lorena-coss-navarrete/), one of our Champions, will talk about the package she developed during the program. Several other rOpenSci folks --- [Natalia Da Silva](/author/evelia-lorena-coss-navarrete/), [Luis Verde](/author/luis-d.-verde-arregoitia/), and [Francisco Cardozo](/author/francisco-cardozo/), among others --- will also be there. Jeroen, Francisco, and Yani will take part in the hackathon during the conference.

Join us in Medellín!

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

- Tuesday October 6th, 09:00 Americas Pacific (16:00 UTC) ["Writing Tests & Testing in R"](/events/coworking-2026-10/), with [Yanina Bellini Saibene](/author/yanina-bellini-saibene) and co-host [Olivier Leroy](/author/olivier-leroy/).
  - Explore how to write tests for R and add some tests to your work or packages
  - Meet co-host, Olivier Leroy, and chat about testing
- Tuesday November 3rd, 09:00 Australia Western (01:00 UTC) ["Climate Science in R"](/events/coworking-2026-11/), with [Steffi LaZerte](/author/steffi-lazerte) and co-host [Elio Campitelli](/author/elio-campitelli/).
  - Explore how R is used to study the climate
  - Meet co-host, Elio Campitelli, and discuss Climate Science in R
- Tuesday December 8th<sup>\*</sup>, 14:00 Europe Central (12:00 UTC) ["Code Linting in R"](/events/coworking-2026-12/), with [Steffi LaZerte](/author/steffi-lazerte) and co-host [Etienne Bacher](/author/etienne-bacher/).
  - Read up on Code Linting and apply some linters to your R code
  - Meet co-host, Etienne Bacher, and discuss code linting in general, or flir and Jarl in particular  
    \* Note that December coworking is a week later than usual

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

<div class="highlight">

</div>

The following two packages recently became a part of our software suite:

<div class="highlight">

- [ciecl](https://docs.ropensci.org/ciecl), developed by Rodolfo Tasso Suazo: Tools for working with the International Classification of Diseases (ICD-10 Chile official MINSAL/DEIS v2018). Includes optimized SQL search with SQLite, fuzzy matching of medical terms (Jaro-Winkler), Charlson and Elixhauser comorbidity calculation, WHO ICD-11 API integration, and hierarchical code validation. Data from Centro FIC Chile DEIS <https://deis.minsal.cl/centrofic/>. It has been [reviewed](https://github.com/ropensci/software-review/issues/765) by Maëlle Salmon and Yanina Bellini.

- [brapiR2](https://docs.ropensci.org/brapiR2), developed by Joash Joshua Ayo: Provides pipe-friendly, stateless read access to the Breeding API (BrAPI) v2.1 specification, an open community standard for plant breeding data interchange maintained by the BrAPI project <https://brapi.org>. Wraps 32 of the 37 BrAPI v2.1 entities across all four modules, Core, Germplasm, Phenotyping, and Genotyping, covering 49 of the specifications 138 retrieval (GET and search) endpoints and returning tidy tibbles ready for analysis. Write and update endpoints are out of scope by design. Features include automatic pagination, async search handling, response caching, parallel batch fetching, and convenience functions for genomic selection workflows (e.g. dosage matrix extraction). Designed for plant breeders and bioinformaticians who need programmatic access to plant breeding databases that implement the BrAPI' v2 specification. It has been [reviewed](https://github.com/ropensci/software-review/issues/792) by David Waring and Jenna Hershberger.

  </div>

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions

<div class="highlight">

</div>

The following twenty-two packages have had an update since the last newsletter: [visdat](https://docs.ropensci.org/visdat "Preliminary Visualisation of Data") ([`v0.6.1`](https://github.com/ropensci/visdat/releases/tag/v0.6.1)), [nycOpenData](https://docs.ropensci.org/nycOpenData "A Lightweight Interface to NYC Open Data APIs") ([`v0.2.3`](https://github.com/ropensci/nycOpenData/releases/tag/v0.2.3)), [ruODK](https://docs.ropensci.org/ruODK "An R Client for the ODK Central API") ([`v1.6.0`](https://github.com/ropensci/ruODK/releases/tag/v1.6.0)), [stats19](https://docs.ropensci.org/stats19 "Work with Open Road Traffic Casualty Data from Great Britain") ([`v4.1.0`](https://github.com/ropensci/stats19/releases/tag/v4.1.0)), [npi](https://docs.ropensci.org/npi "Access the U.S. National Provider Identifier Registry API") ([`v0.3.1`](https://github.com/ropensci/npi/releases/tag/v0.3.1)), [promoutils](https://docs.ropensci.org/promoutils "Utilities for Promoting rOpenSci") ([`v0.7.0`](https://github.com/ropensci-org/promoutils/releases/tag/v0.7.0)), [brapiR2](https://docs.ropensci.org/brapiR2 "A Tidyverse-Native Client for the BrAPI v2 (Breeding API) Specification") ([`v0.2.0`](https://github.com/ropensci/brapiR2/releases/tag/v0.2.0)), [ciecl](https://docs.ropensci.org/ciecl "International Classification of Diseases ICD-10/ICD-11 for Chile") ([`v1.0.0`](https://github.com/ropensci/ciecl/releases/tag/v1.0.0)), [bibtex](https://docs.ropensci.org/bibtex "Bibtex Parser") ([`v0.5.3`](https://github.com/ropensci/bibtex/releases/tag/v0.5.3)), [ckanr](https://docs.ropensci.org/ckanr "Client for the Comprehensive Knowledge Archive Network (CKAN) API") ([`v0.9.0`](https://github.com/ropensci/ckanr/releases/tag/v0.9.0)), [osmapiR](https://docs.ropensci.org/osmapiR "OpenStreetMap API") ([`v0.2.6`](https://github.com/ropensci/osmapiR/releases/tag/v0.2.6)), [distionary](https://docs.ropensci.org/distionary "Create and Evaluate Probability Distributions") ([`v0.2.0`](https://github.com/probaverse/distionary/releases/tag/v0.2.0)), [GLMMcosinor](https://docs.ropensci.org/GLMMcosinor "Fit a Cosinor Model Using a Generalized Mixed Modeling Framework") ([`v0.2.2`](https://github.com/ropensci/GLMMcosinor/releases/tag/v0.2.2)), [reviser](https://docs.ropensci.org/reviser "Analyzing Revisions in Real-Time Time Series Vintages") ([`v0.3.1`](https://github.com/ropensci/reviser/releases/tag/v0.3.1)), [autotest](https://docs.ropensci.org/autotest "Automatic Package Testing") ([`v0.2`](https://github.com/ropensci-review-tools/autotest/releases/tag/v0.2)), [occCite](https://docs.ropensci.org/occCite "Querying and Managing Large Biodiversity Occurrence Datasets") ([`v0.6.3`](https://github.com/ropensci/occCite/releases/tag/v0.6.3)), [readODS](https://docs.ropensci.org/readODS "Read and Write ODS Files") ([`v2.3.6`](https://github.com/ropensci/readODS/releases/tag/v2.3.6)), [osmdata](https://docs.ropensci.org/osmdata "Import OpenStreetMap Data as Simple Features or Spatial Objects") ([`v0.4.1`](https://github.com/ropensci/osmdata/releases/tag/v0.4.1)), [goodpractice](https://docs.ropensci.org/goodpractice "Advice on R Package Building") ([`v1.2.0`](https://github.com/ropensci-review-tools/goodpractice/releases/tag/v1.2.0)), [galamm](https://docs.ropensci.org/galamm "Generalized Additive Latent and Mixed Models") ([`v0.4.1`](https://github.com/ropensci/galamm/releases/tag/v0.4.1)), [RAMEN](https://docs.ropensci.org/RAMEN "Regional Association of Methylome variability with the Exposome and geNome") ([`v2.1.2`](https://github.com/ropensci/RAMEN/releases/tag/v2.1.2)), and [EDIutils](https://docs.ropensci.org/EDIutils "An API Client for the Environmental Data Initiative Repository") ([`v3.0.1`](https://github.com/ropensci/EDIutils/releases/tag/v3.0.1)).

## Software Peer Review

<div class="highlight">

There are seventeen recently closed and active submissions and 4 submissions on hold. Issues are at different stages:

- Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

  - [brapiR2](https://github.com/ropensci/software-review/issues/792), A Tidyverse-Native Client for the BrAPI v2 (Breeding API) Specification. Submitted by [Joash Joshua Ayo](https://orcid.org/0009-0007-1642-0172).

  - [ciecl](https://github.com/ropensci/software-review/issues/765), International Classification of Diseases ICD-10/ICD-11 for Chile. Submitted by [Rodolfo Tasso](https://github.com/Rodotasso).

- Three at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%225/awaiting-reviewer(s)-response%22):

  - [ibger](https://github.com/ropensci/software-review/issues/787), Access the IBGE Aggregate Data API from R. Submitted by [Andre Leite Wanderley](https://castlab.org).

  - [RAQSAPI](https://github.com/ropensci/software-review/issues/744), A Simple Interface to the US EPA Air Quality System Data Mart API. Submitted by [mccroweyclinton-EPA](https://github.com/mccroweyclinton-EPA).

  - [coevolve](https://github.com/ropensci/software-review/issues/717), Fit Bayesian Generalized Dynamic Phylogenetic Models using Stan. Submitted by [Scott Claessens](https://scottclaessens.github.io/). (Stats).

- One at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

  - [rcrisp](https://github.com/ropensci/software-review/issues/718), Automate the Delineation of Urban River Spaces. Submitted by [Claudiu Forgaci](https://github.com/cforgaci). (Stats).

- Four at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

  - [camtrapReport](https://github.com/ropensci/software-review/issues/799), Camera-Trap Report Generator. Submitted by [Elham Ebrahimi](https://www.wur.nl/en/persons/e-elham-ebrahimi).

  - [nert](https://github.com/ropensci/software-review/issues/785), Curated Access to TERN Environmental Raster Data. Submitted by [Max Moldovan](https://scholar.google.com.au/citations?user=zG1uKrcAAAAJ&hl=en).

  - [rfastlowess](https://github.com/ropensci/software-review/issues/769), High-Performance LOWESS Smoothing for R. Submitted by [Amir Valizadeh](https://github.com/thisisamirv). (Stats).

  - [camtrapReport](https://github.com/ropensci/software-review/issues/799), Camera-Trap Report Generator. Submitted by [Elham Ebrahimi](https://www.wur.nl/en/persons/e-elham-ebrahimi).

- Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%222/seeking-reviewer(s)%22):

  - [grumpy](https://github.com/ropensci/software-review/issues/775), Read NumPy .npy and .npz Files. Submitted by [Hugo Gruson](https://hugogruson.fr/).

  - [tezr](https://github.com/ropensci/software-review/issues/774), Access Thesis Metadata from Turkiye's National Thesis Center. Submitted by [Emrah Er](https://emraher.com).

- Five at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

  - [ocean3d](https://github.com/ropensci/software-review/issues/811), Three-Dimensional Marine Spatial Analysis. Submitted by [Jay Matsushiba](https://jmatsushiba.com).

  - [corila](https://github.com/ropensci/software-review/issues/808), Sparse modelling with grouped and correlated features allowing for privileged information. Submitted by [Armin Rauschenberger](https://rauschenberger.github.io). (Stats).

  - [tarpolyglot](https://github.com/ropensci/software-review/issues/805), Run Python, Julia, Rust, and C++ Inside targets Pipeline Steps. Submitted by [Pierre9344](https://github.com/Pierre9344).

  - [OptSurvCutR](https://github.com/ropensci/software-review/issues/777), Optimal Survival Cut-Point Discovery for Time-to-Event Analysis with OptSurvCutR. Submitted by [Payton Yau](https://github.com/paytonyau). (Stats).

  - [HydraR](https://github.com/ropensci/software-review/issues/766), Stateful Agentic Orchestration for Scientific Reproducibility. Submitted by [Ignatius Pang](https://www.mq.edu.au/research/research-centres-groups-and-facilities/facilities/australian-proteome-analysis-facility).

    </div>

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->

<div class="highlight">

- [Happy Birthday rOpenSci --- My Journey from First-Time Developer to Current Opportunities](/blog/2026/09/15/birthday-post-sunny) by Yi-Chin Sunny Tseng. Yi-Chin Sunny Tseng shares how the rOpenSci Champions Program helped her grow from a first-time R package developer into an open science contributor, creating tools for biodiversity research and discovering new opportunities along the way.

</div>

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

- [charlatan](https://docs.ropensci.org/charlatan), create fake data in R. [Issue for volunteering](https://github.com/ropensci/charlatan/issues/150).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful information for R package developers. :eyes:

### {covr2gh}: Coverage summary as GitHub comment

The covr2gh package by Dragoș Moldovan-Grünfeld provides an automated way to summarise the impact of a pull request (PR) on test coverage directly within GitHub. See it in action in a PR in the [tfrmt R package](https://github.com/GSK-Biostatistics/tfrmt/pull/844#issuecomment-5424645453).

### Deprecation messages for package data

Hugo Gruson wrote an [exhaustive post](https://hugogruson.fr/posts/deprecation-pkg-data/) about the deprecation of *data* in an R package. The post features the [`delayedAssign()`](https://rdrr.io/r/base/delayedAssign.html) function.

### A refactoring story featuring people

Athanasia Mo Mowinckel published ["Why ggseg Atlases Became Function Calls"](https://drmowinckels.io/blog/2026/atlases-as-functions/), where she explains how she made data into objects into a package in order to allow re-exporting them. She furthermore tells how she got to that conclusion by trying out different solutions and discussing with other package developers in the rOpenSci Slack workspace.

### usethis 3.2.2

The usethis package was updated on CRAN. The [changelog](https://usethis.r-lib.org/news/index.html#usethis-322) features many quality of life improvements around Git and GitHub, and a new `use_readme_qmd()` function for drafting a README in the Quarto format.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org). This guide will help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways such as through sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so though our signup form](/news/). Until it's time for our next newsletter, you can keep in touch with us through our [website](/), [Mastodon](https://hachyderm.io/@rOpenSci), or [LinkedIn](https://www.linkedin.com/company/ropensci/). See you soon!

</div>

</div>

