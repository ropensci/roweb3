---
slug: "ropensci-news-digest-june-2023"
title: rOpenSci News Digest, June 2023
author:
  - The rOpenSci Team
date: '2023-06-23'
tags:
  - newsletter
description: keywords from the content
params:
  last_newsletter: "2023-05-19"
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2023/06/23/ropensci-news-digest-june-2023).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Meeting the stars of the R-universe: PEcAn, an Open Source Project to Take Care of the Planet

Knowing our community's stories helps us to learn about the people behind our software, brings us closer and offers us new opportunities. To share some of these community stories, we created the rOpenSci interview series [_"Meeting the stars of the R-Universe"_](/tags/r-universe-stars/).

Climate change and research in this area have diverse and complex data that demand increasingly complex analysis models. The PEcAn project works to develop this ability.

In this [interview](/blog/2023/06/06/r-universe-stars-4-en/), we go into the science of climate change, and explore where data analysis and ecosystem modeling tools are developed. That is the main objective of the PEcAn project, where they collaboratively seek new ways to collect and synthesize data and develop accessible tools to perform these tasks in a reproducible way.
Our discussion was attended by Rob Kooper, Chris Black, Eric Scott, Michael C. Dietze, and David LeBauer. All members of the PEcAn project with the same goal: to find more and better ways to integrate the enormous amount of existing data on climate change.

You can also read the post in [Spanish](/es/blog/2023/06/06/r-universe-stars-4-es/).

### Downloading snapshots and creating stable R packages repositories using R-universe!

The [new snapshot API](/blog/2023/05/31/runiverse-snapshots/) lets you download a full copy of any CRAN-like repository on R-universe. You can use such a snapshot to mirror the entire CRAN-like repository on your own servers, or for example to build a stable, validated release of your package suite.

### Coworking

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

* Tuesday, July 4th, 14:00 European Central / 12:00 UTC ["Create/Update your 'Happy File'/'Brag Document'!"](/events/coworking-2023-07/) *Hosted by [Maëlle Salmon](/author/maëlle-salmon) and [Steffi LaZerte](/author/steffi-lazerte/)*
    - Explore what goes into a [‘Happy File’](https://twitter.com/JennyBryan/status/1582862196870373377)/[‘Brag Document’](https://jvns.ca/blog/brag-documents/) and why you need one
    - Start collecting items to add to your ‘Happy File’
    - Talk to our community host and other attendees and discuss strategies for integrating datasets.

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!


## Software :package:

### New packages




The following  package recently became a part of our software suite:

+ [dwctaxon](https://docs.ropensci.org/dwctaxon), developed by Joel H. Nitta: Edit and validate taxonomic data in compliance with Darwin Core standards (Darwin Core Taxon class <https://dwc.tdwg.org/terms/#taxon>).  It is available on [CRAN]( https://CRAN.R-project.org/package=dwctaxon). It has been [reviewed](https://github.com/ropensci/software-review/issues/574) by Collin Schwantes, and Stephen Formel.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following nine packages have had an update since the last newsletter: [dwctaxon](https://docs.ropensci.org/dwctaxon "Edit and Validate Darwin Core Taxon Data") ([`v2.0.2`](https://github.com/ropensci/dwctaxon/releases/tag/v2.0.2)), [FedData](https://docs.ropensci.org/FedData "Functions to Automate Downloading Geospatial Data Available from
    Several Federated Data Sources") ([`v3.0.4`](https://github.com/ropensci/FedData/releases/tag/v3.0.4)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.14`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.14)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.9.5`](https://github.com/ropensci/nodbi/releases/tag/v0.9.5)), [osmdata](https://docs.ropensci.org/osmdata "Import OpenStreetMap Data as Simple Features or Spatial Objects") ([`v0.2.3`](https://github.com/ropensci/osmdata/releases/tag/v0.2.3)), [predictNMB](https://docs.ropensci.org/predictNMB "Evaluate Clinical Prediction Models by Net Monetary Benefit") ([`v0.2.1`](https://github.com/ropensci/predictNMB/releases/tag/v0.2.1)), [rnaturalearth](https://docs.ropensci.org/rnaturalearth "World Map Data from Natural Earth") ([`v0.3.3`](https://github.com/ropensci/rnaturalearth/releases/tag/v0.3.3)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.1.3`](https://github.com/ropensci/targets/releases/tag/1.1.3)), and [tic](https://docs.ropensci.org/tic "CI-Agnostic Workflow Definitions") ([`v0.13.3`](https://github.com/ropensci/tic/releases/tag/v0.13.3)).

## Software Peer Review

There are ten recently closed and active submissions and 3 submissions on hold. Issues are at different stages: 

* One at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [dwctaxon](https://github.com/ropensci/software-review/issues/574), Tools for Working with Darwin Core Taxon Data. Submitted by [Joel Nitta](https://joelnitta.com). 

* Three at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [ohun](https://github.com/ropensci/software-review/issues/568), Optimizing Acoustic Signal Detection. Submitted by [Marcelo Araya-Salas](https://marceloarayasalas.weebly.com/). 

    * [wmm](https://github.com/ropensci/software-review/issues/522), World Magnetic Model. Submitted by [Will Frierson](https://github.com/wfrierson). 

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

* Four at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [mregions2](https://github.com/ropensci/software-review/issues/590), Access Data from Marineregions.org: The Marine Regions Gazetteer and the Marine Regions Data Products. Submitted by [salvafern](https://github.com/salvafern). 

    * [pangoling](https://github.com/ropensci/software-review/issues/575), Access to Large Language Model Predictions. Submitted by [Bruno Nicenboim](https://bnicenboim.github.io/). 

    * [dfms](https://github.com/ropensci/software-review/issues/556), Dynamic Factor Models. Submitted by [Sebastian Krantz](https://github.com/SebKrantz). 

    * [fwildclusterboot](https://github.com/ropensci/software-review/issues/546), Fast Wild Cluster Bootstrap Inference for Linear Models. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/).  (Stats).

* One at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](https://jounihelske.netlify.app).  (Stats).

* One at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [qualtdict](https://github.com/ropensci/software-review/issues/572), Generating Variable Dictionaries and Labelled Data Exports of Qualtrics. Submitted by [lyh970817](https://github.com/lyh970817). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Other topics

* [rOpenSci Champions Program Teams: Meet César and Marc](/blog/2023/06/23/ropensci-news-digest-june-2023) by Cesar Luis Aybar Camacho, and Marc Choisy. Introducing Champions and Mentors - Cesar Luis Aybar Camacho and Marc Choisy.

* [Meeting the Stars of the R-Universe: PEcAn, an Open Source Project to Take Care of the Planet](/blog/2023/06/23/ropensci-news-digest-june-2023) by Yanina Bellini Saibene, Alejandra Bellini, Lucio Casalla, and Steffi LaZerte. Climate change and research in this area have diverse and complex data that demand increasingly complex analysis models. The PEcAn project works to develop this ability. Other languages: <a href='/es/blog/2023/06/06/r-universe-stars-4-es' lang='es'>Conociendo a las estrellas del Universo R: PEcAn, un proyecto de código abierto para cuidar el planeta (es)</a>.



### Tech Notes

* [Downloading snapshots and creating stable R packages repositories using r-universe](/blog/2023/06/23/ropensci-news-digest-june-2023) by Jeroen Ooms. We added a a new API on R-universe to download a full snapshot of any CRAN-like repo plus documentation, which you can use to mirror somewhere or just for backup.

* [Troubleshooting Pandoc Problems as an R User](/blog/2023/06/23/ropensci-news-digest-june-2023) by Maëlle Salmon, and Christophe Dervieux. How to solve your Pandoc problems thanks to documentation reading, experimentation... and a bit of experience 😅 . Other languages: <a href='/fr/blog/2023/06/01/troubleshooting-pandoc-problems-as-an-r-user' lang='fr'>Résoudre ses problèmes de Pandoc en tant qu'utilisateur·rice de R (fr)</a>.

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
See also our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### How to produce code hints for users?

Sometimes your code can infer what the next user step should be, or what the next _possible_ user _steps_ could be.
How to make it easy for the user to run these hints?

Here's some inspiration:

* You could use [`cli::ui_todo()`](https://usethis.r-lib.org/reference/ui.html), as done in usethis. By the way if your package is using `ui_` functions from usethis, don't miss the cli article on how to [migrate your code to using cli instead](https://cli.r-lib.org/articles/usethis-ui.html), as that's what's recommended. 

* Also in the cli package, a special kind of links that runs the code if it is clicked on, in RStudio IDE: ["Click to run code"](https://cli.r-lib.org/reference/links.html?q=run#click-to-run-code). You might know that from running snapshot tests with testthat, and getting told to review/accept them with these special links.

```r
template <- "Your code is ${adjective}!"
cli::cli_text("Run {.run praise::praise(template)} now!")
```

* If your code is run in RStudio IDE (checkable with [`rstudioapi::isAvailable()`](https://rstudio.github.io/rstudioapi/reference/isAvailable.html)), you could use [`rstudioapi::sendToConsole()`](https://rstudio.github.io/rstudioapi/reference/sendToConsole.html). [Example](https://github.com/cynkra/fledge/blob/520b9b2e36da7bc58136378407f1f4454bfbeadf/R/finalize-version.R#L63-L80=).

<!-- To be curated by hand -->

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
