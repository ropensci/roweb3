---
title: 'rOpenSci News Digest, September 2023'
author: 'The rOpenSci Team'
date: '2023-09-22'
tags:
  - newsletter
slug: news-september-2023
description: Open Call for Champions program, community call in Spanish and English, coworking
params:
  last_newsletter: "2023-08-25"
---



<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2023/09/22/news-september-2023).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### WebAssembly support in R-universe!

Thanks to some help from George Stagg, we added experimental support for building WebAssembly binary packages. This makes it possible to install packages in [webr](https://docs.r-wasm.org/webr/latest/), directly from r-universe.


### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/) in our recent [post](/blog/2023/06/21/coworking/)!

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

- ~~**Note** October coworking is cancelled (see you in November!)~~ **Nope, it's back on!** Stay tuned for coworking Tuesday, October 3rd, 14h00 Europe Central (12:00 UTC), Theme TBA

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!





### Reminder: Our first community call in Spanish (and English too)

As global movements, Open Source and Open Science face language-based exclusion as most resources are in English. This affects scientists and research software engineers working in R, particularly those who don’t have English as their first language.

rOpenSci multilingual efforts aim to lower access barriers, democratize quality resources, and increase the possibilities of contributing to open software and science. We successfully piloted our Spanish-language peer review and the localization to Spanish of our comprehensive guide to software development, with Portuguese translation underway.

[Maëlle Salmon](/author/ma%C3%ABlle-salmon/), [Paola Corrales](/author/paola-corrales/), and [Elio Campitelli](/author/elio-campitelli/),  will share the rOpenSci Multilingual project details on this call. Maëlle will present the R packages that allow us to have our content in several languages. Then Elio and Paola will share the translation workflow and show the Translation Guide written to document the process.

- [**Multilingual Publishing**:  Tuesday, 21 November 2023 12:00 UTC](/commcalls/nov2023-multilingual/).

- [**Proyecto Multilingüe**: Thursday, 23 November 2023 12:00 UTC](/commcalls/nov2023-multilenguaje/).


## Software :package:




### New versions



The following eleven packages have had an update since the last newsletter: [bold](https://docs.ropensci.org/bold "Interface to Bold Systems API") ([`v1.3.0`](https://github.com/ropensci/bold/releases/tag/v1.3.0)), [charlatan](https://docs.ropensci.org/charlatan "Make Fake Data") ([`v0.5.1`](https://github.com/ropensci/charlatan/releases/tag/v0.5.1)), [eph](https://docs.ropensci.org/eph "Argentina's Permanent Household Survey Data and Manipulation Utilities") ([`v1.0.0`](https://github.com/ropensci/eph/releases/tag/v1.0.0)), [geojsonio](https://docs.ropensci.org/geojsonio "Convert Data from and to GeoJSON or TopoJSON") ([`v0.11.3`](https://github.com/ropensci/geojsonio/releases/tag/v0.11.3)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.9.7`](https://github.com/ropensci/nodbi/releases/tag/v0.9.7)), [readODS](https://docs.ropensci.org/readODS "Read and Write ODS Files") ([`v2.1.0`](https://github.com/ropensci/readODS/releases/tag/v2.1.0)), [rgbif](https://docs.ropensci.org/rgbif "Interface to the Global Biodiversity Information Facility API") ([`v3.7.8`](https://github.com/ropensci/rgbif/releases/tag/v3.7.8)), [spatsoc](https://docs.ropensci.org/spatsoc "Group Animal Relocation Data by Spatial and Temporal Relationship") ([`v0.2.2`](https://github.com/ropensci/spatsoc/releases/tag/v0.2.2)), [stplanr](https://docs.ropensci.org/stplanr "Sustainable Transport Planning") ([`v1.1.2`](https://github.com/ropensci/stplanr/releases/tag/v1.1.2)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.7.8`](https://github.com/ropensci/tarchetypes/releases/tag/0.7.8)), and [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.3.0`](https://github.com/ropensci/targets/releases/tag/1.3.0)).

## Software Peer Review

There are sixteen recently closed and active submissions and 3 submissions on hold. Issues are at different stages: 

* Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [eph](https://github.com/ropensci/software-review/issues/593), Argentina's Permanent Household Survey Data and Manipulation Utilities. Submitted by [Carolina Pradier](https://drive.google.com/file/d/1mlRCWYoqmLKUejy4eF-jtVBDUAHlS4go/view?usp=sharing). 

    * [ohun](https://github.com/ropensci/software-review/issues/568), Optimizing Acoustic Signal Detection. Submitted by [Marcelo Araya-Salas](https://marceloarayasalas.weebly.com/). 

* Two at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [wmm](https://github.com/ropensci/software-review/issues/522), World Magnetic Model. Submitted by [Will Frierson](https://github.com/wfrierson). 

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

* Seven at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [fastMatMR](https://github.com/ropensci/software-review/issues/606), "fastMatMR: High-Performance Matrix Market File Operations in R". Submitted by [Rohit Goswami](https://rgoswami.me). 

    * [naijR](https://github.com/ropensci/software-review/issues/600), Operations to Ease Data Analyses Specific to Nigeria. Submitted by [Victor Ordu ](https://victorordu.wordpress.com). 

    * [rangr](https://github.com/ropensci/software-review/issues/595), Mechanistic Simulation of Species Range Dynamics. Submitted by [Katarzyna Markowska](https://github.com/katarzynam-165). 

    * [mregions2](https://github.com/ropensci/software-review/issues/590), Access Data from Marineregions.org: The Marine Regions Gazetteer and the Marine Regions Data Products. Submitted by [salvafern](https://salvafern.github.io/). 

    * [pangoling](https://github.com/ropensci/software-review/issues/575), Access to Large Language Model Predictions. Submitted by [Bruno Nicenboim](https://bnicenboim.github.io/). 

    * [dfms](https://github.com/ropensci/software-review/issues/556), Dynamic Factor Models. Submitted by [Sebastian Krantz](https://github.com/SebKrantz). 

    * [fwildclusterboot](https://github.com/ropensci/software-review/issues/546), Fast Wild Cluster Bootstrap Inference for Linear Models. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/).  (Stats).

* Three at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [GLMMcosinor](https://github.com/ropensci/software-review/issues/603), Fit a cosinor model using a generalised mixed modelling framework. Submitted by [Rex Parsons](https://rwparsons.github.io/). 

    * [weatherOz](https://github.com/ropensci/software-review/issues/598), An API Client for Australian Weather and Climate Data Resources. Submitted by [Rodrigo Pires](https://github.com/bozaah). 

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](https://jounihelske.netlify.app).  (Stats).

* Two at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [agromet](https://github.com/ropensci/software-review/issues/599), Índices y Estadísticos Climáticos e Hidrológicos. Submitted by [Paola Corrales](http://paocorrales.github.io). 

    * [qualtdict](https://github.com/ropensci/software-review/issues/572), Generating Variable Dictionaries and Labelled Data Exports of Qualtrics. Submitted by [lyh970817](https://github.com/lyh970817). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



* [Meeting the Stars of the R-Universe: The R-Universe Against Diseases.](/blog/2023/09/15/r-universe-stars-5-en) by Yanina Bellini Saibene, Alejandra Bellini, Lucio Casalla, and Steffi LaZerte. . Other languages: <a href='/es/blog/2023/09/15/r-universe-stars-5-es' lang='es'>Conociendo a las estrellas del Universo R: El universo R contra las enfermedades. (es)</a>.

* [Attract Contributors with 'help wanted' Issues](/blog/2023/09/19/help-wanted) by Maëlle Salmon, Yanina Bellini Saibene, and Steffi LaZerte. Tips on how to create and advertise help-wanted issues.

## Call for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/) (or listening to its discussion on the [R Weekly highlights podcast](https://rweekly.fireside.fm/111) hosted by Eric Nantz and Mike Thomas)!

- **[rvertnet](https://cran.r-project.org/web/packages/rvertnet/index.html)**, Retrieve, map and summarize data from the VertNet.org archives (<https://vertnet.org/>). Functions allow searching by many parameters, including taxonomic names, places, and dates. In addition, there is an interface for conducting spatially delimited searches, and another for requesting large datasets via email. [Issue for volunteering](https://github.com/ropensci-archive/rvertnet/issues/71).

- **[natserv](https://cran.r-project.org/web/packages/natserv/index.html)**. Interface to NatureServe (<https://www.natureserve.org/>). Includes methods to get data, image metadata, search taxonomic names, and make maps. [Issue for volunteering](https://github.com/ropensci-archive/natserv/issues/29).

### Call for comaintainers

Refer to our somewhat [recent blog post](/blog/2022/10/17/maintain-or-co-maintain-an-ropensci-package/#packages-looking-for-co-maintainers) to identify other packages where help is especially wished for!
See also our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
