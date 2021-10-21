---
title: rOpenSci News Digest, October 2021
author:
  - The rOpenSci Team
date: '2021-10-22'
slug: ropensci-news-digest-october-2021
categories: []
tags: 
  - newsletter
description: Statistical Package Standards at rOpenSci, new packages and package news
output:
  html_document:
    keep_md: yes
params:
  last_newsletter: '2021-09-30'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2021/10/22/ropensci-news-digest-october-2021).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Community call about the statistical software review project

A fantastic community call is coming up on Tuesday, 26 October 2021 18:00 UTC: [**Expanding Software Peer Review: Statistical Package Standards at rOpenSci**](/commcalls/oct2021-statsreview02/)!

This 1-hour community call will address the bigger picture of **how our community-informed development of standards for statistical packages meets a critical need of stakeholders**. 
[**Noam Ross**](/author/noam-ross/) (EcoHealth Alliance and rOpenSci Software Review Lead) will catch everyone up on the project. 
[**Rebecca Killick**](http://localhost:1313/author/rebecca-killick/) (Lancaster University and rOpenSci Statistical Software Peer Review advisory committee) will offer insights into standardisation and the potential role our program might play in the future of statistical software and open source software in general. 
[**Juliane Manitz**](http://localhost:1313/author/juliane-manitz/) (EMD Serono and R Validation Hub) will offer a perspective on the use of open source software in regulated environments. 
[**Christoph Sax**](/author/christoph-sax/) (cynkra) will share his experience as the first person to submit a package, tsbox, for review and aligning his software with our standards.

Follow the [community call page link](/commcalls/oct2021-statsreview02/) for practical information. 
**Everyone is welcome, no RSVP needed!**

Find out about more [events](/events).

### Three new editors for software review

We are excited to welcome Emily Riederer, Adam Sparks, and Jeff Hollister to our team of [Associate Editors](/software-review/#editors) for rOpenSci [Software Peer Review](/software-review/). 
They join Laura DeCicco, Julia Gustavsen, Anna Krystalli, Mauro Lepore, Karthik Ram, Noam Ross, Maëlle Salmon, and Melina Vidoni.
Find out more about the three new editors in our [introduction blog post](/blog/2021/10/12/editors2021/).

## Software :package:

### New packages




The following  package recently became a part of our software suite:

+ [rsat](https://docs.ropensci.org/rsat), developed by Unai Pérez - Goya together with Manuel Montesino - SanMartin, Ana F Militino, Maria Dolores Ugarte: Downloading, customizing, and processing time series of satellite images for a region of interest. rsat functions allow a unified access to multispectral images from Landsat, MODIS and Sentinel repositories. rsat also offers capabilities for customizing satellite images, such as tile mosaicking, image cropping and new variables computation. Finally, rsat covers the processing, including cloud masking, compositing and gap-filling/smoothing time series of images (Militino et al., 2018 <doi:10.3390/rs10030398> and Militino et al., 2019 <doi:10.1109/TGRS.2019.2904193>). It has been [reviewed](https://github.com/ropensci/software-review/issues/437) by Marc Weber, Kelly Hondula.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following eight packages have had an update since the latest newsletter: [gert](https://docs.ropensci.org/gert "Simple Git Client for R") ([`v1.4.1`](https://github.com/r-lib/gert/releases/tag/v1.4.1)), [GSODR](https://docs.ropensci.org/GSODR "Global Surface Summary of the Day (GSOD) Weather Data Client") ([`v3.1.4`](https://github.com/ropensci/GSODR/releases/tag/v3.1.4)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.6`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.6)), [osmdata](https://docs.ropensci.org/osmdata "Import OpenStreetMap Data as Simple Features or Spatial Objects") ([`v0.1.7`](https://github.com/ropensci/osmdata/releases/tag/v0.1.7)), [rglobi](https://docs.ropensci.org/rglobi "R Interface to Global Biotic Interactions") ([`v0.2.26`](https://github.com/ropensci/rglobi/releases/tag/v0.2.26)), [ruODK](https://docs.ropensci.org/ruODK "An R Client for the ODK Central API") ([`v1.3.0`](https://github.com/ropensci/ruODK/releases/tag/v1.3.0)), [stplanr](https://docs.ropensci.org/stplanr "Sustainable Transport Planning") ([`v0.8.4`](https://github.com/ropensci/stplanr/releases/tag/v0.8.4)), [USAboundariesData](https://docs.ropensci.org/USAboundariesData "Datasets for the USAboundaries package") ([`v0.4.0`](https://github.com/ropensci/USAboundariesData/releases/tag/v0.4.0)).

## Software Peer Review

There are fourteen recently closed and active submissions and 4 submissions on hold. Issues are at different stages: 

* One at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [rsat](https://github.com/ropensci/software-review/issues/437), Tools for Downloading, Customizing, and Processing Time Series of Satellite Images from Landsat, MODIS, and Sentinel. Submitted by [Unai Pérez-Goya](https://unai-perez.github.io/). 

* Two at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [excluder](https://github.com/ropensci/software-review/issues/455), Checks for Exclusion Criteria in Online Data. Submitted by [Jeffrey Stevens](https://decisionslab.unl.edu/). 

    * [mctq](https://github.com/ropensci/software-review/issues/434), An R Package for the Munich ChronoType Questionnaire. Submitted by [Daniel Vartanian](https://danielvartan.netlify.app). 

* Four at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [gendercoder](https://github.com/ropensci/software-review/issues/435), Recodes Sex/Gender Descriptions Into A Standard Set. Submitted by [Emily Kothe](http://emilykothe.com). 

    * [epair](https://github.com/ropensci/software-review/issues/418), Grabs data from EPA API, simplifies getting pollutant data. Submitted by [Leo Orozco-Mulfinger](https://github.com/GLOrozcoM). 

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com). 

    * [chemspiderapi](https://github.com/ropensci/software-review/issues/329), R Wrapper for ChemSpider's API Services. Submitted by [Raoul Wolf](https://github.com/RaoulWolf). 

* Three at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [cffr](https://github.com/ropensci/software-review/issues/463), Generate Citation File Format (cff) Metadata for R Packages. Submitted by [Diego H.](http://dieghernan.github.io). 

    * [ROriginStamp](https://github.com/ropensci/software-review/issues/433), Interface to OriginStamp API to Obtain Trusted Time Stamps. Submitted by [Rainer M Krug](https://github.com/rkrug). 

    * [occCite](https://github.com/ropensci/software-review/issues/407), Querying and Managing Large Biodiversity Occurrence Datasets. Submitted by [Hannah Owens](http://hannahlowens.weebly.com/). 

* Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [tidyqpcr](https://github.com/ropensci/software-review/issues/470), Quantitative PCR Analysis with the Tidyverse. Submitted by [Edward Wallace](https://scholar.google.co.uk/citations?user=7FLIJBAAAAAJ&hl=en). 

    * [phruta](https://github.com/ropensci/software-review/issues/458), Phylogenetic Reconstruction and Time-dating. Submitted by [Cristian Román-Palacios](http://cromanpa94.github.io/cromanpa/). 

* Two at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com).  (Stats).

    * [rdbhapi](https://github.com/ropensci/software-review/issues/443), Interface to DBH-API. Submitted by [Marija Ninic](https://hkdir.no/). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Software Review

* [Announcing New Software Peer Review Editors: Emily Riederer, Adam Sparks, and Jeff Hollister](/blog/2021/10/12/editors2021) by Stefanie Butland. Introducing 3 new editors for rOpenSci software review.



### Tech Notes

* [Generating and customizing badges in r-universe](/blog/2021/10/14/runiverse-badges) by Jeroen Ooms.

## Use cases



Three use cases of our packages and resources have been reported since we sent the last newsletter.

* [Using jsonvalidate to validate the `packages.json` file from your personal universe](https://discuss.ropensci.org/t/using-jsonvalidate-to-validate-the-packages-json-file-from-your-personal-universe/2643). Reported by Hugo Gruson.

* [Creating historical Congressional maps with USABoundaries](https://discuss.ropensci.org/t/creating-historical-congressional-maps-with-usaboundaries/2648). Reported by Andrew Heiss.

* [Predizendo volume de eucalipto com tidymodels, XGBoost e targets](https://discuss.ropensci.org/t/predizendo-volume-de-eucalipto-com-tidymodels-xgboost-e-targets/2656). Reported by Theilon Macêdo.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

There's no open call for new maintainers at this point but you can refer to our [contributing guide](https://contributing.ropensci.org/) for finding ways to get involved!
As the maintainer of an rOpenSci package, feel free to contact us on Slack or email `info@ropensci.org` to get your call for maintainer featured in the next newsletter. 

## Package development corner

Some useful tips for R package developers. :eyes:

### Naming your package

Do you have a fantastic idea and plan for a package, but no name for it yet?
We have some tips on this topic in our [dev guide](https://devguide.ropensci.org/building.html#naming-your-package)!

* We strongly recommend short, descriptive names in lower case. If your package deals with one or more commercial services, please make sure the name does not violate branding guidelines. You can check if your package name is available, informative and not offensive by using the [`available` package](https://github.com/ropenscilabs/available). In particular, do _not_ choose a package name that's already used on CRAN or Bioconductor.

* A more unique package name might be easier to track (for you and us to assess package use) and search (for users to find it and to google their questions). Obviously a _too_ unique package name might make the package less discoverable (e.g. it might be an argument for naming your package [geojson](https://github.com/ropensci/geojson)).
Also note that removing random letter e.g. vowels from a common word to create a package name might make it less easy to remember!

* Find other interesting aspects of naming your package [in this blog post by Nick Tierney](https://www.njtierney.com/post/2018/06/20/naming-things/), and in case you change your mind, find out [how to rename your package in this other blog post of Nick's](https://www.njtierney.com/post/2017/10/27/change-pkg-name/).

### Two testthat tips

The testthat package has been supporting [snapshot tests](https://www.tidyverse.org/blog/2020/10/testthat-3-0-0/#snapshot-testing) that "record expected output in a separate human-readable file instead of using code to describe what the expected output looks like." since its version 3.0.0.
Their implementation is now stable.
Note that they are skipped by default on CRAN.

Now what about _input files_ for tests? 
Maybe you can [create fake ones on the fly (and delete them)](https://blog.r-hub.io/2020/11/18/testthat-utility-belt/#create-fake-folders-and-text-files-from-your-tests).
Or you can store them under `tests/testthat` and use [`testthat::test_path()`](https://testthat.r-lib.org/reference/test_path.html) when using them, to get a file path that "both interactively and during tests".
So to use `tests/testthat/examples/thing` you'd write `testthat::test_path("examples", "thing")`.
Note that the vcr package for HTTP testing has a similar function you can use to locate cassettes, [vcr_test_path()](https://docs.ropensci.org/vcr/reference/vcr_test_path.html).

### Passing CRAN URL checks

CRAN [checks URL validity](https://blog.r-hub.io/2020/12/01/url-checks/).
As recently [reminded by Jenny Bryan on Twitter](https://twitter.com/JennyBryan/status/1450186196395520005), the [urlchecker package by Jim Hester](https://github.com/r-lib/urlchecker/) is a great tool to help your package pass these checks.

### Styling your package

How to enforce a style guide for your package, without too much human effort?
Two suggestions:

* Having a [GitHub Action workflow that allows you to call styler](https://github.com/r-lib/actions/tree/master/examples#commands-workflow) via typing `/style` in a PR comment (or amend the logic to have it work via applying a label to the PR). Or apply this idea to another continuous integration service! If for any reason your style differs from styler's default, follow one of [styler articles for developers](https://styler.r-lib.org/dev/articles/) and tweak the workflow. <span class="x x-first x-last">Here's an [example</span>](https://github.com/ropensci-review-tools/pkgcheck/blob/65fa9d4e77837bd122171d46177cb7db8028ac2e/.github/workflows/pr-commands.yaml#L60-L64), corresponding<span class="x x-first x-last"> to an rOpenSci</span> [style guide package](https://github.com/ropensci-review-tools/spaceout).

* Using a service like [CodeFactor](https://www.codefactor.io) that integrates with GitHub directly. Thanks to [Rich FitzJohn](/author/rich-fitzjohn/) for suggesting this in [rOpenSci semi-open Slack workspace](https://contributing.ropensci.org/resources.html#channels).

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
