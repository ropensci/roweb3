---
title: 'rOpenSci News Digest, November 2023'
author: 'The rOpenSci Team'
date: '2023-11-24'
tags:
  - newsletter
slug: news-november-2023
description: Donate to rOpenSci, Web assembly and R-universe, package news and new packages
params:
  last_newsletter: "2023-10-20"
---



<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2023/11/24/news-november-2023).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Giving season: consider donating to rOpenSci

This Giving Season consider donating to rOpenSci to support our mission of empowering Open Science.

Sustaining an open project with quality infrastructure freely accessible to the global and diverse community of R software users, research software developers, and engineers requires many different resources. Our organization’s ongoing costs are supported by grants and donations from individuals and organizations which share our vision and mission.

By supporting us, you’re not just donating; you’re contributing to a community that’s breaking down barriers, creating opportunities, and shaping the future of open and reproducible science for everyone. 

Join us in this vital mission today! You can donate here: https://ropensci.org/donate/

### R-universe now builds WASM binaries for all R packages!

R-universe now builds WebAssembly binaries for all R packages for use in WebR applications such as shinylive.
Read more in our [tech note](/blog/2023/11/17/runiverse-wasm/).

### Recording of comm call [R in Government](/commcalls/oct2023-government/)

In this [community call](/commcalls/oct2023-government/), our panelists shared their experiences and examples of projects with R at different levels of government and in different countries.

With [Luíza Andrade](https://ropensci.org/author/lu%C3%ADza-andrade/), [Karly Harker](https://ropensci.org/author/karly-harker/), [Ahmadou Dicko](https://ropensci.org/author/ahmadou-dicko/), [Pablo Tiscornia](https://ropensci.org/author/pablo-tiscornia/). 

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/) in our recent [post](/blog/2023/06/21/coworking/)!

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

- [Tuesday, December 5th, 9:00 Australian Western (01:00 UTC)](/events/coworking-2023-12/), Why won't it pass?! Troubleshooting R package checks. With community host [Adam Sparks](/author/adam-sparks/) and [Steffi LaZerte](/author/steffi-lazerte/).
    - Explore what R package checks are and where they might fail;
    - Spend some time troubleshooting your own failing package checks;
    - Discuss tips and tricks for troubleshooting package checks with our community host and other attendees.

- [Tuesday, January 9th, 14:00 Europe Central (13:00 UTC)](/events/coworking-2024-01/), Working with APIs. With community host [Jon Harmon](/author/jon-harmon/) and [Steffi LaZerte](/author/steffi-lazerte/).
    - Explore using APIs in your own work;
    - Learn about packages that can help;
    - Discuss using APIs in R with our community host and other attendees.

- [Tuesday, February 6th, 9:00 Americas Pacific (17:00 UTC)](/events/coworking-2024-02/), R-Universe Office Hours. With cohost [Jeroen Ooms](/author/jeroen-ooms/) and [Steffi LaZerte](/author/steffi-lazerte/).
    - Explore what the [R-Universe](https://r-universe.dev/) has to offer;
    - Create your own R-Universe;
    - Ask questions or troubleshoot your R-Universe problems with the cohost and other attendees.
    
And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!


## Software :package:

### New packages




The following  package recently became a part of our software suite:

+ [fastMatMR](https://docs.ropensci.org/fastMatMR), developed by Rohit Goswami: An interface to the fast_matrix_market C++ library, this package offers efficient read and write operations for Matrix Market files in R. It supports both sparse and dense matrix formats. Peer-reviewed at ROpenSci (<https://github.com/ropensci/software-review/issues/606>).  It is available on [CRAN]( https://CRAN.R-project.org/package=fastMatMR). It has been [reviewed](https://github.com/ropensci/software-review/issues/606) by Øystein Sørensen and Ildikó Czeller.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following eleven packages have had an update since the last newsletter: [assertr](https://docs.ropensci.org/assertr "Assertive Programming for R Analysis Pipelines") ([`v3.0.1`](https://github.com/ropensci/assertr/releases/tag/v3.0.1)), [beastier](https://docs.ropensci.org/beastier "Call BEAST2") ([`v2.5`](https://github.com/ropensci/beastier/releases/tag/v2.5)), [beautier](https://docs.ropensci.org/beautier "BEAUti from R") ([`v2.6.11`](https://github.com/ropensci/beautier/releases/tag/v2.6.11)), [biomartr](https://docs.ropensci.org/biomartr "Genomic Data Retrieval") ([`v1.0.6`](https://github.com/ropensci/biomartr/releases/tag/v1.0.6)), [drake](https://docs.ropensci.org/drake "A Pipeline Toolkit for Reproducible Computation at Scale") ([`7.13.8`](https://github.com/ropensci/drake/releases/tag/7.13.8)), [eia](https://docs.ropensci.org/eia "API Wrapper for US Energy Information Administration Open Data") ([`v0.4.1`](https://github.com/ropensci/eia/releases/tag/v0.4.1)), [fastMatMR](https://docs.ropensci.org/fastMatMR "High-Performance Matrix Market File Operations") ([`v1.2.4`](https://github.com/ropensci/fastMatMR/releases/tag/v1.2.4)), [gutenbergr](https://docs.ropensci.org/gutenbergr "Download and Process Public Domain Works from Project Gutenberg") ([`v0.2.4`](https://github.com/ropensci/gutenbergr/releases/tag/v0.2.4)), [opencv](https://docs.ropensci.org/opencv "Bindings to OpenCV Computer Vision Library") ([`v0.4.0`](https://github.com/ropensci/opencv/releases/tag/v0.4.0)), [stats19](https://docs.ropensci.org/stats19 "Work with Open Road Traffic Casualty Data from Great Britain") ([`v3.0.2`](https://github.com/ropensci/stats19/releases/tag/v3.0.2)), and [waywiser](https://docs.ropensci.org/waywiser "Ergonomic Methods for Assessing Spatial Models") ([`v0.5.1`](https://github.com/ropensci/waywiser/releases/tag/v0.5.1)).

## Software Peer Review

There are eighteen recently closed and active submissions and 3 submissions on hold. Issues are at different stages: 

* Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [fastMatMR](https://github.com/ropensci/software-review/issues/606), "fastMatMR: High-Performance Matrix Market File Operations in R". Submitted by [Rohit Goswami](https://rgoswami.me). 

    * [wmm](https://github.com/ropensci/software-review/issues/522), World Magnetic Model. Submitted by [Will Frierson](https://github.com/wfrierson). 

* Three at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [GLMMcosinor](https://github.com/ropensci/software-review/issues/603), Fit a cosinor model using a generalised mixed modelling framework. Submitted by [Rex Parsons](https://rwparsons.github.io/). 

    * [naijR](https://github.com/ropensci/software-review/issues/600), Operations to Ease Data Analyses Specific to Nigeria. Submitted by [Victor Ordu ](https://victorordu.wordpress.com). 

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

* Seven at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [comtradr](https://github.com/ropensci/software-review/issues/613), Interface with the United Nations Comtrade API. Submitted by [paulbochtler](https://github.com/datapumpernickel). 

    * [baRulho](https://github.com/ropensci/software-review/issues/609), Quantifying (Animal) Sound Degradation. Submitted by [Marcelo Araya-Salas](https://marceloarayasalas.weebly.com/). 

    * [rangr](https://github.com/ropensci/software-review/issues/595), Mechanistic Simulation of Species Range Dynamics. Submitted by [Katarzyna Markowska](https://github.com/katarzynam-165). 

    * [mregions2](https://github.com/ropensci/software-review/issues/590), Access Data from Marineregions.org: The Marine Regions Gazetteer and the Marine Regions Data Products. Submitted by [salvafern](https://salvafern.github.io/). 

    * [pangoling](https://github.com/ropensci/software-review/issues/575), Access to Large Language Model Predictions. Submitted by [Bruno Nicenboim](https://bnicenboim.github.io/). 

    * [dfms](https://github.com/ropensci/software-review/issues/556), Dynamic Factor Models. Submitted by [Sebastian Krantz](https://github.com/SebKrantz). 

    * [fwildclusterboot](https://github.com/ropensci/software-review/issues/546), Fast Wild Cluster Bootstrap Inference for Linear Models. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/).  (Stats).

* Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [weatherOz](https://github.com/ropensci/software-review/issues/598), An API Client for Australian Weather and Climate Data Resources. Submitted by [Rodrigo Pires](https://github.com/bozaah). 

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](https://jounihelske.netlify.app).  (Stats).

* Four at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [fellingdateR](https://github.com/ropensci/software-review/issues/618), Estimate, report and combine felling dates of historical tree-ring. Submitted by [KriHa](https://wwww.researchgate.net/profile/Kristof_Haneca). 

    * [rgeeExtra](https://github.com/ropensci/software-review/issues/608), Extensions for rgee. Submitted by [Cesar Aybar](http://csaybar.github.io). 

    * [agromet](https://github.com/ropensci/software-review/issues/599), Índices y Estadísticos Climáticos e Hidrológicos. Submitted by [Paola Corrales](https://paocorrales.github.io). 

    * [qualtdict](https://github.com/ropensci/software-review/issues/572), Generating Variable Dictionaries and Labelled Data Exports of Qualtrics. Submitted by [lyh970817](https://github.com/lyh970817). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



* [The rOpenSci Multiverse](/blog/2023/11/06/r-universe-stars-finale) by Alejandra Bellini and Yanina Bellini Saibene. In this article we summarize the interviews of the series *Meeting the stars of the R universe* In this article, we bring you five examples of organizations and teams that choose the R Universe to facilitate access and promote community sharing of data and software. Other languages: <a href='/es/blog/2023/11/06/r-universe-stars-finale-es' lang='es'>El multiverso de rOpenSci (es)</a>.

* [Empowering Open Science: Donate to Support our Mission](/blog/2023/11/21/donation-2023) by The rOpenSci Team. rOpenSci is a nonprofit organization that is funded entirely by grants and donations. These collaborations enable us to sustain our projects and meet our goals.



### Tech Notes

* [Scanning QR codes in R](/blog/2023/10/30/opencv-qr) by Jeroen Ooms. The new version of the opencv package includes a cool QR code scanner. This post was featured in the [R Weekly Highlights podcast](https://rweekly.fireside.fm/143) hosted by Eric Nantz and Mike Thomas.

* [R-universe now builds WASM binaries for all R packages](/blog/2023/11/17/runiverse-wasm) by Jeroen Ooms. R-universe now builds WebAssembly binaries for all R packages for use in WebR applications such as shinylive.

## Use cases



Three use cases of our packages and resources have been reported since we sent the last newsletter.

* [A toolkit workflow for climate-sensitive infectious disease modelling](https://discuss.ropensci.org/t/a-toolkit-workflow-for-climate-sensitive-infectious-disease-modelling/3659). Reported by Raphael Saldanha.

* [Targets and other tools to make college comparison website](https://discuss.ropensci.org/t/targets-and-other-tools-to-make-college-comparison-website/3680). Reported by Brian O'Meara.

* [Unlock R functions with QR codes](https://discuss.ropensci.org/t/unlock-r-functions-with-qr-codes/3681). Reported by Matt Dray.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/) (or listening to its discussion on the [R Weekly highlights podcast](https://rweekly.fireside.fm/111) hosted by Eric Nantz and Mike Thomas)!

- **[rvertnet](https://cran.r-project.org/web/packages/rvertnet/index.html)**, Retrieve, map and summarize data from the VertNet.org archives (<https://vertnet.org/>). Functions allow searching by many parameters, including taxonomic names, places, and dates. In addition, there is an interface for conducting spatially delimited searches, and another for requesting large datasets via email. [Issue for volunteering](https://github.com/ropensci-archive/rvertnet/issues/71).

### Call for co-maintainers

Refer to our somewhat [recent blog post](/blog/2022/10/17/maintain-or-co-maintain-an-ropensci-package/#packages-looking-for-co-maintainers) to identify other packages where help is especially wished for!
See also our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:
For a change, this month's tips are more about programming than about packaging.

### Classed conditions from rlang functions

If you use rlang (or cli, that will pass arguments to rlang) for messages, warnings, errors, you can add a class to the signal you're returning.
This is handy for conditionally suppressing some warnings, and also for more specific testing, as explained in [Mike Mahoney's short and insightful blog post](https://www.mm218.dev/posts/2023-11-07-classed-errors/).

### Static code analysis with lintr

The lintr package helps you write better R code by detecting common mistakes.
It is customizable: you can skip the linters you're not interested in.

A new version of the package was recently released on CRAN.
Refer to the [changelog](https://lintr.r-lib.org/news/index.html#lintr-311) for the changes, including a way to exclude the next line for linting, and new linters, for instance `length_levels_linter()` "for using the specific function `nlevels()` instead of checking `length(levels(x))`".

### How to get good with R

Nick Tierney wrote a wise post on [How to get good with R](https://www.njtierney.com/post/2023/11/10/how-to-get-good-with-r/), and the conclusion indicates he's open to discussion.
An important topic not only for package developers.

### Lesser-known reasons to prefer `apply()` over for loops

Hugo Gruson wrote a very informative blog post on ["Lesser-known reasons to prefer `apply()` over for loops"](https://epiverse-trace.github.io/posts/for-vs-apply/).
The third one will surprise you. :wink: (Yes, this is click bait.)

### Null coalescing operator soon in base R

The `%||%` operator that you [might know](https://masalmon.eu/2023/06/06/basic-patterns/#use-a-default-if-the-user-provided-null) from rlang has been added to [the development version of base R](https://github.com/wch/r-source/commit/10df7eac991c297271e16c7a1888240196d540f2)!
Source: a [toot of Jenny Bryan's](https://mastodon.social/@jennybryan@fosstodon.org/111302964212692505).

### Evercran: run historical R versions on today's computers

Gábor Csárdi's experimental [evercran project](https://github.com/r-hub/evercran#readme) helps you run historical R versions on today's computers

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.
You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
