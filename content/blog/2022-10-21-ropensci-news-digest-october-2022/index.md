---
title: rOpenSci News Digest, October 2022
author:
  - The rOpenSci Team
date: '2022-10-21'
slug: ropensci-news-digest-october-2022
categories: []
tags:
  - newsletter
description: keywords from the content
params:
  last_newsletter: '2022-09-23'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2022/10/21/ropensci-news-digest-october-2022).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

<!-- to be curated manually -->

<!-- Can use same coworking text every month and ping Steffi to ask if there are any special guests to add -->
Join us for social coworking & office hours monthly on 1st Tuesdays! Hosted by Steffi LaZerte  and various community hosts. Everyone welcome. No RSVP needed. Consult our [Events](/events) page to find your local time and how to join.


Find out about more [events](/events).

## Software :package:

### New packages




The following  package recently became a part of our software suite:

+ [aorsf](https://docs.ropensci.org/aorsf), developed by Byron Jaeger: Fit, interpret, and make predictions with oblique random survival forests. Oblique decision trees are notoriously slow compared to their axis based counterparts, but aorsf runs as fast or faster than axis-based decision tree algorithms for right-censored time-to-event outcomes. Methods to accelerate and interpret the oblique random survival forest are described in Jaeger et al., (2022) <arXiv:2208.01129>.  It is available on [CRAN]( https://CRAN.R-project.org/package=aorsf). It has been [reviewed](https://github.com/ropensci/software-review/issues/532/) by Christopher Jackson, Marvin Wright, and Lukas Burk.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following twelve packages have had an update since the last newsletter: [gert](https://docs.ropensci.org/gert "Simple Git Client for R") ([`v1.9.1`](https://github.com/r-lib/gert/releases/tag/v1.9.1)), [aorsf](https://docs.ropensci.org/aorsf "Accelerated Oblique Random Survival Forests") ([`v0.0.3`](https://github.com/ropensci/aorsf/releases/tag/v0.0.3)), [bibtex](https://docs.ropensci.org/bibtex "Bibtex Parser") ([`v0.5.0`](https://github.com/ropensci/bibtex/releases/tag/v0.5.0)), [canaper](https://docs.ropensci.org/canaper "Categorical Analysis of Neo- And Paleo-Endemism") ([`v1.0.0`](https://github.com/ropensci/canaper/releases/tag/v1.0.0)), [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (cff) Metadata for R Packages") ([`v0.3.0`](https://github.com/ropensci/cffr/releases/tag/v0.3.0)), [geojsonio](https://docs.ropensci.org/geojsonio "Convert Data from and to GeoJSON or TopoJSON") ([`v0.10.0`](https://github.com/ropensci/geojsonio/releases/tag/v0.10.0)), [osfr](https://docs.ropensci.org/osfr "Interface to the Open Science Framework (OSF)") ([`v0.2.9`](https://github.com/ropensci/osfr/releases/tag/v0.2.9)), [pdftools](https://docs.ropensci.org/pdftools "Text Extraction, Rendering and Converting of PDF Documents") ([`v3.2.1`](https://github.com/ropensci/pdftools/releases/tag/v3.2.1)), [qpdf](https://docs.ropensci.org/qpdf "Split, Combine and Compress PDF Files") ([`v1.3.0`](https://github.com/ropensci/qpdf/releases/tag/v1.3.0)), [RefManageR](https://docs.ropensci.org/RefManageR "Straightforward BibTeX and BibLaTeX Bibliography Management") ([`new`](https://github.com/ropensci/RefManageR/releases/tag/new)), [rerddap](https://docs.ropensci.org/rerddap "General Purpose Client for ERDDAP Servers") ([`v1.0.0`](https://github.com/ropensci/rerddap/releases/tag/v1.0.0)), and [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Workflows") ([`0.13.5`](https://github.com/ropensci/targets/releases/tag/0.13.5)).

## Software Peer Review

There are ten recently closed and active submissions and 3 submissions on hold. Issues are at different stages: 

* One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [phruta](https://github.com/ropensci/software-review/issues/458), Phylogenetic Reconstruction and Time-dating. Submitted by [Cristian Román Palacios](http://cromanpa94.github.io/cromanpa/). 

* Five at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [daiquiri](https://github.com/ropensci/software-review/issues/535), Data Quality Reporting for Temporal Datasets. Submitted by [Phuong Quan](https://github.com/phuongquan). 

    * [hudr](https://github.com/ropensci/software-review/issues/524), A R interface for accessing HUD (US Department of Housing and Urban Development) APIs. Submitted by [Emmet Tam](https://github.com/etam4260/etam4260). 

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

    * [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com).  (Stats).

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com). 

* One at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [dynamite](https://github.com/ropensci/software-review/issues/554), Bayesian Modeling and Causal Inference for Multivariate. Submitted by [Santtu Tikka](http://users.jyu.fi/~santikka/).  (Stats).

* Three at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [stochLAB](https://github.com/ropensci/software-review/issues/551), Stochastic Collision Risk Model. Submitted by [Grant](http://www.blackbawks.net).  (Stats).

    * [wmm](https://github.com/ropensci/software-review/issues/522), World Magnetic Model. Submitted by [Will Frierson](https://github.com/wfrierson). 

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](http://jounihelske.netlify.app).  (Stats).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->





## Use cases



One use case of our packages and resources has been reported since we sent the last newsletter.

* [Using a targets pipeline to query data from the Water Quality Portal](https://discuss.ropensci.org/t/using-a-targets-pipeline-to-query-data-from-the-water-quality-portal/3140). Reported by Julie.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

<!--IF CALL
* [our guidance on _Changing package maintainers_](https://devguide.ropensci.org/changing-maintainers.html)
* [our _Package Curation Policy_](https://devguide.ropensci.org/curationpolicy.html)

IF NO CALL
There are no open calls for new maintainers at this point but you can refer to our [contributing guide](https://contributing.ropensci.org/) for finding ways to get involved!
As the maintainer of an rOpenSci package, feel free to contact us on Slack or email `info@ropensci.org` to get your call for maintainer featured in the next newsletter. -->

## Package development corner

Some useful tips for R package developers. :eyes:

<!-- To be curated by hand -->

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
