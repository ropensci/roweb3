---
slug: "news-april-2025"
title: rOpenSci News Digest, April 2025
author:
  - The rOpenSci Team
date: '2025-04-28'
tags:
  - newsletter
description: Career Paths for U.S. Federal Data Scientists, Website in Spanish
params:
  last_newsletter: '2025-03-27'
  doi: "10.59350/a6syn-6hc72"
rmd_hash: ddc1838bc682dda6

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2025/04/28/news-april-2025). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Event: Career Paths for U.S. Federal Data Scientists

rOpenSci and Openscapes are lucky to have as members many U.S. federal employees who enrich our work and community. In a time of great uncertainty for so many government workers, we want to support our members who are considering their next career steps.

Join us on Tuesday, May 6 at 8:30PM EDT for a discussion and networking event for and with current and former U.S. federal government data scientists.

[More information](/events/datasci-careers-feds/).

### rOpenSci Champions Program 2025 In Spanish: Apply before April 30th!

Reminder: The call for applications to be part of the new cohort of our 2025 Program is open until April 30th! For the first time it will be in Spanish.

Find out more in our [call for applications](/blog/2025/03/10/champeons-latin-america/). It will be open until **Wednesday, April 30, 2025**.

### rOpenSci in the News

Our community manager Yanina Bellini Saibene was also interviewed in *Nature*, for the article ["Which programming language should I use? A guide for early-career researchers"](https://archive.ph/cvGwW)

> "The user community is also a key consideration --- Saibene says that's one of the things she loves most about R. The language's large, welcoming and engaged user community means that tools are developed and updated frequently; that local user groups exist around the world; and that tutorials and other resources are available in many spoken languages, including her native Spanish."

Our executive director Noam Ross was interviewed for the *Nature* article ["Stay safe from online hate with these five tips"](https://archive.ph/pIZpx). For more on this topic, we recommend this 2021 paper by Danielle Smalls and Greg Wilson: ["Ten quick tips for staying safe online"](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1008563).

### More Languages, More Access: Discover rOpenSci in Spanish

We're excited to share that our website has more content than ever available in Spanish! We started with our [Dev Guide](https://devguide.ropensci.org/es/index.es.html) and some of our blog posts. Now you'll also find key pages, information about projects and programs, documentation, and community resources in [Spanish](/es/). This milestone reflects our ongoing commitment to making open science more inclusive and accessible to Spanish-speaking communities worldwide. We are grateful to all the community members who contribute to our translation and localization efforts.

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

-   Tuesday May 6th 9:00 Australia Western (01:00 UTC), ["Writing functions in R"](/events/coworking-2025-05/) with [Steffi LaZerte](/author/steffi-lazerte/) and cohost [Nicholas Tierney](/author/nicholas-tierney/).
    -   Write some functions;
    -   Explore new or interesting ways of writing functions in R.

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

### New packages

<div class="highlight">

</div>

The following two packages recently became a part of our software suite:

<div class='highlight'>

-   [gtexr](https://docs.ropensci.org/gtexr), developed by Alasdair Warwick together with Benjamin Zuckerman, Abraham Olvera-Barrios, Chuin Ying Ung, and Robert Luben: A convenient R interface to the Genotype-Tissue Expression (GTEx) Portal API. The GTEx project is a comprehensive public resource for studying tissue-specific gene expression and regulation in human tissues. Through systematic analysis of RNA sequencing data from 54 non-diseased tissue sites across nearly 1000 individuals, GTEx provides crucial insights into the relationship between genetic variation and gene expression. This data is accessible through the GTEx Portal API enabling programmatic access to human gene expression data. For more information on the API, see <https://gtexportal.org/api/v2/redoc>. It is available on [CRAN](https://CRAN.R-project.org/package=gtexr). It has been [reviewed](https://github.com/ropensci/software-review/issues/684) by Zhian N. Kamvar and Ernest Guevarra.

-   [c3dr](https://docs.ropensci.org/c3dr), developed by Simon Nolte: A wrapper for the 'EZC3D' library to work with C3D motion capture data. It has been [reviewed](https://github.com/ropensci/software-review/issues/686) by Aymeric Stamm and July Pilowsky.

    </div>

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions

<div class="highlight">

</div>

The following sixteen packages have had an update since the last newsletter: [butterfly](https://docs.ropensci.org/butterfly "Verification for Continually Updating Time Series Data") ([`1.1.2`](https://github.com/ropensci/butterfly/releases/tag/1.1.2)), [c3dr](https://docs.ropensci.org/c3dr "Read and Write C3D Motion Capture Files") ([`v0.1.1`](https://github.com/ropensci/c3dr/releases/tag/v0.1.1)), [FedData](https://docs.ropensci.org/FedData "Download Geospatial Data Available from Several Federated Data Sources") ([`v4.3.0`](https://github.com/ropensci/FedData/releases/tag/v4.3.0)), [git2r](https://docs.ropensci.org/git2r "Provides Access to Git Repositories") ([`v0.36.2`](https://github.com/ropensci/git2r/releases/tag/v0.36.2)), [gtexr](https://docs.ropensci.org/gtexr "Query the GTEx Portal API") ([`v0.2.0`](https://github.com/ropensci/gtexr/releases/tag/v0.2.0)), [ijtiff](https://docs.ropensci.org/ijtiff "Comprehensive TIFF I/O with Full Support for ImageJ TIFF Files") ([`v3.1.3`](https://github.com/ropensci/ijtiff/releases/tag/v3.1.3)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.12.0`](https://github.com/ropensci/nodbi/releases/tag/v0.12.0)), [osmapiR](https://docs.ropensci.org/osmapiR "OpenStreetMap API") ([`v0.2.3`](https://github.com/ropensci/osmapiR/releases/tag/v0.2.3)), [osmextract](https://docs.ropensci.org/osmextract "Download and Import Open Street Map Data Extracts") ([`v0.5.3`](https://github.com/ropensci/osmextract/releases/tag/v0.5.3)), [pangoling](https://docs.ropensci.org/pangoling "Access to Large Language Model Predictions") ([`v1.0.3`](https://github.com/ropensci/pangoling/releases/tag/v1.0.3)), [rb3](https://docs.ropensci.org/rb3 "Download and Parse Public Data Released by B3 Exchange") ([`v0.0.12`](https://github.com/ropensci/rb3/releases/tag/v0.0.12)), [stplanr](https://docs.ropensci.org/stplanr "Sustainable Transport Planning") ([`overlapping_segments_in_overline`](https://github.com/ropensci/stplanr/releases/tag/overlapping_segments_in_overline)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.13.0`](https://github.com/ropensci/tarchetypes/releases/tag/0.13.0)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.11.2`](https://github.com/ropensci/targets/releases/tag/1.11.2)), [waywiser](https://docs.ropensci.org/waywiser "Ergonomic Methods for Assessing Spatial Models") ([`v0.6.3`](https://github.com/ropensci/waywiser/releases/tag/v0.6.3)), and [weatherOz](https://docs.ropensci.org/weatherOz "An API Client for Australian Weather and Climate Data Resources") ([`v2.0.1`](https://github.com/ropensci/weatherOz/releases/tag/v2.0.1)).

## Software Peer Review

<div class='highlight'>

There are twelve recently closed and active submissions and 5 submissions on hold. Issues are at different stages:

-   Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

    -   [c3dr](https://github.com/ropensci/software-review/issues/686), Read and Write C3D Motion Capture Files. Submitted by [Simon Nolte](https://github.com/smnnlt).

    -   [gtexr](https://github.com/ropensci/software-review/issues/684), Query the GTEx Portal API. Submitted by [Alasdair Warwick](https://github.com/rmgpanw).

-   Two at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

    -   [pkgmatch](https://github.com/ropensci/software-review/issues/671), Find R Packages Matching Either Descriptions or Other R Packages. Submitted by [mark padgham](https://mpadge.github.io).

    -   [forcis](https://github.com/ropensci/software-review/issues/660), An R Client to Access the FORCIS Database. Submitted by [Nicolas Casajus](https://nicolascasajus.fr).

-   Two at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

    -   [sits](https://github.com/ropensci/software-review/issues/596), Satellite Image Time Series Analysis for Earth Observation Data Cubes. Submitted by [Gilberto Camara](https://www.gilbertocamara.org).

    -   [fwildclusterboot](https://github.com/ropensci/software-review/issues/546), Fast Wild Cluster Bootstrap Inference for Linear Models. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/). (Stats).

-   Three at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%222/seeking-reviewer(s)%22):

    -   [sasquatch](https://github.com/ropensci/software-review/issues/673), Use SAS, R, and quarto Together. Submitted by [Ryan Zomorrodi](http://ryanzomorrodi.github.io).

    -   [galamm](https://github.com/ropensci/software-review/issues/615), Generalized Additive Latent and Mixed Models. Submitted by [Øystein Sørensen](https://osorensen.github.io/). (Stats).

    -   [sasquatch](https://github.com/ropensci/software-review/issues/673), Use SAS, R, and quarto Together. Submitted by [Ryan Zomorrodi](http://ryanzomorrodi.github.io).

-   Three at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

    -   [SSARP](https://github.com/ropensci/software-review/issues/685), SSARP (Species-/Speciation-Area Relationship Projector). Submitted by [kmartinet](https://github.com/kmartinet).

    -   [read.abares](https://github.com/ropensci/software-review/issues/667), Provides simple downloading, parsing and importing of Australian. Submitted by [Adam H. Sparks](https://adamhsparks.netlify.app/).

    -   [capybara](https://github.com/ropensci/software-review/issues/645), Fast and Memory Efficient Fitting of Linear Models With High-Dimensional. Submitted by [Mauricio "Pachá" Vargas Sepúlveda](https://pacha.dev).

        </div>

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->

<div class="highlight">

</div>

<div class="highlight">

### Software Review

-   [eDNAjoint: a Modeling Tool for Environmental DNA Data](/blog/2025/04/10/ednajoint-a-modeling-tool-for-environmental-dna-data) by Abby Keller. A look at the new eDNAjoint package for joint modelling of eDNA and traditional species survey methods.

{{< figure src="eDNAjoint_logo.png" alt="eDNAjoint logo." width="400" >}}


-   [Punto de partida: primera *'Conversaciones con la Comunidad'* del programa de Campeon(a\|e)s en español](/es/blog/2025/04/03/commcall-programa-2025) by Yanina Bellini Saibene. En esta primera Conversaciones con la Comunidad del programa de Campeon(a\|e)s en español, compartimos las experiencias de participantes latinoamericanos del programa.

-   [Supporting rOpenSci Mentors with Practical Tools](/blog/2025/04/08/mentoring-tools) by Yanina Bellini Saibene. rOpenSci has developed a set of resources to support mentors in the Champions Program. In this post, we'll walk you through what we've created and show how these resources can support your mentoring as well ---whether you're part of rOpenSci or mentoring in another context. Other languages: <a href='/es/blog/2025/04/08/mentoring-tools' lang='es'>Apoyar a los mentores y mentoras de rOpenSci con herramientas prácticas (es)</a>.

</div>

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

-   [photosearcher](https://docs.ropensci.org/photosearcher/), Searches Flickr for photographs and metadata. [Issue for volunteering](https://github.com/ropensci/photosearcher/issues/21).

-   [MODIStsp](https://docs.ropensci.org/MODIStsp/), automatic download and preprocessing of MODIS Land Products Time Series. [Issue for volunteering](https://github.com/ropensci/MODIStsp/issues/262).

-   [hddtools](https://docs.ropensci.org/hddtools/), Hydrological Data Discovery Tools. [Issue for volunteering](https://github.com/ropensci/hddtools/issues/36).

-   [USAboundaries](https://docs.ropensci.org/USAboundaries/) (and USAboundariesdata), historical and contemporary boundaries of the United States of America . [Issue for volunteering](https://github.com/ropensci/USAboundaries/issues/50).

-   [historydata](https://docs.ropensci.org/historydata/), datasets for historians. [Issue for volunteering](https://github.com/ropensci/historydata/issues/23).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### Eleven quick tips for writing a Bioconductor package

If you are planning to publish your package with Bioconductor, do not miss this [paper](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1012856) by Charlotte Soneson and collaborators.

### Dump all package information into one file for LLMs

With the [rdocdump](https://www.ekotov.pro/rdocdump/) package by Egor Kotov, you can generate a single file containing the source code, documentation and vignettes of an R package. You can then use the file for ingestion into a Large Language Model (LLM).

### plumber2

If you use the plumber package to publish your code as an API, you'll be interested in its successor, [plumber2](https://posit-dev.github.io/plumber2/) by Thomas Lin Pedersen.

### Use a nested folder structure for your package

If you dream of using nested folders for storing the R code of an package, try out the experimental [dir](https://github.com/cynkra/dir) package by Antoine Fabri.

### Minimal type guessing

Did you know about [minty](https://gesistsa.github.io/minty/), an R package by Chung-hong Chan that shares the type inferencing and parsing tools used by the original readr package prior to 2021? It can be handy for your parsing needs.

### Visualising R Package Risk Assessments using Litmus

An interesting [post and dashboard](https://www.jumpingrivers.com/blog/litmus-dashboard/) by Pedro Silva, Astrid Radermacher & Colin Gillespie to assess the risk of packages.

### CI: Pin the R version if using renv

A good tip by Christophe Dervieux in our [Slack workspace](https://contributing.ropensci.org/resources.html#channels): If you use renv to freeze dependencies in continuous integration, you should pin the R version to what's been used to build the renv's lockfile. This lets you update (and check) everything at once: the R versions and package versions.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).

