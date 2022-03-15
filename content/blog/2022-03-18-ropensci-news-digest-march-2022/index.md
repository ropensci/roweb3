---
title: rOpenSci News Digest, March 2022
author:
  - The rOpenSci Team
date: '2022-03-18'
slug: ropensci-news-digest-march-2022
categories: []
tags:
  - newsletter
description: R-universe landing page with search, co-working
output:
  html_document:
    keep_md: yes
params:
  last_newsletter: '2022-02-18'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2022/03/18/ropensci-news-digest-march-2022).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### R-universe gets advanced search!

The landing page for rOpenSci's [R-universe](https://r-universe.dev) platform has gotten a makeover to facilitate easy searching through thousands of available R packages and articles. Discover new content by searching for keywords in package descriptions, authors, topics, vignettes, etc.

{{< figure src="landing.jpeg" alt="New R-universe landing page. There is a search bar. Below it are the logos of organizations. Above it is an animated rocket icon." >}}

Give it a try at [https://r-universe.dev](https://r-universe.dev)!

### Next coworking sessions

Join us for social coworking & office hours monthly on 1st Tuesdays! Hosted by Steffi LaZerte and various community hosts. Everyone welcome. No RSVP needed. Consult our [Events](/events) page to find your local time and how to join.

Our next sessions are:

* [Tuesday, 05 April 2022 9 AM Australian Western / 1:00 UTC ](/events/coworking-2022-04/) "Making figures sparkle" *Hosted by [Steffi LaZerte](/author/steffi-lazerte/) and [Nick Tierney](/author/nicholas-tierney/)*
  * Cowork on a project of your choice;
  * Work on some figures to make them glitter;
  * Or ask our community host, Nick Tierney (author of data visualization packages including rOpenSci package [visdat](https://docs.ropensci.org/visdat/)) for some tips to make your figures sparkle!
  
* [Tuesday, 03 May 2022 9 AM North American Pacific / 16:00 UTC](https://ropensci.org/events/coworking-2022-05/).

Find out about more [events](/events).

## Software :package:

### New packages




The following two packages recently became a part of our software suite:

+ [commonmark](https://docs.ropensci.org/commonmark), developed by Jeroen Ooms: The CommonMark specification defines a rationalized version of markdown syntax. This package uses the cmark reference implementation for converting markdown text into various formats including html, latex and groff man. In addition it exposes the markdown parse tree in xml format. Also includes opt-in support for GFM extensions including tables, autolinks, and strikethrough text.  It is available on [CRAN]( https://CRAN.R-project.org/package=commonmark). 

+ [universe](https://docs.ropensci.org/universe), developed by Jeroen Ooms: Utilities to interact with the R-universe platform. Includes functions to manage local package repositories, as well as API wrappers for retrieving data and metadata about packages in r-universe. 

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following six packages have had an update since the last newsletter: [commonmark](https://docs.ropensci.org/commonmark "High Performance CommonMark and Github Markdown Rendering in R") ([`v1.8.0`](https://github.com/r-lib/commonmark/releases/tag/v1.8.0)), [biomartr](https://docs.ropensci.org/biomartr "Genomic Data Retrieval") ([`v1.0.2`](https://github.com/ropensci/biomartr/releases/tag/v1.0.2)), [jqr](https://docs.ropensci.org/jqr "Client for jq, a JSON Processor") ([`v1.2.3`](https://github.com/ropensci/jqr/releases/tag/v1.2.3)), [nasapower](https://docs.ropensci.org/nasapower "NASA POWER API Client") ([`v4.0.6`](https://github.com/ropensci/nasapower/releases/tag/v4.0.6)), [rsnps](https://docs.ropensci.org/rsnps "Get SNP (Single-Nucleotide Polymorphism) Data on the Web") ([`v0.5.0`](https://github.com/ropensci/rsnps/releases/tag/v0.5.0)), and [tic](https://docs.ropensci.org/tic "CI-Agnostic Workflow Definitions") ([`v0.12.0`](https://github.com/ropensci/tic/releases/tag/v0.12.0)).

## Software Peer Review

There are seventeen recently closed and active submissions and 4 submissions on hold. Issues are at different stages: 

* Three at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [qualR](https://github.com/ropensci/software-review/issues/474), An R package to download Sao Paulo and Rio de Janeiro air pollution data. Submitted by [Mario Gavidia Calderón](http://randroll.wordpress.com). 

    * [gendercoder](https://github.com/ropensci/software-review/issues/435), Recodes Sex/Gender Descriptions Into A Standard Set. Submitted by [Emily Kothe](http://emilykothe.com). 

    * [occCite](https://github.com/ropensci/software-review/issues/407), Querying and Managing Large Biodiversity Occurrence Datasets. Submitted by [Hannah Owens](http://hannahlowens.weebly.com/). 

* Three at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [EDIutils](https://github.com/ropensci/software-review/issues/498), An API Client for the Environmental Data Initiative Repository. Submitted by [Colin Smith](https://github.com/clnsmth). 

    * [gbifdb](https://github.com/ropensci/software-review/issues/492), Local Database Interface to GBIF. Submitted by [Carl Boettiger](http://carlboettiger.info). 

    * [tidyqpcr](https://github.com/ropensci/software-review/issues/470), Quantitative PCR Analysis with the Tidyverse. Submitted by [Edward Wallace](https://scholar.google.co.uk/citations?user=7FLIJBAAAAAJ&hl=en). 

* Four at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [OmicsMetaData](https://github.com/ropensci/software-review/issues/471), OmicsMetaData: an R-package for interoperable and re-usable biodiversity 'omics (meta)data. Submitted by [Maxime Sweetlove](https://github.com/msweetlove). 

    * [phruta](https://github.com/ropensci/software-review/issues/458), Phylogenetic Reconstruction and Time-dating. Submitted by [Cristian Román-Palacios](http://cromanpa94.github.io/cromanpa/). 

    * [epair](https://github.com/ropensci/software-review/issues/418), Grabs data from EPA API, simplifies getting pollutant data. Submitted by [Leo Orozco-Mulfinger](https://github.com/GLOrozcoM). 

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com). 

* Three at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [canaper](https://github.com/ropensci/software-review/issues/475), Categorical Analysis of Neo- And Paleo-Endemism. Submitted by [Joel Nitta](https://joelnitta.com).  (Stats).

    * [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com).  (Stats).

    * [ROriginStamp](https://github.com/ropensci/software-review/issues/433), Interface to OriginStamp API to Obtain Trusted Time Stamps. Submitted by [Rainer M Krug](https://github.com/rkrug). 

* Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [npi](https://github.com/ropensci/software-review/issues/505), Access the U.S. National Provider Identifier Registry API. Submitted by [Frank Farach](https://frankfarach.com). 

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

* Two at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](http://jounihelske.netlify.app).  (Stats).

    * [rdbhapi](https://github.com/ropensci/software-review/issues/443), Interface to DBH-API. Submitted by [Marija Ninic](https://hkdir.no/). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->





## Use cases



One use case of our packages and resources has been reported since we sent the last newsletter.

* [Use rtweet to manage lists and who you follow](https://discuss.ropensci.org/t/use-rtweet-to-manage-lists-and-who-you-follow/2830). Reported by Steph Locke.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

The [rrricanes package](https://docs.ropensci.org/rrricanes/) is looking for a new maintainer!
rrricanes is a web scraper for Atlantic and east Pacific hurricanes and tropical storms.
See [the corresponding GitHub issue](https://github.com/ropensci/rrricanes/issues/127).

You can refer to:

* [our guidance on _Changing package maintainers_](https://devguide.ropensci.org/changing-maintainers.html)
* [our _Package Curation Policy_](https://devguide.ropensci.org/curationpolicy.html)

## Package development corner

Some useful tips for R package developers. :eyes:

### Get inspired by the tidyverse spring cleaning

The tidyverse packages have been undergoing spring cleaning helped by a [public checklist](https://github.com/r-lib/usethis/blob/19c9e5e43ab430ca0ff3e3075b43b869270e01f0/R/tidy-upkeep.R?rgh-link-date=2022-03-04T14%3A53%3A56Z#L31) that is worth a read (example in the [tidymodels package repository](https://github.com/tidymodels/recipes/issues/922)).
Some items are specific to tidyverse-affiliated packages, but not all of them.
Others have equivalent e.g. you could run `desc::desc_normalize()` instead of `usethis::use_tidy_description()`.
How many boxes could you already check, how many could you check in a short time for packages of yours? :wink:

On a more meta level, the idea of checklists in issues like with `usethis::use_release_issue()` is quite neat and generalizable.

### roxygen2 tips

One of the items in the aforementioned checklist is `usethis::use_roxygen_md()` for switching to use Markdown in roxygen2 docs.
Much easier for adding bold text, code, etc.

Another good thing to know is that the roxygen2 pkgdown website has guidance on [repeating yourself](https://roxygen2.r-lib.org/articles/rd.html#do-repeat-yourself) in your docs (["Every page is page one"](https://www.writethedocs.org/blog/newsletter-april-2020/#book-club-an-intro-to-every-page-is-page-one)! Or, as written in our [packaging guide](https://devguide.ropensci.org/building.html), "the principle of multiple points of entry i.e. to take into account the fact that any piece of documentation may be the first encounter the user has with the package and/or the tool/data it wraps.").
See also the blog post ["Reuse Rmd fragments in package vignettes, README, blog posts and more"](https://www.garrickadenbuie.com/blog/dry-vignette-and-readme/) by Garrick Aden-Buie.

Lastly, do you know about katex by Jeroen Ooms for [displaying math in R documentation](https://docs.ropensci.org/katex/reference/math_to_rd.html)?

### Alternatives/complements to pkgdown for package docs?

Documentation websites for rOpenSci packages are happily built with pkgdown.
However depending on your preferences or needs (e.g. what if you want to integrate the docs of your R packages with docs of other non R elements of your pipeline) you might like:

* [r2readthedocs](https://docs.ropensci.org/r2readthedocs/) by Mark Padgham to convert R package documentation to a ‘readthedocs’ website. It is used for documenting [rOpenSci review tools](https://readthedocs.org/projects/ropensci-review-tools/).
* [altdoc](https://altdoc.etiennebacher.com/#/) by Etienne Bacher, that provides helper functions to use docute, docsify, and mkdocs. 

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
