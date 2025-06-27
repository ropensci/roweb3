---
slug: "news-june-2025"
title: rOpenSci News Digest, June 2025
author:
  - The rOpenSci Team
date: '2025-06-27'
tags:
  - newsletter
description: Farewell editor Julia, welcome editors Emi and Nima, R-universe updates, champions program, events
params:
  last_newsletter: '2025-05-26'
  doi: "10.59350/e4wq0-j73"
rmd_hash: b46ca21d5cdaffee

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2025/06/27/news-may-2025). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Farewell to software review editor Julia Gustavsen

This month we say farewell to Software Peer-Review Editor Julia Gustavsen. Julia has been an essential member of the rOpenSci peer-review team for more than *10 years*, since before we had an editorial board, and before we even called it peer review! Julia was one of rOpenSci's original reviewers as we figured out how to transform from a team publishing our in-house developed tools to a broader, community-driven ecosystem. Her early reviews were a model for the careful, helpful, non-confrontational style that has set the tone for our approach. We were lucky to have her join as an editor in 2020. She has expertly guided many authors and reviewers through the peer-review process, served as Editor in Chief, and been a pleasure to have as colleague making the process better, smoother, and more valuable to our community. Thanks Julia for your service!

### New software review editors

We are excited to welcome [Emi Tanaka](https://emitanaka.org/) and, more recently, [Nima Hejazi](https://nimahejazi.org/) to our team of [Associate Editors](/software-review/#editors) for rOpenSci [Stats Software Peer Review](/software-review/). Emi brings her experiences in experimental design, mixed-effects models and data visualisation, while Nima contributes his expertise in causal inference, de-biased machine learning, and semi-parametric and computational statistics.

Read more in the [post introducing Nima and Emi](/blog/2025/06/25/editors2025/).

### R-universe updates

R-universe now also builds and checks binaries for ARM64-linux (both R-release and R-devel). To install Linux binaries, see the [docs](https://docs.r-universe.dev/install/binaries.html).

Furthermore, build results are now easier to navigate. On any [universe builds tab](https://ropensci.r-universe.dev/builds), hovering on a icon will indicate the build status such as "Source: OK" or "macos-release-arm64: WARNING". Clicking on an orange or red icon will open the GitHub Actions log at the right job, with "Annotations" (failures) ready to be expanded at the top. This should help [trouble shoot package builds](https://docs.r-universe.dev/publish/troubleshoot-build.html).

### Champions Program 2025

We are excited to introduce the new team of mentors for the rOpenSci Champions Program! This year, we have ten very talented individuals, all from Latin America, who bring a unique combination of experience, enthusiasm, and commitment to open science. Some of them have already been part of the program in previous editions, either as mentors or Champions, and today, they return to continue strengthening this community. Read more in the [blog post introducing them all](/blog/2025/06/05/mentors-2025/): Carolina Pradier, Elina Gómez, Elio Campitelli, Francisco Cardozo, Geraldine Gómez Millán, Luis D. Verde Arregoitia, Milagros Mendoza, Pablo Tiscornia, Pao Corrales, Ronny Hernandez Mora.

We've also completed the selection of our new Champions and can't wait to introduce them and their projects very soon! We selected 10 incredible people from Argentina, Bolivia, Brazil, Chile, Colombia, Mexico, and Uruguay. The decision was not easy -- the quality of the applications and the relevance of the proposed projects made the selection process especially challenging. We're excited to see all the great things this group will create and contribute to open science and research software engineering during the next 12 months.

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

-   Tuesday July 1st, 2025 9:00 AM Americas Pacific (16:00 UTC), ["Research Software Engineering and R"](/events/coworking-2025-07/) with [Yanina Bellini Saibene](/author/yanina-bellini-saibene/) and cohost [Saranjeet Kaur Bhogal](/author/saranjeet-kaur-bhogal/).
    -   Look up Research Software Engineering.
    -   Chat with Saranjeet about being a Research Software Engineer in R
-   Tuesday August 5th, 2025 9:00 AM Australia Western (01:00 UTC), ["Drawing publication-ready plots using R"](/events/coworking-2025-08/) with [Steffi LaZerte](/author/steffi-lazerte/) and cohost [Emi Tanaka](/author/emi-tanaka/).
    -   Work on some figures and plots for your own work
    -   Explore ways of making publication-ready plots in R
    -   Chat with Emi Tanaka about making publication-ready plots in R

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

### New packages

<div class="highlight">

</div>

The following package recently became a part of our software suite:

<div class="highlight">

-   [PFW](https://docs.ropensci.org/PFW), developed by Mason W. Maron: Provides tools to import, clean, filter, and prepare Project FeederWatch data for analysis. Includes functions for taxonomic rollup, easy filtering, zerofilling, merging in site metadata, and more. It has been [reviewed](https://github.com/ropensci/software-review/issues/698) by Sunny Tseng and Paul Carteron.
    </div>

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions

<div class="highlight">

</div>

The following thirteen packages have had an update since the last newsletter: [pkgmatch](https://docs.ropensci.org/pkgmatch "Find R Packages Matching Either Descriptions or Other R Packages") ([`v0.5.0`](https://github.com/ropensci-review-tools/pkgmatch/releases/tag/v0.5.0)), [daiquiri](https://docs.ropensci.org/daiquiri "Data Quality Reporting for Temporal Datasets") ([`v1.2.0`](https://github.com/ropensci/daiquiri/releases/tag/v1.2.0)), [fellingdater](https://docs.ropensci.org/fellingdater "Estimate, report and combine felling dates of historical tree-ring series") ([`v1.1.0`](https://github.com/ropensci/fellingdater/releases/tag/v1.1.0)), [gtexr](https://docs.ropensci.org/gtexr "Query the GTEx Portal API") ([`v0.2.0.9001`](https://github.com/ropensci/gtexr/releases/tag/v0.2.0.9001)), [gutenbergr](https://docs.ropensci.org/gutenbergr "Download and Process Public Domain Works from Project Gutenberg") ([`v0.3.0`](https://github.com/ropensci/gutenbergr/releases/tag/v0.3.0)), [helminthR](https://docs.ropensci.org/helminthR "Access London Natural History Museum Host-Helminth Record Database") ([`v1.1.0`](https://github.com/ropensci/helminthR/releases/tag/v1.1.0)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.21`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.21)), [magick](https://docs.ropensci.org/magick "Advanced Graphics and Image-Processing in R") ([`ImageMagick-6.9.13-25`](https://github.com/ropensci/magick/releases/tag/ImageMagick-6.9.13-25)), [nasapower](https://docs.ropensci.org/nasapower "NASA POWER API Client") ([`v4.2.5`](https://github.com/ropensci/nasapower/releases/tag/v4.2.5)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.13.1`](https://github.com/ropensci/nodbi/releases/tag/v0.13.1)), [occCite](https://docs.ropensci.org/occCite "Querying and Managing Large Biodiversity Occurrence Datasets") ([`v0.6.0`](https://github.com/ropensci/occCite/releases/tag/v0.6.0)), [rgbif](https://docs.ropensci.org/rgbif "Interface to the Global Biodiversity Information Facility API") ([`v3.8.2`](https://github.com/ropensci/rgbif/releases/tag/v3.8.2)), and [slopes](https://docs.ropensci.org/slopes "Calculate Slopes of Roads, Rivers and Trajectories") ([`v1.0.1`](https://github.com/ropensci/slopes/releases/tag/v1.0.1)).

## Software Peer Review

<div class="highlight">

There are twelve recently closed and active submissions and 8 submissions on hold. Issues are at different stages:

-   One at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

    -   [PFW](https://github.com/ropensci/software-review/issues/698), Tools for Filtering and Processing Data from Project FeederWatch. Submitted by [Mason Maron](https://github.com/Visorbearer).

-   Four at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

    -   [trud](https://github.com/ropensci/software-review/issues/705), Query the NHS TRUD API. Submitted by [Alasdair Warwick](https://github.com/rmgpanw).

    -   [SSARP](https://github.com/ropensci/software-review/issues/685), SSARP (Species-/Speciation-Area Relationship Projector). Submitted by [kmartinet](https://github.com/kmartinet).

    -   [dataset](https://github.com/ropensci/software-review/issues/681), Create Data Frames that are Easier to Exchange and Reuse. Submitted by [Daniel Antal](http://nl.linkedin.com/in/antaldaniel/).

    -   [sits](https://github.com/ropensci/software-review/issues/596), Satellite Image Time Series Analysis for Earth Observation Data Cubes. Submitted by [Gilberto Camara](https://www.gilbertocamara.org).

-   Three at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

    -   [distionary](https://github.com/ropensci/software-review/issues/688), Create and Evaluate Probability Distributions. Submitted by [Vincenzo Coia](https://vincenzocoia.com).

    -   [sasquatch](https://github.com/ropensci/software-review/issues/673), Use SAS, R, and quarto Together. Submitted by [Ryan Zomorrodi](https://ryanzomorrodi.github.io/).

    -   [read.abares](https://github.com/ropensci/software-review/issues/667), Provides simple downloading, parsing and importing of Australian Bureau of Agricultural and Resource Economics and Sciences (ABARES) data sources. Submitted by [Adam H. Sparks](https://adamhsparks.netlify.app/).

-   Three at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%222/seeking-reviewer(s)%22):

    -   [rixpress](https://github.com/ropensci/software-review/issues/706), Build Reproducible Analytical Pipelines With Nix. Submitted by [Bruno Rodrigues](https://brodrigues.co).

    -   [partialling.out](https://github.com/ropensci/software-review/issues/703), Residuals from partial regressions. Submitted by [Marc Bosch](https://github.com/marcboschmatas). (Stats).

    -   [galamm](https://github.com/ropensci/software-review/issues/615), Generalized Additive Latent and Mixed Models. Submitted by [Øystein Sørensen](https://osorensen.github.io/). (Stats).

-   One at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

    -   [capybara](https://github.com/ropensci/software-review/issues/645), Fast and Memory Efficient Fitting of Linear Models With High-Dimensional. Submitted by [Mauricio "Pachá" Vargas Sepúlveda](https://pacha.dev).
        </div>

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->

<div class="highlight">


-   [Announcing New Stats Software Peer Review Editors: Emi Tanaka and Nima Hejazi](/blog/2025/06/25/editors2025) by Mark Padgham, Emi Tanaka, Nima Hejazi, and Yanina Bellini Saibene. Introducing two new editors for rOpenSci stats software review.

-   [New Mentoring Team, Same Open Science Spirit](/blog/2025/06/05/mentors-2025) by Carolina Pradier, Elina Gómez, Elio Campitelli, Francisco Cardozo, Geraldine Gómez Millán, Luis D. Verde Arregoitia, Milagros Mendoza, Pablo Tiscornia, Pao Corrales, Ronny Hernandez Mora, and Yanina Bellini Saibene. Meet the new team of mentors for the [rOpenSci Champions Program](https://champions-program.ropensci.org) for People from Latin America dedicated to research and development of research software and committed to open science. They will accompany our Champions in their projects for one year, sharing experience, guidance, and enthusiasm. Other languages: <a href='/es/blog/2025/06/05/mentors-2025' lang='es'>Nuevo equipo de mentor(a\|e)s, el mismo espíritu de ciencia abierta (es)</a>.

-   [Multilingual Publishing: Frequently Asked Questions](/blog/2025/06/23/translation-faq) by Yanina Bellini Saibene and Maëlle Salmon. A list of frequently asked questions about our multilingual program and our translation and localization process, and our best answers to them. Other languages: <a href='/es/blog/2025/06/23/edicion-multilingue-preguntas-frecuentes' lang='es'>Edición multilingüe: preguntas frecuentes (es)</a>, <a href='/fr/blog/2025/06/23/publication-multilingue-faq' lang='fr'>Publication multilingue : Questions fréquemment posées (fr)</a>.

</div>

## Use cases

<div class="highlight">

</div>

Four use cases of our packages and resources have been reported recently.

<div class="highlight">

-   [Translating course to Spanish and French](https://discuss.ropensci.org/t/translating-course-to-spanish-and-french/4207) (English). Reported by Yann Say.

-   [Multilingual support for Teaching Tech Together Book](https://github.com/yabellini/t3es2ed) (English, Spanish). Reported by [Yanina Bellini Saibene](https://github.com/yabellini).

-   [Enseñando datos espaciales vectoriales en R](https://yabellini.github.io/AgriRemoteSensing/02-r-spatial.html) (Spanish). Reported by [Yanina Bellini Saibene](https://github.com/yabellini).

-   [Automated generation of a taxonomic classification document](https://github.com/orgs/ropensci/discussions/3) (English). Reported by [Joel Nitta](https://github.com/joelnitta).

    </div>

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

-   [rentrez](https://docs.ropensci.org/rentrez/), interface to the NCBI's EUtils API, allowing users to search databases like [GenBank](https://www.ncbi.nlm.nih.gov/genbank/) and [PubMed](https://pubmed.ncbi.nlm.nih.gov/), process the results of those searches and pull data into their R sessions. [Issue for volunteering](https://github.com/ropensci/rentrez/issues/203).

-   [hddtools](https://docs.ropensci.org/hddtools/), Hydrological Data Discovery Tools. [Issue for volunteering](https://github.com/ropensci/hddtools/issues/36).

-   [USAboundaries](https://docs.ropensci.org/USAboundaries/) (and USAboundariesdata), historical and contemporary boundaries of the United States of America. [Issue for volunteering](https://github.com/ropensci/USAboundaries/issues/50).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### Refactoring code with {flir}

Etienne Bacher [explains](https://www.etiennebacher.com/posts/2025-05-23-refactoring-code-with-flir/) how to use his flir package to, for instance, replace the usage of a superseded function with a newer function over a project. Note that from flir 0.4.3, it will be possible to [share rules across packages](https://flir.etiennebacher.com/articles/sharing_rules).

### Tips and tools for co-maintenance of R packages

In his [blog post](https://hugogruson.fr/posts/R-package-comaintenance/), Hugo Gruson gives advice on how best to maintain an R package *as a team*. Furthermore, he shares GitHub Actions workflows that warn all package authors or maintainers when an R package is at risk of archival, rather than just the officially listed maintainer.

### `Authors@R` field becoming compulsory for new CRAN submissions

Also shared by Hugo Gruson, it seems that the richer authorship field [`Authors@R`](https://devguide.ropensci.org/pkg_building.html#authorship) will now be compulsory for new CRAN submissions, as opposed to being able to use `Maintainer:` and `Author`. [Example](https://cran.r-project.org/web/checks/check_results_tensor.html).

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).

</div>

</div>

</div>

