---
title: 'rOpenSci News Digest, April 2024'
author: 'The rOpenSci Team'
date: '2024-04-22'
tags:
  - newsletter
slug: ropensci-news-april-2024
description: R-universe docs thanks to GSOD, community calls, new packages and package news
params:
  last_newsletter: '2024-03-29'
---



<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2024/04/22/ropensci-news-april-2024).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

- [Tuesday, May 7th, 09:00 Americas Pacific (16:00 UTC)](/events/coworking-2024-05), Meet rOpenSci's new Executive Director! With cohost [Noam Ross](/author/noam-ross) and [Steffi LaZerte](/author/steffi-lazerte).
    - Learn more about rOpenSci!
    - Explore rOpenSci [packages](/packages) and [contributing guide](https://contributing.ropensci.org/)
    - Ask questions or chat about rOpensci with Noam and other attendees.
    
- Tuesday, June 4th, 09:00 Australia Western (01:00 UTC), Theme TBD with cohost TBD and [Steffi LaZerte](/author/steffi-lazerte).
And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

### R-Universe documentation gets a boost from Google Season of Docs

We are excited and grateful to [announce](/blog/2024/04/12/gsod-announcement/) that [R-Universe](https://r-universe.dev/) has been awarded a [Google Season of Docs](https://developers.google.com/season-of-docs) grant. R-Universe is rOpenSci’s platform for testing, building, distributing, and discovering R packages, led by [Jeroen Ooms](/author/jeroen-ooms/).

With the support of Google, we aim to update and centralize our documentation, showcasing how users and developers can get the most out of R-Universe. We will update the documentation to catch up with the rapid feature development of the past two years, including consolidating our many tech notes and READMEs into an easily discoverable site. We will build the site with Quarto to make it straightforward for R community members to contribute.

The work will be led by [Maëlle Salmon](/author/maëlle-salmon/).

### Learn about a different package every day by following our social media campaigns 


The goal of a community is to collaborate, share knowledge and build learnings.  That's why we want to show you the more than 300 packages in our federated community of open-source software developers. 

Since December 2023, we have run the social media campaigns [“A Package a Day](https://hachyderm.io/@rOpenSci/tagged/APackageADay) on [Mastodon](https://hachyderm.io/@rOpenSci), in which we feature one package each day. On [LinkedIn](https://www.linkedin.com/company/ropensci/), we publish our [Package Weekly Digest](https://www.linkedin.com/feed/hashtag/?keywords=packageweeklydigest&highlightedUpdateUrns=urn%3Ali%3Aactivity%3A7170464303186108416) every Monday with a list of five packages that belong to the same category.

You can follow us and the hashtags #APackageADay and #PackageWeeklyDigest to stay informed about rOpenSci R packages and learn about them.


### Help us put together the rOpenSci Community Call calendar for the year!

We are organizing the Community Calls for this year. Could you help us decide which topics we should cover? 

We hold [Community Calls](/commcalls/) to share knowledge that is relevant to our community and consistent with [our vision and mission](/about/). These are free and open for anyone to attend and provide opportunities for us to connect with rOpenSci community members around the world.
We’ve [opened an issue in this repository for each topic we’re considering](https://github.com/ropensci-org/community-calls/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc). We’d like your input and “votes” on these, and your suggestions for other topics we haven’t thought of.

We would love to hear your ideas. 🙏 

## Software :package:


### New packages




The following two packages recently became a part of our software suite, or were recently reviewed again:

+ [baRulho](https://docs.ropensci.org/baRulho), developed by Marcelo Araya-Salas: Intended to facilitate acoustic analysis of (animal) sound transmission experiments, which typically aim to quantify changes in signal structure when transmitted in a given habitat by broadcasting and re-recording animal sounds at increasing distances. The package offers a workflow with functions to prepare the data set for analysis as well as to calculate and visualize several degradation metrics, including blur ratio, signal-to-noise ratio, excess attenuation and envelope correlation among others (Dabelsteen et al 1993 <https://doi.org/10.1121/1.406682>).  It is available on [CRAN]( https://CRAN.R-project.org/package=baRulho). It has been [reviewed](https://github.com/ropensci/software-review/issues/609) by Mike Mahoney and Dena J. Clink.

+ [fellingdater](https://docs.ropensci.org/fellingdater), developed by Kristof Haneca: fellingdater is an R package that aims to facilitate the analysis and interpretation of tree-ring data from wooden cultural heritage objects and structures. The package standardizes the process of computing and combining felling date estimates, both for individual and groups of related tree-ring series. It has been [reviewed](https://github.com/ropensci/software-review/issues/618) by Antonio Jesus Pérez-Luque and Nicholas John Tierney.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following seventeen packages have had an update since the last newsletter: [frictionless](https://docs.ropensci.org/frictionless "Read and Write Frictionless Data Packages") ([`v1.1.0`](https://github.com/frictionlessdata/frictionless-r/releases/tag/v1.1.0)), [beautier](https://docs.ropensci.org/beautier "BEAUti from R") ([`v2.6.12`](https://github.com/ropensci/beautier/releases/tag/v2.6.12)), [bib2df](https://docs.ropensci.org/bib2df "Parse a BibTeX File to a Data Frame") ([`v1.1.2.0`](https://github.com/ropensci/bib2df/releases/tag/v1.1.2.0)), [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (cff) Metadata for R Packages") ([`v1.0.1`](https://github.com/ropensci/cffr/releases/tag/v1.0.1)), [crul](https://docs.ropensci.org/crul "HTTP Client") ([`v1.4.2`](https://github.com/ropensci/crul/releases/tag/v1.4.2)), [DataPackageR](https://docs.ropensci.org/DataPackageR "Construct Reproducible Analytic Data Sets as R Packages") ([`v0.15.9`](https://github.com/ropensci/DataPackageR/releases/tag/v0.15.9)), [dbparser](https://docs.ropensci.org/dbparser "Drugs Databases Parser") ([`v2.0.3`](https://github.com/ropensci/dbparser/releases/tag/v2.0.3)), [dittodb](https://docs.ropensci.org/dittodb "A Test Environment for Database Requests") ([`v0.1.8`](https://github.com/ropensci/dittodb/releases/tag/v0.1.8)), [eia](https://docs.ropensci.org/eia "API Wrapper for U.S. Energy Information Administration (EIA) Open Data") ([`v0.4.2`](https://github.com/ropensci/eia/releases/tag/v0.4.2)), [fellingdater](https://docs.ropensci.org/fellingdater "Estimate, report and combine felling dates of historical tree-ring 
    series") ([`v1.0.0`](https://github.com/ropensci/fellingdater/releases/tag/v1.0.0)), [jagstargets](https://docs.ropensci.org/jagstargets "Targets for JAGS Pipelines") ([`1.2.0`](https://github.com/ropensci/jagstargets/releases/tag/1.2.0)), [melt](https://docs.ropensci.org/melt "Multiple Empirical Likelihood Tests") ([`v1.11.3`](https://github.com/ropensci/melt/releases/tag/v1.11.3)), [riem](https://docs.ropensci.org/riem "Accesses Weather Data from the Iowa Environment Mesonet") ([`v0.3.1`](https://github.com/ropensci/riem/releases/tag/v0.3.1)), [spatsoc](https://docs.ropensci.org/spatsoc "Group Animal Relocation Data by Spatial and Temporal Relationship") ([`v0.2.3`](https://github.com/ropensci/spatsoc/releases/tag/v0.2.3)), [stantargets](https://docs.ropensci.org/stantargets "Targets for Stan Workflows") ([`0.1.1`](https://github.com/ropensci/stantargets/releases/tag/0.1.1)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.9.0`](https://github.com/ropensci/tarchetypes/releases/tag/0.9.0)), and [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.7.0`](https://github.com/ropensci/targets/releases/tag/1.7.0)).

## Software Peer Review

There are thirteen recently closed and active submissions and 6 submissions on hold. Issues are at different stages: 

* One at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [fellingdateR](https://github.com/ropensci/software-review/issues/618), Estimate, report and combine felling dates of historical tree-ring. Submitted by [KriHa](https://www.researchgate.net/profile/Kristof_Haneca). 

* Two at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [dendroNetwork](https://github.com/ropensci/software-review/issues/627), Create networks of dendrochronological series using pairwise similarity. Submitted by [RonaldVisser](https://akademienl.social/@RonaldVisser). 

    * [mregions2](https://github.com/ropensci/software-review/issues/590), Access Data from Marineregions.org: The Marine Regions Gazetteer and the Marine Regions Data Products. Submitted by [salvafern](https://salvafern.github.io/). 

* Four at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [rix](https://github.com/ropensci/software-review/issues/625), Rix: Reproducible Environments with Nix. Submitted by [Bruno Rodrigues](https://brodrigues.co). 

    * [karel](https://github.com/ropensci/software-review/issues/620), Learning programming with Karel the robot. Submitted by [Marcos Prunello](https://unr.edu.ar/). 

    * [rgeeExtra](https://github.com/ropensci/software-review/issues/608), Extensions for rgee. Submitted by [Cesar Aybar](https://csaybar.github.io). 

    * [agromet](https://github.com/ropensci/software-review/issues/599), Índices y Estadísticos Climáticos e Hidrológicos. Submitted by [Paola Corrales](https://paocorrales.github.io). 

* Two at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [rOPTRAM](https://github.com/ropensci/software-review/issues/612), Derive soil moisture using the OPTRAM algorithm. Submitted by [Micha Silver](https://github.com/micha-silver). 

    * [fwildclusterboot](https://github.com/ropensci/software-review/issues/546), Fast Wild Cluster Bootstrap Inference for Linear Models. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/).  (Stats).

* Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [cancerprof](https://github.com/ropensci/software-review/issues/637), API Client for State Cancer Profiles. Submitted by [Brian Park](https://github.com/realbp). 

    * [rsi](https://github.com/ropensci/software-review/issues/636), Efficiently Retrieve and Process Satellite Imagery. Submitted by [Michael Mahoney](https://mm218.dev/). 

* Two at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [osmapiR](https://github.com/ropensci/software-review/issues/633), OpenStreetMap API. Submitted by [Joan Maspons](https://orcid.org/0000-0003-2286-8727). 

    * [gigs](https://github.com/ropensci/software-review/issues/626), Assess Fetal, Newborn, and Child Growth with International Standards. Submitted by [Simon Parker](https://github.com/simpar1471).  (Stats).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



* [From the Founding Director: My Farewell to rOpenSci](/blog/2024/03/29/from-the-founding-director-my-farewell-to-ropensci) by Karthik Ram. Karthik Ram steps down as Executive Director after 13 years. Other languages: <a href='/es/blog/2024/03/29/from-the-founding-director-my-farewell-to-ropensci' lang='es'>Del Director Fundador: Mi despedida de rOpenSci (es)</a>.

* [Hello from our New Executive Director!](/blog/2024/03/29/hello-from-our-new-executive-director) by Noam Ross. Noam Ross takes the helm as rOpenSci's new Executive Director. Other languages: <a href='/es/blog/2024/03/29/hello-from-our-new-executive-director' lang='es'>Hola de nuestro nuevo Director Ejecutivo (es)</a>.

* [R-Universe Documentation Gets a Boost from Google Season of Docs](/blog/2024/04/12/gsod-announcement) by Noam Ross. We are excited to announce that R-Universe has been awarded a Google Season of Docs.

* [Fostering Equity and Leadership: the rOpenSci Champions Program Selection Process](/blog/2024/04/18/champions-program-2024) by Francisco Cardozo, Yanina Bellini Saibene, Camille Santistevan, and Lou Woodley. The rOpenSci Champions Program fosters inclusivity and diversity in R and open science, emphasizing community engagement and project innovation through a detailed selection process.

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

* [internetarchive](https://docs.ropensci.org/internetarchive/), an API Client for the Internet Archive. [Issue for volunteering](https://github.com/ropensci/internetarchive/issues/17).

* [historydata](https://docs.ropensci.org/historydata/), datasets for historians. [Issue for volunteering](https://github.com/ropensci/historydata/issues/23).

* [textreuse](https://docs.ropensci.org/textreuse/), detect text reuse and document similarity. [Issue for volunteering](https://github.com/ropensci/textreuse/issues/97).

* [USAboundaries](https://docs.ropensci.org/USAboundaries/) (and USAboundariesdata), historical and contemporary boundaries of the United States of America . [Issue for volunteering](https://github.com/ropensci/USAboundaries/issues/50).

### Calls for contributions

* [Help make qualtRics better! Code contributions wanted](/blog/2024/03/01/qualtrics-call-help/)

* [Help make assertr better! Come close issues](/blog/2024/02/27/assertr-call-help/)

* [Help users and developers of targets by answering questions!](/blog/2024/02/29/targets-call-help/)

* [Help make waywiser better! User requests wanted](/blog/2024/02/19/waywiser-call-help/)

Also refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### R-hub version 2!

Gábor Csárdi announced the [second version of R-hub](https://blog.r-hub.io/2024/04/11/rhub2/), for checking your R package, either on GitHub Actions or in an ad-hoc basis, using the rhub2 package.

### Patterns and anti-patterns of data analysis reuse

Miles McBain wrote an [insightful blog](https://www.milesmcbain.com/posts/data-analysis-reuse/) post advocating for creating a universe of related packages to support data analyses at your organization, contrasting this approach with other approaches such as copy-pasting or having a single gigantic package.

### Install several R versions at once with rig

As reminded by [Jenny Bryan on Mastodon](https://mastodon.social/@jennybryan@fosstodon.org/112176595542760673), rig, the [R Installation Manager](https://github.com/r-lib/rig#readme) maintained by Gábor Csárdi, is a fantastic tool for being able to experiment locally with different R versions, especially when developing or debugging your R packages.

### Update on mocking for testing R packages

Mocking is the "art of replacing a function with whatever fake we need for testing", a nice tool to add to your toolbox. 
Read the [R-hub blog post](https://blog.r-hub.io/2024/03/21/mocking-new-take/).

### Be careful when using git clean

Athanasia Mo Mowinckel shared her recent [Git mishap](https://drmowinckels.io/blog/2024/2024/git-clean-woes/) in a helpful post that also includes tips and resources.

### Notes on refactoring an API client

[Scott Chamberlain](/author/scott-chamberlain/) published some [notes about refactoring an API client](https://recology.info/2024/03/refactoring-notes/), including some arguments in favor of "separation of concerns and code".

### Slides on good functions

Nick Tierney posted his useful [slidedeck "Practical Functions: Practically Magic"](https://github.com/njtierney/funfun).

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.
You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
