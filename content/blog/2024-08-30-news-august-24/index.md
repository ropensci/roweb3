---
slug: "news-august-2024"
title: rOpenSci News Digest, August 2024
author:
  - The rOpenSci Team
date: '2024-08-30'
tags:
  - newsletter
description: Screen reader acessibility webinar, R-universe community call, CRAN stats, new package and package news
params:
  last_newsletter: "2024-07-19"
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2024/08/30/news-august-2024).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Community call: Navigating the R ecosystem using R-Universe!

On [Tuesday, 24 September 2024 16:00 UTC](/commcalls/nov2024-r-universe/) (no RSVP needed), join us to learn more about R-Universe and how you can use it to improve your R package development workflow.

In this community call, [Jeroen Ooms](/author/jeroen-ooms/) will provide details on what R-Universe is and an update on what you can do with it today. 
He will also discuss the future of R-Universe and how it can be used to navigate the R ecosystem.

### Webinar: Screen Reader Accessible Tools and Resources for Learning and Working with R

[Liz Hare](/author/liz-hare/) and [Alican Cagri Gokcek](/author/alican-cagri-gokcek/), both rOpenSci [Champions](/champions/) will participate in a [panel](/events/rsr-learn-and-use/) sharing their experiences with screen reader-accessible tools and resources for learning and working with R.

The [event](/events/rsr-learn-and-use/) is co-organized by rOpenSci and the [Boğaziçi University](https://bogazici.edu.tr/en-US/Index) and will be held on **September 10**. 

### Blog post series: Two years and twelve projects as Community Manager at rOpenSci

In June 2022 Yani became the Community Manager of rOpenSci. 
Now she has started a [series of blog posts](https://yabellini.netlify.app/blog/2024-06-23-ropensci-2years-cm-en/) to share 12 projects she was involved in these two years to tell you more about the kind of work and activities a community manager of a technology community of practice does and what she learned in the process.

The series is also available in [Spanish](https://yabellini.netlify.app/blog/2024-06-23-ropensci-2years-cm/). 

### Our stats on all CRAN packages now updated daily

rOpenSci's [pkgstats](https://docs.ropensci.org/pkgstats) package generates summary statistics on R packages.
Our [pkgcheck](https://docs.ropensci.org/pkgcheck) system compares the statistical properties of packages being checked with equivalent properties of all CRAN packages.
We now generate daily updates of our reference database of [pkgstats](https://docs.ropensci.org/pkgstats) for all CRAN packages, so the [pkgcheck](https://docs.ropensci.org/pkgcheck) output will always be against the current state of CRAN.
The databases are published with [the v0.1.6 release of pkgstats](https://github.com/ropensci-review-tools/pkgstats/releases/tag/v0.1.6), and can be downloaded from there.
Alternatively, to know how "noteworthy" your package is compared to CRAN packages, simply call [pkgcheck](https://docs.ropensci.org/pkgcheck) on your package (perhaps with `goodpractice = FALSE` to speed things up by skipping those parts of checks). Then, either print the results directly in the console, or use `out <- checks_to_markdown(checks, render = TRUE)` to generate and automatically open a rendered HTML version, where "Statistical Properties" will include the comparison of your package to all current CRAN packages.

### The rOpenSci community at upcoming events

Meet rOpenSci team and community members at events in the near future!

- rOpenSci Software Research Scientist [Mark Padgham](/author/mark-padgham/) will be at the [RSECon, the Research Software Engineering Conference 2024](https://rsecon24.society-rse.org/) in Newcastle, UK from 3rd to 5th September 2024 where he will deliver his talk ["rOpenSci Statistical Software Peer Review: The importance and challenge of community engagement"](/events/rseuk-2024/).

- rOpenSci Director [Noam Ross](/author/noam-ross/) and rOpenSci Lead Infrastructure Engineer [Jeroen Ooms](/author/jeroen-ooms/) will take part in the [NumFOCUS Project Summit 2024](/events/numfocussummit-2024/) on [September 5-7, 2024](https://numfocus.org/2024-project-summit-openmbee) in Cambridge, Massachusetts, USA. Come to chat if you are around!

- rOpenSci Community Manager [Yanina Bellini Saibene](/author/yanina-bellini-saibene/) will deliver a keynote talk at [BioNT Community Event & CarpentryConnect-Heidelberg 2024](/events/carpentryconnect-2024/), on November 14th in Heidelberg, Germany.

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

- ~~Tuesday, September 3rd, 9:00 Australia Western (01:00 UTC)~~ **Cancelled**
- Tuesday, October 1st, 14h00 Europe Central (12:00 UTC), Theme TBA with cohost TBA and [Steffi LaZerte](/author/steffi-lazerte).

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

### New packages




The following  package recently became a part of our software suite:

+ [karel](https://docs.ropensci.org/karel), developed by Marcos Prunello: This is the R implementation of Karel the robot, a programming language created by Dr. R. E. Pattis at Stanford University in 1981. Karel is an useful tool to teach introductory concepts about general programming, such as algorithmic decomposition, conditional statements, loops, etc., in an interactive and fun way, by writing programs to make Karel the robot achieve certain tasks in the world she lives in. Originally based on Pascal, Karel was implemented in many languages through these decades, including Java, C++, Ruby and Python. This is the first package implementing Karel in R.  It is available on [CRAN]( https://CRAN.R-project.org/package=karel). It has been [reviewed](https://github.com/ropensci/software-review/issues/620) by Veronica Jimenez-Jacinto and Joel Nitta.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following twenty-two packages have had an update since the last newsletter: [frictionless](https://docs.ropensci.org/frictionless "Read and Write Frictionless Data Packages") ([`v1.2.0`](https://github.com/frictionlessdata/frictionless-r/releases/tag/v1.2.0)), [gert](https://docs.ropensci.org/gert "Simple Git Client for R") ([`v2.1.0`](https://github.com/r-lib/gert/releases/tag/v2.1.0)), [pkgstats](https://docs.ropensci.org/pkgstats "Metrics of R Packages") ([`v0.1.6`](https://github.com/ropensci-review-tools/pkgstats/releases/tag/v0.1.6)), [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (cff) Metadata for R Packages") ([`v1.1.1`](https://github.com/ropensci/cffr/releases/tag/v1.1.1)), [circle](https://docs.ropensci.org/circle "R Client Package for Circle CI") ([`v0.7.3`](https://github.com/ropensci/circle/releases/tag/v0.7.3)), [crul](https://docs.ropensci.org/crul "HTTP Client") ([`v1.5.0`](https://github.com/ropensci/crul/releases/tag/v1.5.0)), [GSODR](https://docs.ropensci.org/GSODR "Global Surface Summary of the Day (GSOD) Weather Data Client") ([`v4.1.1`](https://github.com/ropensci/GSODR/releases/tag/v4.1.1)), [historydata](https://docs.ropensci.org/historydata "Datasets for Historians") ([`v0.3.0`](https://github.com/ropensci/historydata/releases/tag/v0.3.0)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.18v2`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.18v2)), [mapscanner](https://docs.ropensci.org/mapscanner "Print Maps, Draw on Them, Scan Them Back in") ([`v0.1.1`](https://github.com/ropensci/mapscanner/releases/tag/v0.1.1)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.10.6`](https://github.com/ropensci/nodbi/releases/tag/v0.10.6)), [phonfieldwork](https://docs.ropensci.org/phonfieldwork "Linguistic Phonetic Fieldwork Tools") ([`v0.0.17`](https://github.com/ropensci/phonfieldwork/releases/tag/v0.0.17)), [qualtRics](https://docs.ropensci.org/qualtRics "Download Qualtrics Survey Data") ([`v3.2.1`](https://github.com/ropensci/qualtRics/releases/tag/v3.2.1)), [rangr](https://docs.ropensci.org/rangr "Mechanistic Simulation of Species Range Dynamics") ([`v1.0.5`](https://github.com/ropensci/rangr/releases/tag/v1.0.5)), [rdataretriever](https://docs.ropensci.org/rdataretriever "R Interface to the Data Retriever") ([`v.3.1.1`](https://github.com/ropensci/rdataretriever/releases/tag/v.3.1.1)), [refsplitr](https://docs.ropensci.org/refsplitr "author name disambiguation, author georeferencing, and mapping of 
    coauthorship networks with Web of Science data") ([`v1.0.1`](https://github.com/ropensci/refsplitr/releases/tag/v1.0.1)), [rOPTRAM](https://docs.ropensci.org/rOPTRAM "Derive Soil Moisture Using the OPTRAM Algorithm") ([`v0.3`](https://github.com/ropensci/rOPTRAM/releases/tag/v0.3)), [stats19](https://docs.ropensci.org/stats19 "Work with Open Road Traffic Casualty Data from Great Britain") ([`v3.1.0`](https://github.com/ropensci/stats19/releases/tag/v3.1.0)), [stplanr](https://docs.ropensci.org/stplanr "Sustainable Transport Planning") ([`v1.2.2`](https://github.com/ropensci/stplanr/releases/tag/v1.2.2)), [vcr](https://docs.ropensci.org/vcr "Record HTTP Calls to Disk") ([`v1.6.0`](https://github.com/ropensci/vcr/releases/tag/v1.6.0)), [weatherOz](https://docs.ropensci.org/weatherOz "An API Client for Australian Weather and Climate Data Resources") ([`v1.0.0`](https://github.com/ropensci/weatherOz/releases/tag/v1.0.0)), and [webmockr](https://docs.ropensci.org/webmockr "Stubbing and Setting Expectations on HTTP Requests") ([`v1.0.0`](https://github.com/ropensci/webmockr/releases/tag/v1.0.0)).

## Software Peer Review

There are ten recently closed and active submissions and 6 submissions on hold. Issues are at different stages: 

* One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [agromet](https://github.com/ropensci/software-review/issues/599), Índices y Estadísticos Climáticos e Hidrológicos. Submitted by [Paola Corrales](https://paocorrales.github.io). 

* Four at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [chopin](https://github.com/ropensci/software-review/issues/638), CHOPIN: Computation for Climate and Health research On Parallelized INfrastructure. Submitted by [Insang Song](https://www.issong.net). 

    * [cancerprof](https://github.com/ropensci/software-review/issues/637), API Client for State Cancer Profiles. Submitted by [Brian Park](https://github.com/realbp). 

    * [rsi](https://github.com/ropensci/software-review/issues/636), Efficiently Retrieve and Process Satellite Imagery. Submitted by [Michael Mahoney](https://mm218.dev/). 

    * [rix](https://github.com/ropensci/software-review/issues/625), Rix: Reproducible Environments with Nix. Submitted by [Bruno Rodrigues](https://brodrigues.co). 

* Three at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [eDNAjoint](https://github.com/ropensci/software-review/issues/642), Joint Modeling of Traditional and Environmental DNA Survey Data. Submitted by [Abigail Keller](https://github.com/abigailkeller). 

    * [sits](https://github.com/ropensci/software-review/issues/596), Satellite Image Time Series Analysis for Earth Observation Data Cubes. Submitted by [Gilberto Camara](https://www.gilbertocamara.org). 

    * [fwildclusterboot](https://github.com/ropensci/software-review/issues/546), Fast Wild Cluster Bootstrap Inference for Linear Models. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/).  (Stats).

* One at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [QuadratiK](https://github.com/ropensci/software-review/issues/632), A Collection of Methods Using Kernel-Based Quadratic Distances for. Submitted by [Giovanni Saraceno](https://github.com/giovsaraceno).  (Stats).

* One at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [gigs](https://github.com/ropensci/software-review/issues/626), Assess Fetal, Newborn, and Child Growth with International Standards. Submitted by [Simon Parker](https://github.com/simpar1471).  (Stats).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



* [Git Tricks for Working with Large Repositories](/blog/2024/08/06/git-tricks) by Mauro Lepore. `git clone` isn't always the right tool. Other languages: <a href='/es/blog/2024/08/06/git-tricks' lang='es'>Trucos de Git para trabajar con repositorios grandes (es)</a>.

* [My Experience With Long Term Maintenance Of An R Package](/blog/2024/08/20/my-experience-with-long-term-maintenance-of-an-r-package) by Vincent van Hees. I discuss various strategies for package maintenance, drawing on my experience with the GGIR package, and explore how funding, community involvement, and scope management can help ensure continued success.

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

* [medrxivr](https://docs.ropensci.org/medrxivr/), access and search MedRxiv and BioRxiv preprint data. [Issue for volunteering](https://github.com/ropensci/medrxivr/issues/41).

* [USAboundaries](https://docs.ropensci.org/USAboundaries/) (and USAboundariesdata), historical and contemporary boundaries of the United States of America . [Issue for volunteering](https://github.com/ropensci/USAboundaries/issues/50).

* [historydata](https://docs.ropensci.org/historydata/), datasets for historians. [Issue for volunteering](https://github.com/ropensci/historydata/issues/23).

### Calls for contributions

* [Help make qualtRics better! Code contributions wanted](/blog/2024/03/01/qualtrics-call-help/)

* [Help make assertr better! Come close issues](/blog/2024/02/27/assertr-call-help/)

* [Help users and developers of targets by answering questions!](/blog/2024/02/29/targets-call-help/)

* [Help make waywiser better! User requests wanted](/blog/2024/02/19/waywiser-call-help/)

Also refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

### Playing on the same team as your dependency

We recently re-shared the older tidyverse post ["Playing on the same team as your dependency"](https://www.tidyverse.org/blog/2022/09/playing-on-the-same-team-as-your-dependecy/) by Thomas Lin Pedersen.
A further tip would be to make it easier for the maintainer of the dependency to submit patches to your package if needed, by listing the link to the source (GitHub or GitLab repository for instance) in the URL field of `DESCRIPTION`.
Creating the update for you is easier on the maintainer of the dependency than sending you an email with code inside.

### Update your pkgdown navbar configuration if needed

If your pkgdown [navbar configuration](https://pkgdown.r-lib.org/articles/customise.html#navbar-heading) does not explicitly mentions "search" as a component, your website will not include a search bar in its navbar.
This is due to a [fix](https://pkgdown.r-lib.org/news/index.html#front-end-changes-2-1-0) in how pkgdown handles the search component, but from your perspective it might well look like a bug, so check your pkgdown configuration!

If you maintain an rOpenSci package, you might have already gotten a [pull request from the rotemplate team](https://github.com/ropensci-org/rotemplate/issues/112). :wink:

[Example of a fix](https://github.com/ropensci/MtreeRing/pull/16/files), [another example that also updates the navbar config syntax](https://github.com/ropensci/targets/pull/1303/files).

### Another IDE to try out?

Remember Athanasia Mo Mowinckel's post about the [IDEs she uses](https://drmowinckels.io/blog/2024/ide/)?
She wrote a follow-up about the new IDE by Posit, [Positron](https://drmowinckels.io/blog/2024/positron/).

Other new IDE developments include [Zed AI](https://zed.dev/blog/zed-ai).

### Find and fix problems in R code automatically!

Etienne Bacher created an enticing R package called [flint](https://flint.etiennebacher.com/), that finds _and fixes_ lints in R code.
Imagine [lintr](https://lintr.r-lib.org/) being as active as [styler](https://styler.r-lib.org/) instead of just telling you what to amend. :grin:
Note that at the moment, flint does not have as many rules as lintr.

The existence of flint is yet another benefit from [Davis Vaughan's building an R grammar for tree-sitter](/blog/2024/07/19/news-july-2024/#on-tools), since flint builds on Etienne Bacher's [astgrepr](https://astgrepr.etiennebacher.com/), that binds the [Rust ast-grep crate](https://ast-grep.github.io/), that in turns... uses tree-sitter!

### Create content for help pages on the fly

Did you know that you can create dynamic content for the help page of a function in your R package using `#' \Sexpr[results=rd,stage=render]{<some-code>}`?
The code can even call an internal function!
[Minimal example](https://github.com/maelle/personalized.help).

Thanks Rich FitzJohn for sharing about this idea that he uses in his [stevedore package](https://github.com/cran/stevedore/blob/74b63bfcff2af200367fbd78febfd2d36855d500/R/help.R#L4).

Relatedly, if you want to provide different content in the manual page depending on the OS, that's also [possible](https://cran.r-project.org/doc/manuals/R-exts.html#Platform_002dspecific-sections).

If you're taking it a bit further and want to change what `?foo` returns, you might be interested in these two strategies (but be warned, these are not necessarily CRAN-compatible!):

- Elio Campitelli's rhelpi18n package [currently overwrites the `.getHelpFile()`](https://github.com/eliocamp/rhelpi18n/blob/main/R/zzzz.R) function to make it possible to get a manual page in the correct language.

- The "shims" created by [pkgload](https://github.com/r-lib/pkgload/blob/a20161ecc5b3645a9555832bd0a02fd14c80be82/R/shims.R#L11) that allow _in development_ documentation pages to be loaded.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.
You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
