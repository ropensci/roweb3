---
slug: "news-december-2024"
title: rOpenSci News Digest, December 2024
author:
  - The rOpenSci Team
date: '2024-12-19'
tags:
  - newsletter
description: R-universe now R Consortium top-level project, First-Time Contributions to FOSS, coworking, new package and package news
params:
  last_newsletter: "2024-11-29"
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2024/12/19/news-december-2024).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### R-Universe Named an R Consortium Top-Level Project

We are excited to announce that [R-Universe](/r-universe/)
has been [named](https://r-consortium.org/posts/r-universe-named-r-consortiums-newest-top-level-project/) the [R Consortium's](https://r-consortium.org) newest [Top-Level Project](https://r-consortium.org/all-projects/)!  We're glad
to be in the company of community and infrastructure projects that have been
designated critical to the R Ecosystem, such as [R-hub](https://blog.r-hub.io/), [DBI](https://r-dbi.org/), [R-Ladies](https://rladies.org/), and the
[R User Group program](https://r-consortium.org/all-projects/isc-working-groups.html), and we are grateful for the support of the R Consortium and
its [Infrastructure Steering Committee (ISC)](https://r-consortium.org/about/governance#infrastructure-steering-committee).

Read more in our [announcement](/blog/2024/12/03/r-universe-r-consortium-tlp/)!

### Community Call "From Novice to Contributor: Making and Supporting First-Time Contributions to FOSS"

Contributing to open source can be very rewarding but also incredibly intimidating. 
In this community call, moderated by [Hugo Gruson](/author/hugo-gruson/), our speakers, [Yaoxiang Li](/author/yaoxiang-li/), [Pascal Burkhard](/author/pascal-burkhard/), and [Sunny Tseng](/author/yi-chin-sunny-tseng/), will share practical advice for making first contributions, how to use tools like git and testthat, and common challenges and how to overcome them.

📆 Monday, 20 January 2025 16:00 UTC
🎤 With [Yi-Chin Sunny Tseng](/author/yi-chin-sunny-tseng/), [Pascal Burkhard](/author/pascal-burkhard/), [Yaoxiang Li](/author/yaoxiang-li/), [Hugo Gruson](/author/hugo-gruson/).
[Check your local time + info to join + speakers bio and resources](/commcalls/first-time-contributor/)

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

- [Tuesday, January 14th, 14:00 European Central (13:00 UTC)](/events/coworking-2025-01/), "Working with Parquet in R" with cohosts [Rainer M Krug](/author/rainer-m-krug/), and [Steffi LaZerte](/author/steffi-lazerte).
    - Read up on what Parquet is.
    - Explore how to use Parquet in R.
    - Meet community host, Rainer Krug, and discuss benefits and tips for using Parquet in R and how you might use it in your work.

And stay tuned for some special coworking sessions [supporting first-time contributors](/blog/2024/10/22/first-time-contributions/) to open source coming up in February and March 2025!

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

### Multilingual Project

This year, we have made important progress, working with our community to create content in several languages.

We had our [first community call in Portuguese](/commcalls/translation-portuguese/) and made our first translaton together with the LatinR Conference.

The progress of the [Portuguese translation of our development guide](https://devdevguide.netlify.app/pt/preface.pt) is amazing! 

* **21**/30 chapters + CoC - 70% - merged 
* **3**/30 chapters + CoC - 10% - under first review 
* **6**/30 chapters + CoC - 20% - under second review 

We are very grateful to all the people who have made this possible.  
We are very close to achieving our goal!

We also published the first version of our [Localization and Translation Guidelines. Why and how we localize and translate our resources](https://translationguide.ropensci.org/).
Everything we developed and learned during the translations & localizations of our content is detailed in this book: the processes, the roles, and the technical tools.  
We hope it will be helpful to other groups!

Stay tuned for more news and activities on multilingual projects in 2025!.
## Software :package:

### New packages




The following  package recently became a part of our software suite:

+ [agroclimatico](https://docs.ropensci.org/agroclimatico), developed by Paola Corrales together with Elio Campitelli and Natalia Gattinoni: Conjunto de funciones para calcular índices y estadísticos climáticos hidrológicos a partir de datos tidy. Incluye una función para graficar resultados georeferenciados y e información cartográfica. It has been [reviewed](https://github.com/ropensci/software-review/issues/599) by Verónica Cruz-Alonso and Priscilla Minotti.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following eight packages have had an update since the last newsletter: [drake](https://docs.ropensci.org/drake "A Pipeline Toolkit for Reproducible Computation at Scale") ([`7.13.11`](https://github.com/ropensci/drake/releases/tag/7.13.11)), [getCRUCLdata](https://docs.ropensci.org/getCRUCLdata "CRU CL v. 2.0 Climatology Client") ([`v1.0.2`](https://github.com/ropensci/getCRUCLdata/releases/tag/v1.0.2)), [jagstargets](https://docs.ropensci.org/jagstargets "Targets for JAGS Pipelines") ([`1.2.3`](https://github.com/ropensci/jagstargets/releases/tag/1.2.3)), [lightr](https://docs.ropensci.org/lightr "Read Spectrometric Data and Metadata") ([`v1.8.0`](https://github.com/ropensci/lightr/releases/tag/v1.8.0)), [rerddap](https://docs.ropensci.org/rerddap "General Purpose Client for ERDDAP™ Servers") ([`v1.2.0`](https://github.com/ropensci/rerddap/releases/tag/v1.2.0)), [spatsoc](https://docs.ropensci.org/spatsoc "Group Animal Relocation Data by Spatial and Temporal Relationship") ([`v0.2.8`](https://github.com/ropensci/spatsoc/releases/tag/v0.2.8)), [stantargets](https://docs.ropensci.org/stantargets "Targets for Stan Workflows") ([`0.1.2`](https://github.com/ropensci/stantargets/releases/tag/0.1.2)), and [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.9.1`](https://github.com/ropensci/targets/releases/tag/1.9.1)).

## Software Peer Review

There are seventeen recently closed and active submissions and 6 submissions on hold. Issues are at different stages: 

* Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [gigs](https://github.com/ropensci/software-review/issues/626), Assess Fetal, Newborn, and Child Growth with International Standards. Submitted by [Simon Parker](https://github.com/simpar1471).  (Stats).

    * [agromet](https://github.com/ropensci/software-review/issues/599), Índices y Estadísticos Climáticos e Hidrológicos. Submitted by [Paola Corrales](https://paocorrales.github.io). 

* Four at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [rredlist](https://github.com/ropensci/software-review/issues/663), IUCN Red List Client. Submitted by [William Gearty](http://williamgearty.com). 

    * [mbquartR](https://github.com/ropensci/software-review/issues/658), Finding Manitoba Quarter Sections. Submitted by [Alex Koiter](http://www.alexkoiter.ca). 

    * [emodnet.wfs](https://github.com/ropensci/software-review/issues/653), Access EMODnet Web Feature Service data through R. Submitted by [Maëlle Salmon](https://masalmon.eu/). 

    * [cancerprof](https://github.com/ropensci/software-review/issues/637), API Client for State Cancer Profiles. Submitted by [Brian Park](https://github.com/realbp). 

* Four at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [butterfly](https://github.com/ropensci/software-review/issues/676), Verification For Continually Updating Timeseries Data. Submitted by [Thomas Zwagerman](https://thomaszwagerman.co.uk/). 

    * [fireexposuR](https://github.com/ropensci/software-review/issues/659), Compute and Visualize Wildfire Exposure. Submitted by [Air Forbes](https://wildfireanalytics.org/forbes.html). 

    * [sits](https://github.com/ropensci/software-review/issues/596), Satellite Image Time Series Analysis for Earth Observation Data Cubes. Submitted by [Gilberto Camara](https://www.gilbertocamara.org). 

    * [fwildclusterboot](https://github.com/ropensci/software-review/issues/546), Fast Wild Cluster Bootstrap Inference for Linear Models. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/).  (Stats).

* Three at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [pkgmatch](https://github.com/ropensci/software-review/issues/671), Find R Packages Matching Either Descriptions or Other R Packages. Submitted by [mark padgham](https://mpadge.github.io). 

    * [QuadratiK](https://github.com/ropensci/software-review/issues/632), A Collection of Methods Using Kernel-Based Quadratic Distances for. Submitted by [Giovanni Saraceno](https://github.com/giovsaraceno).  (Stats).

    * [galamm](https://github.com/ropensci/software-review/issues/615), Generalized Additive Latent and Mixed Models. Submitted by [Øystein Sørensen](https://osorensen.rbind.io).  (Stats).

* Four at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [geotargets](https://github.com/ropensci/software-review/issues/675), Targets Extensions for Geospatial Formats. Submitted by [Nicholas Tierney](https://www.njtierney.com). 

    * [sasquatch](https://github.com/ropensci/software-review/issues/673), Use SAS, R, and quarto Together. Submitted by [Ryan Zomorrodi](http://ryanzomorrodi.github.io). 

    * [forcis](https://github.com/ropensci/software-review/issues/660), An R Client to Access the FORCIS Database. Submitted by [Nicolas Casajus](https://nicolascasajus.fr). 

    * [capybara](https://github.com/ropensci/software-review/issues/645), Fast and Memory Efficient Fitting of Linear Models With High-Dimensional. Submitted by [Mauricio "Pachá" Vargas Sepúlveda](https://pacha.dev). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



* [R-Universe Named R Consortium Top-Level Project](/blog/2024/12/03/r-universe-r-consortium-tlp) by Noam Ross and Jeroen Ooms. We're excited to announce R-Universe has been named the R-Consortium's newest Top-Level Project. Other languages: <a href='/es/blog/2024/12/03/r-universe-r-consortium-tlp' lang='es'>R-Universe es ahora un proyecto de alto nivel del R Consortium (es)</a>.

* [Introducing the rOpenSci Localization and Translation Guidelines](/blog/2024/12/17/localization-guide) by Yanina Bellini Saibene, Maëlle Salmon, Pao Corrales, and Elio Campitelli. rOpenSci has developed a set of guidelines to assist our community in translating and localizing our resources. We're excited to share the first version of the rOpenSci Localization and Translation Guidelines. Other languages: <a href='/es/blog/2024/12/17/guia-localizacion' lang='es'>Presentación de la Guía de localización y traducción de rOpenSci (es)</a>.

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

* [hddtools](https://docs.ropensci.org/hddtools/), Hydrological Data Discovery Tools. [Issue for volunteering](https://github.com/ropensci/hddtools/issues/36).

* [circle](https://docs.ropensci.org/circle/), R client package for the Continuous Integration (CI) provider Circle CI. [Issue for volunteering](https://github.com/ropensci/circle/issues/46).

* [tic](https://docs.ropensci.org/tic/), Tasks Integrating Continuously: CI-Agnostic Workflow Definitions. [Issue for volunteering](https://github.com/ropensci/tic/issues/339).

* [USAboundaries](https://docs.ropensci.org/USAboundaries/) (and USAboundariesdata), historical and contemporary boundaries of the United States of America . [Issue for volunteering](https://github.com/ropensci/USAboundaries/issues/50).

* [historydata](https://docs.ropensci.org/historydata/), datasets for historians. [Issue for volunteering](https://github.com/ropensci/historydata/issues/23).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

The bib2f package, for parsing BibTeX files into tibbles, would need some help! [Issue for volunteering](https://github.com/ropensci/bib2df/issues/65).

## Package development corner

Some useful tips for R package developers. :eyes:

### R CMD Check results as structured data!

Here are two functions that parse the `*.Rcheck` folders in the given directory:

`tools::check_packages_in_dir_details()` gives a data frame, one line for each NOTE, WARNING or ERROR in the check logs. 
Therefore, one gets multiple lines per package. 
We can convert the output to JSON:


```r
df <- tools::check_packages_in_dir_details(".")
toJSON(df, pretty=TRUE)
```

```json
...
  {
    "Package": "EXAMPLE",
    "Version": "3.2",
    "Check": "examples",
    "Status": "ERROR",
    "Output": "Running examples in ‘EXAMPLE-Ex.R’ failed\nThe error most likely occurred in:\n\n> ### Name: core_cpp\n> ### Title: Maximization of Cross-Validateed Accuracy Methods\n> ### Aliases: core_cpp\n> \n> ### ** Examples\n> \n> # Here, the famous (Fisher's or Anderson's) iris data set was loaded\n> data(iris)\n> u=as.matrix(iris[,-5])\n> s=sample(1:150,150,TRUE)\n> \n> # The maximization of the accuracy of the vector s is performed\n> results=core_cpp(u, clbest=s,fpar = 5)\nError in core_cpp(u, clbest = s, fpar = 5) : unused argument (fpar = 5)\nExecution halted",
    "Flags": "--no-manual --no-vignettes"
  },
  {
    "Package": "EXAMPLE",
    "Version": "3.2",
    "Check": "package vignettes",
    "Status": "WARNING",
    "Output": "Located more than one ‘weave’ output file (by engine ‘knitr::rmarkdown’) for vignette with name ‘EXAMPLE’: ‘EXAMPLE.html’ (28837 bytes), ‘EXAMPLE.pdf’ (986231 bytes)\nPackage vignette without corresponding single PDF/HTML:\n  ‘EXAMPLE.Rmd’",
    "Flags": "--no-manual --no-vignettes"
  }
```

To instead obtain the final "conclusion" for each package log, use this:

```r
output <- tools:::check_packages_in_dir_results(".")
output$EXAMPLE
```

```
$status
[1] "ERROR"

$lines
...
[8] "* checking examples ... ERROR"
[9] "* checking package vignettes ... WARNING"
```

### The CRAN cookbook

The [CRAN Cookbook](https://contributor.r-project.org/cran-cookbook/) by Jasmine Daly and Beni Altmann with participation of Heather Turner is a guide for solving common (and often recurring) issues spotted by CRAN volunteers during package submissions and re-submissions. 
The guide present practical “recipes” organized by different parts of the package structure.

### usethis 3.1.0

For those using the usethis package for their package development tasks, here are two highlights from the [3.1.0 release](https://usethis.r-lib.org/news/index.html#usethis-310):

- `use_vignette()` and `use_article()` now support Quarto (not as default yet).
- "[`use_tidy_upkeep_issue()`](https://usethis.r-lib.org/reference/tidyverse.html) records the year it is being run in the Config/usethis/upkeep field in `DESCRIPTION`. If this value exists, it is used to filter the checklist when making the issue."


## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.
You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
