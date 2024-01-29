---
title: 'rOpenSci News Digest, January 2024'
author: 'The rOpenSci Team'
date: '2024-01-25'
tags:
  - newsletter
slug: news-january-2024
description: MacOS ARM64 binaries for use on Apple Silicon (aka M1/M2/M3) through R-universe; coworking; new packages and package news
params:
  last_newsletter: "2023-12-22"
---



<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2024/01/25/news-january-2024).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### R-Universe
The R-Universe now builds MacOS ARM64 binaries for use on Apple Silicon (aka M1/M2/M3) systems!

Find out more in the related [tech note](/blog/2024/01/14/runiverse-arm64/).

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/) in our recent [post](/blog/2023/06/21/coworking/)!

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

- [Tuesday, February 6th, 9:00 Americas Pacific (17:00 UTC)](/events/coworking-2024-02/), R-Universe Office Hours. With cohost [Jeroen Ooms](/author/jeroen-ooms/) and [Steffi LaZerte](/author/steffi-lazerte/).
    - Explore what the [R-Universe](https://r-universe.dev/) has to offer;
    - Create your own R-Universe;
    - Ask questions or troubleshoot your R-Universe problems with the cohost and other attendees.

- [Tuesday, March 5th, 9:00 Australia Western (1:00 UTC)](/events/coworking-2024-03/), Dates, Times and Timezones in R. With cohost [Steffi LaZerte](/author/steff-lazerte/) and [Alex Koiter](/author/alex-koiter/).
    - Explore resources for working with dates, times, and timezones in R
    - Work on a project dealing with dates and times
    - Ask questions or troubleshoot your timezone problems with the cohost and other attendees.
    
And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!


## Software :package:

### New packages




The following three packages recently became a part of our software suite, or were recently reviewed again:

+ [GLMMcosinor](https://docs.ropensci.org/GLMMcosinor), developed by Rex Parsons together with Oliver Jayasinghe, Nicole White, and Oliver Rawashdeh: Allows users to fit a cosinor model using the glmmTMB framework. This extends on existing cosinor modelling packages, including cosinor and circacompare, by including a wide range of available link functions and the capability to fit mixed models. The cosinor model is described by Cornelissen (2014) <https://doi.org/10.1186/1742-4682-11-16>.  It is available on [CRAN]( https://CRAN.R-project.org/package=GLMMcosinor). It has been [reviewed](https://github.com/ropensci/software-review/issues/603) by Michael Sachs and Joaquin Cavieres.

+ [rangr](https://docs.ropensci.org/rangr), developed by Katarzyna Markowska together with Lechosław Kuczyński: Species range dynamics simulation toolset. It has been [reviewed](https://github.com/ropensci/software-review/issues/595) by Tad Dallas and Joanne Potts.

+ [comtradr](https://docs.ropensci.org/comtradr), developed by Paul Bochtler together with Harriet Goers and Chris Muir: Interface with and extract data from the United Nations Comtrade API <https://comtradeplus.un.org/>. Comtrade provides country level shipping data for a variety of commodities, these functions allow for easy API query and data returned as a tidy data frame. It has been [reviewed](https://github.com/ropensci/software-review/issues/613) by Alicia Schep, Rafael Hellwig, Ernest Guevarra, and Nicholas Potter.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following fifteen packages have had an update since the last newsletter: [aorsf](https://docs.ropensci.org/aorsf "Accelerated Oblique Random Forests") ([`v0.1.3`](https://github.com/ropensci/aorsf/releases/tag/v0.1.3)), [aRxiv](https://docs.ropensci.org/aRxiv "Interface to the arXiv API") ([`0.8`](https://github.com/ropensci/aRxiv/releases/tag/0.8)), [c14bazAAR](https://docs.ropensci.org/c14bazAAR "Download and Prepare C14 Dates from Different Source Databases") ([`4.1.0`](https://github.com/ropensci/c14bazAAR/releases/tag/4.1.0)), [excluder](https://docs.ropensci.org/excluder "Checks for Exclusion Criteria in Online Data") ([`v0.5.1`](https://github.com/ropensci/excluder/releases/tag/v0.5.1)), [GLMMcosinor](https://docs.ropensci.org/GLMMcosinor "Fit a Cosinor Model Using a Generalised Mixed Modelling Framework") ([`v0.2.0`](https://github.com/ropensci/GLMMcosinor/releases/tag/v0.2.0)), [hoardr](https://docs.ropensci.org/hoardr "Manage Cached Files") ([`v0.5.4`](https://github.com/ropensci/hoardr/releases/tag/v0.5.4)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.10.0`](https://github.com/ropensci/nodbi/releases/tag/v0.10.0)), [piggyback](https://docs.ropensci.org/piggyback "Managing Larger Data on a GitHub Repository") ([`v0.1.5`](https://github.com/ropensci/piggyback/releases/tag/v0.1.5)), [qualtRics](https://docs.ropensci.org/qualtRics "Download Qualtrics Survey Data") ([`v3.2.0`](https://github.com/ropensci/qualtRics/releases/tag/v3.2.0)), [rerddap](https://docs.ropensci.org/rerddap "General Purpose Client for ERDDAP Servers") ([`v1.1.0-1`](https://github.com/ropensci/rerddap/releases/tag/v1.1.0-1)), [rgbif](https://docs.ropensci.org/rgbif "Interface to the Global Biodiversity Information Facility API") ([`v3.7.9`](https://github.com/ropensci/rgbif/releases/tag/v3.7.9)), [rgnparser](https://docs.ropensci.org/rgnparser "Parse Scientific Names") ([`v0.3.0`](https://github.com/ropensci/rgnparser/releases/tag/v0.3.0)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.7.11`](https://github.com/ropensci/tarchetypes/releases/tag/0.7.11)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.4.1`](https://github.com/ropensci/targets/releases/tag/1.4.1)), and [tidyhydat](https://docs.ropensci.org/tidyhydat "Extract and Tidy Canadian Hydrometric Data") ([`v0.6.1`](https://github.com/ropensci/tidyhydat/releases/tag/v0.6.1)).

## Software Peer Review

There are sixteen recently closed and active submissions and 4 submissions on hold. Issues are at different stages: 

* Three at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [comtradr](https://github.com/ropensci/software-review/issues/613), Interface with the United Nations Comtrade API. Submitted by [paulbochtler](https://github.com/datapumpernickel). 

    * [GLMMcosinor](https://github.com/ropensci/software-review/issues/603), Fit a cosinor model using a generalised mixed modelling framework. Submitted by [Rex Parsons](https://rwparsons.github.io/). 

    * [rangr](https://github.com/ropensci/software-review/issues/595), Mechanistic Simulation of Species Range Dynamics. Submitted by [Katarzyna Markowska](https://github.com/katarzynam-165). 

* Two at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [baRulho](https://github.com/ropensci/software-review/issues/609), Quantifying (Animal) Sound Degradation. Submitted by [Marcelo Araya-Salas](https://marce10.github.io/). 

    * [mregions2](https://github.com/ropensci/software-review/issues/590), Access Data from Marineregions.org: The Marine Regions Gazetteer and the Marine Regions Data Products. Submitted by [salvafern](https://salvafern.github.io/). 

* Five at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [quadkeyr](https://github.com/ropensci/software-review/issues/619), Tools for converting QuadKeys used in Microsoft's Bing Maps Tile System into raster images. Submitted by [Florencia D'Andrea](https://github.com/flor14). 

    * [fellingdateR](https://github.com/ropensci/software-review/issues/618), Estimate, report and combine felling dates of historical tree-ring. Submitted by [KriHa](https://www.researchgate.net/profile/Kristof_Haneca). 

    * [rgeeExtra](https://github.com/ropensci/software-review/issues/608), Extensions for rgee. Submitted by [Cesar Aybar](https://csaybar.github.io). 

    * [weatherOz](https://github.com/ropensci/software-review/issues/598), An API Client for Australian Weather and Climate Data Resources. Submitted by [Rodrigo Pires](https://github.com/bozaah). 

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

* Four at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [agromet](https://github.com/ropensci/software-review/issues/599), Índices y Estadísticos Climáticos e Hidrológicos. Submitted by [Paola Corrales](https://paocorrales.github.io). 

    * [pangoling](https://github.com/ropensci/software-review/issues/575), Access to Large Language Model Predictions. Submitted by [Bruno Nicenboim](https://bnicenboim.github.io/). 

    * [dfms](https://github.com/ropensci/software-review/issues/556), Dynamic Factor Models. Submitted by [Sebastian Krantz](https://github.com/SebKrantz). 

    * [fwildclusterboot](https://github.com/ropensci/software-review/issues/546), Fast Wild Cluster Bootstrap Inference for Linear Models. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/).  (Stats).

* Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [karel](https://github.com/ropensci/software-review/issues/620), Learning programming with Karel the robot. Submitted by [Marcos Prunello](https://unr.edu.ar/). 

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](https://jounihelske.netlify.app).  (Stats).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



* [Participación  Latinoamérica en el Programa de Campeonas y Campeones de rOpenSci](/es/blog/2024/01/09/champions-program-latinr) by Yanina Bellini Saibene, Elio Campitelli, Marcos Prunello, Mauro Lepore, Haydee Svab, Beatriz Milz, Carolina Pradier, Cesar Luis Aybar Camacho, and Pao Corrales. Detalles de la participación latinoamericana en el primer año del programa de campeonas y campeones de rOpenSci.

* [rOpenSci 2023 Code of Conduct Transparency Report](/blog/2024/01/12/transparency2023) by Yanina Bellini Saibene, Mark Padgham, and Kara Woo. rOpenSci 2023 Code of Conduct Transparency Report.



### Tech Notes

* [R-universe now builds MacOS ARM64 binaries for use on Apple Silicon (aka M1/M2/M3) systems](/blog/2024/01/14/runiverse-arm64) by Jeroen Ooms

* [How to Update a Translation with Babeldown](/blog/2024/01/16/deepl-update-babeldown) by Maëlle Salmon. This post was discussed on the [R Weekly highlights podcast](https://rweekly.fireside.fm/149) hosted by Eric Nantz and Mike Thomas.

## Call for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

[gendercoder](https://docs.ropensci.org/gendercoder/), Provides functions and dictionaries for recoding of freetext gender responses into more consistent categories. [Issue for volunteering](https://github.com/ropensci/gendercoder/issues/56).

[sofa](https://docs.ropensci.org/sofa/), Provides an interface to the NoSQL database [CouchDB](https://couchdb.apache.org). [Issue for volunteering](https://github.com/ropensci/sofa/issues/82)

### Call for co-maintainers

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### How to get feedback from package users

Matthias Grenié recently asked an intriguing question on [Mastodon](https://ecoevo.social/@LeNematode/111731312906546444): "Do you know any good resource to collect feedback from users? Or general frameworks?". Among the answers, apart from [rOpenSci software peer-review](https://digitalcourage.social/@rstub/111736172101121740) by Ralf Stubner, we note the mention of [friction logs](https://hachyderm.io/@zkamvar/111732172001573387) by Zhian N. Kamvar and of a [dedicated feedback channel](https://fosstodon.org/@almenal99/111733782615742712) by Alvaro Mendoza.

### A tip when refactoring a test file

When refactoring a test file used with testthat (for instance removing top-level code in favor of [test helpers](https://r-pkgs.org/testing-design.html#sec-tests-files-overview)), you can add a [`return()`](https://mastodon.social/@gaborcsardi@fosstodon.org/111719992256767987) in the middle of the file so that when you test the file, only the tests above the return statement are run.
This way, you can make your way through your script, refactoring it little by little and moving the return statement towards the bottom as you go.

### Code clubs

Heidi Seibold wrote about [Code clubs](https://heidiseibold.ck.page/posts/code-clubs-good-coding-practices-for-all) in her newsletter.
A great post to find out about them!
She even mentions [rOpenSci coworking sessions](/coworking).

### Cold-blooded software

Also not R-specific, but have you heard of the phrase ["cold-blooded software"](https://dubroy.com/blog/cold-blooded-software/)?
An innovative way to think of software that's not updated often but still runs.

### A study of CRAN submissions

Lluís Revilla Sancho published an [interesting analysis of CRAN submissions](https://llrs.dev/post/2024/01/10/submission-cran-first-try/) to find out how many were accepted on the first try.
Any guess before reading the blog post?

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.
You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
