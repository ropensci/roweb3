---
title: rOpenSci News Digest, June 2022
author:
  - The rOpenSci Team
date: '2022-06-24'
slug: ropensci-news-digest-june-2022
tags:
  - newsletter
description: 'New community manager Yanina Bellini Saibene, more than 10,000 packages on R-universe, new packages and package news'
output:
  html_document:
    keep_md: yes
params:
  last_newsletter: '2022-05-20'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2022/06/24/ropensci-news-digest-june-2022).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Introducing rOpenSci new Community Manager, Yanina Bellini Saibene

We're excited and extremely thrilled to announce [**Yanina Bellini Saibene**](/author/yanina-bellini-saibene/) is our new community manager!
Yanina is a computer and data scientist by training and an educator by choice.
She lives in Argentina, where she has been a researcher for the last 24 years.
She is also a professor at Universidad Nacional Guillermo Brown.
She is part of several communities as a member of The Carpentries Executive Council, R-Ladies Global and Leadership Team, R Forwards Core Team, R Consortium Infrastructure Steering Committee, useR! Working Group, Minorities in R (MiR), and Sociedad Argentina de Informática. 

In [her words](/blog/2022/06/21/introducing-yanina/),

> I believe in the power of open science at the service of people, that education is the best tool we have to improve lives, and that the most effective way to make changes is as part of a community. rOpenSci combines my passion for open software and open science with my favorite programming language and community. I am particularly excited by our [new project to empower community leaders from historically excluded groups](/blog/2021/12/20/inclusive-leadership-program/) and looking forward to playing a role in its development. I have worked to improve diversity, equity, and inclusion throughout my career, both because I am a member of groups that are historically excluded from science and because it’s the right thing to do.

In the coming weeks and months, she'll be getting to know you all, listening in, and learning how she can support you and your contributions to rOpenSci.

> Please don’t hesitate to say hello! You can contact me by email yabellini\@ropensci.org and also reach me on [rOpenSci semi-open Slack workspace](https://contributing.ropensci.org/resources.html?q=slack#channels). 

### Over 10.000 R packages tracked on R-universe!

The r-universe infrastructure has been [upgraded](https://twitter.com/opencpu/status/1539869749215203333) to automatically track development of all Bioconductor/CRAN packages that are maintained on GitHub, GitLab, or BitBucket. 
Together with other packages signed up by our users, the system now serves over 10,000 packages and 10,000 articles, providing a comprehensive database of the best software that the R ecosystem has to offer.

The [r-universe website](https://r-universe.dev/search/) makes it easy to browse by topic, keyword, author, organization, and shows extensive information about each package and its development process. 
We hope this will make it easier to discover interesting software and get a clear sense of the purpose and quality of the many R packages.

If you want to create your own universe on r-universe, refer to this [post in English](https://ropensci.org/blog/2021/06/22/setup-runiverse/) or this [post in Spanish](https://ropensci.org/blog/2021/09/21/creando-tu-r-universe/).

## Software :package:

### New packages




The following three packages recently became a part of our software suite:

+ [sodium](https://docs.ropensci.org/sodium), developed by Jeroen Ooms: Bindings to libsodium <https://doc.libsodium.org/>: a modern, easy-to-use software library for encryption, decryption, signatures, password hashing and more. Sodium uses curve25519, a state-of-the-art Diffie-Hellman function by Daniel Bernstein, which has become very popular after it was discovered that the NSA had backdoored Dual EC DRBG.  It is available on [CRAN]( https://CRAN.R-project.org/package=sodium). 

+ [tidyqpcr](https://docs.ropensci.org/tidyqpcr), developed by Edward Wallace together with Sam Haynes: For reproducible quantitative PCR (qPCR) analysis building on packages from the ’tidyverse’, notably ’dplyr’ and ’ggplot2’. It normalizes (by ddCq), summarizes, and plots pre-calculated Cq data, and plots raw amplification and melt curves from Roche Lightcycler (tm) machines. It does NOT (yet) calculate Cq data from amplification curves. It has been [reviewed](https://github.com/ropensci/software-review/issues/470) by Kelsey Montgomery.

+ [yfR](https://docs.ropensci.org/yfR), developed by Marcelo Perlin: Facilitates download of financial data from Yahoo Finance <https://finance.yahoo.com/>, a vast repository of stock price data across multiple financial exchanges. The package offers a local caching system and support for parallel computation. It has been [reviewed](https://github.com/ropensci/software-review/issues/523) by Nic Crane, and Alexander Fischer.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following eighteen packages have had an update since the last newsletter: [pkgstats](https://docs.ropensci.org/pkgstats "Metrics of R Packages") ([`v0.1.1`](https://github.com/ropensci-review-tools/pkgstats/releases/tag/v0.1.1)), [sodium](https://docs.ropensci.org/sodium "A Modern and Easy-to-Use Crypto Library") ([`v1.2.1`](https://github.com/r-lib/sodium/releases/tag/v1.2.1)), [beastier](https://docs.ropensci.org/beastier "Call BEAST2") ([`v2.4.9`](https://github.com/ropensci/beastier/releases/tag/v2.4.9)), [beautier](https://docs.ropensci.org/beautier "BEAUti from R") ([`v2.6.4`](https://github.com/ropensci/beautier/releases/tag/v2.6.4)), [datapack](https://docs.ropensci.org/datapack "A Flexible Container to Transport and Manipulate Data and Associated
    Resources") ([`1.4.1`](https://github.com/ropensci/datapack/releases/tag/1.4.1)), [EDIutils](https://docs.ropensci.org/EDIutils "An API Client for the Environmental Data Initiative Repository") ([`v1.0.0`](https://github.com/ropensci/EDIutils/releases/tag/v1.0.0)), [excluder](https://docs.ropensci.org/excluder "Checks for Exclusion Criteria in Online Data") ([`v0.4.0`](https://github.com/ropensci/excluder/releases/tag/v0.4.0)), [fingertipsR](https://docs.ropensci.org/fingertipsR "Fingertips Data for Public Health") ([`v1.0.9`](https://github.com/ropensci/fingertipsR/releases/tag/v1.0.9)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.8.0`](https://github.com/ropensci/nodbi/releases/tag/v0.8.0)), [nomisr](https://docs.ropensci.org/nomisr "Access Nomis UK Labour Market Data") ([`v0.4.7`](https://github.com/ropensci/nomisr/releases/tag/v0.4.7)), [osmdata](https://docs.ropensci.org/osmdata "Import OpenStreetMap Data as Simple Features or Spatial Objects") ([`v0.1.10`](https://github.com/ropensci/osmdata/releases/tag/v0.1.10)), [qualtRics](https://docs.ropensci.org/qualtRics "Download Qualtrics Survey Data") ([`v3.1.6`](https://github.com/ropensci/qualtRics/releases/tag/v3.1.6)), [restez](https://docs.ropensci.org/restez "Create and Query a Local Copy of GenBank in R") ([`v1.0.0`](https://github.com/ropensci/restez/releases/tag/v1.0.0)), [rinat](https://docs.ropensci.org/rinat "Access iNaturalist Data Through APIs") ([`v0.1.9`](https://github.com/ropensci/rinat/releases/tag/v0.1.9)), [stplanr](https://docs.ropensci.org/stplanr "Sustainable Transport Planning") ([`v1.0.0`](https://github.com/ropensci/stplanr/releases/tag/v1.0.0)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Workflows") ([`0.12.1`](https://github.com/ropensci/targets/releases/tag/0.12.1)), [tidyqpcr](https://docs.ropensci.org/tidyqpcr "Quantitative PCR Analysis with the Tidyverse") ([`v1.0`](https://github.com/ropensci/tidyqpcr/releases/tag/v1.0)), and [webchem](https://docs.ropensci.org/webchem "Chemical Information from the Web") ([`v1.1.3`](https://github.com/ropensci/webchem/releases/tag/v1.1.3)).

## Software Peer Review

There are eighteen recently closed and active submissions and 2 submissions on hold. Issues are at different stages: 

* Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [yfR](https://github.com/ropensci/software-review/issues/523), Downloads and Organizes Financial Data from Yahoo Finance. Submitted by [Marcelo S. Perlin](https://www.msperlin.com/blog/). 

    * [tidyqpcr](https://github.com/ropensci/software-review/issues/470), Quantitative PCR Analysis with the Tidyverse. Submitted by [Edward Wallace](https://scholar.google.co.uk/citations?user=7FLIJBAAAAAJ&hl=en). 

* One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [readODS](https://github.com/ropensci/software-review/issues/386), Read and Write ODS Files. Submitted by [Chung-hong Chan](http://www.chainsawriot.com). 

* Five at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [hudr](https://github.com/ropensci/software-review/issues/524), A R interface for accessing HUD (US Department of Housing and Urban Development) APIs. Submitted by [Emmet Tam](https://github.com/etam4260/etam4260). 

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

    * [phruta](https://github.com/ropensci/software-review/issues/458), Phylogenetic Reconstruction and Time-dating. Submitted by [Cristian Román-Palacios](http://cromanpa94.github.io/cromanpa/). 

    * [epair](https://github.com/ropensci/software-review/issues/418), Grabs data from EPA API, simplifies getting pollutant data. Submitted by [Leo Orozco-Mulfinger](https://github.com/GLOrozcoM). 

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com). 

* Four at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [datefixR](https://github.com/ropensci/software-review/issues/533), Fix Really Messy Dates. Submitted by [Nathan Constantine-Cooke](http://constantine-cooke.com). 

    * [canaper](https://github.com/ropensci/software-review/issues/475), Categorical Analysis of Neo- And Paleo-Endemism. Submitted by [Joel Nitta](https://joelnitta.com).  (Stats).

    * [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com).  (Stats).

    * [ROriginStamp](https://github.com/ropensci/software-review/issues/433), Interface to OriginStamp API to Obtain Trusted Time Stamps. Submitted by [Rainer M Krug](https://github.com/rkrug). 

* Three at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [spiro](https://github.com/ropensci/software-review/issues/541), Manage Data from Cardiopulmonary Exercise Testing. Submitted by [Simon Nolte](https://github.com/smnnlt). 

    * [aorsf](https://github.com/ropensci/software-review/issues/532), Accelerated Oblique Random Survival Forests. Submitted by [Byron](https://github.com/bcjaeger). 

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](http://jounihelske.netlify.app).  (Stats).

* Three at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [daiquiri](https://github.com/ropensci/software-review/issues/535), Data Quality Reporting for Temporal Datasets. Submitted by [phuongquan](https://github.com/phuongquan). 

    * [rdbhapi](https://github.com/ropensci/software-review/issues/443), Interface to DBH-API. Submitted by [Marija Ninic](https://hkdir.no/). 

    * [rWind](https://github.com/ropensci/software-review/issues/429), Download, Edit and Include Wind and Sea Currents Data in Ecological and Evolutionary Analysis. Submitted by [Javier Fernández-López](http://allthiswasfield.blogspot.com.es/). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Software Review

* [Editorial Automation: Why & How to Set Up Chat-Ops for your Own Review System on GitHub](/blog/2022/05/31/chatops-review-system-github) by Maëlle Salmon, Mark Padgham, and Karthik Ram. Could the editorial bot generator Buffy fit your needs? How to know, how to set it up.{{< figure src="diagram.png" alt="Diagram representing automation for rOpenSci software peer review. On the left, is a GitHub issue thread with emojis as avatars, and wobbly lines as text. Under the GitHub issue thread, a legend indicating who among the emojis is the Author /Editor / Reviewer / ropensci-review-bot. At the center of the diagram is a Heroku app using the Buffy Ruby tool, that receives information from GitHub via webhooks. The app digests messages received and depending on the command pings an external service represented on the right (with a plumber logo); fills the Airtable-based software review database; manages ropensci GitHub organization via GitHub API; posts back or labels in the GitHub issue thread." width="400" >}}



* [rOpenSci Dev Guide 0.8.0: Updates](/blog/2022/06/09/devguide-0.8.0) by Mark Padgham, Laura DeCicco, Julia Gustavsen, Jeff Hollister, Anna Krystalli, Mauro Lepore, Karthik Ram, Emily Riederer, Noam Ross, Maëlle Salmon, Adam Sparks, and Melina Vidoni. Updates in version 0.8.0 of the online book 'rOpenSci Packages: Development, Maintenance, and Peer Review'.{{< figure src="cover.png" alt="cover of rOpenSci dev guide, showing a package production line with small humans discussing, examining and promoting packages" width="400" >}}



### Other topics

* [Communication & Collaboration with Contributors in an Open-Source Organization](/blog/2022/06/14/communication-with-contributors-in-an-open-source-organization) by Maëlle Salmon, and Zhian N. Kamvar. How we interact with volunteer maintainers.

* [Why You Should (or Shouldn't) Build an API Client](/blog/2022/06/16/publicize-api-client-yes-no) by Maëlle Salmon, Matthias Grenié, and Hugo Gruson. Should you write and maintain an R package accessing a web API? Here are our tips for deciding, and for doing it if you go for it. This post was discussed on the [R Weekly Highlights podcast](https://share.fireside.fm/episode/87RSVeFz+4qaUu8e0?t=540).

* [Introducing rOpenSci new Community Manager, Yanina Bellini Saibene](/blog/2022/06/21/introducing-yanina) by Yanina Bellini Saibene.

* [Presentamos a la nueva Community Manager de rOpenSci, Yanina Bellini Saibene](/blog/2022/06/21/introducing-yanina-es) by Yanina Bellini Saibene.

## Use cases



Two use cases of our packages and resources have been reported since we sent the last newsletter.

* [Extração de dados sobre heróis negros e negras da Marvel e DC](https://discuss.ropensci.org/t/extracao-de-dados-sobre-herois-negros-e-negras-da-marvel-e-dc/2952). Reported by Fernando Almeida Barbalho.

* [Map of linguae francae of Dagestan, Russia](https://discuss.ropensci.org/t/map-of-linguae-francae-of-dagestan-russia/2957). Reported by George Moroz.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

If you are interested in contributing to gistr, you could [join the new maintainer team](https://github.com/ropensci/gistr/issues/85).

For more info see:

* [our guidance on _Changing package maintainers_](https://devguide.ropensci.org/changing-maintainers.html)
* [our _Package Curation Policy_](https://devguide.ropensci.org/curationpolicy.html)

## Package development corner

Some useful tips for R package developers. :eyes:

### New testing chapter in the R packages book

Jenny Bryan has announced on [Twitter](https://twitter.com/JennyBryan/status/1535339178812067840) that the [chapter on testing](https://r-pkgs.org/tests.html) of the R packages book has been updated as she and Hadley Wickham work towards a second edition.
A read worthy of your time especially if you're a (future) testthat user!

### Conceptor role in a package?

The [plumber](https://www.rplumber.io/) package has an author listed as "cpp" (conceptor): https://github.com/rstudio/plumber/blob/0c21b78669861c7cb03f98b192b660320ff8040c/DESCRIPTION#L9
It is not an [officially recognized role](https://stat.ethz.ch/R-manual/R-devel/library/utils/html/person.html) but it is interesting to think of ways to recognize original authors when for instance [changing package maintainers](https://devguide.ropensci.org/changing-maintainers.html).

### GitHub Issue Close Labels

GitHub recently tweaked their "Close Issue" button to add a down-arrow to the right which opens a pop-down menu offering two ways to label why the issue was closed: as "completed" or "not planned." They described this feature in [a recent GitHub blog entry](https://github.blog/changelog/2022-05-19-the-new-github-issues-may-19th-update/). See also Maëlle's recent blog post on [GitHub Tips](https://masalmon.eu/2022/04/05/github-tips/) for advice on how to keep up-to-date with ongoing GitHub development.


<!-- To be curated by hand -->

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
