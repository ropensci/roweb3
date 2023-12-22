---
title: 'rOpenSci News Digest, December 2023'
author: 'The rOpenSci Team'
date: '2023-12-22'
tags:
  - newsletter
slug: news-december-2023
description: donate to rOpenSci; deposits package for data publishing; a package a day; new packages and package news
params:
  last_newsletter: "2023-11-24"
---



<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2023/12/22/news-december-2023).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Reminder about giving season: consider donating to rOpenSci

This Giving Season consider donating to rOpenSci to support our mission of empowering Open Science.

Sustaining an open project with quality infrastructure freely accessible to the global and diverse community of R software users, research software developers, and engineers requires many different resources. Our organization’s ongoing costs are supported by grants and donations from individuals and organizations which share our vision and mission.

By supporting us, you’re not just donating; you’re contributing to a community that’s breaking down barriers, creating opportunities, and shaping the future of open and reproducible science for everyone. 

Join us in this vital mission today! You can donate here: https://ropensci.org/donate/

We are grateful for the donations we have already received. 

### Easier data publishing: An interview of Mark Padgham about the deposits package!

rOpenSci Mark Padgham was interviewed on the R Consortium blog about his [deposits package](https://www.r-consortium.org/blog/2023/11/30/deposits-r-package-delivers-a-common-workflow-for-r-users) that simplifies data sharing.

> "Publicly depositing datasets associated with published research is becoming more common, partly due to journals increasingly requiring data sharing and partly through more general and ongoing cultural changes with data sharing. Yet data sharing is often seen as time-consuming, particularly to meet the expectations of individual data repositories. While documentation and training can help familiarize users with data-sharing processes, browser-based data, and metadata submission workflows can only be so fast, are not easily reproduced, and do not facilitate regular or automated data and metadata updates. Better programmatic tools can transform data sharing from a mountainous climb into a pit of success."

This interview was furthermore featured on the [R Weekly highlights podcast](https://rweekly.fireside.fm/145?t=848) hosted by Eric Nantz and Mike Thomas.

### rOpenSci Developer Guide Translation to Portuguese 

We want to express our gratitude to the community members who have been actively contributing to the localization and translation of the rOpenSci Developer Guide into Portuguese. 
Your dedication and efforts are making this valuable resource accessible to an even wider audience.  
Here's a quick update on the progress:

* 18% of the book is already translated!
* 2 chapters are awaiting a second review. 
* 24 chapters are still awaiting translation. 
* 7 amazing contributors are driving this initiative: _Pedro Duarte Faria, Daniel Vartanian, Marcelo Perlin, Beatriz Milz, João Granja-Correia, António Pedro and Mariana._ Thank you for the incredible work you've done so far! 

We're not done yet, and we invite more members of our community to join this collaborative effort. 
If you want to contribute to the translation project, join us on GitHub: [rOpenSci Developer Guide Translation Project](https://github.com/orgs/ropensci/projects/7).

### "A package a day" series on Mastodon and LinkedIn!

We've started sharing about packages from our federated community of open source software developers, once a day on [Mastodon](https://mastodon.social/@rOpenSci@hachyderm.io/111522245481433695); and as a weekly digest on [LinkedIn](https://www.linkedin.com/feed/update/urn:li:activity:7140023562223943680)!
On Mastodon: follow us, or search for `from:@rOpenSci@hachyderm.io #apackageaday` to find all posts until now.

### Resources for [multilingual publishing](/commcalls/nov2023-multilingual/) community call, English and Spanish

On this [community call](/commcalls/nov2023-multilingual/) ([Spanish](/commcalls/nov2023-multilenguaje/)), [Maëlle Salmon](/author/ma%C3%ABlle-salmon/), [Paola Corrales](/author/pao-corrales/), and [Elio Campitelli](/author/elio-campitelli/), shared the rOpenSci Multilingual project details. Maëlle presented the R packages that allow us to have our content in several languages. Elio and Paola shared about the translation workflow and showed the Translation Guide written to document the process.

We've now posted, for the [call in English](/commcalls/nov2023-multilingual/) and the [call in Spanish](/commcalls/nov2023-multilenguaje/):
- video + captions
- speakers slides
- collaborative notes with Q&A
- links to R packages + localization guidelines + Dev Guide English + Spanish + Portuguese (WIP).

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/) in our recent [post](/blog/2023/06/21/coworking/)!

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

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




The following three packages recently became a part of our software suite:

+ [wmm](https://docs.ropensci.org/wmm), developed by Will Frierson: Calculate magnetic field at a given location and time according to the World Magnetic Model (WMM). Both the main field and secular variation components are returned. This functionality is useful for physicists and geophysicists who need orthogonal components from WMM. Currently, this package supports annualized time inputs between 2000 and 2025. If desired, users can specify which WMM version to use, e.g., the original WMM2015 release or the recent out-of-cycle WMM2015 release.  It is available on [CRAN]( https://CRAN.R-project.org/package=wmm). It has been [reviewed](https://github.com/ropensci/software-review/issues/522) by Athanasia Monika Mowinckel and Rohit Goswami.

+ [birdsize](https://docs.ropensci.org/birdsize), developed by Renata Diaz: Generate estimated body size distributions for populations or communities of birds, given either species ID or species' mean body size. Designed to work naturally with the North American Breeding Bird Survey, or with any dataset of bird species, abundance, and/or mean size data. It has been [reviewed](https://github.com/ropensci/software-review/issues/577) by Quentin Read and Matt Strimas-Mackey.

+ [naijR](https://docs.ropensci.org/naijR), developed by Victor Ordu: A set of convenience functions as well as geographical/political data about Nigeria, aimed at simplifying work with data and information that are specific to the country.  It is available on [CRAN]( https://CRAN.R-project.org/package=naijR). It has been [reviewed](https://github.com/ropensci/software-review/issues/600) by Emily Riederer, Margaret Siple, and Cagri Alican.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following eleven packages have had an update since the last newsletter: [biomartr](https://docs.ropensci.org/biomartr "Genomic Data Retrieval") ([`v1.0.7`](https://github.com/ropensci/biomartr/releases/tag/v1.0.7)), [datefixR](https://docs.ropensci.org/datefixR "Standardize Dates in Different Formats or with Missing Data") ([`v1.6.1`](https://github.com/ropensci/datefixR/releases/tag/v1.6.1)), [dwctaxon](https://docs.ropensci.org/dwctaxon "Edit and Validate Darwin Core Taxon Data") ([`v2.0.3`](https://github.com/ropensci/dwctaxon/releases/tag/v2.0.3)), [git2r](https://docs.ropensci.org/git2r "Provides Access to Git Repositories") ([`v0.33.0`](https://github.com/ropensci/git2r/releases/tag/v0.33.0)), [gitignore](https://docs.ropensci.org/gitignore "Create Useful .gitignore Files for your Project") ([`v0.1.6`](https://github.com/ropensci/gitignore/releases/tag/v0.1.6)), [gittargets](https://docs.ropensci.org/gittargets "Data Version Control for the Targets Package") ([`0.0.7`](https://github.com/ropensci/gittargets/releases/tag/0.0.7)), [magick](https://docs.ropensci.org/magick "Advanced Graphics and Image-Processing in R") ([`v2.8.2`](https://github.com/ropensci/magick/releases/tag/v2.8.2)), [rnaturalearth](https://docs.ropensci.org/rnaturalearth "World Map Data from Natural Earth") ([`v1.0.1`](https://github.com/ropensci/rnaturalearth/releases/tag/v1.0.1)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.7.10`](https://github.com/ropensci/tarchetypes/releases/tag/0.7.10)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.4.0`](https://github.com/ropensci/targets/releases/tag/1.4.0)), and [tic](https://docs.ropensci.org/tic "CI-Agnostic Workflow Definitions") ([`v0.14.0`](https://github.com/ropensci/tic/releases/tag/v0.14.0)).

## Software Peer Review

There are twenty recently closed and active submissions and 2 submissions on hold. Issues are at different stages: 

* Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [naijR](https://github.com/ropensci/software-review/issues/600), Operations to Ease Data Analyses Specific to Nigeria. Submitted by [Victor Ordu ](https://victorordu.wordpress.com). 

    * [birdsize](https://github.com/ropensci/software-review/issues/577), Estimate Avian Body Size Distributions. Submitted by [Renata Diaz](https://diazrenata.github.io/home/). 

* Two at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [rangr](https://github.com/ropensci/software-review/issues/595), Mechanistic Simulation of Species Range Dynamics. Submitted by [Katarzyna Markowska](https://github.com/katarzynam-165). 

    * [mregions2](https://github.com/ropensci/software-review/issues/590), Access Data from Marineregions.org: The Marine Regions Gazetteer and the Marine Regions Data Products. Submitted by [salvafern](https://salvafern.github.io/). 

* Three at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [comtradr](https://github.com/ropensci/software-review/issues/613), Interface with the United Nations Comtrade API. Submitted by [paulbochtler](https://github.com/datapumpernickel). 

    * [GLMMcosinor](https://github.com/ropensci/software-review/issues/603), Fit a cosinor model using a generalised mixed modelling framework. Submitted by [Rex Parsons](https://rwparsons.github.io/). 

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

* Nine at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [rgeeExtra](https://github.com/ropensci/software-review/issues/608), Extensions for rgee. Submitted by [Cesar Aybar](https://csaybar.github.io). 

    * [fellingdateR](https://github.com/ropensci/software-review/issues/618), Estimate, report and combine felling dates of historical tree-ring. Submitted by [KriHa](https://www.researchgate.net/profile/Kristof_Haneca). 

    * [rOPTRAM](https://github.com/ropensci/software-review/issues/612), Derive soil moisture using the OPTRAM algorithm. Submitted by [Micha Silver](https://github.com/micha-silver). 

    * [baRulho](https://github.com/ropensci/software-review/issues/609), Quantifying (Animal) Sound Degradation. Submitted by [Marcelo Araya-Salas](https://marce10.github.io/). 

    * [rgeeExtra](https://github.com/ropensci/software-review/issues/608), Extensions for rgee. Submitted by [Cesar Aybar](https://csaybar.github.io). 

    * [weatherOz](https://github.com/ropensci/software-review/issues/598), An API Client for Australian Weather and Climate Data Resources. Submitted by [Rodrigo Pires](https://github.com/bozaah). 

    * [pangoling](https://github.com/ropensci/software-review/issues/575), Access to Large Language Model Predictions. Submitted by [Bruno Nicenboim](https://bnicenboim.github.io/). 

    * [dfms](https://github.com/ropensci/software-review/issues/556), Dynamic Factor Models. Submitted by [Sebastian Krantz](https://github.com/SebKrantz). 

    * [fwildclusterboot](https://github.com/ropensci/software-review/issues/546), Fast Wild Cluster Bootstrap Inference for Linear Models. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/).  (Stats).

* Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [agromet](https://github.com/ropensci/software-review/issues/599), Índices y Estadísticos Climáticos e Hidrológicos. Submitted by [Paola Corrales](https://paocorrales.github.io). 

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](https://jounihelske.netlify.app).  (Stats).

* Two at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [quadkeyr](https://github.com/ropensci/software-review/issues/619), Tools for converting QuadKeys used in Microsoft's Bing Maps Tile System into raster images. Submitted by [Florencia D'Andrea](https://github.com/flor14). 

    * [qualtdict](https://github.com/ropensci/software-review/issues/572), Generating Variable Dictionaries and Labelled Data Exports of Qualtrics. Submitted by [lyh970817](https://github.com/lyh970817). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



* [Introducing rOpenSci Mentors - Cohort 2023-2024](/blog/2023/11/29/champions-program-mentors-2023) by Apoorv Anand, Bruna Wundervald, Eunseop Kim, Emi Tanaka, François Michonneau, Francisco Cardozo, Luis Verde Arregoitia, Erle Holgersen, Marie Vendettuoli, Jonathan Keane, and Yanina Bellini Saibene.

* [Divide and Conquer: From polar To the Polarverse](/blog/2023/12/05/divide_and_you_will_win_from_polar_to_the_polarverse) by Juan Pablo Ruiz Nicolini. Political Science Meets Coding: Crafting the polarverse with R and the LatinR Connection. Other languages: <a href='/es/blog/2023/12/05/2023-12-05-divide-y-venceras-de-polar-al-polarverse' lang='es'>Divide y venceras: de polar al Polarverse (es)</a>.

* [2023 rOpensci Champions Program: My Experience](/blog/2023/12/19/champions-program-2023-experience) by Bilikisu Wunmi Olatunji.

## Call for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

- **[rvertnet](https://cran.r-project.org/web/packages/rvertnet/index.html)**, Retrieve, map and summarize data from the VertNet.org archives (<https://vertnet.org/>). Functions allow searching by many parameters, including taxonomic names, places, and dates. In addition, there is an interface for conducting spatially delimited searches, and another for requesting large datasets via email. [Issue for volunteering](https://github.com/ropensci-archive/rvertnet/issues/71).

### Call for co-maintainers

Refer to our somewhat [recent blog post](/blog/2022/10/17/maintain-or-co-maintain-an-ropensci-package/#packages-looking-for-co-maintainers) to identify other packages where help is especially wished for!
See also our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### An older post about dependencies

Do you know of the post ["Playing on the same team as your dependency"](https://www.tidyverse.org/blog/2022/09/playing-on-the-same-team-as-your-dependecy/) by Thomas Lin Pedersen?
It's a take from the maintainer perspective, on how maintainers of reverse dependencies can help make the relationship a two-way one.

### Cliff notes about the cli package

If you missed our [October coworking session hosted by Athanasia Mo Mowinckel](/events/coworking-2023-10/), or attended and enjoyed it, you might want to read Athanasia's and Maëlle's [post about the cli package](https://blog.r-hub.io/2023/11/30/cliff-notes-about-cli/)!
The cli package maintained by Gábor Csárdi allows you to build pretty user-interfaces (messages, including error messages and progress bars).

### "Prepare for CRAN" list of resources

Do you know about the GitHub repository ["Prepare for CRAN"](https://github.com/ThinkR-open/prepare-for-cran) maintained by ThinkR with help from the R community?
It contains good tips and gotchas for CRAN submissions.

### More accessible and usable cheatsheets: HTML format!

If you plan to create, or already maintain, a cheatsheet for a package of yours, you might be inspired from Posit's recent publication of [cheatsheets in HTML format](https://posit.co/blog/posit-cheatsheets-now-in-html/) for better accessibility and improved usage in the browser.
The cheatsheet are Quarto documents, see their [source](https://github.com/rstudio/cheatsheets/).
Another example of HTML cheatsheet is the one for the dm package, which is actually integrated as an [article in a pkgdown website](https://dm.cynkra.com/articles/cheatsheet.html) ([source](https://github.com/cynkra/dm/blob/main/vignettes/articles/cheatsheet.Rmd)).

### Code Smell: Error Handling Eclipse

Don't miss Nick Tierney's post ["Code Smell: Error Handling Eclipse"](https://www.njtierney.com/post/2023/12/06/long-errors-smell/), on why and how to refactor your code so that error-handling code doesn't crowd your function body.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.
You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
