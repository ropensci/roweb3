---
slug: "news-september-2025"
title: rOpenSci News Digest, September 2025
author:
  - The rOpenSci Team
date: '2025-09-29'
tags:
  - newsletter
description: R-multiverse comm call, useR! 2025, posit::conf(2025), coworking, new package, package news
params:
  last_newsletter: '2025-08-28'
  doi: "10.59350/c427v-cjd59"
rmd_hash: 722f915985422c83

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2025/09/29/news-september-2025). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### 10 quick tips for making your software outlive your job

Our community manager Yanina Bellini Saibene participated in the paper ["10 quick tips for making your software outlive your job"](https://arxiv.org/abs/2505.06484).

> "Loss of key personnel has always been a risk for research software projects. Key members of the team may have to step away due to illness or burnout, to care for a family member, from a loss of financial support, or because their career is going in a new direction. Today, though, political and financial changes are putting large numbers of researchers out of work simultaneously, potentially leaving large amounts of research software abandoned. This article presents ten tips to help researchers ensure that the software they have built will continue to be usable after they have left their present job -- whether in the course of voluntary career moves or researcher mobility, but particularly in cases of involuntary departure due to political or institutional changes."

### From Ideas to Action: Champions start their training

The training phase is off to a strong start!

So far, [Champions](/champions) have taken part in five workshops, including two on Git and GitHub, one on code style -- which we opened up not only to Champions and mentors but also to everyone who applied -- and two on R package development. Each session has been a chance to learn, share, and grow together as a community. And we're just getting started: the next workshops will dive into software peer review and community building -- key skills for every Champion's journey!

As usual you can find the materials on our [training page](/training).

### Request for feedback

We recently published a [blog post](/blog/2025/09/11/repometrics-call-help) requesting feedback for a prototype of an [organization-level dashboard](https://ropensci-review-tools.github.io/repometrics-demo/) for tracking the health and maintenance of an organization's R packages. We're still looking for feedback and suggestions, so please read the blog post if you haven't already, and help us with your ideas.

### rOpenSci featured on the Science Ouverte blog of Institut Pasteur

In her latest contribution to the Science Ouverte blog, [María Gutiérrez Sánchez](https://www.linkedin.com/in/maría-gutiérrez-sánchez-32a44b157) explores how the rOpenSci Champions Program is helping to foster more open, inclusive, and multilingual science:

> The program strengthens scientific communities in Latin America through training, mentorship, and networking around open-source software development. More than just broadening diversity in the R community, the initiative aims to redistribute power in the global open science ecosystem, recognizing that sustainable solutions must emerge from within the communities themselves.

Read the full article in [French](https://openscience.pasteur.fr/2025/09/01/ropensci-champions-pour-une-science-ouverte-multilingue-et-portee-par-les-logiciels-libres/) (original) or [Spanish](https://openscience.pasteur.fr/2025/09/01/ropensci-champions-por-una-ciencia-abierta-multilingue-y-basada-en-software-libre/).

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

-   Tuesday October 7th, 09:00 Americas Pacific (16:00 UTC), ["Ship your R package to the R-multiverse!"](/events/coworking-2025-10/) with [Steffi LaZerte](/author/steffi-lazerte/) and cohosts [Will Landau](/author/will-landau) & [Maëlle Salmon](/author/maelle-salmon).
    -   Learn more about the [R-multiverse](https://r-multiverse.org/);
    -   Submit your package to the [R-multiverse](https://r-multiverse.org/);
    -   Chat with Will Landau, and learn more about the R-multiverse and how to submit your package.
-   Tuesday November 3rd, 09:00 Australia Western (01:00 UTC), ["Code Review with rOpenSci"](/events/coworking-2025-11/) with [Steffi LaZerte](/author/steffi-lazerte/) and cohost [Liz Hare](/author/liz-hare).
    -   Explore resources for Code review;  
    -   Sign up to volunteer to do [software peer-review](https://airtable.com/app8dssb6a7PG6Vwj/shrnfDI2S9uuyxtDw) at rOpenSci;  
    -   Chat with Liz Hare, and learn more about rOpenSci's code review and the resources available.

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

### New packages





The following four packages recently became a part of our software suite:



-   [ssarp](https://docs.ropensci.org/ssarp), developed by Kristen Martinet: Create Species- and Speciation-Area Relationships using occurrence records or presence-absence matrices. It has been [reviewed](https://github.com/ropensci/software-review/issues/685) by Tom Matthews and Joel Nitta.

-   [rixpress](https://docs.ropensci.org/rixpress), developed by Bruno Rodrigues: Streamlines the creation of reproducible analytical pipelines using default.nix expressions generated via rix for reproducibility. Define derivations in R, Python or Julia, chain them into a composition of pure functions and build the resulting pipeline using Nix as the underlying end-to-end build tool. Functions to plot a DAG representation of the pipeline are included, as well as functions to load and inspect intermediary results for interactive analysis. User experience heavily inspired by the targets package. It has been [reviewed](https://github.com/ropensci/software-review/issues/706) by William Michael Landau and Anthony Martinez.

-   [hdcuremodels](https://docs.ropensci.org/hdcuremodels), developed by Kellie J. Archer together with Han Fu: Provides functions for fitting various penalized parametric and semi-parametric mixture cure models with different penalty functions, testing for a significant cure fraction, and testing for sufficient follow-up as described in [Fu et al (2022)](https://doi.org/10.1002/sim.9513) and [Archer et al (2024)](https://doi.org/10.1186/s13045-024-01553-6). False discovery rate controlled variable selection is provided using model-X knock-offs. It is available on [CRAN](https://CRAN.R-project.org/package=hdcuremodels). It has been [reviewed](https://github.com/ropensci/software-review/issues/692) by Tung Lam Nguyen and Panagiotis Papastamoulis.

-   [dataset](https://docs.ropensci.org/dataset), developed by Daniel Antal: The dataset package helps create semantically rich, machine-readable, and interoperable datasets in R. It extends tidy data frames with metadata that preserves meaning, improves interoperability, and makes datasets easier to publish, exchange, and reuse in line with ISO and W3C standards. It is available on [CRAN](https://CRAN.R-project.org/package=dataset). It has been [reviewed](https://github.com/ropensci/software-review/issues/681) by Marcelo Perlin, Anna Márta Mester, and Mauro Lepore.

    

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions





The following fourteen packages have had an update since the last newsletter: [sits](https://docs.ropensci.org/sits "Satellite Image Time Series Analysis for Earth Observation Data Cubes") ([`v1.5.3-1`](https://github.com/e-sensing/sits/releases/tag/v1.5.3-1)), [c14bazAAR](https://docs.ropensci.org/c14bazAAR "Download and Prepare C14 Dates from Different Source Databases") ([`5.2.0`](https://github.com/ropensci/c14bazAAR/releases/tag/5.2.0)), [comtradr](https://docs.ropensci.org/comtradr "Interface with the United Nations Comtrade API") ([`v1.0.4`](https://github.com/ropensci/comtradr/releases/tag/v1.0.4)), [dataspice](https://docs.ropensci.org/dataspice "Create Lightweight Schema.org Descriptions of Data") ([`v1.1.1`](https://github.com/ropensci/dataspice/releases/tag/v1.1.1)), [ghql](https://docs.ropensci.org/ghql "General Purpose GraphQL Client") ([`v0.1.2`](https://github.com/ropensci/ghql/releases/tag/v0.1.2)), [magick](https://docs.ropensci.org/magick "Advanced Graphics and Image-Processing in R") ([`v2.9.0`](https://github.com/ropensci/magick/releases/tag/v2.9.0)), [paleobioDB](https://docs.ropensci.org/paleobioDB "Download and Process Data from the Paleobiology Database") ([`v1.0.1`](https://github.com/ropensci/paleobioDB/releases/tag/v1.0.1)), [rgbif](https://docs.ropensci.org/rgbif "Interface to the Global Biodiversity Information Facility API") ([`v3.8.3`](https://github.com/ropensci/rgbif/releases/tag/v3.8.3)), [rinat](https://docs.ropensci.org/rinat "Access iNaturalist Data Through APIs") ([`v0.1.10`](https://github.com/ropensci/rinat/releases/tag/v0.1.10)), [rredlist](https://docs.ropensci.org/rredlist "IUCN Red List Client") ([`v1.1.1`](https://github.com/ropensci/rredlist/releases/tag/v1.1.1)), [rsvg](https://docs.ropensci.org/rsvg "Render SVG Images into PDF, PNG, (Encapsulated) PostScript, or Bitmap Arrays") ([`v2.7.0`](https://github.com/ropensci/rsvg/releases/tag/v2.7.0)), [spatsoc](https://docs.ropensci.org/spatsoc "Group Animal Relocation Data by Spatial and Temporal Relationship") ([`v0.2.10`](https://github.com/ropensci/spatsoc/releases/tag/v0.2.10)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.13.2`](https://github.com/ropensci/tarchetypes/releases/tag/0.13.2)), and [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.11.4`](https://github.com/ropensci/targets/releases/tag/1.11.4)).

## Software Peer Review



There are sixteen recently closed and active submissions and 4 submissions on hold. Issues are at different stages:

-   Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

    -   [rixpress](https://github.com/ropensci/software-review/issues/706), Build Reproducible Analytical Pipelines With Nix. Submitted by [Bruno Rodrigues](https://brodrigues.co).

    -   [SSARP](https://github.com/ropensci/software-review/issues/685), SSARP (Species-/Speciation-Area Relationship Projector). Submitted by [kmartinet](https://github.com/kmartinet).

-   One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%225/awaiting-reviewer(s)-response%22):

    -   [pkgmatch](https://github.com/ropensci/software-review/issues/671), Find R Packages Matching Either Descriptions or Other R Packages. Submitted by [mark padgham](https://mpadge.github.io).

-   Three at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

    -   [openFDA](https://github.com/ropensci/software-review/issues/714), openFDA API. Submitted by [Simon Parker](https://github.com/simpar1471).

    -   [mantis](https://github.com/ropensci/software-review/issues/710), Multiple Time Series Scanner. Submitted by [Phuong Quan](https://github.com/phuongquan).

    -   [galamm](https://github.com/ropensci/software-review/issues/615), Generalized Additive Latent and Mixed Models. Submitted by [Øystein Sørensen](https://osorensen.github.io/). (Stats).

-   Five at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

    -   [babelquarto](https://github.com/ropensci/software-review/issues/720), Renders a Multilingual Quarto Book. Submitted by [Maëlle Salmon](https://masalmon.eu/).

    -   [reviser](https://github.com/ropensci/software-review/issues/709), Tools for Studying Revision Properties in Real-Time Time Series Vintages. Submitted by [Marc Burri](https://marcburri.github.io/).

    -   [partialling.out](https://github.com/ropensci/software-review/issues/703), Residuals from partial regressions. Submitted by [Marc Bosch](https://github.com/marcboschmatas). (Stats).

    -   [distionary](https://github.com/ropensci/software-review/issues/688), Create and Evaluate Probability Distributions. Submitted by [Vincenzo Coia, Ph.D., P.Stat.](https://vincenzocoia.com).

    -   [read.abares](https://github.com/ropensci/software-review/issues/667), Provides simple downloading, parsing and importing of Australian Bureau of Agricultural and Resource Economics and Sciences (ABARES) data sources. Submitted by [Adam H. Sparks](https://adamhsparks.netlify.app/).

-   Five at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

    -   [rcrisp](https://github.com/ropensci/software-review/issues/718), Automate the Delineation of Urban River Spaces. Submitted by [Claudiu Forgaci](https://github.com/cforgaci). (Stats).

    -   [coevolve](https://github.com/ropensci/software-review/issues/717), Fit Bayesian Generalized Dynamic Phylogenetic Models using Stan. Submitted by [Scott Claessens](https://scottclaessens.github.io/). (Stats).

    -   [priorsense](https://github.com/ropensci/software-review/issues/704), Prior Diagnostics and Sensitivity Analysis. Submitted by [Noa Kallioinen](https://github.com/n-kall). (Stats).

    -   [SPARQLchunks](https://github.com/ropensci/software-review/issues/656), Run SPARQL Chunks and Inline Functions to Retrieve Data. Submitted by [André Ourednik](https://ourednik.info).

    -   [capybara](https://github.com/ropensci/software-review/issues/645), Fast and Memory Efficient Fitting of Linear Models With High-Dimensional. Submitted by [Mauricio "Pachá" Vargas Sepúlveda](https://pacha.dev).

        

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->







-   [rOpenSci Champions Second Cohort: Projects Wrap-Up](/blog/2025/09/02/champions-program-projects-cohort2) by Yanina Bellini Saibene. Our second cohort of Champions completed the program. In this blog post, we share each champion's projects, their achievements and outreach activities.

-   [From Surviving to Thriving: A Convening to Reclaim and Sustain Open Science Communities](/blog/2025/09/15/collaboration-communities) by Kari L. Jordan, Erin Becker, Daniela Saderi, Vanessa Fairhurst, Patricia Herterich, Noam Ross, Yanina Bellini Saibene, Leah Wasser, and Yo Yehudi. Five leading open science organizations --- The Carpentries, OLS, rOpenSci, pyOpenSci, and PREreview --- are coming together for a strategic convening, supported by The Navigation Fund, to address shared challenges of underfunding, fragmentation, and unsustainable volunteer models.

-   [All the Ways to Programmatically Edit or Parse R Markdown / Quarto Documents](/blog/2025/09/18/markdown-programmatic-parsing) by Maëlle Salmon, Christophe Dervieux, and Zhian N. Kamvar. Overview of programmatic ways to analyze and edit Markdown files: Markdown, R Markdown, Quarto, Hugo files, you name it. Other languages: <a href='/es/blog/2025/09/18/markdown-programatico' lang='es'>Todas las Formas de Editar o Analizar Programáticamente Documentos R Markdown / Quarto (es)</a>, <a href='/fr/blog/2025/09/18/markdown-programmatique' lang='fr'>Toutes les façons d'éditer ou d'analyser programmatiquement des documents R Markdown / Quarto (fr)</a>.

-   [A Gentle Introduction to Open Science](/blog/2025/09/23/gentle-openscience) by Steffi LaZerte. Steffi reviews a talk on open science. Don't forget that it takes courage; be kind to yourself. Other languages: <a href='/fr/blog/2025/09/23/gentle-openscience' lang='fr'>Une introduction en douceur à la science ouverte (fr)</a>.

### Tech Notes

-   [Help Us Design a New Git(Hub) Organizational Dashboard](/blog/2025/09/11/repometrics-call-help) by Mark Padgham.

-   [All the Ways to Programmatically Edit or Parse R Markdown / Quarto Documents](/blog/2025/09/18/markdown-programmatic-parsing) by Maëlle Salmon, Christophe Dervieux, and Zhian N. Kamvar. Overview of programmatic ways to analyze and edit Markdown files: Markdown, R Markdown, Quarto, Hugo files, you name it. Other languages: <a href='/es/blog/2025/09/18/markdown-programatico' lang='es'>Todas las Formas de Editar o Analizar Programáticamente Documentos R Markdown / Quarto (es)</a>, <a href='/fr/blog/2025/09/18/markdown-programmatique' lang='fr'>Toutes les façons d'éditer ou d'analyser programmatiquement des documents R Markdown / Quarto (fr)</a>.



## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

-   [USAboundaries](https://docs.ropensci.org/USAboundaries/) (and USAboundariesdata), historical and contemporary boundaries of the United States of America. [Issue for volunteering](https://github.com/ropensci/USAboundaries/issues/50).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### Are your function names unique?

Thanks to an idea from Egor Kotov, via <https://github.com/ropensci-review-tools/pkgcheck/issues/142>, the pkgcheck package now contains a stand-alone function to use during package development, to quickly check whether your function names are unique:

``` r
pkgcheck::fn_names_on_cran (c ("min", "max"))
#>            package version fn_name
#> 161627    matlab2r   1.1.0     max
#> 161628    matlab2r   1.1.0     min
#> 178817      mosaic   1.8.3     max
#> 178821      mosaic   1.8.3     min
#> 234203 rapportools     1.1     max
#> 234207 rapportools     1.1     min
```

### R-universe badge through usethis

The latest version of usethis includes a handy function [`use_r_universe_badge()`](https://usethis.r-lib.org/reference/badges.html) that indicates what version of your package is available on [R-universe](/r-universe).

### New testthat vignettes

The development version of the testthat package features [new vignettes](https://testthat.r-lib.org/dev/articles/index.html#testing-techniques) including an useful overview of ["Testing challenging functions"](https://testthat.r-lib.org/dev/articles/challenging-tests.html).

### AI newsletter by Posit

Posit's Sara Altman and Simon Couch started a [newsletter](https://posit.co/blog/2025-08-29-ai-newsletter/) about AI developments both within and outside of their company.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).





