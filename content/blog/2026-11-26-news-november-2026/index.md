---
slug: "news-november-2026"
title: rOpenSci News Digest, November 2026
author:
  - The rOpenSci Team
date: "2026-11-26"
tags:
  - newsletter
description: Mentor Guidelines; Editorial board updates; Quinceañera; new packages and package news
params:
  last_newsletter: "2026-10-22"
  doi: "10.59350/bb6hh-t5f36"
rmd_hash: e3526061eae8087f

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! You can read this post [on our blog](/blog/2026/11/26/news-november-2026). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### New release: rOpenSci Champions Program Mentor Guidelines

We've released a new version of our [guide for mentors in our Champions Program](https://ropensci-org.github.io/champions-mentor-guidelines/). It includes useful content such how to organize a meeting with one's mentee, and resources about mentoring skills. Check it out!

### Editorial board updates

#### Welcome Francisco!

[Francisco Rodriguez-Sanchez](/author/francisco-rodriguez-sanchez/) joined as a guest editor back in 2023 and has now [handled two approved packages](https://github.com/ropensci/software-review/issues?q=is%3Aissue++label%3A6%2Fapproved+assignee%3APakillo). He's now a full member of the editorial board. Thank you and welcome!

#### Thanks Jeff and Emi!

[Jeff Hollister](/author/Jeff-Hollister) and [Emi Tanaka](/author/emi-tanaka/) are stepping off the editorial board. Since 2021 Jeff has [handled seven approved packages](https://github.com/ropensci/software-review/issues?q=is%3Aissue+assignee%3Ajhollist+label%3A6%2Fapproved) and served twice as the Editor-in-Chief. Emi joined the editorial board in 2023 and has [handled two approved packages](https://github.com/ropensci/software-review/issues?q=is%3Aissue+assignee%3Aemitanaka+label%3A6%2Fapproved). Thank you both and all the best in your next adventures!

### Quinceañera

We continue to uncover the stories of the people behind rOpenSci. This month, you can read about:

- [Carolina Pradier, rOpenSci Champion and mentor](/blog/2026/11/02/champions-histories-carolina-pradier/),
- [Athanasia Mo Mowinckel, rOpenSci mentor (and more)](/blog/2026/11/04/celebrating-ropensci/),
- [Adam Sparks, editor and package maintainer](/blog/2026/11/19/brisbane-to-community/).

Stay tuned for more rOpenSci stories.

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

- Tuesday December 8th<sup>\*</sup>, 14:00 Europe Central (13:00 UTC) ["Code Linting in R"](/events/coworking-2026-12/), with [Steffi LaZerte](/author/steffi-lazerte) and co-host [Etienne Bacher](/author/etienne-bacher/).
  - Read up on Code Linting and apply some linters to your R code
  - Meet co-host, Etienne Bacher, and discuss code linting in general, or [flir](https://flir.etiennebacher.com/) and [Jarl](https://jarl.etiennebacher.com/) in particular  
    \* Note that December coworking is a week later than usual
- Tuesday January 19th, 2027 17:00 (UTC) ["Getting to know PREreview"](/events/coworking-2027-01/), with [Steffi LaZerte](/author/steffi-lazerte) and co-hosts [Vanessa Fairhurst](/author/vanessa-fairhurst/) and [Daniela Saderi](/author/daniela-saderi/).
  - [Visit PREreview](https://prereview.org/)
  - Meet co-hosts, Vanessa Fairhurst and Daniela Saderi, and learn more about PREreview and how you might get involved

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## R Project Sprint 2027, 3 days in week of Apr 12, Boston \| Virtual

Join this collaborative event to work on contributions to the code and documentation of base R, or to infrastructure that supports such contributions. Travel funding is available for this event. Limited places are available for novice and experienced contributors to participate in person or online. Applications open now: <https://contributor.r-project.org/r-project-sprint-2027> Deadline: Friday 4 December (midnight Anywhere on Earth)

## Software :package:

The following two packages recently became a part of our software suite:

- [nert](https://docs.ropensci.org/nert), developed by Sam Rogers together with Adam H. Sparks, Wasin Pipattungsakul, Russell Edson, and Max Moldovan: Provides curated access to raster environmental data published by Australias Terrestrial Ecosystem Research Network (TERN; <https://www.tern.org.au/>), spanning national soil attribute, soil classification, soil biodiversity, soil moisture, actual evapotranspiration, vegetation canopy height and phenology products. The package reads Cloud-Optimised GeoTIFF (COG) and virtual raster files directly from the TERN data server via Geospatial Data Abstraction Library (GDAL) vsicurl virtual file system range requests, streaming only the requested spatial and temporal subset for efficient data transfer. The environmental raster data are returned as terra SpatRaster objects. A convenient helper function is also provided that provides a batch-download capability given specific locations and dates, returning the extracted data values in an analysis-ready data.table'. Access to the TERN datasets using this package requires a free TERN API key. It has been [reviewed](https://github.com/ropensci/software-review/issues/785) by Michael Sumner and Shandiya Balasubramaniam.

- [camtrapReport](https://docs.ropensci.org/camtrapReport), developed by Elham Ebrahimi: Provides an extensible workflow for processing camera-trap data in the Camtrap DP format and automatically generating reproducible data-status and ecological reports in HTML or PDF format. The package supports data-quality checks, ecological summaries, visualisations, maps, tables and modular report sections for wildlife-monitoring applications. Optional taxonomic enrichment queries the Global Biodiversity Information Facility Species API <https://techdocs.gbif.org/en/openapi/v1/species> through taxize. Browser-based map backgrounds use OpenStreetMap <https://www.openstreetmap.org>, OSM Germany <https://openstreetmap.de/germanstyle/> and OpenTopoMap <https://opentopomap.org>, subject to their usage terms. It has been [reviewed](https://github.com/ropensci/software-review/issues/799) by Florian Mayer and Catherine Sun.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions

The following twenty-two packages have had an update since the last newsletter: [nlrx](https://docs.ropensci.org/nlrx "Setup, Run and Analyze NetLogo Model Simulations from R via XML") ([`v0.5.0`](https://github.com/ropensci/nlrx/releases/tag/v0.5.0)), [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (CFF) Metadata") ([`v1.4.3`](https://github.com/ropensci/cffr/releases/tag/v1.4.3)), [parzer](https://docs.ropensci.org/parzer "Parse Messy Geographic Coordinates") ([`v0.6.0`](https://github.com/ropensci/parzer/releases/tag/v0.6.0)), [nuts](https://docs.ropensci.org/nuts "Convert European Regional Data") ([`v1.3.0`](https://github.com/ropensci/nuts/releases/tag/v1.3.0)), [ghql](https://docs.ropensci.org/ghql "General Purpose GraphQL Client") ([`v0.1.3`](https://github.com/ropensci/ghql/releases/tag/v0.1.3)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.14.2`](https://github.com/ropensci/tarchetypes/releases/tag/0.14.2)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.12.1`](https://github.com/ropensci/targets/releases/tag/1.12.1)), [nert](https://docs.ropensci.org/nert "Curated Access to TERN Environmental Raster Data") ([`v2.1.0`](https://github.com/ropensci/nert/releases/tag/v2.1.0)), [coevolve](https://docs.ropensci.org/coevolve "Fit Bayesian Generalized Dynamic Phylogenetic Models using Stan or JAX") ([`v1.3.0`](https://github.com/ropensci/coevolve/releases/tag/v1.3.0)), [srr](https://docs.ropensci.org/srr "rOpenSci Software Review Roclets") ([`v1.1.0`](https://github.com/ropensci-review-tools/srr/releases/tag/v1.1.0)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.27`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.27)), [dittodb](https://docs.ropensci.org/dittodb "A Test Environment for Database Requests") ([`v0.1.12`](https://github.com/ropensci/dittodb/releases/tag/v0.1.12)), [BaseSet](https://docs.ropensci.org/BaseSet "Working with Sets the Tidy Way") ([`v1.0.1`](https://github.com/ropensci/BaseSet/releases/tag/v1.0.1)), [dbparser](https://docs.ropensci.org/dbparser "Drugs Databases Parser") ([`v2.3.0`](https://github.com/ropensci/dbparser/releases/tag/v2.3.0)), [dataspice](https://docs.ropensci.org/dataspice "Create Lightweight Schema.org Descriptions of Data") ([`v1.2.1`](https://github.com/ropensci/dataspice/releases/tag/v1.2.1)), [naijR](https://docs.ropensci.org/naijR "Operations to Ease Data Analyses Specific to Nigeria") ([`v0.7.1`](https://github.com/ropensci/naijR/releases/tag/v0.7.1)), [EpiStrainDynamics](https://docs.ropensci.org/EpiStrainDynamics "Infer temporal trends of multiple pathogens") ([`v0.2.0`](https://github.com/ropensci/EpiStrainDynamics/releases/tag/v0.2.0)), [opencage](https://docs.ropensci.org/opencage "Geocode with the OpenCage API") ([`v0.3.0`](https://github.com/ropensci/opencage/releases/tag/v0.3.0)), [galamm](https://docs.ropensci.org/galamm "Generalized Additive Latent and Mixed Models") ([`v0.4.2`](https://github.com/ropensci/galamm/releases/tag/v0.4.2)), [frictionless](https://docs.ropensci.org/frictionless "Read and Write Frictionless Data Packages") ([`v2.0.1`](https://github.com/frictionlessdata/frictionless-r/releases/tag/v2.0.1)), [DataSpaceR](https://docs.ropensci.org/DataSpaceR "Interface to the CAVD DataSpace") ([`v1.0.3`](https://github.com/ropensci/DataSpaceR/releases/tag/v1.0.3)), and [lakefetch](https://docs.ropensci.org/lakefetch "Calculate Fetch and Wave Exposure for Lake Sampling Points") ([`v0.1.14`](https://github.com/ropensci/lakefetch/releases/tag/v0.1.14)).

## Software Peer Review

There are fourteen recently closed and active submissions and 6 submissions on hold. Issues are at different stages:

- Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

  - [camtrapReport](https://github.com/ropensci/software-review/issues/799), Camera-Trap Report Generator. Submitted by [Elham Ebrahimi](https://www.wur.nl/en/persons/e-elham-ebrahimi).

  - [nert](https://github.com/ropensci/software-review/issues/785), Curated Access to TERN Environmental Raster Data. Submitted by [Max Moldovan](https://scholar.google.com.au/citations?user=zG1uKrcAAAAJ&hl=en).

- One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%225/awaiting-reviewer(s)-response%22):

  - [RAQSAPI](https://github.com/ropensci/software-review/issues/744), A Simple Interface to the US EPA Air Quality System Data Mart API. Submitted by [mccroweyclinton-EPA](https://github.com/mccroweyclinton-EPA).

- One at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

  - [grumpy](https://github.com/ropensci/software-review/issues/775), Read NumPy .npy and .npz Files. Submitted by [Hugo Gruson](https://hugogruson.fr/).

- Six at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

  - [GeneExprLupusMx](https://github.com/ropensci/software-review/issues/824), Lupus RNA-Seq Data from Mexican Women with Bilingual Lessons. Submitted by [Evelia Lorena Coss-Navarrete](https://eveliacoss.github.io/).

  - [emodnet.wcs](https://github.com/ropensci/software-review/issues/809), Access EMODnet Web Coverage Service data through R. Submitted by [Maëlle Salmon](https://masalmon.eu/).

  - [corila](https://github.com/ropensci/software-review/issues/808), Sparse modelling with grouped and correlated features allowing for privileged information. Submitted by [Armin Rauschenberger](https://rauschenberger.github.io). (Stats).

  - [qualtdict](https://github.com/ropensci/software-review/issues/807), Generate Variable Dictionaries and Labelled Survey Data for. Submitted by [lyh970817](https://github.com/lyh970817).

  - [metasurvey.core](https://github.com/ropensci/software-review/issues/796), Local Engine for Reproducible Survey Data Processing. Submitted by [Mauro Loprete](https://github.com/mauroloprete).

  - [tezr](https://github.com/ropensci/software-review/issues/774), Access Thesis Metadata from Turkiye's National Thesis Center. Submitted by [Emrah Er](https://github.com/emraher).

- Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%222/seeking-reviewer(s)%22):

  - [dyadicMarkov](https://github.com/ropensci/software-review/issues/810), Pattern Estimation and Identification for Dyadic Sequences Using Transition Matrices in R. Submitted by [Mattia Böllenrücher](https://github.com/BoellenruecherM). (Stats).

  - [tarpolyglot](https://github.com/ropensci/software-review/issues/805), Run Python, Julia, Rust, and C++ Inside targets Pipeline Steps. Submitted by [Pierre9344](https://github.com/Pierre9344).

- Two at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

  - [seasight](https://github.com/ropensci/software-review/issues/786), Tools for Seasonal Adjustment Diagnostics and Reporting. Submitted by [Philipp Wegmueller](https://p-wegmueller.github.io). (Stats).

  - [OptSurvCutR](https://github.com/ropensci/software-review/issues/777), Optimal Survival Cut-Point Discovery for Time-to-Event Analysis with OptSurvCutR. Submitted by [Payton Yau](https://github.com/paytonyau). (Stats).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->

### Software Review

- [Kindness, Curiosity, and Kitties: A rOpenSci 15th Anniversary Interview with Mo](/blog/2026/11/04/celebrating-ropensci) by Yanina Bellini Saibene. As part of rOpenSci's 15th anniversary, Community Manager Yani talks with Mo about her journey from a first software review to years of contributions across the rOpenSci community. Mo shares what keeps her involved and offers advice for newcomers.

- [From Brisbane to the rOpenSci Community: Ten Years of Open Research Software](/blog/2026/11/19/brisbane-to-community) by Adam Sparks. A look back at ten years of involvement with rOpenSci, from attending a Unconf to package development, peer review, editorial work, and building open science communities. Through stories of collaboration, learning, and lasting friendships, the post highlights how welcoming communities can shape careers and make open research software stronger. .

- [Mark Padgham: Building the Machinery of Software Peer Review](/blog/2026/10/21/mark-building-machinery-software-review) by The rOpenSci Team. Mark Padgham is leaving rOpenSci at the end of October, and we want to take this moment to recognize his impact and say thank you for helping to shape rOpenSci.

- [Carolina Pradier, rOpenSci champion and mentor](/blog/2026/11/02/champions-histories-carolina-pradier) by Yanina Bellini Saibene and Alejandra Bellini. This story is that of Carolina Pradier, main maintainer of the eph package. We review her participation in the Champions program and the impact of her work in different organizations and communities.

- [Hacking Two Hours of Contributions to R](/blog/2026/11/20/hackeaR-LatinR2026) by Yanina Bellini Saibene. What we did during HackeaR, a LatinR event where we got together to make contributions to our favorite programming language. Other languages: <a href='/es/blog/2026/11/20/hackeaR-LatinR2026' lang='es'>Hackeando dos horas de contribuciones a R (es)</a>.

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

- [suppdata](https://docs.ropensci.org/suppdata), Grabbing SUPPlementary DATA in R. [Issue for volunteering](https://github.com/ropensci/suppdata/issues/59).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful information for R package developers. :eyes:

### Coverage on GitHub Actions without codecov

How to get coverage information displayed without codecov? A roundup of current efforts:

- Earlier this year, Adam Sparks wrote up his [strategy](https://adamhsparks.netlify.app/2026/01/24/look-ma-no-codecov-io/) for generating a README badge displaying test coverage, without using a third party such as codecov.io.
- The [covr2gh](https://github.com/dragosmg/covr2gh) package by Dragoș Moldovan-Grünfeld provides an automated way to summarise the impact of a pull request (PR) on test coverage directly within GitHub.
- The development version of covr gained a [`to_badge()`](https://covr.r-lib.org/dev/reference/to_badge.html) function to create an svg badge of coverage.
- Elio Campitelli added a [GitHub Actions workflow and script](https://github.com/eliocamp/tagger/commit/de390422d1abba16df328a0be4b34e25a88f3749) to create a [coverage report for a package](https://eliocamp.github.io/tagger/articles/coverage-report.html).

### AI as Forklift: Andrew Heiss' R + AI 2026 keynote

Andrew Heiss published a write up of his talk [Friction Worth Keeping: What Keeps Us Human When AI Makes Everything Easy](https://www.andrewheiss.com/blog/2026/11/10/r-ai-keynote-friction/), including a useful extension of the AI/forklift analogy. You can also [watch the recording](https://www.youtube.com/watch?v=efwMAosu2-g).

### LLMs as last resort

[Bastián Olea Herrera](/author/bastián-olea-herrera/) shared a post by Ben Harrap: ["Limited Learning Mode: Why LLMs are my last resort"](https://benharrap.com/post/2026-09-08-limited-learning-mode/). One of the reasons is "People like to help"!

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org). This guide will help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways such as through sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so through our signup form](/news/). Until it's time for our next newsletter, you can keep in touch with us through our [website](/), [Mastodon](https://hachyderm.io/@rOpenSci), or [LinkedIn](https://www.linkedin.com/company/ropensci/). See you soon!

