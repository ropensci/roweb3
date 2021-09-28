---
title: rOpenSci News Digest, September 2021
author:
  - The rOpenSci Team
date: '2021-09-30'
slug: ropensci-news-digest-september-2021
categories: []
tags:
  - newsletter
description: keywords from the content
output:
  html_document:
    keep_md: yes
params:
  last_newsletter: '2021-08-31'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2021/09/30/ropensci-news-digest-september-2021).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

A first package was submitted to [rOpenSci Statistical Software Peer Review](/stat-software-review/), two months after its [opening](/blog/2021/07/23/ropensci-news-digest-july-2021/): the [tsbox package](https://github.com/ropensci/software-review/issues/464) by [Christoph Sax](https://github.com/christophsax). 
We are very excited, and thankful for the opportunity to hone our new software review tooling!

We've made it easier to browse our [website](/) by adding some basic search from the navbar.
The search isn't on the full content, but on page titles and descriptions. 
We hope it'll help you find what you're after!
Other ways to find an rOpenSci related thing you vaguely remember is by [asking us](https://contributing.ropensci.org/resources.html#channels), searching through [our website source](https://github.com/ropensci/roweb3/) or using your favourite search engine.

Our next Social Coworking and Office Hours is [Tuesday, October 5th, 9 AM Australian Western / 1:00 UTC](/events/coworking-2021-10/), and hosted by [Nicholas Tierney](/author/nicholas-tierney/).
Find out about [more events](/events).

## Software :package:

### New packages




The following two packages recently became a part of our software suite:

+ [jagstargets](https://docs.ropensci.org/jagstargets), developed by William Michael Landau: Bayesian data analysis usually incurs long runtimes and cumbersome custom code. A pipeline toolkit tailored to Bayesian statisticians, the jagstargets R package is leverages targets and R2jags to ease this burden. jagstargets makes it super easy to set up scalable JAGS pipelines that automatically parallelize the computation and skip expensive steps when the results are already up to date. Minimal custom code is required, and there is no need to manually configure branching, so usage is much easier than targets alone. For the underlying methodology, please refer to the documentation of targets <doi:10.21105/joss.02959> and JAGS (Plummer 2003) <https://www.r-project.org/conferences/DSC-2003/Proceedings/Plummer.pdf>. It has been [reviewed](https://github.com/ropensci/software-review/issues/425) by David Lawrence Miller,  Ernest Guevarra.

+ [slopes](https://docs.ropensci.org/slopes), developed by Robin Lovelace together with Rosa Félix, Joey Talbot: Functions and example data to support research into the slope (also known as longitudinal gradient or steepness) of linear geographic entities such as roads <doi:10.1038/s41597-019-0147-x> and rivers <doi:10.1016/j.jhydrol.2018.06.066>. The package was initially developed to calculate the steepness of street segments but can be used to calculate steepness of any linear feature that can be represented as LINESTRING geometries in the sf class system. The package takes two main types of input data for slope calculation: vector geographic objects representing linear features, and raster geographic objects with elevation values (which can be downloaded using functionality in the package) representing a continuous terrain surface. Where no raster object is provided the package attempts to download elevation data using the ceramic package. It has been [reviewed](https://github.com/ropensci/software-review/issues/420) by Dan Olner, Andy Teucher.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following fifteen packages have had an update since the latest newsletter: [gert](https://docs.ropensci.org/gert "Simple Git Client for R") ([`v1.4.0`](https://github.com/r-lib/gert/releases/tag/v1.4.0)), [pkgstats](https://docs.ropensci.org/pkgstats "Metrics of R Packages") ([`v0.0.1`](https://github.com/ropensci-review-tools/pkgstats/releases/tag/v0.0.1)), [beastier](https://docs.ropensci.org/beastier "Call BEAST2") ([`v2.4.8`](https://github.com/ropensci/beastier/releases/tag/v2.4.8)), [c14bazAAR](https://docs.ropensci.org/c14bazAAR "Download and Prepare C14 Dates from Different Source Databases") ([`3.1.0`](https://github.com/ropensci/c14bazAAR/releases/tag/3.1.0)), [DataSpaceR](https://docs.ropensci.org/DataSpaceR "Interface to the CAVD DataSpace") ([`v0.7.5`](https://github.com/ropensci/DataSpaceR/releases/tag/v0.7.5)), [drake](https://docs.ropensci.org/drake "A Pipeline Toolkit for Reproducible Computation at Scale") ([`7.13.3`](https://github.com/ropensci/drake/releases/tag/7.13.3)), [europepmc](https://docs.ropensci.org/europepmc "R Interface to the Europe PubMed Central RESTful Web Service") ([`v0.4.1`](https://github.com/ropensci/europepmc/releases/tag/v0.4.1)), [NLMR](https://docs.ropensci.org/NLMR "Simulating Neutral Landscape Models") ([`v0.6`](https://github.com/ropensci/NLMR/releases/tag/v0.6)), [nlrx](https://docs.ropensci.org/nlrx "Setup, Run and Analyze NetLogo Model Simulations from R via XML") ([`v0.4.3`](https://github.com/ropensci/nlrx/releases/tag/v0.4.3)), [qualtRics](https://docs.ropensci.org/qualtRics "Download Qualtrics Survey Data") ([`v3.1.5`](https://github.com/ropensci/qualtRics/releases/tag/v3.1.5)), [rebird](https://docs.ropensci.org/rebird "R Client for the eBird Database of Bird Observations") ([`v1.3.0`](https://github.com/ropensci/rebird/releases/tag/v1.3.0)), [rfishbase](https://docs.ropensci.org/rfishbase "R Interface to FishBase") ([`slb-21.08`](https://github.com/ropensci/rfishbase/releases/tag/slb-21.08)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.3.1`](https://github.com/ropensci/tarchetypes/releases/tag/0.3.1)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Workflows") ([`0.8.0`](https://github.com/ropensci/targets/releases/tag/0.8.0)), [tidyhydat](https://docs.ropensci.org/tidyhydat "Extract and Tidy Canadian Hydrometric Data") ([`0.5.4`](https://github.com/ropensci/tidyhydat/releases/tag/0.5.4)).

## Software Peer Review

There are fifteen recently closed and active submissions and 5 submissions on hold. Issues are at different stages: 

* Three at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [allodb](https://github.com/ropensci/software-review/issues/436), Tree Biomass Estimation at Extratropical Forest Plots. Submitted by [Erika Gonzalez-Akre](https://sites.google.com/site/forestecoclimlab/home). 

    * [jagstargets](https://github.com/ropensci/software-review/issues/425), Targets for JAGS Workflows. Submitted by [Will Landau](https://wlandau.github.io). 

    * [slopes](https://github.com/ropensci/software-review/issues/420), Calculate Slopes of Roads, Rivers and Trajectories. Submitted by [RFlx](http://www.rosafelix.bike). 

* One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [rsat](https://github.com/ropensci/software-review/issues/437), Tools for Downloading, Customizing, and Processing Time Series of Satellite Images from Landsat, MODIS, and Sentinel. Submitted by [Unai Pérez-Goya](https://unai-perez.github.io/). 

* Three at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [gendercoder](https://github.com/ropensci/software-review/issues/435), Recodes Sex/Gender Descriptions Into A Standard Set. Submitted by [Emily Kothe](http://emilykothe.com). 

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com). 

    * [chemspiderapi](https://github.com/ropensci/software-review/issues/329), R Wrapper for ChemSpider's API Services. Submitted by [Raoul Wolf](https://github.com/RaoulWolf). 

* Four at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [excluder](https://github.com/ropensci/software-review/issues/455), Checks for Exclusion Criteria in Online Data. Submitted by [Jeffrey Stevens](https://decisionslab.unl.edu/). 

    * [ROriginStamp](https://github.com/ropensci/software-review/issues/433), Interface to OriginStamp API to Obtain Trusted Time Stamps. Submitted by [Rainer M Krug](https://github.com/rkrug). 

    * [epair](https://github.com/ropensci/software-review/issues/418), Grabs data from EPA API, simplifies getting pollutant data. Submitted by [Leo Orozco-Mulfinger](https://github.com/GLOrozcoM). 

    * [occCite](https://github.com/ropensci/software-review/issues/407), Querying and Managing Large Biodiversity Occurrence Datasets. Submitted by [Hannah Owens](http://hannahlowens.weebly.com/). 

* Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [cffr](https://github.com/ropensci/software-review/issues/463), Generate Citation File Format (cff) Metadata for R Packages. Submitted by [Diego H.](http://dieghernan.github.io). 

    * [phruta](https://github.com/ropensci/software-review/issues/458), Phylogenetic Reconstruction and Time-dating. Submitted by [Cristian Román-Palacios](http://cromanpa94.github.io/cromanpa/). 

* Two at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com).  (Stats).

    * [rdbhapi](https://github.com/ropensci/software-review/issues/443), Interface to DBH-API. Submitted by [Marija Ninic](https://hkdir.no/). 

Find out more about [Software Peer Review](/software-review) and [Statistical Software Peer Review](/stat-software-review/), including how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->




### Tech Notes

* [rOpenSci docs are now built on r-universe](/blog/2021/09/03/runiverse-docs) by Jeroen Ooms. As of today, the pkgdown sites for all rOpenSci packages on our docs server are built on r-universe.

* [How to Use System Commands in your R Script or Package](/blog/2021/09/13/system-calls-R-package) by Jeroen Ooms, Maëlle Salmon. Ways (not) to call the system from your R package.

## Use cases



Three use cases of our packages and resources have been reported since we sent the last newsletter.

* [Bayesian Regression Analysis with Rstanarm (with GSODR for supporting data)](https://discuss.ropensci.org/t/bayesian-regression-analysis-with-rstanarm-with-gsodr-for-supporting-data/2603). Reported by Adam Sparks.

* [Slicing an image with magick for artistic effect](https://discuss.ropensci.org/t/slicing-an-image-with-magick-for-artistic-effect/2609). Reported by Georgios Karamanis.

* [Using stplanr to find shortest road network distance to a TB treatment clinic from a TB patients' household](https://discuss.ropensci.org/t/using-stplanr-to-find-shortest-road-network-distance-to-a-tb-treatment-clinic-from-a-tb-patients-household/2621). Reported by McEwen Khundi.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

There's no open call for new maintainers at this point but you can refer to our [contributing guide](https://contributing.ropensci.org/) for finding ways to get involved!
As the maintainer of an rOpenSci package, feel free to contact us on Slack or email `info@ropensci.org` to get your call for maintainer featured in the next newsletter.

## Package development corner

Some useful tips for R package developers. :eyes:

Short anti-struggle list:

* Struggling to write [graceful](https://books.ropensci.org/http-testing/graceful.html) R package examples for CRAN?
Let's remind you of [`@examplesIf` in the latest `roxygen2`](https://roxygen2.r-lib.org/articles/rd.html#functions).

* Struggling with GitHub Actions and dependencies installed from an additional repository? (E.g. [an R-universe repository](/blog/2021/06/22/setup-runiverse/)?)
The r-lib setup-r action now has a [`extra-repositories` input](https://github.com/r-lib/actions/blob/8f28ffb1dc3d672a7d1beec9f4869f5d86168b10/setup-r/action.yml#L46).

* Struggling with encoding in particular a NOTE about UTF-8 strings? Read the [related thread on our forum](https://discuss.ropensci.org/t/note-on-utf-8-strings-by-goodpractice-gp/2165).

How to test code run by [callr](https://callr.r-lib.org/), while having tests contribute to code coverage?
[covr](https://covr.r-lib.org/) modifies the code through injecting tracing symbols and running as its own temporary and definitely self-contained process. 
Any processes external to this, which includes anything via callr, cannot be traced. 
This is an entirely standard condition of any code tracing algorithm. 
A good tip is to ensure everything inside a callr call is bundled as a simple function that can be tested in tests without the callr wrapper.

Another challenge for testing might be interactive behavior. 
For Shiny apps you might look into [shinytest](https://rstudio.github.io/shinytest/), for anything happening in the browser you might enjoy [chromote](https://rstudio.github.io/chromote/) or [crrri](https://rlesur.github.io/crrri/).
You can also resort to [mocking](https://blog.r-hub.io/2019/10/29/mocking/).
For code that's supposed to be only run in interactive sessions, you might use [rlang functions in particular the `rlang::is_interactive()`](https://rlang.r-lib.org/reference/is_interactive.html) in code and tests. 
You can look at the [targets testing suite for external processes](https://github.com/ropensci/targets/tree/main/tests/interactive) and [usethis manual tests](https://github.com/r-lib/usethis/tree/master/tests/manual).

Now about real testers, i.e. the users! :wink:
To help them use your package optimally, you have to write a nice interface, good docs (including system requirements), informative error messages, etc.
Have you also considered adding some sort of sitrep (situation report) function?
The devtools package has [`devtools::dev_sitrep()`](https://devtools.r-lib.org/reference/dev_sitrep.html) e.g. reports on the package development situation, with clear hints given if something is not quite right.
The usethis package has [`usethis::git_sitrep()`](https://usethis.r-lib.org/reference/git_sitrep.html) (using the gert package under the hood!), blogdown has [`blogdown::check_site()`](https://alison.netlify.app/ares-kind-tools/#114).
Good candidates for checks are common pain points, so finding them might require some sort of external perspective on your package.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
