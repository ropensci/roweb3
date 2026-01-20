---
slug: "news-january-2026"
title: rOpenSci News Digest, January 2026
author:
  - The rOpenSci Team
date: '2026-01-29'
tags:
  - newsletter
description: Open call for the rOpenSci Champions Program 2026, 2025 wrap-up, coworking, new package, package news
params:
  last_newsletter: '2025-12-18'
  doi: "10.59350/z8dpp-06623"
rmd_hash: 25a58f9d2b011e99

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2026/01/29/news-january-2026). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Open call for the rOpenSci Champions Program 2026!

We are pleased to announce the opening of a new call for applications for the **rOpenSci Champions Program in Spanish**, which will begin in 2026. We will be accepting applications beginning in **January 12, 2026** and until **February 20, 2026** for both the roles of **Champion** as well as **Mentor**.

As in the previous cohort, the 2026 program will be developed **entirely in Spanish** and will have a **regional focus on Latin America** with the objective of further strengthening the research and open science software in this region.

-   **Opening of the call:** Monday, January 12, 2026
-   [**Community Call: Research Software in Latin America** Wednesday, January 21, 2026. In Spanish](/es/commcalls/champions-latino-2026/)
-   [**Application Clinic:** Thursday, February 5, 2026](/events/clinica-champions-2026/)
-   **Closing date:** Friday, February 20, 2026

Read more, including links to application forms, in our [blog post](/blog/2026/01/12/programchamps2026/).

### 2025 wrap-up

Read our reflections on our work last year, and our plans for this year!

TODO ADD LINK

### Code of Conduct

TODO YANI

### Testing the R-universe build workflow from your own GitHub repository

We refactored the R-universe CI workflows to make it possible to run the exact same workflow from your own GitHub repository. This allows you to test or debug the build and check process on your R package, exactly as it will happen on R-universe, but without actually deploying to <https://r-universe.dev>.

Read more in our [tech note](/blog/2026/01/03/r-universe-workflows/) and in the \[R-universe docs\]TODO add link

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

-   Tuesday February 2nd, 9:00 Australia Western (01:00 UTC), ["Share your Positron setup!"](/events/coworking-2026-02/) with [Steffi LaZerte](/author/steffi-lazerte/) and cohost [Noam Ross](/author/noam-ross/).
    -   Setup Positron and explore extensions and custom settings;
    -   Meet community host, Noam Ross, share how you have set up Positron for your workflow and learn from others.
-   Thursday Feb 5, 2026 16:00 - 18:00 (UTC), [Clinica de Aplicación para el Programa de Campeon(e\|a)s de rOpenSci](/events/clinica-champions-2026/)

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

### New packages

<div class="highlight">

</div>

The following package recently became a part of our software suite:

<div class="highlight">

-   [read.abares](https://docs.ropensci.org/read.abares), developed by Adam H. Sparks: Download and import agricultural data from the Australian Bureau of Agricultural and Resource Economics and Sciences (ABARES) <https://www.agriculture.gov.au/abares> and Australian Bureau of Statistics (ABS) <https://www.abs.gov.au>. Data types serviced include spreadsheets, comma separated value (CSV) files, geospatial data including shape files and geotiffs covering topics including broadacre crops, livestock, soil data, commodities and more. Unifies field names and formats for data interoperability making analysis easier by standardising names between data formats. Also simplifies importing geospatial data as well as correcting issues in the geospatial data upon import. It has been [reviewed](https://github.com/ropensci/software-review/issues/667) by Nicholas Potter and María Paula Caldas.
    </div>

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions

<div class="highlight">

</div>

The following fourteen packages have had an update since the last newsletter: [sits](https://docs.ropensci.org/sits "Satellite Image Time Series Analysis for Earth Observation Data Cubes") ([`v1.5.4`](https://github.com/e-sensing/sits/releases/tag/v1.5.4)), [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (cff) Metadata for R Packages") ([`v1.2.1`](https://github.com/ropensci/cffr/releases/tag/v1.2.1)), [charlatan](https://docs.ropensci.org/charlatan "Make Fake Data") ([`v0.6.2`](https://github.com/ropensci/charlatan/releases/tag/v0.6.2)), [dataset](https://docs.ropensci.org/dataset "Create Data Frames for Exchange and Reuse") ([`0.4.2`](https://github.com/ropensci/dataset/releases/tag/0.4.2)), [dbparser](https://docs.ropensci.org/dbparser "Drugs Databases Parser") ([`v2.2.1`](https://github.com/ropensci/dbparser/releases/tag/v2.2.1)), [dittodb](https://docs.ropensci.org/dittodb "A Test Environment for Database Requests") ([`v0.1.10`](https://github.com/ropensci/dittodb/releases/tag/v0.1.10)), [EDIutils](https://docs.ropensci.org/EDIutils "An API Client for the Environmental Data Initiative Repository") ([`v2.0.0`](https://github.com/ropensci/EDIutils/releases/tag/v2.0.0)), [gutenbergr](https://docs.ropensci.org/gutenbergr "Download and Process Public Domain Works from Project Gutenberg") ([`v0.4.1`](https://github.com/ropensci/gutenbergr/releases/tag/v0.4.1)), [mantis](https://docs.ropensci.org/mantis "Multiple Time Series Scanner") ([`v1.0.1`](https://github.com/ropensci/mantis/releases/tag/v1.0.1)), [openalexR](https://docs.ropensci.org/openalexR "Getting Bibliographic Records from OpenAlex Database Using DSL API") ([`v3.0.1`](https://github.com/ropensci/openalexR/releases/tag/v3.0.1)), [rerddap](https://docs.ropensci.org/rerddap "General Purpose Client for ERDDAP™ Servers") ([`v1.2.2`](https://github.com/ropensci/rerddap/releases/tag/v1.2.2)), [rnaturalearth](https://docs.ropensci.org/rnaturalearth "World Map Data from Natural Earth") ([`v1.2.0`](https://github.com/ropensci/rnaturalearth/releases/tag/v1.2.0)), [rotl](https://docs.ropensci.org/rotl "Interface to the Open Tree of Life API") ([`v3.1.1`](https://github.com/ropensci/rotl/releases/tag/v3.1.1)), and [weathercan](https://docs.ropensci.org/weathercan "Download Weather Data from Environment and Climate Change Canada") ([`v0.7.8`](https://github.com/ropensci/weathercan/releases/tag/v0.7.8)).

## Software Peer Review

<div class="highlight">

There are fourteen recently closed and active submissions and 3 submissions on hold. Issues are at different stages:

-   One at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

    -   [read.abares](https://github.com/ropensci/software-review/issues/667), Provides simple downloading, parsing and importing of Australian Bureau of Agricultural and Resource Economics and Sciences (ABARES) data sources. Submitted by [Adam H. Sparks](https://adamhsparks.netlify.app/).

-   One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%225/awaiting-reviewer(s)-response%22):

    -   [pkgmatch](https://github.com/ropensci/software-review/issues/671), Find R Packages Matching Either Descriptions or Other R Packages. Submitted by [mark padgham](https://mpadge.github.io).

-   Four at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

    -   [suwo](https://github.com/ropensci/software-review/issues/729), Access Nature Media Repositories Through R. Submitted by [Marcelo Araya-Salas](https://marce10.github.io/).

    -   [cowfootR](https://github.com/ropensci/software-review/issues/724), Tools to Estimate the Carbon Footprint of Dairy Farms. Submitted by [Juan Moreno](https://github.com/juanmarcosmoreno-arch).

    -   [openFDA](https://github.com/ropensci/software-review/issues/714), openFDA API. Submitted by [Simon Parker](https://github.com/simpar1471).

    -   [galamm](https://github.com/ropensci/software-review/issues/615), Generalized Additive Latent and Mixed Models. Submitted by [Øystein Sørensen](https://osorensen.github.io/). (Stats).

-   Four at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

    -   [ernest](https://github.com/ropensci/software-review/issues/730), A Toolkit for Nested Sampling. Submitted by [Kyle Dewsnap](https://github.com/kylesnap). (Stats).

    -   [Athlytics](https://github.com/ropensci/software-review/issues/728), Academic R Package for Sports Physiology Analysis from Local Strava Data. Submitted by [Ang](https://github.com/HzaCode).

    -   [rcrisp](https://github.com/ropensci/software-review/issues/718), Automate the Delineation of Urban River Spaces. Submitted by [Claudiu Forgaci](https://github.com/cforgaci). (Stats).

    -   [reviser](https://github.com/ropensci/software-review/issues/709), Tools for Studying Revision Properties in Real-Time Time Series Vintages. Submitted by [Marc Burri](https://marcburri.github.io/).

-   Four at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

    -   [ActiGlobe](https://github.com/ropensci/software-review/issues/732), Wearable Recording Processor for Time Shift Adjustment and Data Analysis. Submitted by [C. William Yao](https://scholar.google.ca/citations?user=T7y9ckwAAAAJ&hl=en).

    -   [coevolve](https://github.com/ropensci/software-review/issues/717), Fit Bayesian Generalized Dynamic Phylogenetic Models using Stan. Submitted by [Scott Claessens](https://scottclaessens.github.io/). (Stats).

    -   [priorsense](https://github.com/ropensci/software-review/issues/704), Prior Diagnostics and Sensitivity Analysis. Submitted by [Noa Kallioinen](https://github.com/n-kall). (Stats).

    -   [capybara](https://github.com/ropensci/software-review/issues/645), Fast and Memory Efficient Fitting of Linear Models With High-Dimensional. Submitted by [Mauricio "Pachá" Vargas Sepúlveda](https://pacha.dev).

        </div>

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->

<div class="highlight">

</div>

<div class="highlight">

-   [Testing the R-universe build workflow from your own GitHub repository](/blog/2026/01/03/r-universe-workflows) by Jeroen Ooms. We refactored the R-universe CI workflows to make it possible to run the exact same workflow from your own GitHub repository.

-   [rOpenSci 2025 Code of Conduct Transparency Report](/blog/2026/01/06/transparencyCoC2025) by Yanina Bellini Saibene, Natalia Morandeira, and Mark Padgham. rOpenSci 2025 Code of Conduct Transparency Report. Other languages: <a href='/es/blog/2026/01/06/transparenciaCoC2025' lang='es'>Reporte de Transparencia del Código de Conducta de rOpenSci 2025 (es)</a>.

-   [rOpenSci Code of Conduct Annual Review](/blog/2026/01/07/conduct2025) by Yanina Bellini Saibene, Natalia Morandeira, and Mark Padgham. Updates for version 2.5 of rOpenSci's Code of Conduct. Other languages: <a href='/es/blog/2026/01/07/conducta2025' lang='es'>Revisión anual del código de conducta de rOpenSci (es)</a>.

-   [Open call for the rOpenSci Champions Program 2026!](/blog/2026/01/12/programchamps2026) by Yanina Bellini Saibene. You can now apply to participate in the 2026 Champions Program. We are looking for people to participate in mentoring roles and to become Champions. Other languages: <a href='/es/blog/2026/01/12/programachamps2026' lang='es'>Convocatoria abierta al Programa de Campeonas y Campeones de rOpenSci 2026 (es)</a>.

### Tech Notes

-   [Code Hosting Options Beyond GitHub](/blog/2025/12/17/beyond-github) by Mark Padgham and Steffi LaZerte. How to manage and mirror code repositories across different platforms.

</div>

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

-   [hddtools](https://docs.ropensci.org/hddtools), Tools to discover hydrological data, accessing catalogues and databases from various data providers. [Issue for volunteering](https://github.com/ropensci/hddtools/issues/36).

-   [mregions2](https://docs.ropensci.org/mregions2/), streamlined interface to access data from Marine Regions in R for researchers, marine scientists, and geospatial analysts seeking marine geographical information. [Issue for volunteering](https://github.com/ropensci/mregions2/issues/30).

-   [qualtRics](https://docs.ropensci.org/qualtRics/), download Qualtrics survey data. [Issue for volunteering](https://github.com/ropensci/qualtRics/issues/383).

-   [photosearcher](https://docs.ropensci.org/photosearcher), searches Flickr for photographs and metadata. [Issue for volunteering](https://github.com/ropensci/photosearcher/issues/22).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### Recap from an advent calendar about package development

Athanasia Monika Mowinckel has been curating an Advent Calendar about R Package Development. Read the full recap of all the tips on her [blog](https://drmowinckels.io/blog/2025/rpackage-dev-calendar/).

### Good news for R: "Enabling the Next Generation of Contributors to R"

Read Heather Turner's [blog post](https://blog.r-project.org/2025/12/17/rsmf-enabling-the-next-generation-of-contributors-to-r/) on the funding attributed to the project "Enabling the Next Generation of Contributors to R". The team (Heather Turner, Ella Kaye, Simon Urbanek, Peter Dalgaard, Gabe Becker, Kylie Bemis, Mikael Jagan, Jeroen Ooms) will focus on addressing "the challenge of sustaining the R Project".

### Dynamic content in Rd files

As [noted by Elio Campitelli](https://github.com/eliocamp/rhelpi18n/issues/25),

> Documentation can have code that is run dynamically either at install, build or render time

An example can be found in [dplyr](https://github.com/cran/dplyr/blob/99a15aec2a93face9b9006db166bd5b0f9ce37d0/R/pull.R#L19) where code lists relevant methods present in loaded package. That code is run when the user loads the help page (render time).

Other examples for [render](https://github.com/search?q=owner%3Acran+Sexpr%5Bstage%3Drender&type=code), [install](https://github.com/search?q=owner%3Acran+Sexpr%5Bstage%3Dinstall&type=code) and [build](https://github.com/search?q=owner%3Acran+Sexpr%5Bstage%3Dbuild&type=code).

### On issues and PRs

The ghostty project was recently featured on [Hacker News](https://news.ycombinator.com/item?id=46460319) for its [issue tracker policy](https://github.com/ghostty-org/ghostty/issues/3558). The process is to have users open a discussion using GitHub Discussions, then to convert the discussion to an issue if relevant.

> "This approach is based on years of experience maintaining open source projects and observing that 80-90% of what users think are bugs are either misunderstandings, environmental problems, or configuration errors by the users themselves. For what's left, the majority are often feature requests (unimplemented features) and not bugs (malfunctioning features). Of the features requests, almost all are underspecified and require more guidance by a maintainer to be worked on."

The tldraw project announced that they no longer [accept PRs from external contributors](https://github.com/tldraw/tldraw/issues/7695). In this case, the motivation is to not waste precious developers' time on AI slop.

> "Like many other open-source projects on GitHub, we've recently seen a significant increase in contributions generated entirely by AI tools. While some of these pull requests are formally correct, most suffer from incomplete or misleading context, misunderstanding of the codebase, and little to no follow-up engagement from their authors."

### New JOSS policy on AI

Read about the Journal of Open Source Software updated its [submission requirements](https://blog.joss.theoj.org/2026/01/preparing-joss-for-a-generative-ai-future) to adapt JOSS for a world with heavy AI use for software development.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).

</div>

</div>

