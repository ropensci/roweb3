---
title: rOpenSci News Digest, April 2021
author:
  - The rOpenSci Team
date: '2021-04-16'
slug: latest-ropensci-news-digest
categories: []
tags: 
  - newsletter
description: "Upcoming community calls: R-universe Project, Set Up Your Package to Foster a Community; co-working labelathon; New Package and Package News"
output:
  html_document:
    keep_md: yes
params:
  last_newsletter: '2021-03-16'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
You can read this post [on our blog](/blog/2021/04/16/latest-ropensci-news-digest).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

Are you interested in [volunteering as a package reviewer](https://devguide.ropensci.org/softwarereviewintro.html#whyreview) for rOpenSci?
We have just updated our [volunteering form](https://airtable.com/shrnfDI2S9uuyxtDw) to make it easier to match volunteers and packages.
It only takes a few minutes to fill the form.
Thanks to the more than 150 people who already answered, we're very thankful for your participation!

We have two fantastic community calls coming up! 
The first of them will be paired with a hands-on Social event called _label-athon_.

* [**Set Up Your Package to Foster a Community**](/commcalls/apr2021-pkg-community/) on  Thursday, 22 April 2021 16:00 UTC. rOpenSci puts ongoing effort into exploring and communicating how developers can best attract attention to their package (e.g. usage, citations, or feedback), or how to set up their repository to encourage the types of contributions they want. In this 1-hour community call, **Maëlle Salmon**, **Hugo Gruson**, and **Steffi LaZerte** will share tips and examples on how to do this! 

* That community call will be followed by an experimental event: a [**social co-working label-athon**](/events/labelathon01/) on  Thursday, 29 April 2021 16:00 UTC for which [registration is recommended](https://form.jotform.com/210906095013043).

* [**rOpenSci's R-universe Project**](/commcalls/may2021-r-universe/) on Tuesday, 25 May 2021 17:00 UTC. The R-universe platform is a new umbrella project under which rOpenSci experiments with new ideas for improving publication and discovery of research software in R. In this 1-hour community call, **Jeroen Ooms** will introduce the R-universe, including providing a user perspective, and share how we think this sort of tooling can help scientists publish and discover research software.

Find out about more [events](/events).

## Software :package:

### New packages




The following three packages recently became a part of our software suite:

+ [circle](https://docs.ropensci.org/circle), developed by Patrick Schratz: Tools for interacting with the Circle CI API. Besides executing common tasks such as querying build logs and restarting builds, this package also helps setting up permissions to deploy from builds. It has been [reviewed](https://github.com/ropensci/software-review/issues/356) by Max Joseph, Sharla Gelfand.

+ [dataaimsr](https://docs.ropensci.org/dataaimsr), developed by Diego R. Barneche together with AIMS Datacentre : AIMS Data Platform API Client which provides easy access to AIMS Data Platform scientific data and information. It has been [reviewed](https://github.com/ropensci/software-review/issues/428) by Sam Albers, Elizabeth Stark, Laura DeCicco.

+ [stantargets](https://docs.ropensci.org/stantargets), developed by William Michael Landau: Bayesian data analysis usually incurs long runtimes and cumbersome custom code. A specialized pipeline toolkit for Bayesians, the stantargets R package leverages targets and cmdstanr to ease these burdens. stantargets makes it super easy to set up useful scalable Stan pipelines that automatically parallelize the computation and skip expensive steps when the results are already up to date. Minimal custom code is required, and there is no need to manually configure branching, so usage is much easier than targets alone. stantargets can access all of cmdstanr's major algorithms (MCMC, variational Bayes, and optimization) and it supports both single-fit workflows and multi-rep simulation studies. For the statistical methodology, please refer to Stan documentation (Stan Development Team 2020) <https://mc-stan.org/>. It has been [reviewed](https://github.com/ropensci/software-review/issues/430) by Krzysztof Sakrejda, Matthew T. Warkentin.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following twenty-one packages have had an update since the latest newsletter: [arkdb](https://docs.ropensci.org/arkdb "Archive and Unarchive Databases Using Flat Files") ([`v0.0.11`](https://github.com/ropensci/arkdb/releases/tag/v0.0.11)), [bomrang](https://docs.ropensci.org/bomrang "Australian Government Bureau of Meteorology (BOM) Data Client") ([`v0.7.4`](https://github.com/ropensci/bomrang/releases/tag/v0.7.4)), [c14bazAAR](https://docs.ropensci.org/c14bazAAR "Download and Prepare C14 Dates from Different Source Databases") ([`2.1.0`](https://github.com/ropensci/c14bazAAR/releases/tag/2.1.0)), [DataPackageR](https://docs.ropensci.org/DataPackageR "Construct Reproducible Analytic Data Sets as R Packages") ([`v0.15.8`](https://github.com/ropensci/DataPackageR/releases/tag/v0.15.8)), [dbhydroR](https://docs.ropensci.org/dbhydroR "DBHYDRO Hydrologic and Water Quality Data") ([`v0.2-8`](https://github.com/ropensci/dbhydroR/releases/tag/v0.2-8)), [elastic](https://docs.ropensci.org/elastic "General Purpose Interface to Elasticsearch") ([`v1.2.0`](https://github.com/ropensci/elastic/releases/tag/v1.2.0)), [GSODR](https://docs.ropensci.org/GSODR "Global Surface Summary of the Day (GSOD) Weather Data Client") ([`v3.1.0`](https://github.com/ropensci/GSODR/releases/tag/v3.1.0)), [hydroscoper](https://docs.ropensci.org/hydroscoper "Interface to the Greek National Data Bank for Hydrometeorological Information") ([`1.4`](https://github.com/ropensci/hydroscoper/releases/tag/1.4)), [lightr](https://docs.ropensci.org/lightr "Read Spectrometric Data and Metadata") ([`v1.4`](https://github.com/ropensci/lightr/releases/tag/v1.4)), [magick](https://docs.ropensci.org/magick "Advanced Graphics and Image-Processing in R") ([`v2.7.1`](https://github.com/ropensci/magick/releases/tag/v2.7.1)), [osmdata](https://docs.ropensci.org/osmdata "Import OpenStreetMap Data as Simple Features or Spatial Objects") ([`v0.1.5`](https://github.com/ropensci/osmdata/releases/tag/v0.1.5)), [osmplotr](https://docs.ropensci.org/osmplotr "Bespoke Images of OpenStreetMap Data") ([`v0.3.3`](https://github.com/ropensci/osmplotr/releases/tag/v0.3.3)), [skimr](https://docs.ropensci.org/skimr "Compact and Flexible Summaries of Data") ([`v2.1.3`](https://github.com/ropensci/skimr/releases/tag/v2.1.3)), [spatsoc](https://docs.ropensci.org/spatsoc "Group Animal Relocation Data by Spatial and Temporal Relationship") ([`v0.1.16`](https://github.com/ropensci/spatsoc/releases/tag/v0.1.16)), [stats19](https://docs.ropensci.org/stats19 "Work with Open Road Traffic Casualty Data from Great Britain") ([`1.4.1`](https://github.com/ropensci/stats19/releases/tag/1.4.1)), [stplanr](https://docs.ropensci.org/stplanr "Sustainable Transport Planning") ([`0.8.2`](https://github.com/ropensci/stplanr/releases/tag/0.8.2)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.1.1`](https://github.com/ropensci/tarchetypes/releases/tag/0.1.1)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Workflows") ([`0.3.1`](https://github.com/ropensci/targets/releases/tag/0.3.1)), [taxadb](https://docs.ropensci.org/taxadb "A High-Performance Local Taxonomic Database Interface") ([`0.1.2`](https://github.com/ropensci/taxadb/releases/tag/0.1.2)), [taxlist](https://docs.ropensci.org/taxlist "Handling Taxonomic Lists") ([`v0.2.1`](https://github.com/ropensci/taxlist/releases/tag/v0.2.1)), [UCSCXenaTools](https://docs.ropensci.org/UCSCXenaTools "Download and Explore Datasets from UCSC Xena Data Hubs") ([`v1.4.3`](https://github.com/ropensci/UCSCXenaTools/releases/tag/v1.4.3)).

## Software Peer Review

There are twenty recently closed and active submissions and 2 submissions on hold. Issues are at different stages: 

* Three at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [stantargets](https://github.com/ropensci/software-review/issues/430), Targets for Stan Workflows. Submitted by [Will Landau](https://wlandau.github.io).

    * [dataaimsr](https://github.com/ropensci/software-review/issues/428), AIMS Data Platform API Client. Submitted by [Diego Barneche](https://www.diegobarneche.com/).

    * [circle](https://github.com/ropensci/software-review/issues/356), R Client Package for Circle CI. Submitted by [Patrick Schratz](https://pat-s.me).

* One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [censo2017](https://github.com/ropensci/software-review/issues/414), Base de Datos de Facil Acceso del Censo 2017 de Chile. Submitted by [Pachamaltese](https://pacha.dev).

* Three at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [dataspice](https://github.com/ropensci/software-review/issues/426), Create Lightweight Schema.org Descriptions of Data. Submitted by [Bryce Mecum](https://brycemecum.com).

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com).

    * [chemspiderapi](https://github.com/ropensci/software-review/issues/329), R Wrapper for ChemSpider's API Services. Submitted by [Raoul Wolf](https://github.com/RaoulWolf).

* Three at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [occCite](https://github.com/ropensci/software-review/issues/407), Querying and Managing Large Biodiversity Occurrence Datasets. Submitted by [Hannah Owens](http://hannahlowens.weebly.com/).

    * [tidytags](https://github.com/ropensci/software-review/issues/382), Simple Collection and Powerful Analysis of Twitter Data. Submitted by [Bret Staudt Willet](http://bretsw.com).

    * [exoplanets](https://github.com/ropensci/software-review/issues/309), Provides access to NASA's Exoplanet Archive, see <https://exoplanetarchive.ipac.caltech.edu/index.html>. Submitted by [Tyler Littlefield](http://tylerlittlefield.com).

* Four at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [mctq](https://github.com/ropensci/software-review/issues/434), An R Package for the Munich ChronoType Questionnaire. Submitted by [Daniel Vartanian](https://orcid.org/0000-0001-7782-759X).

    * [ROriginStamp](https://github.com/ropensci/software-review/issues/433), Interface to OriginStamp API to Obtain Trusted Time Stamps. Submitted by [Rainer M Krug](https://github.com/rkrug).

    * [jagstargets](https://github.com/ropensci/software-review/issues/425), Targets for JAGS Workflows. Submitted by [Will Landau](https://wlandau.github.io).

    * [slopes](https://github.com/ropensci/software-review/issues/420), Calculate Slopes of Roads, Rivers and Trajectories. Submitted by [RFlx](http://www.rosafelix.bike).

* Six at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [rsat](https://github.com/ropensci/software-review/issues/437), Tools for Downloading, Customizing, and Processing Time Series of Satellite Images from Landsat, MODIS, and Sentinel. Submitted by [Unai Pérez-Goya](https://unai-perez.github.io/).

    * [allodb](https://github.com/ropensci/software-review/issues/436), Tree Biomass Estimation at Extratropical Forest Plots. Submitted by [Erika Gonzalez-Akre](https://sites.google.com/site/forestecoclimlab/home).

    * [gendercoder](https://github.com/ropensci/software-review/issues/435), Recodes Sex/Gender Descriptions Into A Standard Set. Submitted by [Emily Kothe](http://emilykothe.com).

    * [awardFindR](https://github.com/ropensci/software-review/issues/432), QDR awardFindR. Submitted by [Michael C. McCall](http://mccall.cc).

    * [rWind](https://github.com/ropensci/software-review/issues/429), Download, Edit and Include Wind and Sea Currents Data in Ecological and Evolutionary Analysis. Submitted by [Javier Fernández-López](http://allthiswasfield.blogspot.com.es/).

    * [epair](https://github.com/ropensci/software-review/issues/418), Grabs data from EPA API, simplifies getting pollutant data. Submitted by [Leo Orozco-Mulfinger](https://github.com/GLOrozcoM).

Find out more about [Software Peer Review](/software-review) and how to get involved.

<!-- Do not forget to rebase your branch! -->



## On the blog



* [Publishing and browsing articles on R-universe](/blog/2021/04/09/r-universe-articles) by Jeroen Ooms.

## Citations

No new citations added to our database this month ([browse all citations](/citations)).
Thanks for citing our tools!

## Use cases



Two use cases of our packages and resources have been reported since we sent the last newsletter.

* [Using {RSelenium} to scrape a paginated HTML table](https://discuss.ropensci.org/t/using-rselenium-to-scrape-a-paginated-html-table/2424). Reported by Guillaume Pressiat.

* [Teaching an introduction to workflow management using drake](https://discuss.ropensci.org/t/teaching-an-introduction-to-workflow-management-using-drake/2407). Reported by Matt.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

There's no open call for new maintainers at this point but you can refer to our [contributing guide](https://contributing.ropensci.org/) for finding ways to get involved!
As the maintainer of an rOpenSci package, feel free to contact us on Slack or email `info@ropensci.org` to get your call for maintainer featured in the next newsletter.

## Package development corner

Some useful tips for R package developers. :eyes:

Are the results of **R CMD check** indicating **files [mysteriously disappear](https://community.rstudio.com/t/package-losing-files/99294)**?
Could the culprit be the [`.Rbuildignore` file](https://blog.r-hub.io/2020/05/20/rbuildignore/)?
That's always good to have in mind, as you might have not assessed all consequences of the regular expressions you added in there.
And what about **files that mysteriously do not disappear** despite being listed in `.Rbuildignore`? 
After checking the regular expression, also check that the file is not e.g. locked (on MacOS), which is a tip reported by [Eric Scott](https://www.ericrscott.com/).

rOpenSci development guide does not have many _requirements_ on [**coding style**](https://devguide.ropensci.org/building.html#code-style).
But what if you are looking for guidance on the topic?
Besides [**reading the source**](https://blog.r-hub.io/2019/05/14/read-the-source/) of packages :wink:, you could check out the [**Tidyverse style guide** by Hadley Wickham](https://style.tidyverse.org/) including advice on e.g. [error messages](https://style.tidyverse.org/error-messages.html).

Also coming from the tidyverse, some functions of [Lionel Henry](https://github.com/lionel-)'s **rlang package** might be relevant when developing your R package: [generate or handle a missing argument](https://rlang.r-lib.org/reference/missing_arg.html), [match an argument to a character vector](https://rlang.r-lib.org/reference/arg_match.html) (with an error matching the tidyverse style guide), [check a package is installed](https://rlang.r-lib.org/reference/is_installed.html).
Last but not least if you are a purrr user, rlang (MIT-licensed) has a file called [compat-purrr.R](https://github.com/r-lib/rlang/blob/master/R/compat-purrr.R) with functions that allow for a similar style of programming than with purrr, minus the dependency on purrr (thanks [Gábor Csárdi](https://github.com/gaborcsardi) for this tip).

Now some workflow advice! When **writing unit tests** for your package, it can be very useful to use [covr::report()](http://covr.r-lib.org/reference/report.html) (or [covr::file_report()](http://covr.r-lib.org/reference/file_report.html)) to check _and browse(!)_ your coverage progress without pushing to GitHub to as reminded by [Lluís Revilla Sancho](https://llrs.dev/) in [rOpenSci semi-open slack](https://contributing.ropensci.org/resources.html#channels).
This good piece of advice echoes the workflow advised in [the testing chapter of the book "Mastering Shiny"](https://mastering-shiny.org/scaling-testing.html#workflow-1) by [Hadley Wickham](http://hadley.nz/) (the workflow can also be applied to packages that do not use Shiny).

Do you feel like a **package development "newbie"**?
Stefan McKinnon Høj-Edwards wrote a [nice message on R-package-devel](https://www.mail-archive.com/r-package-devel@r-project.org/msg06645.html) about why not to use neither "newbie" nor "luser" to describe yourself when asking a question about R package development, as it might inhibit you and others.
On a more meta level, Stefan's message is a good example of how to build a welcoming community.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
