---
title: rOpenSci News Digest, September 2022
author:
  - The rOpenSci Team
date: '2022-09-23'
slug: ropensci-news-digest-september-2022
categories: []
tags:
  - newsletter
description: keywords from the content
params:
  last_newsletter: '2022-08-26'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2022/09/23/ropensci-news-digest-september-2022).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### We are thrilled to launch our Champions program!

[rOpenSci Champion Program](/champions/) is part of a series of activities and projects we are carrying out to ensure our research software serves everyone in our communities. 
That is why this program focuses __on people who belong to groups that are historically and systematically excluded__ from the open software and research software communities and who are interested in contributing to rOpenSci and the broader open source and research software communities.

If you are selected as Champions, you will develop your project and get training, mentoring, and a stipend for a year. 

You can apply until November 7, 2022 [using this form]().  You can [read more details on this blog post]() 
### Check out our Calls for new maintainers!

A few packages are [looking for new maintainers](#call-for-maintainers).
Do you want to maintain software that will help fellow R users extract tables out of PDFs, or access data from the IUCN Red list of endangered species, or perhaps something else completely?
See if one of these packages appeals to you!
You could volunteer on your own or as a team of maintainers (the more the merrier!).
The rOpenSci team will be happy to help you with specifics, and will provide resources, tips and PR reviews as needed.
Thank you!

### Coworking sessions continue!

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

* [Tuesday, 04 October 2022 9 AM Australian Western / 1:00 UTC ](/events/coworking-2022-10/) "Start writing that package!" *Hosted by community host [Nick Tierney](/author/nicholas-tierney/) and [Steffi LaZerte](/author/steffi-lazerte/)*
    * Cowork on a project of your choice;
    * Take time to look up how to write a package;
    * Start putting together that package you've always meant to;
    * Or talk to [Nick Tierney](/author/nicholas-tierney/) and others about how to get started.

* [Tuesday, 01 November 2022 9 AM North American Pacific / 16:00 UTC ](/events/coworking-2022-11/) "Champions Program Application Clinic" *Hosted by rOpenSci community manager [Yanina Bellini Saibene](/author/yanina-bellini-saibene/) and [Steffi LaZerte](/author/steffi-lazerte/)*
    * Cowork on a project of your choice;
    * Prepare your application for the Champions Program;
    * Or talk to [Yanina](/author/yanina-bellini-saibene/) about the application process.
Find out about more [events](/events).

### pkgcheck updates

Our [pkgcheck checks](https://docs.ropensci.org/pkgcheck) now have an additional category beyond just pass (:heavy_check_mark:) or fail (:heavy_multiplication_x:). Some checks indicate aspects which are worth considering, but which might not necessarily be considered check failures. We have introduced the symbol :eyes: to denote aspects of packages which authors might consider modifying or tweaking at their discretion, but which do not indicate failing checks. The only check in this category at present is the check for duplicated function names, but other :eyes: checks are likely to be included as our automated check system expands its scope in the future.

## Software :package:

### New packages




The following  package recently became a part of our software suite:

+ [canaper](https://docs.ropensci.org/canaper), developed by Joel H. Nitta: Provides functions to conduct categorical analysis of neo- and paleo-endemism (CANAPE). 

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following eighteen packages have had an update since the last newsletter: [frictionless](https://docs.ropensci.org/frictionless "Read and Write Frictionless Data Packages") ([`v1.0.1`](https://github.com/frictionlessdata/frictionless-r/releases/tag/v1.0.1)), [gert](https://docs.ropensci.org/gert "Simple Git Client for R") ([`v1.9.0`](https://github.com/r-lib/gert/releases/tag/v1.9.0)), [binman](https://docs.ropensci.org/binman "A Binary Download Manager") ([`v0.1.3`](https://github.com/ropensci/binman/releases/tag/v0.1.3)), [EDIutils](https://docs.ropensci.org/EDIutils "An API Client for the Environmental Data Initiative Repository") ([`v1.0.2`](https://github.com/ropensci/EDIutils/releases/tag/v1.0.2)), [geojsonio](https://docs.ropensci.org/geojsonio "Convert Data from and to GeoJSON or TopoJSON") ([`v0.9.5`](https://github.com/ropensci/geojsonio/releases/tag/v0.9.5)), [gittargets](https://docs.ropensci.org/gittargets "Data Version Control for the Targets Package") ([`0.0.5`](https://github.com/ropensci/gittargets/releases/tag/0.0.5)), [ijtiff](https://docs.ropensci.org/ijtiff "Comprehensive TIFF I/O with Full Support for ImageJ TIFF Files") ([`v2.2.8`](https://github.com/ropensci/ijtiff/releases/tag/v2.2.8)), [MODIStsp](https://docs.ropensci.org/MODIStsp "Find, Download and Process MODIS Land Products
    Data") ([`v2.0.9`](https://github.com/ropensci/MODIStsp/releases/tag/v2.0.9)), [osmextract](https://docs.ropensci.org/osmextract "Download and Import Open Street Map Data Extracts") ([`v0.4.1`](https://github.com/ropensci/osmextract/releases/tag/v0.4.1)), [restez](https://docs.ropensci.org/restez "Create and Query a Local Copy of GenBank in R") ([`v2.1.2`](https://github.com/ropensci/restez/releases/tag/v2.1.2)), [rgbif](https://docs.ropensci.org/rgbif "Interface to the Global Biodiversity Information Facility API") ([`v3.7.3`](https://github.com/ropensci/rgbif/releases/tag/v3.7.3)), [spiro](https://docs.ropensci.org/spiro "Manage Data from Cardiopulmonary Exercise Testing") ([`v0.1.1`](https://github.com/ropensci/spiro/releases/tag/v0.1.1)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.7.1`](https://github.com/ropensci/tarchetypes/releases/tag/0.7.1)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Workflows") ([`0.13.3`](https://github.com/ropensci/targets/releases/tag/0.13.3)), [taxlist](https://docs.ropensci.org/taxlist "Handling Taxonomic Lists") ([`v0.2.3`](https://github.com/ropensci/taxlist/releases/tag/v0.2.3)), [tic](https://docs.ropensci.org/tic "CI-Agnostic Workflow Definitions") ([`v0.13.1`](https://github.com/ropensci/tic/releases/tag/v0.13.1)), [wdman](https://docs.ropensci.org/wdman "Webdriver/Selenium Binary Manager") ([`v0.2.6`](https://github.com/ropensci/wdman/releases/tag/v0.2.6)), and [webmockr](https://docs.ropensci.org/webmockr "Stubbing and Setting Expectations on HTTP Requests") ([`v0.8.2`](https://github.com/ropensci/webmockr/releases/tag/v0.8.2)).

## Software Peer Review

There are fifteen recently closed and active submissions and 2 submissions on hold. Issues are at different stages: 

* One at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [canaper](https://github.com/ropensci/software-review/issues/475), Categorical Analysis of Neo- And Paleo-Endemism. Submitted by [Joel Nitta](https://joelnitta.com).  (Stats).

* One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [phruta](https://github.com/ropensci/software-review/issues/458), Phylogenetic Reconstruction and Time-dating. Submitted by [Cristian Román Palacios](http://cromanpa94.github.io/cromanpa/). 

* Four at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [melt](https://github.com/ropensci/software-review/issues/550), Multiple Empirical Likelihood Tests. Submitted by [Eunseop Kim](https://github.com/markean). 

    * [hudr](https://github.com/ropensci/software-review/issues/524), A R interface for accessing HUD (US Department of Housing and Urban Development) APIs. Submitted by [Emmet Tam](https://github.com/etam4260/etam4260). 

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com). 

* Five at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [dataset](https://github.com/ropensci/software-review/issues/553), Create Data Frames that are Easier to Exchange and Reuse. Submitted by [Daniel Antal](http://nl.linkedin.com/in/antaldaniel/). 

    * [daiquiri](https://github.com/ropensci/software-review/issues/535), Data Quality Reporting for Temporal Datasets. Submitted by [Phuong Quan](https://github.com/phuongquan). 

    * [aorsf](https://github.com/ropensci/software-review/issues/532), Accelerated Oblique Random Survival Forests. Submitted by [Byron](https://github.com/bcjaeger). 

    * [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com).  (Stats).

    * [aorsf](https://github.com/ropensci/software-review/issues/532), Accelerated Oblique Random Survival Forests. Submitted by [Byron](https://github.com/bcjaeger). 

* Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [dynamite](https://github.com/ropensci/software-review/issues/554), Bayesian Modeling and Causal Inference for Multivariate. Submitted by [Santtu Tikka](http://users.jyu.fi/~santikka/). 

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](http://jounihelske.netlify.app).  (Stats).

* Two at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [stochLAB](https://github.com/ropensci/software-review/issues/551), Stochastic Collision Risk Model. Submitted by [Grant](http://www.blackbawks.net). 

    * [wmm](https://github.com/ropensci/software-review/issues/522), World Magnetic Model. Submitted by [Will Frierson](https://github.com/wfrierson). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->





## Use cases



Two use cases of our packages and resources have been reported since we sent the last newsletter.

* [Using taxize and highcharter in R to extract and visualize taxonomic data](https://discuss.ropensci.org/t/using-taxize-and-highcharter-in-r-to-extract-and-visualize-taxonomic-data/3096). Reported by Stepminer.

* [Using handlr to convert bibtex citation to cff](https://discuss.ropensci.org/t/using-handlr-to-convert-bibtex-citation-to-cff/3107). Reported by Athanasia Monika Mowinckel.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

We're looking for a new maintainer, or a new maintainer _team_, for each of the following packages:

* [rgnparser](https://docs.ropensci.org/rgnparser/), Parse scientific names using gnparser. [Issue for volunteering](https://github.com/ropensci/rgnparser/issues/14).

* [ritis](https://docs.ropensci.org/ritis), Integrated Taxonomic Information Service (ITIS) R client. [Issue for volunteering](https://github.com/ropensci/ritis/issues/23).

* [rredlist](https://docs.ropensci.org/rredlist), IUCN Red List API Client. [Issue for volunteering](https://github.com/ropensci/rredlist/issues/49).

* [wikitaxa](https://docs.ropensci.org/wikitaxa), taxonomy data from Wikipedia/Wikidata/Wikispecies. [Issue for volunteering](https://github.com/ropensci/wikitaxa/issues/20).

* [tabulizer](https://docs.ropensci.org/tabulizer/), Extract Tables from PDFs. [Issue for volunteering](https://github.com/ropensci/tabulizer/issues/148).

* [RSelenium](https://docs.ropensci.org/RSelenium/), Automate browsers locally or remotely (for instance for webscraping). [Issue for volunteering](https://github.com/ropensci/RSelenium/issues/261).

* [elastic](https://docs.ropensci.org/elastic/), R client for the Elasticsearch HTTP API. [Issue for volunteering](https://github.com/ropensci/elastic/issues/292).

If you're interested, please comment in the issues or email `info@ropensci.org`.

For more info, see

* [our guidance on _Changing package maintainers_](https://devguide.ropensci.org/changing-maintainers.html);
* [our _Package Curation Policy_](https://devguide.ropensci.org/curationpolicy.html).

## Package development corner

Some useful tips for R package developers. :eyes:

### Improve your code with lintr's new linters!

The most recent lintr release includes [a bunch of new linters originally authored by Google developers](https://www.tidyverse.org/blog/2022/07/lintr-3-0-0/#google-linters). 
Have a look at the list, and run it on one of your codebases!
Thanks to [Hugo Gruson](https://github.com/Bisaloo) for this tip.

To run _all_ linters there are you could run [`lintr::lint_package(linters = lintr::linters_with_tags(tags = NULL))`](https://github.com/r-lib/lintr/issues/1482#issuecomment-1198590483) (or first filter a bit the list returned by `lintr::linters_with_tags(tags = NULL)` in case you see too many [false positives](https://github.com/r-lib/lintr/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3Afalse-positive) for one of the linters).

### Minimum R version dependency in R packages

Curious about why and how to make your R package depend on a minimal R version?
See this [R-hub blog post by Hugo Gruson and Maëlle Salmon](https://blog.r-hub.io/2022/09/12/r-dependency/).

### Tweak the commit message obtained by merging a GitHub pull request

You might be interested in [New options for controlling the default commit message when merging a pull request](https://github.blog/changelog/2022-08-23-new-options-for-controlling-the-default-commit-message-when-merging-a-pull-request/) to make the merge/squash commit messages more informative.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
