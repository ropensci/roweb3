---
slug: "news-november-2026"
title: rOpenSci News Digest, November 2026
author:
  - The rOpenSci Team
date: "2026-11-26"
tags:
  - newsletter
description: Champions Program; Quinceañera; new packages and package news
params:
  last_newsletter: "2026-10-22"
  doi: "10.59350/bb6hh-t5f36"
rmd_hash: bfa5c87e499e230b
---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
You can read this post [on our blog](/blog/2026/11/26/news-november-2026).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### New release: rOpenSci Champions Program Mentor Guidelines

We've released a new version of our [guide for mentors in our champions program](https://ropensci-org.github.io/champions-mentor-guidelines/).
It includes useful content such how to organize a meeting with one's mentee, and resources about mentoring skills.
Check it out!

### Champions Program update

TODO Yani

## Quinceañera

We continue to uncover the stories of the people behind rOpenSci.
This month, you can read about:

- [Carolina Pradier, rOpenSci champion and mentor](/blog/2026/11/02/champions-histories-carolina-pradier/)
- [Athanasia Mo Mowinckel, rOpenSci mentor (and more)](/blog/2026/11/04/celebrating-ropensci/)

Stay tuned for more rOpenSci's stories.

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

- Tuesday December 8th<sup>\*</sup>, 14:00 Europe Central (12:00 UTC) ["Code Linting in R"](/events/coworking-2026-12/), with [Steffi LaZerte](/author/steffi-lazerte) and co-host [Etienne Bacher](/author/etienne-bacher/).
  - Read up on Code Linting and apply some linters to your R code
  - Meet co-host, Etienne Bacher, and discuss code linting in general, or flir and Jarl in particular\
    \* Note that December coworking is a week later than usual
- Tuesday January 19th, 2027 17:00 (UTC) ["Getting to know PREreview"](/events/coworking-2027-01/), with [Steffi LaZerte](/author/steffi-lazerte) and co-hosts [Vanessa Fairhurst](/vanessa-fairhurst/) and [Daniela Saderi](/daniela-saderi/).
  - Visit PREreview

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

The following three packages recently became a part of our software suite:

- [nert](https://docs.ropensci.org/nert), developed by Max Moldovan together with Adam H.
  Sparks, Wasin Pipattungsakul, Russell Edson, and Sam Rogers: Provides curated access to raster environmental data published by Australias Terrestrial Ecosystem Research Network (TERN; <https://www.tern.org.au/>), spanning national soil attribute, soil classification, soil biodiversity, soil moisture, actual evapotranspiration, vegetation canopy height and phenology products.
  The package reads Cloud-Optimised GeoTIFF (COG) and virtual raster files directly from the TERN data server via Geospatial Data Abstraction Library (GDAL) vsicurl virtual file system range requests, streaming only the requested spatial and temporal subset for efficient data transfer.
  The environmental raster data are returned as terra SpatRaster objects.
  A convenient helper function is also provided that provides a batch-download capability given specific locations and dates, returning the extracted data values in an analysis-ready data.table'.
  Access to the TERN datasets using this package requires a free TERN API key.
  It has been [reviewed](https://github.com/ropensci/software-review/issues/785) by Michael Sumner and Shandiya Balasubramaniam.

- [camtrapReport](https://docs.ropensci.org/camtrapReport), developed by Elham Ebrahimi: Provides an extensible workflow for processing camera-trap data in the Camtrap DP format and automatically generating reproducible data-status and ecological reports in HTML or PDF format.
  The package supports data-quality checks, ecological summaries, visualisations, maps, tables and modular report sections for wildlife-monitoring applications.
  Optional taxonomic enrichment queries the Global Biodiversity Information Facility Species API <https://techdocs.gbif.org/en/openapi/v1/species> through taxize.
  Browser-based map backgrounds use OpenStreetMap <https://www.openstreetmap.org>, OSM Germany <https://openstreetmap.de/germanstyle/> and OpenTopoMap <https://opentopomap.org>, subject to their usage terms.
  It has been [reviewed](https://github.com/ropensci/software-review/issues/799).

- [abitools](https://docs.ropensci.org/abitools), developed by Jeroen Ooms: An installed R package may contain state copied from its dependencies at build time: compiled calls into the C API of a LinkingTo package, S4 class definitions that extend classes from other packages, or copies of functions.
  When such a dependency changes, the binary package must be rebuilt.
  This package finds these critical dependencies and computes fingerprints of the parts that dependents copy, such that package repositories can rebuild exactly the packages that are affected by a change, rather than relying on version numbers.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions

The following sixteen packages have had an update since the last newsletter: [srr](https://docs.ropensci.org/srr "rOpenSci Software Review Roclets") ([`v1.1.0`](https://github.com/ropensci-review-tools/srr/releases/tag/v1.1.0)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.27`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.27)), [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (CFF) Metadata") ([`v1.4.3`](https://github.com/ropensci/cffr/releases/tag/v1.4.3)), [dittodb](https://docs.ropensci.org/dittodb "A Test Environment for Database Requests") ([`v0.1.12`](https://github.com/ropensci/dittodb/releases/tag/v0.1.12)), [BaseSet](https://docs.ropensci.org/BaseSet "Working with Sets the Tidy Way") ([`v1.0.1`](https://github.com/ropensci/BaseSet/releases/tag/v1.0.1)), [dbparser](https://docs.ropensci.org/dbparser "Drugs Databases Parser") ([`v2.3.0`](https://github.com/ropensci/dbparser/releases/tag/v2.3.0)), [dataspice](https://docs.ropensci.org/dataspice "Create Lightweight Schema.org Descriptions of Data") ([`v1.2.1`](https://github.com/ropensci/dataspice/releases/tag/v1.2.1)), [parzer](https://docs.ropensci.org/parzer "Parse Messy Geographic Coordinates") ([`v0.5.0`](https://github.com/ropensci/parzer/releases/tag/v0.5.0)), [naijR](https://docs.ropensci.org/naijR "Operations to Ease Data Analyses Specific to Nigeria") ([`v0.7.1`](https://github.com/ropensci/naijR/releases/tag/v0.7.1)), [EpiStrainDynamics](https://docs.ropensci.org/EpiStrainDynamics "Infer temporal trends of multiple pathogens") ([`v0.2.0`](https://github.com/ropensci/EpiStrainDynamics/releases/tag/v0.2.0)), [nert](https://docs.ropensci.org/nert "Curated Access to TERN Environmental Raster Data") ([`v2.1.0`](https://github.com/ropensci/nert/releases/tag/v2.1.0)), [opencage](https://docs.ropensci.org/opencage "Geocode with the OpenCage API") ([`v0.3.0`](https://github.com/ropensci/opencage/releases/tag/v0.3.0)), [galamm](https://docs.ropensci.org/galamm "Generalized Additive Latent and Mixed Models") ([`v0.4.2`](https://github.com/ropensci/galamm/releases/tag/v0.4.2)), [frictionless](https://docs.ropensci.org/frictionless "Read and Write Frictionless Data Packages") ([`v2.0.1`](https://github.com/frictionlessdata/frictionless-r/releases/tag/v2.0.1)), [DataSpaceR](https://docs.ropensci.org/DataSpaceR "Interface to the CAVD DataSpace") ([`v1.0.3`](https://github.com/ropensci/DataSpaceR/releases/tag/v1.0.3)), and [lakefetch](https://docs.ropensci.org/lakefetch "Calculate Fetch and Wave Exposure for Lake Sampling Points") ([`v0.1.14`](https://github.com/ropensci/lakefetch/releases/tag/v0.1.14)).

## Software Peer Review

There are fourteen recently closed and active submissions and 7 submissions on hold.
Issues are at different stages:

- Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

  - [camtrapReport](https://github.com/ropensci/software-review/issues/799), Camera-Trap Report Generator.
    Submitted by [Elham Ebrahimi](https://www.wur.nl/en/persons/e-elham-ebrahimi).

  - [nert](https://github.com/ropensci/software-review/issues/785), Curated Access to TERN Environmental Raster Data.
    Submitted by [Max Moldovan](https://scholar.google.com.au/citations?user=zG1uKrcAAAAJ&hl=en).

- One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%225/awaiting-reviewer(s)-response%22):

  - [RAQSAPI](https://github.com/ropensci/software-review/issues/744), A Simple Interface to the US EPA Air Quality System Data Mart API.
    Submitted by [mccroweyclinton-EPA](https://github.com/mccroweyclinton-EPA).

- Five at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

  - [grumpy](https://github.com/ropensci/software-review/issues/775), Read NumPy .npy and .npz Files.
    Submitted by [Hugo Gruson](https://hugogruson.fr/).

  - [corila](https://github.com/ropensci/software-review/issues/808), Sparse modelling with grouped and correlated features allowing for privileged information.
    Submitted by [Armin Rauschenberger](https://rauschenberger.github.io).
    (Stats).

  - [qualtdict](https://github.com/ropensci/software-review/issues/807), Generate Variable Dictionaries and Labelled Survey Data for.
    Submitted by [lyh970817](https://github.com/lyh970817).

  - [grumpy](https://github.com/ropensci/software-review/issues/775), Read NumPy .npy and .npz Files.
    Submitted by [Hugo Gruson](https://hugogruson.fr/).

  - [tezr](https://github.com/ropensci/software-review/issues/774), Access Thesis Metadata from Turkiye's National Thesis Center.
    Submitted by [Emrah Er](https://github.com/emraher).

- Three at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%222/seeking-reviewer(s)%22):

  - [GeneExprLupusMx](https://github.com/ropensci/software-review/issues/824), Lupus RNA-Seq Data from Mexican Women with Bilingual Lessons.
    Submitted by [Evelia Lorena Coss-Navarrete](https://eveliacoss.github.io/).

  - [dyadicMarkov](https://github.com/ropensci/software-review/issues/810), Pattern Estimation and Identification for Dyadic Sequences Using Transition Matrices in R.
    Submitted by [Mattia Böllenrücher](https://github.com/BoellenruecherM).
    (Stats).

  - [emodnet.wcs](https://github.com/ropensci/software-review/issues/809), Access EMODnet Web Coverage Service data through R.
    Submitted by [Maëlle Salmon](https://masalmon.eu/).

- Three at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

  - [tarpolyglot](https://github.com/ropensci/software-review/issues/805), Run Python, Julia, Rust, and C++ Inside targets Pipeline Steps.
    Submitted by [Pierre9344](https://github.com/Pierre9344).

  - [seasight](https://github.com/ropensci/software-review/issues/786), Tools for Seasonal Adjustment Diagnostics and Reporting.
    Submitted by [Philipp Wegmueller](https://p-wegmueller.github.io).
    (Stats).

  - [OptSurvCutR](https://github.com/ropensci/software-review/issues/777), Optimal Survival Cut-Point Discovery for Time-to-Event Analysis with OptSurvCutR.
    Submitted by [Payton Yau](https://github.com/paytonyau).
    (Stats).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->

### Software Review

- [Kindness, Curiosity, and Kitties: A rOpenSci 15th Anniversary Interview with Mo](/blog/2026/11/04/celebrating-ropensci) by Yanina Bellini Saibene.
  As part of rOpenSci's 15th anniversary, Community Manager Yani talks with Mo about her journey from a first software review to years of contributions across the rOpenSci community.
  Mo shares what keeps her involved and offers advice for newcomers.

- [Mark Padgham: Building the Machinery of Software Peer Review](/blog/2026/10/21/mark-building-machinery-software-review) by The rOpenSci Team.
  Mark Padgham is leaving rOpenSci at the end of October, and we want to take this moment to recognize his impact and say thank you for helping to shape rOpenSci.

- [Carolina Pradier, rOpenSci champion and mentor](/blog/2026/11/02/champions-histories-carolina-pradier) by Yanina Bellini Saibene and Alejandra Bellini.
  This story is that of Carolina Pradier, main maintainer of the eph package.
  We review her participation in the Champions program and the impact of her work in different organizations and communities.

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

- [suppdata](https://docs.ropensci.org/suppdata), Grabbing SUPPlementary DATA in R.
  [Issue for volunteering](https://github.com/ropensci/suppdata/issues/59).

- [ghql](https://docs.ropensci.ghql), GraphQL R client.
  [Issue for volunteering](https://github.com/ropensci/ghql/issues/40).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful information for R package developers.
:eyes:

### Coverage on GitHub Actions without codecov

How to get coverage information displayed without codecov?
A roundup of current efforts

- Earlier this year, Adam Sparks wrote up his [strategy](https://adamhsparks.netlify.app/2026/01/24/look-ma-no-codecov-io/) for generating a README badge displaying test coverage, without using a third-party such as codecov.io.
- The [covr2gh](https://github.com/dragosmg/covr2gh) package by Dragoș Moldovan-Grünfeld provides an automated way to summarise the impact of a pull request (PR) on test coverage directly within GitHub.
- covr development version gained a [`to_badge()`](https://covr.r-lib.org/dev/reference/to_badge.html) function to create an svg badge of coverage.
- Elio Campitelli added a [GitHub Actions workflow and script](https://github.com/eliocamp/tagger/commit/de390422d1abba16df328a0be4b34e25a88f3749) to create a [coverage report for a package](https://eliocamp.github.io/tagger/articles/coverage-report.html).

### A workflow tips for running tests

Etienne Bacher wrote a short post on [Using Just to run a subset of test files](https://www.etiennebacher.com/posts/2026-10-15-using-just-with-test-files/) that might be useful to you if you:

- run tests in a package with long-running tests;
- or are curious about Just, a tool for defining command aliases.

### AI as Forklift: Andrew Heiss' R+ AI 2026 keynote

Andrew Heiss published a write up of his talk [Friction Worth Keeping: What Keeps Us Human When AI Makes Everything Easy](https://www.andrewheiss.com/blog/2026/11/10/r-ai-keynote-friction/), including a useful extension of the AI/forklift analogy.

## Last words

Thanks for reading!
If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org).
This guide will help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways such as through sharing use cases.
You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so though our signup form](/news/).
Until it's time for our next newsletter, you can keep in touch with us through our [website](/), [Mastodon](https://hachyderm.io/@rOpenSci), or [LinkedIn](https://www.linkedin.com/company/ropensci/).
See you soon!
