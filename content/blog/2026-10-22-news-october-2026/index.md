---
slug: "news-october-2026"
title: rOpenSci News Digest, October 2026
author:
  - The rOpenSci Team
date: "2026-10-22"
tags:
  - newsletter
description: Thank you Mark; Champions Program; Quinceañera; new packages and package news
params:
  last_newsletter: "2026-09-26"
  doi: "10.59350/mq5hp-ema25"
rmd_hash: 6b2acc9c90ae1cae
---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
You can read this post [on our blog](/blog/2026/10/22/news-october-2026).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Team update: thank you Mark Padgham!

Mark Padgham is leaving rOpenSci at the end of October.

Mark joined rOpenSci as a staff member in December 2019 to help us expand software peer review to statistical topics.
However, Mark's impact on rOpenSci has gone far beyond this one project.
Mark has not only shaped how rOpenSci reviews statistical software, but has also built much of the tooling that supports the peer review processes, and R packages which not only support but also strengthen our community.
If you have submitted a package to rOpenSci, reviewed or edited one, you have almost certainly used something Mark made!

Read more about his work in our [blog post](/blog/2026/10/21/mark-building-machinery-software-review/)

### Champions Program update

Our current 2026-2027 cohort is working on their projects around package development and package peer-review.
We celebrated our first cohort meeting (in two different moments to accommodate time zones) where participants shared their progress and got feedback from other champions.

Outreach activities are also under way: Linda Cabrera, assisted by her mentor Luis Verde, conducted her outreach activity by leading a workshop on R Projects with RStudio and GitHub for the Ecuadorian Statistical Society, where she had the opportunity to share information about rOpenSci and our programs with the attendees.

The 2025--2026 cohort wrapped up their journey with a closing community call, [**Más Allá del Código: muestra abierta de los proyectos de nuestros campeon(a\|e)s (Beyond the Code: an open showcase of our Champions' Projects)**](/es/commcalls/mas-alla-del-codigo-2026/).
At the call, the Champions presented their final projects, from creating, improving, and reviewing R packages to the outreach work that brought those projects to their communities.
They also shared what their projects led to, including scholarships, new collaborations, and professional growth.
The recording and subtitles, all in Spanish, have been [published](/es/commcalls/mas-alla-del-codigo-2026/).

Several champions and mentor will join [LatinR 2026 in Medellín, Colombia](https://latinr.org/cronograma/), to present their work during the program and participate in [HackeaR, the hackathon event](https://latinr.org/cronograma/hackear/) where we will work on issues, translations and Pull Requests on base R, and rOpenSci packages and resources.

[If you are around, come and join us!](https://www.eventbrite.cl/e/latinr-2026-conferencia-latinoamericana-sobre-uso-de-r-en-id-tickets-1998690018649)

### R-Universe updates

:dna: We have made good progress on the [migration of Bioconductor to R-Universe infrastructure](/blog/2026/04/08/r-universe-bioc/), see also [this presentation by Sean Davis](https://talks.seandavis.net/2026-10-01-bioc-tab/#/).
Among other things, packages from the Bioconductor "experiment", "workflows" and "books" repositories have been added to [bioc.r-universe.dev](https://bioc.r-universe.dev) and [bioc-release.r-universe.dev](https://bioc-release.r-universe.dev).
To support this, R-Universe now has a special category of "data" packages, which get a higher size limit but are only built and checked on Linux.

:rocket: With about 3000 packages, Bioconductor is by far the largest universe, so along the way we made dozens of performance improvements to the frontend and server, making pages and repositories load faster for every universe.
Stay tuned for a dedicated blog post on the state of the Bioconductor transition before the end of the year!

## Quinceañera

We continue to uncover the stories of the people behind rOpenSci.
This month, Mauro Lepore [tells us about his journey with rOpenSci](/blog/2026/09/29/celebrating-ropensci/) and shares lessons learned that can be applied beyond our community.

We're also sharing a [recap of the synchronous events we held](/blog/2026/10/20/15yo-events/), where we discussed the past, present, and future of rOpenSci with the people who joined us to celebrate these 15 years.

Stay tuned for more rOpenSci's stories.

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

- Tuesday November 3rd, 09:00 Australia Western (01:00 UTC) ["Climate Science in R"](/events/coworking-2026-11/), with [Steffi LaZerte](/author/steffi-lazerte) and co-host [Elio Campitelli](/author/elio-campitelli/).
  - Explore how R is used to study the climate
  - Meet co-host, Elio Campitelli, and discuss Climate Science in R
- Tuesday December 8th<sup>\*</sup>, 14:00 Europe Central (12:00 UTC) ["Code Linting in R"](/events/coworking-2026-12/), with [Steffi LaZerte](/author/steffi-lazerte) and co-host [Etienne Bacher](/author/etienne-bacher/).
  - Read up on Code Linting and apply some linters to your R code
  - Meet co-host, Etienne Bacher, and discuss code linting in general, or flir and Jarl in particular\
    \* Note that December coworking is a week later than usual

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

The following three packages recently became a part of our software suite:

- [ibger](https://docs.ropensci.org/ibger), developed by André Leite together with Marcos Wasiliew, Hugo Vasconcelos, Carlos Amorim, and Diogo Bezerra: Tidyverse-friendly interface to the Brazilian Institute of Geography and Statistics (IBGE) aggregate data API <https://servicodados.ibge.gov.br/api/docs/agregados?versao=3>.
  Query aggregates, variables, localities, periods, and metadata from surveys and censuses conducted by IBGE.
  It has been [reviewed](https://github.com/ropensci/software-review/issues/787) by Allan Quadros and Diana García-Cortés.

- [coevolve](https://docs.ropensci.org/coevolve), developed by Scott Claessens together with Erik Ringen: Fit Bayesian generalized dynamic phylogenetic models using Stan or JAX.
  The package allows an arbitrary number of variables with different response distributions to coevolve on a phylogenetic tree via an Ornstein-Uhlenbeck evolutionary process, allowing users to assess directionality between coevolving variables.
  The optional JAX backend enables high-performance sampling with NumPyro and potential GPU acceleration via reticulate.
  It has been [reviewed](https://github.com/ropensci/software-review/issues/717) by Rob Moss and Krzysztof Bartoszek.

- [rcrisp](https://docs.ropensci.org/rcrisp), developed by Claudiu Forgaci together with Francesco Nattino: Provides tools to automate the morphological delineation of riverside urban areas based on a method introduced in Forgaci (2018) <https://doi.org/10.7480/abe.2018.31>.
  Delineation entails the identification of corridor boundaries, segmentation of the corridor, and delineation of the river space using two-dimensional spatial information from street network data and digital elevation data in a projected CRS.
  The resulting delineation can be used to characterise spatial phenomena that can be related to the river as a central element.
  It has been [reviewed](https://github.com/ropensci/software-review/issues/718) by Mark Padgham and Anatolii Tsyplenkov.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions

The following sixteen packages have had an update since the last newsletter: [rcrisp](https://docs.ropensci.org/rcrisp "Automate the Delineation of Urban River Spaces") ([`v1.0.0`](https://github.com/CityRiverSpaces/rcrisp/releases/tag/v1.0.0)), [coevolve](https://docs.ropensci.org/coevolve "Fit Bayesian Generalized Dynamic Phylogenetic Models using Stan or JAX") ([`v1.2.1`](https://github.com/ropensci/coevolve/releases/tag/v1.2.1)), [pkgcheck](https://docs.ropensci.org/pkgcheck "Package Checks for rOpenSci") ([`v0.3.4`](https://github.com/ropensci-review-tools/pkgcheck/releases/tag/v0.3.4)), [pkgstats](https://docs.ropensci.org/pkgstats "Metrics of R Packages") ([`v0.2.5`](https://github.com/ropensci-review-tools/pkgstats/releases/tag/v0.2.5)), [openalexR](https://docs.ropensci.org/openalexR "Getting Bibliographic Records from OpenAlex Database Using DSL API") ([`v3.1.2`](https://github.com/ropensci/openalexR/releases/tag/v3.1.2)), [webchem](https://docs.ropensci.org/webchem "Chemical Information from the Web") ([`v2.0.0`](https://github.com/ropensci/webchem/releases/tag/v2.0.0)), [ReLTER](https://docs.ropensci.org/ReLTER "An Interface for the eLTER Community") ([`V3.1.2`](https://github.com/ropensci/ReLTER/releases/tag/V3.1.2)), [rerddap](https://docs.ropensci.org/rerddap "General Purpose Client for ERDDAP™ Servers") ([`v1.3.1`](https://github.com/ropensci/rerddap/releases/tag/v1.3.1)), [ibger](https://docs.ropensci.org/ibger "Access the IBGE Aggregate Data API from R") ([`v0.2.1`](https://github.com/ropensci/ibger/releases/tag/v0.2.1)), [ruODK](https://docs.ropensci.org/ruODK "An R Client for the ODK Central API") ([`v1.6.3`](https://github.com/ropensci/ruODK/releases/tag/v1.6.3)), [rgbif](https://docs.ropensci.org/rgbif "Interface to the Global Biodiversity Information Facility API") ([`v3.9.0`](https://github.com/ropensci/rgbif/releases/tag/v3.9.0)), [rglobi](https://docs.ropensci.org/rglobi "Interface to Global Biotic Interactions") ([`v0.3.5`](https://github.com/ropensci/rglobi/releases/tag/v0.3.5)), [lakefetch](https://docs.ropensci.org/lakefetch "Calculate Fetch and Wave Exposure for Lake Sampling Points") ([`v0.1.14`](https://github.com/ropensci/lakefetch/releases/tag/v0.1.14)), [visdat](https://docs.ropensci.org/visdat "Preliminary Visualisation of Data") ([`v0.6.1`](https://github.com/ropensci/visdat/releases/tag/v0.6.1)), [weatherOz](https://docs.ropensci.org/weatherOz "An API Client for Australian Weather and Climate Data Resources") ([`v3.0.1`](https://github.com/ropensci/weatherOz/releases/tag/v3.0.1)), and [nlrx](https://docs.ropensci.org/nlrx "Setup, Run and Analyze NetLogo Model Simulations from R via XML") ([`v0.4.6`](https://github.com/ropensci/nlrx/releases/tag/v0.4.6)).

## Software Peer Review

There are sixteen recently closed and active submissions and 4 submissions on hold.
Issues are at different stages:

- Three at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

  - [ibger](https://github.com/ropensci/software-review/issues/787), Access the IBGE Aggregate Data API from R.
    Submitted by [Andre Leite Wanderley](https://castlab.org).

  - [rcrisp](https://github.com/ropensci/software-review/issues/718), Automate the Delineation of Urban River Spaces.
    Submitted by [Claudiu Forgaci](https://github.com/cforgaci).
    (Stats).

  - [coevolve](https://github.com/ropensci/software-review/issues/717), Fit Bayesian Generalized Dynamic Phylogenetic Models using Stan.
    Submitted by [Scott Claessens](https://scottclaessens.github.io/).
    (Stats).

- One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%225/awaiting-reviewer(s)-response%22):

  - [RAQSAPI](https://github.com/ropensci/software-review/issues/744), A Simple Interface to the US EPA Air Quality System Data Mart API.
    Submitted by [mccroweyclinton-EPA](https://github.com/mccroweyclinton-EPA).

- Two at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

  - [camtrapReport](https://github.com/ropensci/software-review/issues/799), Camera-Trap Report Generator.
    Submitted by [Elham Ebrahimi](https://www.wur.nl/en/persons/e-elham-ebrahimi).

  - [nert](https://github.com/ropensci/software-review/issues/785), Curated Access to TERN Environmental Raster Data.
    Submitted by [Max Moldovan](https://scholar.google.com.au/citations?user=zG1uKrcAAAAJ&hl=en).

- Two at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

  - [tezr](https://github.com/ropensci/software-review/issues/774), Access Thesis Metadata from Turkiye's National Thesis Center.
    Submitted by [Emrah Er](https://github.com/emraher).

  - [rfastlowess](https://github.com/ropensci/software-review/issues/769), High-Performance LOWESS Smoothing for R.
    Submitted by [Amir Valizadeh](https://github.com/thisisamirv).
    (Stats).

- Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%222/seeking-reviewer(s)%22):

  - [corila](https://github.com/ropensci/software-review/issues/808), Sparse modelling with grouped and correlated features allowing for privileged information.
    Submitted by [Armin Rauschenberger](https://rauschenberger.github.io).
    (Stats).

  - [grumpy](https://github.com/ropensci/software-review/issues/775), Read NumPy .npy and .npz Files.
    Submitted by [Hugo Gruson](https://hugogruson.fr/).

- Six at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

  - [ocean3d](https://github.com/ropensci/software-review/issues/811), Three-Dimensional Marine Spatial Analysis.
    Submitted by [Jay Matsushiba](https://jmatsushiba.com).

  - [qualtdict](https://github.com/ropensci/software-review/issues/807), Generate Variable Dictionaries and Labelled Survey Data for.
    Submitted by [lyh970817](https://github.com/lyh970817).

  - [tarpolyglot](https://github.com/ropensci/software-review/issues/805), Run Python, Julia, Rust, and C++ Inside targets Pipeline Steps.
    Submitted by [Pierre9344](https://github.com/Pierre9344).

  - [seasight](https://github.com/ropensci/software-review/issues/786), Tools for Seasonal Adjustment Diagnostics and Reporting.
    Submitted by [Philipp Wegmueller](https://p-wegmueller.github.io).
    (Stats).

  - [OptSurvCutR](https://github.com/ropensci/software-review/issues/777), Optimal Survival Cut-Point Discovery for Time-to-Event Analysis with OptSurvCutR.
    Submitted by [Payton Yau](https://github.com/paytonyau).
    (Stats).

  - [HydraR](https://github.com/ropensci/software-review/issues/766), Stateful Agentic Orchestration for Scientific Reproducibility.
    Submitted by [Ignatius Pang](https://www.mq.edu.au/research/research-centres-groups-and-facilities/facilities/australian-proteome-analysis-facility).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->

### Software Review

- [Celebrating the rOpenSci Community](/blog/2026/09/29/celebrating-ropensci) by Mauro Lepore.
  rOpenSci turns 15 and I've been a part of this community for a good chunk of that time.
  Here I share some memories and the lessons I learned.
  Other languages: <a href='/es/blog/2026/09/29/celebrando-ropensci' lang='es'>Celebrando a la comunidad de rOpenSci (es)</a>.

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

- [suppdata](https://docs.ropensci.org/suppdata), Grabbing SUPPlementary DATA in R.
  [Issue for volunteering](https://github.com/ropensci/suppdata/issues/59).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful information for R package developers.
:eyes:

### A Safe Space for Learning How to Make Pull Requests

Jonathan Carroll created and wrote about a [package repository](https://jcarroll.com.au/2024/10/01/a-safe-space-for-learning-how-to-make-pull-requests/) that is open to PRs by newbies.
It's a playground for learning how to create pull requests.
It's also an inspiration for package maintainers who want to encourage new contributors!

> *"My target audience for this repository is people who wish they had somewhere to send a real pull request because they don't yet feel comfortable participating in open source software."*

### Check for global state changes in your testthat tests

Did you know about [`testthat::set_state_inspector()`](https://testthat.r-lib.org/reference/set_state_inspector.html)?
If you use it by registering some things you don't want to change (environment variables for instance), it is run before and after each test, and reports whether there's any discrepancy in the global state.
Here's how it's used in [vcr](https://github.com/ropensci/vcr/blob/b7c440ee4e1c8d7e78cce3f274c3da788f99d7b3/tests/testthat/helper-vcr.R#L101-L111):

```r
testthat::set_state_inspector(\() {
  temp_files <- dir(tempdir())
  temp_files <- temp_files[!grepl("^callr", temp_files)]
  temp_files <- temp_files[!grepl("^webfakes", temp_files)]

  list(
    temp_files = temp_files,
    wd_files = dir(),
    vcr_config = the$config
  )
})
```

Steffi LaZerte noticed the function in Hadley Wickham's and Jenny Bryan's [workshop materials](https://posit-conf-2026.github.io/modern-r-workflow/) that Mauro Lepore shared in our Slack workspace.

### Using `just` to run a subset of tests

Speaking of tests... Did you know that testthat's test function have a `filter` argument to only run tests that match a given string?
Etienne Bacher wrote a [nice little post](https://www.etiennebacher.com/posts/2026-10-15-using-just-with-test-files/) about using the `just` command-line tool to generate aliases for easily running a subset of tests using this filter.

The post also mentions other use cases of [`just`](https://github.com/casey/just), e.g. defining `just lint` to run [Jarl](https://jarl.etiennebacher.com/) on the current directory.

### Git hashes

Are you aware that Git plans to change its content hashing algorithm?
Here's a [good post](https://blog.gitbutler.com/git-3-sha-256) by Scott Chacon, the author of the Pro Git book, on why it is important and might be problematic.

## Last words

Thanks for reading!
If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org).
This guide will help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways such as through sharing use cases.
You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so though our signup form](/news/).
Until it's time for our next newsletter, you can keep in touch with us through our [website](/), [Mastodon](https://hachyderm.io/@rOpenSci), or [LinkedIn](https://www.linkedin.com/company/ropensci/).
See you soon!
