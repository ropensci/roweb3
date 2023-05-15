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

### rOpenSci at Csv,Conf,v7

We participated in the [CSV,Conf,v7](https://csvconf.com/) in Buenos Aires during April 19-20, 2023.

On the first day of the conference, [Karthik Ram](/author/karthik-ram) was one of the keynotes presenting ["How to enable and sustain thriving Open Source Ecosystems (OSE)."](/events/2023-04-19-csvconf_keynote/). The next day, [Yanina Bellini Saibene](/author/yanina-bellini-saibene/) presented ["Tell me who you hang out with, and I will tell you who you are. A collaborations analysis using social networks analysis"](/events/2023-04-20-csvconf-regulartalk/), a work done together with Sandro Camargo. 

This was a very special edition as it was the first time the event took place in the Southern Hemisphere, allowing several Latin American projects to be part of the conference.

### Export package data from R-universe thanks to webr

The R-universe node stack now provides data export links, which use [webr](https://docs.r-wasm.org/webr/latest/) to convert pkg datasets on-the-fly to JSON (via jsonlite), xlsx (via writexl), csv (via data.table), etc. 

Try it yourself, for instance with the [webchem package's two datasets](https://ropensci.r-universe.dev/webchem#).
You can click on the download icons near their names, or use the direct URLs, for instance https://ropensci.r-universe.dev/webchem/data/lc50/json for the lc50 dataset (Acute toxicity data from U.S. EPA ECOTOX).

The permanent URL to a dataset in a given format can be used in your browser, from R, or from any other tools: this means R-universe helps publish your data to the world!

On the technical side, R-universe actually uses webr (with its own [webr bundle](https://github.com/r-universe-org/webr-bundle)) [server-side](https://github.com/r-universe-org/cranlike-server), so not in a browser!

Note that R-universe already had a few features related to datasets beside listing them on a package page: datasets are indexed for [search](/blog/2023/02/27/runiverse-discovering/#level-1-searching-the-entire-r-ecosystem), and the [standard API output for a package](https://ropensci.r-universe.dev/webchem/json) includes some info about datasets.

### Coworking

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.
    
And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

* Tuesday, June 6th, 9:00 Australia Western / 01:00 UTC ["Integrating and merging datasets from different sources"](/events/coworking-2023-06/) *Hosted by community host [Cynthia Huang](/author/cynthia-huang) and [Steffi LaZerte](/author/steffi-lazerte/)*
    - Spend time integrating datasets for your own work
    - Explore how others tackle the problem of merging datasets from different sources or different data versions
    - Talk to our community host and other attendees and discuss strategies for integrating datasets.
    
* Tuesday, July 4th, 14:00 European Central / 12:00 UTC ["Create/Update your 'Happy File'/'Brag Document'!"](/events/coworking-2023-07/) *Hosted by [Maëlle Salmon](/author/maëlle-salmon) and [Steffi LaZerte](/author/steffi-lazerte/)*
    - Explore what goes into a [‘Happy File’](https://twitter.com/JennyBryan/status/1582862196870373377)/[‘Brag Document’](https://jvns.ca/blog/brag-documents/) and why you need one
    - Start collecting items to add to your ‘Happy File’
    - Talk to our community host and other attendees and discuss strategies for integrating datasets.

## Software :package:

### New packages




The following  package recently became a part of our software suite:

+ [babelquarto](https://docs.ropensci.org/babelquarto), developed by Maëlle Salmon: Automate rendering and cross-linking of Quarto books following a prescribed structure. 

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following eight packages have had an update since the last newsletter: [biomartr](https://docs.ropensci.org/biomartr "Genomic Data Retrieval") ([`v1.0.3`](https://github.com/ropensci/biomartr/releases/tag/v1.0.3)), [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (cff) Metadata for R Packages") ([`v0.5.0`](https://github.com/ropensci/cffr/releases/tag/v0.5.0)), [crul](https://docs.ropensci.org/crul "HTTP Client") ([`v1.4`](https://github.com/ropensci/crul/releases/tag/v1.4)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.9.3`](https://github.com/ropensci/nodbi/releases/tag/v0.9.3)), [osmdata](https://docs.ropensci.org/osmdata "Import OpenStreetMap Data as Simple Features or Spatial Objects") ([`v0.2.2`](https://github.com/ropensci/osmdata/releases/tag/v0.2.2)), [spiro](https://docs.ropensci.org/spiro "Manage Data from Cardiopulmonary Exercise Testing") ([`v0.2.0`](https://github.com/ropensci/spiro/releases/tag/v0.2.0)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.7.6`](https://github.com/ropensci/tarchetypes/releases/tag/0.7.6)), and [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.0.0`](https://github.com/ropensci/targets/releases/tag/1.0.0)).

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

- [beekeeper](https://jonthegeek.github.io/beekeeper/) _will allow users to automatically generate R package skeletons from APIs that follow the OpenAPI Specification (OAS) (and probably other specifications, such as swagger, the predecessor to OpenAPI). The skeletons will implement best practices to streamline package development._
- [nectar](https://jonthegeek.github.io/nectar/) is _an opinionated framework for use within api-wrapping R packages._

Exciting to follow!

### Upkeep for packages

Did you miss the recent coworking session on Spring/Fall cleaning of R packages?
One nice function that was shared during that meeting, by Andy Teucher, R Package Developer Educator at Posit PBC (Steffi: correct?) is [`usethis::use_upkeep_issue()`](https://usethis.r-lib.org/dev/reference/use_upkeep_issue.html) in the development version of usethis.
"This opens an issue in your package repository with a checklist of tasks for regular maintenance of your package."
Why not try it on one of your packages?

### Tidyverse PR guidance

The tidyverse team drafted a [guide about their code review process](https://tidyverse.github.io/code-review/).

On the same topic, have you heard of [optimistic merging](https://dmerej.info/blog/post/optimistic-merging/)?

### {XML}'s and {RCurl}'s fate

At rOpenSci, we've [recommended against](https://devguide.ropensci.org/building.html#recommended-scaffolding) using the unmaintained XML and RCurl packages for a long time.
It seems the CRAN team is now [looking for new maintainers for them](https://mastodon.social/@henrikbengtsson/110186925898457474).
See also the [relevant thread](https://github.com/RConsortium/r-repositories-wg/issues/26) of the R Consortium's repositories working group.
This piece of news is at least one more reason to move your package away from XML and RCurl when you can!

### Reminder about spatial packages' retirement (rgdal, maptools, and rgeos)

As stated in the [dev guide](https://devguide.ropensci.org/building.html#recommended-scaffolding)

> For spatial data, the sp package should be considered deprecated in favor of sf, and the packages rgdal, maptools, and rgeos will be retired by the end of 2023. We recommend use of the spatial suites developed by the [r-spatial](https://github.com/r-spatial) and [rspatial](https://github.com/rspatial) communities. See [this GitHub issue](https://github.com/ropensci/software-review-meta/issues/47) for relevant discussions.


Please tell your friends!

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
