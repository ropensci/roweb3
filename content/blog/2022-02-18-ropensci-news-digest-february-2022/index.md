---
title: rOpenSci News Digest, February 2022
author:
  - Maëlle Salmon
date: '2022-02-18'
slug: ropensci-news-digest-february-2022
categories: []
tags:
  - newsletter
description: Community manager job ad, co-working sessions, new packages and package news
output:
  html_document:
    keep_md: yes
params:
  last_newsletter: '2022-01-21'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2022/02/18/ropensci-news-digest-february-2022).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### rOpenSci is hiring its next Community Manager!

* Come be part of making our great community even better;

* Help start a new program promoting diverse leadership in open source;

* Join a remote, flexible, global, friendly community and team!

More details [in the job ad](/careers/community-manager-2022/).

### Next coworking sessions

Join us for social coworking & office hours monthly on 1st Tuesdays! Hosted by Steffi LaZerte and various community hosts. Everyone welcome. No RSVP needed. Consult our [Events](/events) page to find your local time and how to join.

Our next sessions are:

* [Tuesday, 01 March 2022, 9 AM North American Pacific / 17:00 UTC](/events/coworking-2022-03/) "Changing package maintainers", *Hosted by Steffi LaZerte and Hannah Owens*
  - Cowork on a project of your choice;
  - Take this time to ensure your packages are understandable to potential collaborators (or future maintainers);
  - Or ask our community host, Hannah Owens, about her experience taking over maintenance of the rOpenSci spocc package.

* [Tuesday, 05 April 2022 9 AM Australian Western / 1:00 UTC ](/events/coworking-2022-04/) "PLACEHOLDER" *Hosted by Steffi LaZerte and Nick Tierney*
  * Cowork on a project of your choice;
  * Work on ....
  * Ask community host, Nick Tierney, about ...

Find out about more [events](/events).

## Software :package:

### New packages




The following two packages recently became a part of our software suite:

+ [rfema](https://docs.ropensci.org/rfema), developed by Dylan Turner: `rfema` allows users to access The Federal Emergency Management Agencys (FEMA) publicly available data through their API. The package provides a set of functions to easily navigate and access data from the National Flood Insurance Program along with FEMAs various disaster aid programs, including the Hazard Mitigation Grant Program, the Public Assistance Grant Program, and the Individual Assistance Grant Program. It has been [reviewed](https://github.com/ropensci/software-review/issues/484) by François Michonneau, and Marcus Beck.

+ [tidytags](https://docs.ropensci.org/tidytags), developed by K. Bret Staudt Willet together with Joshua M. Rosenberg: The tidytags package coordinates the simplicity of collecting tweets over time with a Twitter Archiving Google Sheet (TAGS; <https://tags.hawksey.info/>) and the utility of the rtweet package (<https://docs.ropensci.org/rtweet/>) for processing and preparing additional Twitter metadata. tidytags also introduces functions developed to facilitate systematic yet flexible analyses of data from Twitter. It has been [reviewed](https://github.com/ropensci/software-review/issues/382) by Lluís Revilla Sancho, and Marion Louveaux.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following thirteen packages have had an update since the last newsletter: [av](https://docs.ropensci.org/av "Working with Audio and Video in R") ([`v0.7.0`](https://github.com/ropensci/av/releases/tag/v0.7.0)), [c14bazAAR](https://docs.ropensci.org/c14bazAAR "Download and Prepare C14 Dates from Different Source Databases") ([`3.4.0`](https://github.com/ropensci/c14bazAAR/releases/tag/3.4.0)), [gittargets](https://docs.ropensci.org/gittargets "Data Version Control for the Targets Package") ([`0.0.3`](https://github.com/ropensci/gittargets/releases/tag/0.0.3)), [katex](https://docs.ropensci.org/katex "Rendering Math to HTML, MathML, or R-Documentation Format") ([`v1.4.0`](https://github.com/ropensci/katex/releases/tag/v1.4.0)), [nasapower](https://docs.ropensci.org/nasapower "NASA POWER API Client") ([`v4.0.4`](https://github.com/ropensci/nasapower/releases/tag/v4.0.4)), [osmdata](https://docs.ropensci.org/osmdata "Import OpenStreetMap Data as Simple Features or Spatial Objects") ([`v0.1.9`](https://github.com/ropensci/osmdata/releases/tag/v0.1.9)), [parzer](https://docs.ropensci.org/parzer "Parse Messy Geographic Coordinates") ([`v0.4.1`](https://github.com/ropensci/parzer/releases/tag/v0.4.1)), [rfema](https://docs.ropensci.org/rfema "Access the openFEMA API") ([`v1.0.0`](https://github.com/ropensci/rfema/releases/tag/v1.0.0)), [rgbif](https://docs.ropensci.org/rgbif "Interface to the Global Biodiversity Information Facility API") ([`v3.7.0`](https://github.com/ropensci/rgbif/releases/tag/v3.7.0)), [riem](https://docs.ropensci.org/riem "Accesses Weather Data from the Iowa Environment Mesonet") ([`v0.3.0`](https://github.com/ropensci/riem/releases/tag/v0.3.0)), [terrainr](https://docs.ropensci.org/terrainr "Landscape Visualizations in R and Unity") ([`v0.6.0`](https://github.com/ropensci/terrainr/releases/tag/v0.6.0)), [tic](https://docs.ropensci.org/tic "CI-Agnostic Workflow Definitions") ([`v0.11.4`](https://github.com/ropensci/tic/releases/tag/v0.11.4)), and [tidytags](https://docs.ropensci.org/tidytags "Importing and Analyzing Twitter Data Collected with Twitter Archiving Google Sheets") ([`v0.3.0`](https://github.com/ropensci/tidytags/releases/tag/v0.3.0)).

## Software Peer Review

There are twenty recently closed and active submissions and 4 submissions on hold. Issues are at different stages: 

* Three at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [frictionless](https://github.com/ropensci/software-review/issues/495), Read and Write Frictionless Data Packages. Submitted by [Peter Desmet](https://orcid.org/0000-0002-8442-8025). 

    * [rfema](https://github.com/ropensci/software-review/issues/484), Access the openFEMA API. Submitted by [Dylan Turner](http://dylanturner.org). 

    * [tidytags](https://github.com/ropensci/software-review/issues/382), Simple Collection and Powerful Analysis of Twitter Data. Submitted by [Dr. Bret Staudt Willet](http://bretsw.com). 

* Three at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [gbifdb](https://github.com/ropensci/software-review/issues/492), Local Database Interface to GBIF. Submitted by [Carl Boettiger](http://carlboettiger.info). 

    * [tidyqpcr](https://github.com/ropensci/software-review/issues/470), Quantitative PCR Analysis with the Tidyverse. Submitted by [Edward Wallace](https://scholar.google.co.uk/citations?user=7FLIJBAAAAAJ&hl=en). 

    * [gendercoder](https://github.com/ropensci/software-review/issues/435), Recodes Sex/Gender Descriptions Into A Standard Set. Submitted by [Emily Kothe](http://emilykothe.com). 

* Five at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [qualR](https://github.com/ropensci/software-review/issues/474), An R package to download Sao Paulo and Rio de Janeiro air pollution data. Submitted by [Mario Gavidia Calderón](http://randroll.wordpress.com). 

    * [OmicsMetaData](https://github.com/ropensci/software-review/issues/471), OmicsMetaData: an R-package for interoperable and re-usable biodiversity 'omics (meta)data. Submitted by [Maxime Sweetlove](https://github.com/msweetlove). 

    * [phruta](https://github.com/ropensci/software-review/issues/458), Phylogenetic Reconstruction and Time-dating. Submitted by [Cristian Román-Palacios](http://cromanpa94.github.io/cromanpa/). 

    * [epair](https://github.com/ropensci/software-review/issues/418), Grabs data from EPA API, simplifies getting pollutant data. Submitted by [Leo Orozco-Mulfinger](https://github.com/GLOrozcoM). 

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com). 

* Five at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [EDIutils](https://github.com/ropensci/software-review/issues/498), An API Client for the Environmental Data Initiative Repository. Submitted by [Colin Smith](https://github.com/clnsmth). 

    * [canaper](https://github.com/ropensci/software-review/issues/475), Categorical Analysis of Neo- And Paleo-Endemism. Submitted by [Joel Nitta](https://joelnitta.com).  (Stats).

    * [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com).  (Stats).

    * [ROriginStamp](https://github.com/ropensci/software-review/issues/433), Interface to OriginStamp API to Obtain Trusted Time Stamps. Submitted by [Rainer M Krug](https://github.com/rkrug). 

    * [occCite](https://github.com/ropensci/software-review/issues/407), Querying and Managing Large Biodiversity Occurrence Datasets. Submitted by [Hannah Owens](http://hannahlowens.weebly.com/). 

* Four at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](http://jounihelske.netlify.app).  (Stats).

    * [ReLTER](https://github.com/ropensci/software-review/issues/485), An interface to the eLTER for the R statistical programming environment. Submitted by [Alessandro Oggioni](https://www.cnr.it/people/alessandro.oggioni). 

    * [rdbhapi](https://github.com/ropensci/software-review/issues/443), Interface to DBH-API. Submitted by [Marija Ninic](https://hkdir.no/). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->




### Tech Notes

* [A Blend of Package Build Failures](/blog/2022/01/31/package-build-failures) by Maëlle Salmon. Some common and less common problems we saw in logs of package and pkgdown website builds.

* [pkgcheck now available as a GitHub action!](/blog/2022/02/01/pkgcheck-action) by Mark Padgham, and Jacob Wujciak-Jens. All packages submitted for peer-review with rOpenSci are checked by our   
pkgcheck package. 
This post describes a new GitHub action which can be used to run pkgcheck.
.

## Use cases



One use cases of our packages and resources have been reported since we sent the last newsletter.

* [Calculating US Residential Segregation Indices in A Reproducible Pipeline](https://discuss.ropensci.org/t/calculating-us-residential-segregation-indices-in-a-reproducible-pipeline/2815). Reported by Boyi Guo.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!


## Package development corner

Some useful tips for R package developers. :eyes:

### Make the best out of your package logo

Have you designed (or commissioned) a beautiful logo for your package?
Use [`usethis::use_logo()`](https://usethis.r-lib.org/reference/use_logo.html) that will enforce a specific size and save it under `man/figures/logo.png`, as well as providing you with the Markdown code to insert your logo in your package repo README.
Why do this? This has two advantages:

* If you have a package-level doc (i.e. a manual page for `?package-name`), or create one via [`usethis::use_package_doc()`](https://usethis.r-lib.org/reference/use_package_doc.html), roxygen2 will automatically add the logo to that doc page. Type `?usethis` in your R console for an example.

* If you use [pkgdown BS5 templates](https://www.tidyverse.org/blog/2021/12/pkgdown-2-0-0/#bootstrap-5), which is the case if your package is part of rOpenSci suite, your package logo will appear on all pages, as well as in social media cards.

### Resources about testing

Some links about testing your package...

* When wondering what good tests look like (spoiler: they look obvious): [Why Good Developers Write Bad Unit Tests](https://mtlynch.io/good-developers-bad-tests/) (seen via [an issue in the R packages book repo](https://github.com/hadley/r-pkgs/issues/551)).
* When things go well in one testing context (say, `devtools::test()`) but not in another one (say, `devtools::check()`): [a conversation around usual suspects](https://github.com/hadley/r-pkgs/issues/483). One prevention strategy is to read and apply the advice in testthat [Test fixtures vignette](https://testthat.r-lib.org/articles/test-fixtures.html).
* When having to put helper code somewhere: [Helper code and files for your testthat tests](https://blog.r-hub.io/2020/11/18/testthat-utility-belt/).
* That interacts with a database: [dittodb by Jonathan Keane and Mauricio Vargas](https://docs.ropensci.org/dittodb/).
* That interacts with a web resource: [HTTP testing in R](https://books.ropensci.org/http-testing) (or the more recent [httptest2 package](https://enpiar.com/httptest2/) that is like httptest, but for [httr2](https://httr2.r-lib.org/)).

### The state of continuous integration (CI) for R packages

We no longer recommend using [Travis CI](https://ropensci.org/blog/2020/11/19/moving-away-travis/).
The development version of our dev guide has [updated advice on CI](https://devdevguide.netlify.app/ci.html).

If you adopt GitHub Actions,

* Have a look at the [changelog for r-lib/actions](https://github.com/r-lib/actions/releases) if these are the actions you use;

* Do not miss the tech note ["pkgcheck now available as a GitHub action!"](/blog/2022/02/01/pkgcheck-action/).

### Miscellaneous package building advice

See the tech note [A Blend of Package Build Failures](/blog/2022/01/31/package-build-failures/).

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
