---
slug: "news-february-2026"
title: rOpenSci News Digest, February 2026
author:
  - The rOpenSci Team
date: '2026-02-17'
tags:
  - newsletter
description: AI policy for software review, champions program, coworking, new packages, package news
params:
  last_newsletter: '2026-01-29'
  doi: "10.59350/fe3c2-6zc80"
rmd_hash: 9bc03e69f67246d6

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2026/02/17/news-february-2026). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Strong Engagement in the Champions Program Call

The Champions Program call closed on February 23, and the response *was fantastic*. We received **81 Champion** and **14 Mentor applications** from **23 countries**, with **74%** of applicants proposing to develop a **new package**. We're now kicking off the selection process, starting with mentors so they can support the evaluation of Champion proposals. Confirmation emails have already been sent to all applicants. Thank you to everyone who applied!

### Policy Updates for use of Generative AI Tools

We published an [initial blog post](/blog/2026/02/26/ai-policy/) about planned updates to our policies and practices for use of generative AI tools in rOpenSci packages. This follows recent policy updates at both the [Journal of Open Source Software](https://blog.joss.theoj.org/2026/01/preparing-joss-for-a-generative-ai-future) and [pyOpenSci](https://www.pyopensci.org/blog/generative-ai-peer-review-policy.html). We are seeking feedback on the [blog post](/blog/2026/02/26/ai-policy/), and on the policy changes proposed there, via [this decidated GitHub issue](https://github.com/ropensci/software-review-meta/issues/107). The blog explains our intention to permit the use of generative AI tools throughout package development, and during the review process. Our policies aim to maintain our culture of openness and transparency, and we have already started informally asking submitting authors about any use of generative AI tools.

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

-   Tuesday March 3rd 2026, 14:00 Europe Central (13:00 UTC), ["rOpenSci Editors"](/events/coworking-2026-03/) with [Steffi LaZerte](/author/steffi-lazerte/) and cohost [Mark Padgham](/author/mark-padgham/).
    -   Learn more about [rOpenSci Software Peer Review](/software-review/)
    -   Meet cohost Mark Padgham, and discuss what it's like being an Editor for rOpenSci Software Peer Review.
-   Tuesday April 7th 2026, 9:00 Americas Pacific (16:00 UTC) ["Getting to know the CSID Network"](/events/coworking-2026-04/) with [Steffi LaZerte](/author/steffi-lazerte/) and cohost [Irene Ramos](/author/irene-ramos/).
    -   Learn more about the [CSID Network](https://csidnet.org/)
    -   Meet cohost, Irene Ramos, and learn more about the CSID Network and how you might get involved.
-   Tuesday May 5th 2026, 9:00 Australia Western (01:00 UTC) ["Code Review with rOpenSci"](/events/coworking-2026-05/) with [Steffi LaZerte](/author/steffi-lazerte/) and cohost [Liz Hare](/author/liz-hare/).
    -   Explore resources for Code Review
    -   Sign up to volunteer to do [software peer-review](https://airtable.com/app8dssb6a7PG6Vwj/shrnfDI2S9uuyxtDw) at rOpenSci
    -   Meet cohost, Liz Hare, and discuss resources for Code Review with rOpenSci.

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

### Community Dashboard for your own R-Universe

Last year we published a [blog post](/blog/2025/09/11/repometrics-call-help) on an [organization-level dashboard](https://ropensci-review-tools.github.io/orgmetrics-ropensci/) for all rOpenSci packages and community contributors. We have now developed the [orgmetricsDashboard repository](https://github.com/ropensci-review-tools/orgmetricsDashboard) to enable anybody to deploy their own organizational dashboard directly from their [R-Universe repository](https://docs.r-universe.dev/publish/set-up.html). The only input needed is an [R-Universe "packages.json" file](https://docs.r-universe.dev/publish/set-up.html#registry-file), and you can deploy either via GitHub actions, or a local Docker workflow. Try it out!

## Software :package:

### New packages





The following two packages recently became a part of our software suite:



-   [Athlytics](https://docs.ropensci.org/Athlytics), developed by Zhiang He: An open-source computational framework for longitudinal analysis of exercise physiology metrics using local Strava data exports. Designed for personal analysis and sports science applications, this package provides standardized functions to calculate and visualize key physiological indicators including Acute:Chronic Workload Ratio (ACWR), Efficiency Factor (EF), and training load metrics. It has been [reviewed](https://github.com/ropensci/software-review/issues/728) by Eunseop Kim and Simon Nolte.

-   [orgmetrics](https://docs.ropensci.org/orgmetrics), developed by Mark Padgham: Metrics for your GitHub organization. Call one function to generate an interactive dashboard displaying the state of your organization.

    

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions





The following thirteen packages have had an update since the last newsletter: [dittodb](https://docs.ropensci.org/dittodb "A Test Environment for Database Requests") ([`v0.1.11`](https://github.com/ropensci/dittodb/releases/tag/v0.1.11)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.12.0`](https://github.com/ropensci/targets/releases/tag/1.12.0)), [RSelenium](https://docs.ropensci.org/RSelenium "R Bindings for Selenium WebDriver") ([`v1.7.10`](https://github.com/ropensci/RSelenium/releases/tag/v1.7.10)), [Athlytics](https://docs.ropensci.org/Athlytics "Academic R Package for Sports Physiology Analysis from Local Strava Data") ([`v1.0.4`](https://github.com/ropensci/Athlytics/releases/tag/v1.0.4)), [pkgstats](https://docs.ropensci.org/pkgstats "Metrics of R Packages") ([`v0.2.2`](https://github.com/ropensci-review-tools/pkgstats/releases/tag/v0.2.2)), [osmapiR](https://docs.ropensci.org/osmapiR "OpenStreetMap API") ([`v0.2.5`](https://github.com/ropensci/osmapiR/releases/tag/v0.2.5)), [dbparser](https://docs.ropensci.org/dbparser "Drugs Databases Parser") ([`v2.2.1`](https://github.com/ropensci/dbparser/releases/tag/v2.2.1)), [taxize](https://docs.ropensci.org/taxize "Taxonomic Information from Around the Web") ([`v0.10.1`](https://github.com/ropensci/taxize/releases/tag/v0.10.1)), [rangr](https://docs.ropensci.org/rangr "Mechanistic Simulation of Species Range Dynamics") ([`v1.0.9`](https://github.com/ropensci/rangr/releases/tag/v1.0.9)), [wikitaxa](https://docs.ropensci.org/wikitaxa "Taxonomic Information from Wikipedia") ([`v0.5.0`](https://github.com/ropensci/wikitaxa/releases/tag/v0.5.0)), [mantis](https://docs.ropensci.org/mantis "Multiple Time Series Scanner") ([`v1.0.2`](https://github.com/ropensci/mantis/releases/tag/v1.0.2)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.14.0`](https://github.com/ropensci/tarchetypes/releases/tag/0.14.0)), and [tidyhydat](https://docs.ropensci.org/tidyhydat "Extract and Tidy Canadian Hydrometric Data") ([`1.0.0`](https://github.com/ropensci/tidyhydat/releases/tag/1.0.0)).

Post on dfms release: [Releasing dfms 1.0: Fast and Feature-Rich Estimation of Dynamic Factor Models in R](https://sebkrantz.github.io/Rblog/2026/01/29/releasing-dfms-1-0-fast-and-feature-rich-estimation-of-dynamic-factor-models-in-r/).

## Software Peer Review



There are seventeen recently closed and active submissions and 4 submissions on hold. Issues are at different stages:

-   One at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

    -   [Athlytics](https://github.com/ropensci/software-review/issues/728), Academic R Package for Sports Physiology Analysis from Local Strava Data. Submitted by [Ang](https://github.com/HzaCode).

-   Two at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%225/awaiting-reviewer(s)-response%22):

    -   [suwo](https://github.com/ropensci/software-review/issues/729), Access Nature Media Repositories Through R. Submitted by [Marcelo Araya-Salas](https://marce10.github.io/).

    -   [pkgmatch](https://github.com/ropensci/software-review/issues/671), Find R Packages Matching Either Descriptions or Other R Packages. Submitted by [mark padgham](https://mpadge.github.io).

-   One at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

    -   [galamm](https://github.com/ropensci/software-review/issues/615), Generalized Additive Latent and Mixed Models. Submitted by [Øystein Sørensen](https://osorensen.github.io/). (Stats).

-   Seven at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

    -   [priorsense](https://github.com/ropensci/software-review/issues/704), Prior Diagnostics and Sensitivity Analysis. Submitted by [Noa Kallioinen](https://github.com/n-kall). (Stats).

    -   [logolink](https://github.com/ropensci/software-review/issues/741), An Interface for Running NetLogo Simulations. Submitted by [Daniel Vartanian](http://danielvartan.com).

    -   [ActiGlobe](https://github.com/ropensci/software-review/issues/732), Wearable Recording Processor for Time Shift Adjustment and Data Analysis. Submitted by [C. William Yao](https://scholar.google.ca/citations?user=T7y9ckwAAAAJ&hl=en).

    -   [ernest](https://github.com/ropensci/software-review/issues/730), A Toolkit for Nested Sampling. Submitted by [Kyle Dewsnap](https://github.com/kylesnap). (Stats).

    -   [rcrisp](https://github.com/ropensci/software-review/issues/718), Automate the Delineation of Urban River Spaces. Submitted by [Claudiu Forgaci](https://github.com/cforgaci). (Stats).

    -   [reviser](https://github.com/ropensci/software-review/issues/709), Tools for Studying Revision Properties in Real-Time Time Series Vintages. Submitted by [Marc Burri](https://marcburri.github.io/).

    -   [priorsense](https://github.com/ropensci/software-review/issues/704), Prior Diagnostics and Sensitivity Analysis. Submitted by [Noa Kallioinen](https://github.com/n-kall). (Stats).

-   Six at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

    -   [nycOpenData](https://github.com/ropensci/software-review/issues/750), Convenient Access to NYC Open Data API Endpoints. Submitted by [Christian Martinez](https://github.com/martinezc1).

    -   [pvEBayes](https://github.com/ropensci/software-review/issues/746), Empirical Bayes Methods for Pharmacovigilance. Submitted by [Yihao Tan](https://github.com/YihaoTancn). (Stats).

    -   [RAQSAPI](https://github.com/ropensci/software-review/issues/744), A Simple Interface to the US EPA Air Quality System Data Mart API. Submitted by [mccroweyclinton-EPA](https://github.com/mccroweyclinton-EPA).

    -   [RAMEN](https://github.com/ropensci/software-review/issues/743), RAMEN: Regional Association of Methylome variability with the Exposome and geNome. Submitted by [Erick Navarro-Delgado](https://erick-navarrodelgado.netlify.app).

    -   [fcmconfr](https://github.com/ropensci/software-review/issues/740), Fuzzy Cognitive Map Analysis in R. Submitted by [benroston](https://github.com/bhroston). (Stats).

    -   [coevolve](https://github.com/ropensci/software-review/issues/717), Fit Bayesian Generalized Dynamic Phylogenetic Models using Stan. Submitted by [Scott Claessens](https://scottclaessens.github.io/). (Stats).

        

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->







### Software Review

-   [Announcing New Statistical Software Peer Review Editors: Natalia da Silva and Andrew Heiss](/blog/2026/02/03/editors2025) by Natalia da Silva, Andrew Heiss, and Yanina Bellini Saibene. Introducing two new editors for rOpenSci statistical software peer review.

-   [Software Review in the Era of AI: What We Are Testing at rOpenSci](/blog/2026/02/26/ropensci-ai-policy) by Mark Padgham, Noam Ross, Maëlle Salmon, Yanina Bellini Saibene, Mauro Lepore, Emily Riederer, Jouni Helske, and Francisco Rodriguez-Sanchez. rOpenSci is testing preliminary policies on the use of generative AI tools, with proposed updates to documentation and procedures for authors submitting software for review, for editors, and for reviewers.

-   [Paleontology R Packages to Benefit from Software Sustainability Institute Grant](/blog/2026/02/05/palaeoverse-ssi-grant) by Will Gearty and The Palaeoverse Team. A grant from the Software Sustainability Institute will go towards improving the sustainability and maintainability of R packages used in paleontological research.

-   [Our forum is closed but our community is not!](/blog/2026/02/23/forum-closing) by The rOpenSci Team. Why we're closing our forum, how to keep participating in our community.



## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

-   [NLMR](https://docs.ropensci.org/NLMR), R package to simulate neutral landscape models. [Issue for volunteering](https://github.com/ropensci/NLMR/issues/116).

-   [landscapetools](https://docs.ropensci.org/landscapetools), R package for some of the less-glamorous tasks involved in landscape analysis. [Issue for volunteering](https://github.com/ropensci/landscapetools/issues/48).

-   [hddtools](https://docs.ropensci.org/hddtools), Tools to discover hydrological data, accessing catalogues and databases from various data providers. [Issue for volunteering](https://github.com/ropensci/hddtools/issues/36).

-   [qualtRics](https://docs.ropensci.org/qualtRics/), download Qualtrics survey data. [Issue for volunteering](https://github.com/ropensci/qualtRics/issues/383).

-   [photosearcher](https://docs.ropensci.org/photosearcher), searches Flickr for photographs and metadata. [Issue for volunteering](https://github.com/ropensci/photosearcher/issues/22).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### The R Foundation on OSS

The R Foundation answered a [Call for Evidence from the EU about open-source](https://ec.europa.eu/info/law/better-regulation/have-your-say/initiatives/16213-European-Open-Digital-Ecosystems_en), after asking for examples of the added value of R in the public or private sectors. You can read the [full response of the R Foundation](https://ec.europa.eu/info/law/better-regulation/have-your-say/initiatives/16213-European-Open-Digital-Ecosystems/F33370610_en), including a discussion of useful ideas for the future of R and open-source in general.

### On sitrep (situation report) functions

Athanasia Monika Mowinckel wrote a post on [sitrep functions](https://drmowinckels.io/blog/2026/sitrep-functions/): functions that help the user check their setup and provide them with useful diagnostics. The blog post includes two examples.

### New version of the jarl CLI

The jarl CLI by Etienne Bacher "finds inefficient, hard-to-read, and suspicious patterns of R code across dozens of files and thousands of lines of code in milliseconds". Read about the new features in [jarl 0.4.0](https://www.etiennebacher.com/posts/2026-02-03-jarl-0.4.0/), like the ability to find "unreachable code".

### futurize R package

Henrik Bengtsson released [futurize](https://www.jottr.org/2026/01/22/futurize-0.1.0/) that allows you to parallelize execution with minimal changes to code, by simply adding a call to `futurize()`: `y <- lapply(x, fcn) |> futurize()`.

### On AI agents and open-source

Scott Shambaugh, an open-source maintainer, wrote about his being targeted by an AI agent after closing a PR for an issue that was intended for human newbies. Initial blog post: ["An AI Agent Published a Hit Piece on Me"](https://theshamblog.com/an-ai-agent-published-a-hit-piece-on-me/), [Updated](https://theshamblog.com/an-ai-agent-published-a-hit-piece-on-me-part-2/).

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).





