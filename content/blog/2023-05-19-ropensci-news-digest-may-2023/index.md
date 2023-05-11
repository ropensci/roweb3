---
slug: "ropensci-news-digest-may-2023"
title: rOpenSci News Digest, May 2023
author:
  - The rOpenSci Team
date: '2023-05-19'
tags:
  - newsletter
description: keywords from the content
params:
  last_newsletter: "2023-04-21"
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2023/05/19/ropensci-news-digest-may-2023).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Stat software review

TODO Mark ;-)

### rOpenSci at csvconf

TODO Yani ;-)

### Export package data from R-universe thanks to webr

The R-universe node stack now provides data export links, which use [webr](https://docs.r-wasm.org/webr/latest/) to convert pkg datasets on-the-fly to JSON (via jsonlite), xlsx (via writexl), csv (via data.table), etc. Try it yourself, for instance with the [webchem package's two datasets](https://ropensci.r-universe.dev/webchem#)

<!-- to be curated manually -->

<!-- Can use same coworking text every month and ping Steffi to ask if there are any special guests to add -->
Join us for social coworking & office hours monthly on 1st Tuesdays! Hosted by Steffi LaZerte  and various community hosts. Everyone welcome. No RSVP needed. Consult our [Events](/events) page to find your local time and how to join.


Find out about more [events](/events).

## Software :package:

### New packages




The following  package recently became a part of our software suite:

+ [babelquarto](https://docs.ropensci.org/babelquarto), developed by Maëlle Salmon: Automate rendering and cross-linking of Quarto books following a prescribed structure. 

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following seven packages have had an update since the last newsletter: [biomartr](https://docs.ropensci.org/biomartr "Genomic Data Retrieval") ([`v1.0.3`](https://github.com/ropensci/biomartr/releases/tag/v1.0.3)), [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (cff) Metadata for R Packages") ([`v0.5.0`](https://github.com/ropensci/cffr/releases/tag/v0.5.0)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.9.3`](https://github.com/ropensci/nodbi/releases/tag/v0.9.3)), [osmdata](https://docs.ropensci.org/osmdata "Import OpenStreetMap Data as Simple Features or Spatial Objects") ([`v0.2.2`](https://github.com/ropensci/osmdata/releases/tag/v0.2.2)), [spiro](https://docs.ropensci.org/spiro "Manage Data from Cardiopulmonary Exercise Testing") ([`v0.2.0`](https://github.com/ropensci/spiro/releases/tag/v0.2.0)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.7.6`](https://github.com/ropensci/tarchetypes/releases/tag/0.7.6)), and [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.0.0`](https://github.com/ropensci/targets/releases/tag/1.0.0)).

## Software Peer Review

There are ten recently closed and active submissions and 3 submissions on hold. Issues are at different stages: 

* One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [dwctaxon](https://github.com/ropensci/software-review/issues/574), Tools for Working with Darwin Core Taxon Data. Submitted by [Joel Nitta](https://joelnitta.com). 

* Two at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [wmm](https://github.com/ropensci/software-review/issues/522), World Magnetic Model. Submitted by [Will Frierson](https://github.com/wfrierson). 

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

* Four at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [pangoling](https://github.com/ropensci/software-review/issues/575), Access to Large Language Model Predictions. Submitted by [Bruno Nicenboim](https://bnicenboim.github.io/). 

    * [ohun](https://github.com/ropensci/software-review/issues/568), Optimizing Acoustic Signal Detection. Submitted by [Marcelo Araya-Salas](https://marceloarayasalas.weebly.com/). 

    * [dfms](https://github.com/ropensci/software-review/issues/556), Dynamic Factor Models. Submitted by [Sebastian Krantz](https://github.com/SebKrantz). 

    * [NA](https://github.com/ropensci/software-review/issues/546), NA. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/).  (Stats).

* Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [mregions2](https://github.com/ropensci/software-review/issues/590), Access Data from Marineregions.org: The Marine Regions Gazetteer and the Marine Regions Data Products. Submitted by [salvafern](https://github.com/salvafern). 

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](https://jounihelske.netlify.app).  (Stats).

* One at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [qualtdict](https://github.com/ropensci/software-review/issues/572), Generating Variable Dictionaries and Labelled Data Exports of Qualtrics. Submitted by [lyh970817](https://github.com/lyh970817). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



* [rOpenSci Champions Program Teams: Meet Bilikisu Wunmi Olatunji and Christina Maimone](/blog/2023/05/19/ropensci-news-digest-may-2023) by Bilikisu Wunmi Olatunji, and Christina Maimone. Introducing Champions and Mentors - Bilikisu Wunmi Olatunji and Christina Maimone.

* [rOpenSci Champions Program Teams: Meet Carolina Pradier and Athanasia Monika Mowinckel](/blog/2023/05/19/ropensci-news-digest-may-2023) by Carolina Pradier, and Athanasia Monika Mowinckel. Introducing Champions and Mentors - Carolina Pradier and Athanasia Monika Mowinckel.

* [rOpenSci Champions Program Teams: Meet Haydee Svab and Beatriz Milz](/blog/2023/05/19/ropensci-news-digest-may-2023) by Haydee Svab, and Beatriz Milz. Introducing Champions and Mentors - Haydee Svab and Beatriz Milz.

<!-- ## Use cases



`snakecase::to_sentence_case(english(length(usecases)))` use case` if (length(usecases) > 1) "s"` of our packages and resources ha` if (length(usecases) > 1) "ve" else "s"` been reported since we sent the last newsletter.



Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)! -->

## Call for maintainers

### Call for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/) (or listening to its discussion on the [R Weekly highlights podcast](https://rweekly.fireside.fm/111) hosted by Eric Nantz and Mike Thomas)!

- **[rvertnet](https://cran.r-project.org/web/packages/rvertnet/index.html)**, Retrieve, map and summarize data from the VertNet.org archives (<https://vertnet.org/>). Functions allow searching by many parameters, including taxonomic names, places, and dates. In addition, there is an interface for conducting spatially delimited searches, and another for requesting large datasets via email. [Issue for volunteering](https://github.com/ropensci-archive/rvertnet/issues/71).

- **[natserv](https://cran.r-project.org/web/packages/natserv/index.html)**. Interface to NatureServe (<https://www.natureserve.org/>). Includes methods to get data, image metadata, search taxonomic names, and make maps. [Issue for volunteering](https://github.com/ropensci-archive/natserv/issues/29).

- **[geojsonlint](https://cran.r-project.org/web/packages/geojsonlint/index.html)**, Tools for linting GeoJSON. Includes tools for interacting with the online tool <https://geojsonlint.com>, the Javascript library geojsonhint (<https://www.npmjs.com/package/geojsonhint>), and validating against a GeoJSON schema via the Javascript library (<https://www.npmjs.com/package/is-my-json-valid>). Some tools work locally while others require an internet connection. [Issue for volunteering](https://github.com/ropensci-archive/geojsonlint/issues/22).

### Call for comaintainers

Refer to our somewhat [recent blog post](/blog/2022/10/17/maintain-or-co-maintain-an-ropensci-package/#packages-looking-for-co-maintainers) to identify other packages where help is especially wished for!
See also our [help wanted page](https://ropensci.org/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### Cool new experimental packages for building API packages!

Are you thinking about building an [API client](https://ropensci.org/blog/2022/06/16/publicize-api-client-yes-no/)?
Check out the new project by Jon Harmon, recently funded by the R Consortium:

- [beekeeper](https://jonthegeek.github.io/beekeeper/) _ will allow users to automatically generate R package skeletons from APIs that follow the OpenAPI Specification (OAS) (and probably other specifications, such as swagger, the predecessor to OpenAPI). The skeletons will implement best practices to streamline package development._
- [nectar](https://jonthegeek.github.io/nectar/) is _an opinionated framework for use within api-wrapping R packages._

Exciting to follow!

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
