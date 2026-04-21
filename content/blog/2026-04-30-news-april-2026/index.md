---
slug: "news-april-2026"
title: rOpenSci News Digest, April 2026
author:
  - The rOpenSci Team
date: '2026-04-30'
tags:
  - newsletter
description: Bioconductor collaboration, R/Medecine, goodpractice, targets VSCode extension, new packages and package news
params:
  last_newsletter: '2026-03-30'
  doi: "10.59350/4qpnx-96e10"
rmd_hash: 274cf8086df462a5

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2026/04/30/news-april-2026). Now let's dive into the activity at and around rOpenSci!

## Tomáš Kalibera (1978--2026)

The rOpenSci team is deeply saddened at the loss of Tomáš Kalibera, a member of R-Core and contributor to the R community for almost 10 years, who passed away on April 1.  Our thoughts are with Tomáš's friends and family at this time. 

Read [Jan Vitek's remembrance of Tomáš](https://prl-prg.github.io/tomas-kalibera.html).

## rOpenSci HQ

### New editors Alec Robitaille and Lucy D'Agostino McGowan

We're excited to welcome Alec Robitaille and Lucy D'Agostino McGowan as new editors. Alec joins our general review team, and Lucy our statistical software review team. Read more in the [post introducing them](/blog/2026/04/16/editors2026/)!

### Champions Program Update

TODO YANI?

### Collaborating between Bioconductor and R-universe on Development of Common Infrastructure

Bioconductor is collaborating with R-universe to gradually modernize parts of its infrastructure, while accommodating the project's scale, governance, and established processes. In turn, Bioconductor is helping R-universe expand and refine its features as we learn to serve the complex needs of the Bioconductor community. Read more in the [blog post](/blog/2026/04/08/r-universe-bioc/).

### Yanina Bellini Saibene at R/Medicine 2026

Yanina Bellini Saibene will deliver her keynote talk ["Software Sustainability and Community Management"](/events/r-medicine-2026-keynote/) on Thursday May 7th, 11:15AM--12:15PM ET.

### Jeroen Ooms at "Where Do R Packages Live?"

Jeroen Ooms will take part in an online discussion panel on Wednesday 20 May at 5:00 PM - 6:00 PM (AEST). The panel is organized by the Statistical Computing and Visualisation section of the Statistical Society of Australia.

[More details](https://statsoc.org.au/event-6653060).

### Updates to the goodpractice R package

We have long recommended the [goodpractice package](https://docs.ropensci.org/goodpractice), which identifies issues with R packages, and advises how to fix them. Thanks to a huge amount of work by valued community member [Athanasia Mo Mowinckel](/author/athanasia-mo-mowinckel/), goodpractice has been extended and improved to include entirely new suites of checks, and improved ability to control which checks are run. A blog post describing the updates will be published very soon, but in the meantime, we encourage you to install the current [development version](https://docs.ropensci.org/goodpractice/#installation) and try it out yourself.

### Analyse your targets pipeline

Following our [blog post about tree-sitter](/blog/2026/04/02/tree-sitter-overview/), Tyler Morgan Wall was [inspired](https://news.ycombinator.com/item?id=47801899) to create a [static analysis tool for targets pipelines (as a VS Code extension)](https://github.com/tylermorganwall/tarborist).

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

-   Tuesday May 5th 2026, 9:00 Australia Western (01:00 UTC) ["Code Review with rOpenSci"](/events/coworking-2026-05/) with [Steffi LaZerte](/author/steffi-lazerte/) and cohost [Liz Hare](/author/liz-hare/).
    -   Explore resources for Code Review
    -   Sign up to volunteer to do [software peer-review](https://airtable.com/app8dssb6a7PG6Vwj/shrnfDI2S9uuyxtDw) at rOpenSci
    -   Meet cohost, Liz Hare, and discuss resources for Code Review with rOpenSci.

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

### New packages

<div class="highlight">

</div>

The following package recently became a part of our software suite:

<div class="highlight">

-   [reviser](https://docs.ropensci.org/reviser), developed by Marc Burri together with Philipp Wegmueller: Analyzes revisions in real-time time series vintages. The package converts between wide revision triangles and tidy long vintages, extracts selected releases, computes revision series, visualizes vintage paths, and summarizes revision properties such as bias, dispersion, autocorrelation, and news-noise diagnostics. It also identifies efficient releases and estimates state-space models for revision nowcasting. Methods are based on Howrey (1978) <https://doi.org/10.2307/1924972>, Jacobs and Van Norden (2011) <https://doi.org/10.1016/j.jeconom.2010.04.010>, and Kishor and Koenig (2012) <https://doi.org/10.1198/jbes.2010.08169>. It has been [reviewed](https://github.com/ropensci/software-review/issues/709).
    </div>

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions

<div class="highlight">

</div>

The following eight packages have had an update since the last newsletter: [osmextract](https://docs.ropensci.org/osmextract "Download and Import Open Street Map Data Extracts") ([`v0.6.0`](https://github.com/ropensci/osmextract/releases/tag/v0.6.0)), [fellingdater](https://docs.ropensci.org/fellingdater "Tree-ring dating and estimating felling dates of historical timbers") ([`v1.2.1`](https://github.com/ropensci/fellingdater/releases/tag/v1.2.1)), [readODS](https://docs.ropensci.org/readODS "Read and Write ODS Files") ([`v2.3.5`](https://github.com/ropensci/readODS/releases/tag/v2.3.5)), [git2rdata](https://docs.ropensci.org/git2rdata "Store and Retrieve Data.frames in a Git Repository") ([`v0.5.2`](https://github.com/ropensci/git2rdata/releases/tag/v0.5.2)), [weatherOz](https://docs.ropensci.org/weatherOz "An API Client for Australian Weather and Climate Data Resources") ([`v3.0.0`](https://github.com/ropensci/weatherOz/releases/tag/v3.0.0)), [promoutils](https://docs.ropensci.org/promoutils "Utilities for Promoting rOpenSci on Social Media") ([`v0.5.0`](https://github.com/ropensci-org/promoutils/releases/tag/v0.5.0)), [allcontributors](https://docs.ropensci.org/allcontributors "Acknowledge all Contributors to a Project") ([`v0.2.3`](https://github.com/ropensci/allcontributors/releases/tag/v0.2.3)), and [reviser](https://docs.ropensci.org/reviser "Analyzing Revisions in Real-Time Time Series Vintages") ([`v0.1.1`](https://github.com/ropensci/reviser/releases/tag/v0.1.1)).

The writexl package has a [new maintainer](https://github.com/ropensci/writexl/pull/98#issuecomment-4191858158), Bill Denney. NLMR is now maintained by [Jakub Nowosad](https://github.com/ropensci/NLMR/issues/116#issuecomment-4280937012).

## Software Peer Review

<div class="highlight">

There are seventeen recently closed and active submissions and 4 submissions on hold. Issues are at different stages:

-   One at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

    -   [reviser](https://github.com/ropensci/software-review/issues/709), Tools for Studying Revision Properties in Real-Time Time Series Vintages. Submitted by [Marc Burri](https://marcburri.github.io/).

-   One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%225/awaiting-reviewer(s)-response%22):

    -   [pkgmatch](https://github.com/ropensci/software-review/issues/671), Find R Packages Matching Either Descriptions or Other R Packages. Submitted by [mark padgham](https://mpadge.github.io).

-   Four at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

    -   [pvEBayes](https://github.com/ropensci/software-review/issues/760), Empirical Bayes Methods for Pharmacovigilance. Submitted by [Yihao Tan](https://github.com/YihaoTancn). (Stats).

    -   [logolink](https://github.com/ropensci/software-review/issues/741), An Interface for Running NetLogo Simulations. Submitted by [Daniel Vartanian](http://danielvartan.com).

    -   [ActiGlobe](https://github.com/ropensci/software-review/issues/732), Wearable Recording Processor for Time Shift Adjustment and Data Analysis. Submitted by [C. William Yao](https://scholar.google.ca/citations?user=T7y9ckwAAAAJ&hl=en).

    -   [galamm](https://github.com/ropensci/software-review/issues/615), Generalized Additive Latent and Mixed Models. Submitted by [Øystein Sørensen](https://osorensen.github.io/). (Stats).

-   Five at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

    -   [saperlipopette](https://github.com/ropensci/software-review/issues/754), Create Example Git Messes. Submitted by [Maëlle Salmon](https://masalmon.eu/).

    -   [nycOpenData](https://github.com/ropensci/software-review/issues/750), Convenient Access to NYC Open Data API Endpoints. Submitted by [Christian Martinez](https://github.com/martinezc1).

    -   [ernest](https://github.com/ropensci/software-review/issues/730), A Toolkit for Nested Sampling. Submitted by [Kyle Dewsnap](https://github.com/kylesnap). (Stats).

    -   [rcrisp](https://github.com/ropensci/software-review/issues/718), Automate the Delineation of Urban River Spaces. Submitted by [Claudiu Forgaci](https://github.com/cforgaci). (Stats).

    -   [priorsense](https://github.com/ropensci/software-review/issues/704), Prior Diagnostics and Sensitivity Analysis. Submitted by [Noa Kallioinen](https://github.com/n-kall). (Stats).

-   Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%222/seeking-reviewer(s)%22):

    -   [RAMEN](https://github.com/ropensci/software-review/issues/743), RAMEN: Regional Association of Methylome variability with the Exposome and geNome. Submitted by [Erick Navarro-Delgado](https://erick-navarrodelgado.netlify.app).

    -   [fcmconfr](https://github.com/ropensci/software-review/issues/740), Fuzzy Cognitive Map Analysis in R. Submitted by [benroston](https://github.com/bhroston). (Stats).

-   Four at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

    -   [EpiStrainDynamics](https://github.com/ropensci/software-review/issues/763), Infer temporal trends of multiple pathogens. Submitted by [Saras Windecker](http://www.smwindecker.com).

    -   [lakefetch](https://github.com/ropensci/software-review/issues/762), Calculate Fetch and Wave Exposure for Lake Sampling Points. Submitted by [jeremylfarrell](https://github.com/jeremylfarrell).

    -   [RAQSAPI](https://github.com/ropensci/software-review/issues/744), A Simple Interface to the US EPA Air Quality System Data Mart API. Submitted by [mccroweyclinton-EPA](https://github.com/mccroweyclinton-EPA).

    -   [coevolve](https://github.com/ropensci/software-review/issues/717), Fit Bayesian Generalized Dynamic Phylogenetic Models using Stan. Submitted by [Scott Claessens](https://scottclaessens.github.io/). (Stats).

        </div>

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->

<div class="highlight">

</div>

<div class="highlight">

### Software Review

-   [reviser: Analyzing Real-Time Data Revisions in R](/blog/2026/04/13/reviser) by Marc Burri. A short introduction to reviser for analyzing real-time data vintages and revisions in R.

-   [Expanding the Editorial Team: Alec Robitaille and Lucy D'Agostino McGowan Join as Editors](/blog/2026/04/16/editors2026) by Alec Robitaille, Lucy D'Agostino McGowan, and Yanina Bellini Saibene. Introducing two new editors for rOpenSci statistical software peer review.

-   [Collaborating between Bioconductor and R-universe on Development of Common Infrastructure](/blog/2026/04/08/r-universe-bioc) by The rOpenSci Team and The Bioconductor Team. R-consortium ISC top-level project R-universe is working with Bioconductor to help gradually modernize parts of its infrastructure, while accommodating the project's scale, governance, and established processes.

### Tech Notes

-   [A Better R Programming Experience Thanks to Tree-sitter](/blog/2026/04/02/tree-sitter-overview) by Maëlle Salmon. Modern tooling for parsing, searching, formatting, editing R code, just like for other programming languages.

</div>

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

-   [landscapetools](https://docs.ropensci.org/landscapetools), R package for some of the less-glamorous tasks involved in landscape analysis. [Issue for volunteering](https://github.com/ropensci/landscapetools/issues/48).

-   [hddtools](https://docs.ropensci.org/hddtools), Tools to discover hydrological data, accessing catalogues and databases from various data providers. [Issue for volunteering](https://github.com/ropensci/hddtools/issues/36).

-   [qualtRics](https://docs.ropensci.org/qualtRics/), download Qualtrics survey data. [Issue for volunteering](https://github.com/ropensci/qualtRics/issues/383).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful information for R package developers. :eyes:

### Useless code, duplicated function? Refactoring with Jarl

The Jarl CLI by Étienne Bacher got useful new features for package developers:

-   [`unused_function`](https://jarl.etiennebacher.com/rules/unused_function)
-   [`duplicated_function_definition`](https://jarl.etiennebacher.com/rules/duplicated_function_definition).

They are a nice complement to [`unreachable_code`](https://jarl.etiennebacher.com/rules/unreachable_code).

Read more in the [release announcement](https://www.etiennebacher.com/posts/2026-03-23-jarl-0.5.0/#other-features-for-package-developers).

### Git commands to get to know a project

Ally Piechowski wrote an insightful post entitled ["The Git Commands I Run Before Reading Any Code"](https://piechowski.io/post/git-commands-before-reading-code/), for instance a command to determine which files recently changed the most!

Garrick Aden-Buie wrote ["a little `git-recon` bash script that runs them in series, complete with some ascii bar plots."](https://gist.github.com/gadenbuie/463ff1e9f3b0f48cddc44db2224d286b).

### Another R mailing list archive

Last month we listed several ways to [browse the R mailing lists](/blog/2026/03/30/news-mars-2026/#how-to-browse-the-r-mailing-lists). Newsletter reader Florian Kohrt kindly wrote to us to mention the [plain text backup](https://github.com/MichaelChirico/r-mailing-list-archive) maintained by Michael Chirico.

### Will R run out of random seeds? Useful seed explainer

Andrew Heiss published an useful and interesting deep dive into [random seeds](https://www.andrewheiss.com/blog/2026/04/13/seeds-predetermined-universes/).

### Enforcing the coalesce operator

If you enjoy the coalesce operator `%||%` introduced in [R 4.4.0](https://cran.r-project.org/bin/windows/base/old/4.4.0/NEWS.R-4.4.0.html)

> `L %||% R` newly in base is an expressive idiom for the phrases `if(!is.null(L)) L else R or if(is.null(L)) R else L`.

You can enforce it via [Jarl](https://jarl.etiennebacher.com/rules/coalesce) or [lintr](https://lintr.r-lib.org/reference/coalesce_linter.html).

As a reminder, the operator is supported by the [backports](https://github.com/r-lib/backports/pull/81/changes) R package and is exported by rlang.

### Positive AI reading

If you're feeling some AI dread, you might enjoy:

-   The blog post ["Antidote"](https://vickiboykis.com/2026/03/04/antidote/) by Vicky Boykis;
-   The talk ["Is my degree worthless"](https://www.youtube.com/watch?v=5kTxZMSB9oo&t) by Davis Vaughan.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).

</div>

</div>

