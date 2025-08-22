---
slug: "news-august-2025"
title: rOpenSci News Digest, August 2025
author:
  - The rOpenSci Team
date: '2025-08-28'
tags:
  - newsletter
description: R-multiverse comm call, useR! 2025, posit::conf(2025), coworking, new package, package news
params:
  last_newsletter: '2025-07-23'
  doi: "10.59350/zk2nx-akh49"
rmd_hash: 24ec62832bb3c701

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2025/08/28/news-august-2025). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Community call: "R-multiverse: a new way to publish R packages"

On Monday, 29 September 2025 14:00 UTC, we'll host a [community call](/commcalls/r-multiverse/) about the R-multiverse, starring Will Landau!

R-multiverse is a new dual repository for R packages, based on infrastructure from R-universe and GitHub. We would like to invite the developer community to contribute packages.

With R-multiverse, users have a central place for installing packages. Automated quarterly production snapshots enforce quality.

Package maintainers retain most of the freedom and flexibility of self-publishing. Maintainers directly control package releases through GitHub or GitLab.

R-multiverse originated from the R Consortium Repositories Working Group. It has transparent governance, and it operates in a collaborative and open way.

Find out more on the [event page](/commcalls/r-multiverse/).

### rOpenSci at useR! 2025

Members of our team and our community were present at, and enjoyed, [useR! 2025](/events/user-2025/)!

{{< figure src="user2025.jpg" caption="Bottom, mentor Luis D. Verde Arregoitia, champion Andrea Gomez Vargas, director Noam Ross, community manager Yani Bellina Saibene; top left, Yani with repeat package reviewer Sheila Saia; top right, Yani with targets creator Will Landau; below, Yani with rredlist maintainer William Gearty." alt="Collage of pictures from the conference" >}}

You can watch the recordings of

-   Yani's keynote ["We R Together. How to learn, use and improve a programming language as a community."](https://www.youtube.com/live/CTTvTQ-JZhw?si=dBuyXYANeTu1aEVU) ([slides](https://docs.google.com/presentation/d/1aqpMXNklUoj4DY_43tfFVe6sf2Q-OvFRK66w24eTM6c/));
-   Will's keynote ["Poweful simulation pipelines with {targets}"](https://www.youtube.com/watch?v=fgtIqJfzPK0) ([slides](https://wlandau.github.io/useR2025/#/section)).

### rOpenSci at posit::conf(2025)

Likewise, members of our team and community will attend [posit::conf(2025)](https://posit.co/conference/) September 16-18 in Atlanta (US).

-   [Mauro Lepore](/author/mauro-lepore) and [Eric Scott](/author/eric-scott) will both present [lightning talks](https://reg.conf.posit.co/flow/posit/positconf25/attendee-portal/page/sessioncatalog/session/1745351143742001aTfb) on Wednesday, September 17th at 1:00 PM. Mauro will talk about "Approaching Positron from RStudio", Eric will talk about "Enabling geospatial workflow management with targets: an R package origin story".

-   [Will Landau](/author/will-landau/) will give his talk "R-multiverse: a next-generation R package repository system built on R-universe" in the [session "Strengthening the R Ecosystem"](https://reg.conf.posit.co/flow/posit/positconf25/attendee-portal/page/sessioncatalog/session/1745351601442001aZMp) Thursday, September 18th at 10:20 AM.

-   [Nic Crane](/author/nic-crane) will present on "Hacking Productivity with LLMs: What Works (and What Doesn't)" in the [session "Facepalm-driven Development: Learning From AI and Human Errors"](https://reg.conf.posit.co/flow/posit/positconf25/attendee-portal/page/sessioncatalog/session/1745351601735001awFt) on Thursday, September 18th at 1 PM.

-   [Noam Ross](/author/noam-ross/) and [Beatriz Milz](/author/beatriz-milz/) will both present in the [session "It Takes a Village: Building and Sustaining Communities"](https://reg.conf.posit.co/flow/posit/positconf25/attendee-portal/page/sessioncatalog/session/1745351600837001aRK1) on Thursday, September 18th at 2:40 PM. Beatriz will talk about "Translating R for Data Science into Portuguese: A Community-Led Initiative", Noam about "rOpenSci Champions: Building Communities of Open-Source Leaders".

-   [Luis D. Verde Arregoitia](https://ropensci.org/author/luis-d.-verde-arregoitia/) will present his talk "Bold indicates negative?" in the [session "You Put WHAT in Your Data?"](https://reg.rainfocus.com/flow/posit/positconf25/attendee-portal/page/sessioncatalog/session/1745351601050001aouB) on Thursday, Sep 18th at 2:40 PM.

We are looking forward to seeing you there!

[Virtual experience](https://reg.conf.posit.co/flow/posit/positconf25/reg/login) -- not free for all this year but free for Students / Academics (and needs-based). See the [pricing page](https://posit.co/conf-pricing-2025/).

### rOpenSci in the news

Our community manager Yanina Bellini Saibene was interviewed [again](/blog/2025/04/28/news-april-2025/#ropensci-in-the-news) in *Nature*, for the article ["Six questions to ask before jumping into a spreadsheet"](https://archive.ph/nnZKQ)

> "There is kind of this belief that a spreadsheet is not a good tool for doing science," says Yanina Bellini Saibene, "and that is not correct."

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

-   Tuesday September 9th, 14:00 European Central (12:00 UTC), ["Improving accessibility in your work"](/events/coworking-2025-09/) with [Steffi LaZerte](/author/steffi-lazerte/) and cohost [Silvia Canelón](/author/silvia-canel%C3%B3n/).
    -   Explore where you might improve accessibility in your work;
    -   Start making changes to improve accessibility;
    -   Chat with Silvia Canelón about tools and techniques for improving accessibility.
-   Tuesday October 7th, 09:00 Americas Pacific (16:00 UTC), ["Ship your R package to the R-multiverse!"](/events/coworking-2025-10/) with [Steffi LaZerte](/author/steffi-lazerte/) and cohost [Will Landau](/author/will-landau).
    -   Learn more about the [R-multiverse](https://r-multiverse.org/);
    -   Submit your package to the [R-multiverse](https://r-multiverse.org/);
    -   Chat with Will Landau, and learn more about the R-multiverse and how to submit your package.

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

### New packages

The following two packages recently became a part of our software suite:


-   [trud](https://docs.ropensci.org/trud), developed by Alasdair Warwick together with Robert Luben, Abraham Olvera-Barrios, and Chuin Ying Ung: Provides a convenient R interface to the National Health Service NHS Technology Reference Update Distribution (TRUD) API, allowing users to list available releases for their subscribed items, retrieve metadata, and download release files. For more information on the API, see <https://isd.digital.nhs.uk/trud/users/guest/filters/0/api>. It is available on [CRAN](https://CRAN.R-project.org/package=trud). It has been [reviewed](https://github.com/ropensci/software-review/issues/705) by Jon Clayden and Alexandros Kouretsis.

-   [sasquatch](https://docs.ropensci.org/sasquatch), developed by Ryan Zomorrodi: Use R and SAS within reproducible multilingual quarto documents. Run SAS code blocks interactively, send data back and forth between SAS and R, and render SAS output within quarto documents. SAS connections are established through a combination of SASPy and reticulate. It has been [reviewed](https://github.com/ropensci/software-review/issues/673) by Nic Crane.


Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions


The following twenty packages have had an update since the last newsletter: [sits](https://docs.ropensci.org/sits "Satellite Image Time Series Analysis for Earth Observation Data Cubes") ([`v1.5.3`](https://github.com/e-sensing/sits/releases/tag/v1.5.3)), [aRxiv](https://docs.ropensci.org/aRxiv "Interface to the arXiv API") ([`0.12`](https://github.com/ropensci/aRxiv/releases/tag/0.12)), [beastier](https://docs.ropensci.org/beastier "Call BEAST2") ([`v2.5.2`](https://github.com/ropensci/beastier/releases/tag/v2.5.2)), [beautier](https://docs.ropensci.org/beautier "BEAUti from R") ([`v2.6.15-pre-cran`](https://github.com/ropensci/beautier/releases/tag/v2.6.15-pre-cran)), [c3dr](https://docs.ropensci.org/c3dr "Read and Write C3D Motion Capture Files") ([`v0.2.0`](https://github.com/ropensci/c3dr/releases/tag/v0.2.0)), [chromer](https://docs.ropensci.org/chromer "Interface to Chromosome Counts Database API") ([`v0.10`](https://github.com/ropensci/chromer/releases/tag/v0.10)), [dendroNetwork](https://docs.ropensci.org/dendroNetwork "Create Networks of Dendrochronological Series using Pairwise Similarity") ([`0.5.5`](https://github.com/ropensci/dendroNetwork/releases/tag/0.5.5)), [dittodb](https://docs.ropensci.org/dittodb "A Test Environment for Database Requests") ([`v0.1.9`](https://github.com/ropensci/dittodb/releases/tag/v0.1.9)), [GSODR](https://docs.ropensci.org/GSODR "Global Surface Summary of the Day (GSOD) Weather Data Client") ([`v4.1.4`](https://github.com/ropensci/GSODR/releases/tag/v4.1.4)), [gtexr](https://docs.ropensci.org/gtexr "Query the GTEx Portal API") ([`v0.2.1`](https://github.com/ropensci/gtexr/releases/tag/v0.2.1)), [osmapiR](https://docs.ropensci.org/osmapiR "OpenStreetMap API") ([`v0.2.4`](https://github.com/ropensci/osmapiR/releases/tag/v0.2.4)), [parzer](https://docs.ropensci.org/parzer "Parse Messy Geographic Coordinates") ([`v0.4.2`](https://github.com/ropensci/parzer/releases/tag/v0.4.2)), [rnaturalearth](https://docs.ropensci.org/rnaturalearth "World Map Data from Natural Earth") ([`v1.1.0`](https://github.com/ropensci/rnaturalearth/releases/tag/v1.1.0)), [rredlist](https://docs.ropensci.org/rredlist "IUCN Red List Client") ([`v1.1.0`](https://github.com/ropensci/rredlist/releases/tag/v1.1.0)), [skimr](https://docs.ropensci.org/skimr "Compact and Flexible Summaries of Data") ([`v2.2.0`](https://github.com/ropensci/skimr/releases/tag/v2.2.0)), [spatsoc](https://docs.ropensci.org/spatsoc "Group Animal Relocation Data by Spatial and Temporal Relationship") ([`v0.2.9`](https://github.com/ropensci/spatsoc/releases/tag/v0.2.9)), [taxa](https://docs.ropensci.org/taxa "Classes for Storing and Manipulating Taxonomic Data") ([`v0.4.4`](https://github.com/ropensci/taxa/releases/tag/v0.4.4)), [trud](https://docs.ropensci.org/trud "Query the NHS TRUD API") ([`v0.2.0-JOSS`](https://github.com/ropensci/trud/releases/tag/v0.2.0-JOSS)), [vcr](https://docs.ropensci.org/vcr "Record HTTP Calls to Disk") ([`v2.0.0`](https://github.com/ropensci/vcr/releases/tag/v2.0.0)), and [weathercan](https://docs.ropensci.org/weathercan "Download Weather Data from Environment and Climate Change Canada") ([`v0.7.5`](https://github.com/ropensci/weathercan/releases/tag/v0.7.5)).

## Software Peer Review


There are sixteen recently closed and active submissions and 5 submissions on hold. Issues are at different stages:

-   Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

    -   [trud](https://github.com/ropensci/software-review/issues/705), Query the NHS TRUD API. Submitted by [Alasdair Warwick](https://github.com/rmgpanw).

    -   [sasquatch](https://github.com/ropensci/software-review/issues/673), Use SAS, R, and quarto Together. Submitted by [Ryan Zomorrodi](https://ryanzomorrodi.github.io/).

-   One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%225/awaiting-reviewer(s)-response%22):

    -   [pkgmatch](https://github.com/ropensci/software-review/issues/671), Find R Packages Matching Either Descriptions or Other R Packages. Submitted by [mark padgham](https://mpadge.github.io).

-   Five at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

    -   [openFDA](https://github.com/ropensci/software-review/issues/714), openFDA API. Submitted by [Simon Parker](https://github.com/simpar1471).

    -   [rixpress](https://github.com/ropensci/software-review/issues/706), Build Reproducible Analytical Pipelines With Nix. Submitted by [Bruno Rodrigues](https://brodrigues.co).

    -   [SSARP](https://github.com/ropensci/software-review/issues/685), SSARP (Species-/Speciation-Area Relationship Projector). Submitted by [kmartinet](https://github.com/kmartinet).

    -   [dataset](https://github.com/ropensci/software-review/issues/681), Create Data Frames that are Easier to Exchange and Reuse. Submitted by [Daniel Antal](http://nl.linkedin.com/in/antaldaniel/).

    -   [galamm](https://github.com/ropensci/software-review/issues/615), Generalized Additive Latent and Mixed Models. Submitted by [Øystein Sørensen](https://osorensen.github.io/). (Stats).

-   Five at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

    -   [mantis](https://github.com/ropensci/software-review/issues/710), Multiple Time Series Scanner. Submitted by [Phuong Quan](https://github.com/phuongquan).

    -   [reviser](https://github.com/ropensci/software-review/issues/709), Tools for Studying Revision Properties in Real-Time Time Series Vintages. Submitted by [Marc Burri](https://marcburri.github.io/).

    -   [partialling.out](https://github.com/ropensci/software-review/issues/703), Residuals from partial regressions. Submitted by [Marc Bosch](https://github.com/marcboschmatas). (Stats).

    -   [distionary](https://github.com/ropensci/software-review/issues/688), Create and Evaluate Probability Distributions. Submitted by [Vincenzo Coia](https://vincenzocoia.com).

    -   [read.abares](https://github.com/ropensci/software-review/issues/667), Provides simple downloading, parsing and importing of Australian Bureau of Agricultural and Resource Economics and Sciences (ABARES) data sources. Submitted by [Adam H. Sparks](https://adamhsparks.netlify.app/).

-   Three at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

    -   [babelquarto](https://github.com/ropensci/software-review/issues/720), Renders a Multilingual Quarto Book. Submitted by [Maëlle Salmon](https://masalmon.eu/).

    -   [SPARQLchunks](https://github.com/ropensci/software-review/issues/656), Run SPARQL Chunks and Inline Functions to Retrieve Data. Submitted by [André Ourednik](https://ourednik.info).

    -   [capybara](https://github.com/ropensci/software-review/issues/645), Fast and Memory Efficient Fitting of Linear Models With High-Dimensional. Submitted by [Mauricio "Pachá" Vargas Sepúlveda](https://pacha.dev).


Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->


## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

-   [USAboundaries](https://docs.ropensci.org/USAboundaries/) (and USAboundariesdata), historical and contemporary boundaries of the United States of America. [Issue for volunteering](https://github.com/ropensci/USAboundaries/issues/50).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### useR! 2025 recordings

The recordings of the talks for useR! 2025 virtual component have been posted on [YouTube](https://www.youtube.com/watch?v=OIM3VmFRGDI&list=PL77T87Q0eoJgDiU_yXZ6c6Fp8PZTsDvg4). Among the diverse topics:

-   [Experimenting with LLM Applications in R](https://www.youtube.com/watch?v=RQ_8tToedMk) by Nic Crane.
-   [The Future of Asynchronous Programming in R](https://www.youtube.com/watch?v=sGLD8oVquho) by Charlie Gao.

The recordings of the keynote talks have been posted in a [different YouTube channel](https://www.youtube.com/watch?v=fgtIqJfzPK0&list=PL9qLtkRkGWLehjHWrjsA6l2h-lEIUbT9n).

### New R option to control verbosity

For those of you interested in [controlling package verbosity](/blog/2024/02/06/verbosity-control-packages/), Klaus Vigo helpfully [reported](https://discuss.ropensci.org/t/ropensci-please-shut-up-verbosity-control-in-packages/3790/17) that " R4.6 will ship with a [bit more verbosity control](https://cran.r-project.org/doc/manuals/r-devel/NEWS.html)"

> New logical `option()` `quiet`, defaulting to false, set to `TRUE` by R's command-line option `--quiet` (and similar), now can be switched during an R session. Prompted by Dirk Eddelbuettel's proposal in PR#18913.

### Quarto vignettes on Windows on GitHub Actions

As noted by Sam Rogers in our slack workspace, if you use Quarto vignettes, you might run into an error on GitHub Actions where it fails because "the package is not installed". Thanks to Gábor Csárdi and Christophe Dervieux for chiming in. The workaround is to add `local::.` under `setup-r-dependencies` to the field, as stated by James Balamuta in the [relevant GitHub issue](https://github.com/quarto-dev/quarto-r/issues/217#issuecomment-2470666968).

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
