---
title: 'rOpenSci News Digest, March 2024'
author: 'The rOpenSci Team'
date: '2024-03-29'
tags:
  - newsletter
slug: ropensci-news-march-2024
description: Leadership changes at rOpenSci, multilingual dev guide, new packages and package news
params:
  last_newsletter: "2024-02-23"
---



<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2024/03/29/ropensci-news-march-2024).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Leadership changes at rOpenSci

After 13 years at the helm of rOpenSci, our founding executive director Karthik Ram is stepping down. 
Noam Ross, rOpenSci's current lead for peer review, will be our new Executive Director.  
Karthik will remain a key advisor to rOpenSci. 
We thank him for his years of leadership and service to the community!

Read [Karthik's farewell post](/blog/2024/03/29/from-the-founding-director-my-farewell-to-ropensci/), and [Noam's post about his new role](/blog/2024/03/29/hello-from-our-new-executive-director/)  on our blog

### rOpenSci Dev Guide 0.9.0: Multilingual Now! And Better

We're delighted to announce we've released a new version of our guide,
["rOpenSci Packages: Development, Maintenance, and Peer Review"](https://devguide.ropensci.org/)!

A highlight is that our guide is now bilingual (English and [Spanish](https://devguide.ropensci.org/es/index.es.html)), thanks to work by [Yanina Bellini Saibene](/author/yanina-bellini-saibene/), [Elio Campitelli](/author/elio-campitelli/) and [Pao Corrales](/author/pao-corrales/), and thanks to [support of the Chan Zuckerberg Initiative, NumFOCUS, and the R Consortium](/blog/2023/01/12/multilingual-publishing-en/).
[Read the guide in Spanish](https://devguide.ropensci.org/es/index.es.html).

Our guide is now also getting translated to [Portuguese](/blog/2023/10/20/news-october-2023/#help-us-translate-our-dev-guide-to-portuguese) thanks to volunteers.
We are very grateful for their work!

Read more in the [blog post about the release](/blog/2024/03/11/devguide-0.9.0/).
Thanks to all contributors who made this release possible.

### Interview with Code for Thought podcast

Our community manager, Yanina Bellini Saibene, talked with Peter Schmidt of the [Code for Thought podcast](https://codeforthought.buzzsprout.com/1326658/14660478-en-crossing-the-language-barrier-yanina-saibene), about the importance of making computing materials accessible to non-English speaking learners. 
Listen to the [episode](https://codeforthought.buzzsprout.com/1326658/14660478-en-crossing-the-language-barrier-yanina-saibene).
Find our more about [rOpenSci multilingual publishing project](/multilingual-publishing/).

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

- [Tuesday, April 2nd, 14:00 Europe Central (13:00 UTC)](/events/coworking-2024-04), Sharing your work with Quarto. With cohost [Pao Corrales](/author/pao-corrales) and [Steffi LaZerte](/author/steffi-lazerte).
    - Explore the Quarto documentation and examples
    - Use Quarto to share some of your code
    - Ask questions or troubleshoot your Quarto problems with the cohost and other attendees.

- [Tuesday, May 7th, 09:00 Americas Pacific (16:00 UTC)](/events/coworking-2024-05), Meet rOpenSci's new Executive Director! With cohost [Noam Ross](/author/noam-ross) and [Steffi LaZerte](/author/steffi-lazerte).
    - Learn more about rOpenSci!
    - Explore rOpenSci [packages](/packages) and [contributing guide](https://contributing.ropensci.org/)
    - Ask questions or chat about rOpensci with Noam and other attendees.
    
And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!


## Software :package:

### New packages




The following three packages recently became a part of our software suite, or were recently reviewed again:

+ [nuts](https://docs.ropensci.org/nuts), developed by Moritz Hennicke together with Werner Krause: Motivated by changing administrative boundaries over time, the nuts package can convert European regional data with NUTS codes between versions (2006, 2010, 2013, 2016 and 2021) and levels (NUTS 1, NUTS 2 and NUTS 3). The package uses spatial interpolation as in Lam (1983) <doi:10.1559/152304083783914958> based on granular (100m x 100m) area, population and land use data provided by the European Commission's Joint Research Center.  It is available on [CRAN]( https://CRAN.R-project.org/package=nuts). It has been [reviewed](https://github.com/ropensci/software-review/issues/623) by Pueyo-Ros Josep and Le Meur Nolwenn.

+ [quadkeyr](https://docs.ropensci.org/quadkeyr), developed by Florencia D'Andrea together with Pilar Fernandez: Quadkeyr functions generate raster images based on QuadKey-identified data, facilitating efficient integration of Tile Maps data into R workflows. In particular, Quadkeyr provides support to process and analyze Facebook mobility datasets within the R environment. It has been [reviewed](https://github.com/ropensci/software-review/issues/619) by Maria Paula Caldas and Vincent van Hees.

+ [weatherOz](https://docs.ropensci.org/weatherOz), developed by Rodrigo Pires together with Anna Hepworth, Rebecca O'Leary, Jonathan Carroll, James Goldie, Dean Marchiori, Paul Melloy, Mark Padgham, Hugh Parsonage, Keith Pembleton, and Adam H. Sparks: Provides automated downloading, parsing and formatting of weather data for Australia through API endpoints provided by the Department of Primary Industries and Regional Development (DPIRD) of Western Australia and by the Science and Technology Division of the Queensland Governments Department of Environment and Science (DES). As well as the Bureau of Meteorology (BOM) of the Australian government precis and coastal forecasts, agriculture bulletin data, and downloading and importing radar and satellite imagery files. It has been [reviewed](https://github.com/ropensci/software-review/issues/598) by Laurens Geffert and Sam Rogers.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following nineteen packages have had an update since the last newsletter: [frictionless](https://docs.ropensci.org/frictionless "Read and Write Frictionless Data Packages") ([`v1.0.3`](https://github.com/frictionlessdata/frictionless-r/releases/tag/v1.0.3)), [aRxiv](https://docs.ropensci.org/aRxiv "Interface to the arXiv API") ([`0.10`](https://github.com/ropensci/aRxiv/releases/tag/0.10)), [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (cff) Metadata for R Packages") ([`v1.0.0`](https://github.com/ropensci/cffr/releases/tag/v1.0.0)), [chromer](https://docs.ropensci.org/chromer "Interface to Chromosome Counts Database API") ([`v0.8`](https://github.com/ropensci/chromer/releases/tag/v0.8)), [drake](https://docs.ropensci.org/drake "A Pipeline Toolkit for Reproducible Computation at Scale") ([`7.13.9`](https://github.com/ropensci/drake/releases/tag/7.13.9)), [GSODR](https://docs.ropensci.org/GSODR "Global Surface Summary of the Day (GSOD) Weather Data Client") ([`v4.0.0`](https://github.com/ropensci/GSODR/releases/tag/v4.0.0)), [lightr](https://docs.ropensci.org/lightr "Read Spectrometric Data and Metadata") ([`v1.7.1`](https://github.com/ropensci/lightr/releases/tag/v1.7.1)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.17`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.17)), [magick](https://docs.ropensci.org/magick "Advanced Graphics and Image-Processing in R") ([`2.8.3`](https://github.com/ropensci/magick/releases/tag/2.8.3)), [melt](https://docs.ropensci.org/melt "Multiple Empirical Likelihood Tests") ([`v1.11.2`](https://github.com/ropensci/melt/releases/tag/v1.11.2)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.10.4`](https://github.com/ropensci/nodbi/releases/tag/v0.10.4)), [nuts](https://docs.ropensci.org/nuts "Convert European Regional Data") ([`v1.0.0`](https://github.com/ropensci/nuts/releases/tag/v1.0.0)), [paleobioDB](https://docs.ropensci.org/paleobioDB "Download and Process Data from the Paleobiology Database") ([`v1.0.0`](https://github.com/ropensci/paleobioDB/releases/tag/v1.0.0)), [quadkeyr](https://docs.ropensci.org/quadkeyr "Tools for converting QuadKey-identified datasets (Microsoft's Bing Maps Tile System) into raster images and analyzing Meta (Facebook) Mobility Data.") ([`v0.1.0`](https://github.com/ropensci/quadkeyr/releases/tag/v0.1.0)), [rtweet](https://docs.ropensci.org/rtweet "Collecting Twitter Data") ([`v2.0.0`](https://github.com/ropensci/rtweet/releases/tag/v2.0.0)), [ruODK](https://docs.ropensci.org/ruODK "An R Client for the ODK Central API") ([`v1.4.2`](https://github.com/ropensci/ruODK/releases/tag/v1.4.2)), [spocc](https://docs.ropensci.org/spocc "Interface to Species Occurrence Data Sources") ([`v1.2.3`](https://github.com/ropensci/spocc/releases/tag/v1.2.3)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.8.0`](https://github.com/ropensci/tarchetypes/releases/tag/0.8.0)), and [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.6.0`](https://github.com/ropensci/targets/releases/tag/1.6.0)).

## Software Peer Review

There are thirteen recently closed and active submissions and 6 submissions on hold. Issues are at different stages: 

* Three at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [nuts](https://github.com/ropensci/software-review/issues/623), nuts: Convert European Regional Data. Submitted by [Moritz Hennicke](https://hennicke.science/). 

    * [quadkeyr](https://github.com/ropensci/software-review/issues/619), Tools for converting QuadKeys used in Microsoft's Bing Maps Tile System into raster images. Submitted by [Florencia D'Andrea](https://github.com/flor14). 

    * [baRulho](https://github.com/ropensci/software-review/issues/609), Quantifying (Animal) Sound Degradation. Submitted by [Marcelo Araya-Salas](https://marce10.github.io/). 

* One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [mregions2](https://github.com/ropensci/software-review/issues/590), Access Data from Marineregions.org: The Marine Regions Gazetteer and the Marine Regions Data Products. Submitted by [salvafern](https://salvafern.github.io/). 

* Four at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [rix](https://github.com/ropensci/software-review/issues/625), Rix: Reproducible Environments with Nix. Submitted by [Bruno Rodrigues](https://brodrigues.co). 

    * [fellingdateR](https://github.com/ropensci/software-review/issues/618), Estimate, report and combine felling dates of historical tree-ring. Submitted by [KriHa](https://www.researchgate.net/profile/Kristof_Haneca). 

    * [rgeeExtra](https://github.com/ropensci/software-review/issues/608), Extensions for rgee. Submitted by [Cesar Aybar](https://csaybar.github.io). 

    * [agromet](https://github.com/ropensci/software-review/issues/599), Índices y Estadísticos Climáticos e Hidrológicos. Submitted by [Paola Corrales](https://paocorrales.github.io). 

* Four at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [dendroNetwork](https://github.com/ropensci/software-review/issues/627), Create networks of dendrochronological series using pairwise similarity. Submitted by [RonaldVisser](https://akademienl.social/@RonaldVisser). 

    * [karel](https://github.com/ropensci/software-review/issues/620), Learning programming with Karel the robot. Submitted by [Marcos Prunello](https://unr.edu.ar/). 

    * [rOPTRAM](https://github.com/ropensci/software-review/issues/612), Derive soil moisture using the OPTRAM algorithm. Submitted by [Micha Silver](https://github.com/micha-silver). 

    * [fwildclusterboot](https://github.com/ropensci/software-review/issues/546), Fast Wild Cluster Bootstrap Inference for Linear Models. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/).  (Stats).

* One at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [gigs](https://github.com/ropensci/software-review/issues/626), Assess Fetal, Newborn, and Child Growth with International Standards. Submitted by [Simon Parker](https://github.com/simpar1471).  (Stats).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Software Review

* [rOpenSci Dev Guide 0.9.0: Multilingual Now! And Better](/blog/2024/03/11/devguide-0.9.0) by Maëlle Salmon, Mark Padgham, and Noam Ross. Updates in version 0.9.0 of the online book 'rOpenSci Packages: Development, Maintenance, and Peer Review'. Other languages: <a href='/es/blog/2024/03/11/r_open_sci_dev_guide_0_9_0_ahora_multilingüe_y_mejor' lang='es'>rOpenSci Dev Guide 0.9.0: ¡Ahora multilingüe! Y mejor (es)</a>.

* [rOpenSci Code of Conduct Annual Review](/blog/2024/03/04/conduct2023) by Yanina Bellini Saibene, Mark Padgham, Kara Woo, and Natalia Morandeira. Updates for version 2.5 of rOpenSci's Code of Conduct.

* [Marketing Ideas For Your Package](/blog/2024/03/07/package-marketing) by Yanina Bellini Saibene and Maëlle Salmon. Now that you have created your package, presenting it to the world is a crucial step to gain visibility and attract users. In this blog post we suggest a series of activities and tools for advertizing your package. This post was discussed on the [R Weekly highlights podcast](https://rweekly.fireside.fm/156) hosted by Eric Nantz and Mike Thomas.

* [rOpenSci Champions Pilot Year: Projects Wrap-Up](/blog/2024/03/20/champions-program-projects-cohort1) by Yanina Bellini Saibene. Our first cohort of Champions complete the program. In this blog post, we share each champions projects, their achievements and outreach activities.

* [From the Founding Director: My Farewell to rOpenSci](/blog/2024/03/29/from-the-founding-director-my-farewell-to-ropensci) by Karthik Ram. Karthik Ram steps down as Executive Director after 13 years. Other languages: <a href='/es/blog/2024/03/29/from-the-founding-director-my-farewell-to-ropensci' lang='es'>Del Director Fundador: Mi despedida de rOpenSci (es)</a>.

* [Hello from our New Executive Director!](/blog/2024/03/29/hello-from-our-new-executive-director) by Noam Ross. Noam Ross takes the helm as rOpenSci's new Executive Director. Other languages: <a href='/es/blog/2024/03/29/hello-from-our-new-executive-director' lang='es'>Hola de nuestro nuevo Director Ejecutivo (es)</a>.



### Tech Notes

* [Beautiful Code, Because We’re Worth It!](/blog/2024/02/22/beautiful-code) by Maëlle Salmon and Yanina Bellini Saibene. This post was featured in the [R Weekly Highlights podcast](https://rweekly.fireside.fm/154?t=1338) hosted by Eric Nantz and Mike Thomas.

* [Help make assertr better! Come close issues](/blog/2024/02/27/assertr-call-help) by Tony Fischetti and Maëlle Salmon.

* [Help users and developers of targets by answering questions!](/blog/2024/02/29/targets-call-help) by Will Landau and Maëlle Salmon.

* [Help make qualtRics better! Code contributions wanted](/blog/2024/03/01/qualtrics-call-help) by Julia Silge, Joseph O'Brien, and Maëlle Salmon.

* [An Example of the DRY/DAMP Principles for Package Tests](/blog/2024/03/18/dry-damp) by Maëlle Salmon.

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

* [internetarchive](https://docs.ropensci.org/internetarchive/), an API Client for the Internet Archive. [Issue for volunteering](https://github.com/ropensci/internetarchive/issues/17).

* [historydata](https://docs.ropensci.org/historydata/), datasets for historians. [Issue for volunteering](https://github.com/ropensci/historydata/issues/23).

* [textreuse](https://docs.ropensci.org/textreuse/), detect text reuse and document similarity. [Issue for volunteering](https://github.com/ropensci/textreuse/issues/97).

* [USAboundaries](https://docs.ropensci.org/USAboundaries/) (and USAboundariesdata), historical and contemporary boundaries of the United States of America . [Issue for volunteering](https://github.com/ropensci/USAboundaries/issues/50).

### Calls for contributions

* [Help make qualtRics better! Code contributions wanted](/blog/2024/03/01/qualtrics-call-help/)

* [Help make assertr better! Come close issues](/blog/2024/02/27/assertr-call-help/)

* [Help users and developers of targets by answering questions!](/blog/2024/02/29/targets-call-help/)

* [Help make waywiser better! User requests wanted](/blog/2024/02/19/waywiser-call-help/)

Also refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### Reminder: R Consortium Infrastructure Steering Committee (ISC) Grant Program Accepting Proposals until April 1st!

The R Consortium Call for Proposal might be a relevant funding opportunity for your package!
Find out more in their [post](https://www.r-consortium.org/blog/2024/02/08/r-consortium-infrastructure-steering-committee-isc-grant-program-accepting-proposals-starting-march-1st).
If you can't prepare your proposal in time, the next call will start [September 1st](https://www.r-consortium.org/all-projects/call-for-proposals).

### `@examplesIf` for conditional examples in package manuals

Do you know you can make some examples of your package manual conditional on, say, the session being interactive?
The [`@examplesIf` roxygen2 tag](https://roxygen2.r-lib.org/articles/rd.html?q=examplesIf#examples) is really handy.
What's more, inside the examples of a single manual page, you can seamlessly mix and match `@examples` and `@examplesIf` pieces.

### 'argument "..2" is missing, with no default'

Mike Mahoney [posted an important PSA on Mastodon](https://fosstodon.org/@MikeMahoney218/112044613555056993):

> if you're getting a new error message 'argument "..2" is missing, with no default' on #rstats 4.3.3, it's likely because you have a trailing comma in a call to `glue::glue()`
> seeing this pop up in a few Slacks so figured I'd share
> https://github.com/tidyverse/glue/issues/320

Thanks, Mike!

### Useful hack: a CRAN-specific .Rbuildignore

The [`.Rbuildignore` file](https://blog.r-hub.io/2020/05/20/rbuildignore/) lists the files to not be included when building your package, such as your pkgdown configuration file.
Trevor L. Davis posted a neat idea on [Mastodon](https://mastodon.social/deck/@trevorld@fosstodon.org/112012986709303927): using a CRAN-specific `.Rbuildignore`, so that CRAN submissions omit some tests and vignettes to keep the package under the size limit.

Regarding tests themselves, remember you can [skip some or all](https://books.ropensci.org/http-testing/cran-preparedness.html#skipping-a-few-tests-on-cran) on CRAN (but make sure you're running them on [continuous integration](https://devguide.ropensci.org/pkg_ci.html)!).


### Key advantages of using the keyring package

If your package needs the user to provide secrets, like API tokens, to work, you might be interested in wrapping or recommending the keyring package (maintained by Gábor Csárdi), that accesses the system credential store from R.
See this recent [R-hub blog post](https://blog.r-hub.io/2024/02/28/key-advantages-of-using-keyring/).

### A package for linting roxygen2 documentation

The compelling [roxylint package](https://openpharma.github.io/roxylint/) by Doug Kelkhoff allows you to check some aspects of your roxygen2 docs, such as the use of full stops and sentence case.
See the [list of current rules](https://openpharma.github.io/roxylint/reference/linters.html#functions).

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.
You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
