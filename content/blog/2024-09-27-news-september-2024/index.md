---
slug: "news-september-2024"
title: rOpenSci News Digest, September 2024
author:
  - The rOpenSci Team
date: '2024-09-27'
tags:
  - newsletter
description: R-universe list pages, training resources, coworking, new package and package news
params:
  last_newsletter: "2024-08-30"
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2024/09/27/news-september-2024).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### R-universe list pages

R-universe now features a [list of all datasets in all packages](https://r-universe.dev/datasets) and a [list of all vignettes  from CRAN, Bioconductor, and others](https://r-universe.dev/articles).

Another important global table is the [package scoreboard](https://r-universe.dev/scores) that lets you explore the scores used by R-universe search engine for ranking, which is based on:

- Stars: Number of starson Github;
- Downloads per month from CRAN or Bioconductor mirrors;
- Scripts: (NEW) number of files on GitHub that mention 'library(pkgname)';
- Dependents: recursive reverse dependencies;
- Unique contributors;
- Yearly commits.

### Resources from our training sessions

Our website now features a searchable table of our [past training sessions](/training/).
Find more of our [resources](/resources).

### The rOpenSci community at upcoming events

rOpenSci Community Manager [Yanina Bellini Saibene](/author/yanina-bellini-saibene/) will deliver a keynote talk at [BioNT Community Event & CarpentryConnect-Heidelberg 2024](/events/carpentryconnect-2024/), on November 14th in Heidelberg, Germany.

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

- Tuesday, October 1st, 14h00 Europe Central (12:00 UTC), Theme TBA with cohost TBA and [Steffi LaZerte](/author/steffi-lazerte).

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

### New packages




The following two packages recently became a part of our software suite:

+ [karel](https://docs.ropensci.org/karel), developed by Marcos Prunello: This is the R implementation of Karel the robot, a programming language created by Dr. R. E. Pattis at Stanford University in 1981. Karel is an useful tool to teach introductory concepts about general programming, such as algorithmic decomposition, conditional statements, loops, etc., in an interactive and fun way, by writing programs to make Karel the robot achieve certain tasks in the world she lives in. Originally based on Pascal, Karel was implemented in many languages through these decades, including Java, C++, Ruby and Python. This is the first package implementing Karel in R.  It is available on [CRAN]( https://CRAN.R-project.org/package=karel). It has been [reviewed](https://github.com/ropensci/software-review/issues/620) by Veronica Jimenez-Jacinto and Joel Nitta.

+ [rix](https://docs.ropensci.org/rix), developed by Bruno Rodrigues together with Philipp Baumann: Provides helper functions to create reproducible development environments using the Nix package manager. It has been [reviewed](https://github.com/ropensci/software-review/issues/625) by David Watkins and Jacob Wujiciak-Jens.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following twenty-nine packages have had an update since the last newsletter: [frictionless](https://docs.ropensci.org/frictionless "Read and Write Frictionless Data Packages") ([`v1.2.0`](https://github.com/frictionlessdata/frictionless-r/releases/tag/v1.2.0)), [gert](https://docs.ropensci.org/gert "Simple Git Client for R") ([`v2.1.0`](https://github.com/r-lib/gert/releases/tag/v2.1.0)), [pkgstats](https://docs.ropensci.org/pkgstats "Metrics of R Packages") ([`v0.1.6`](https://github.com/ropensci-review-tools/pkgstats/releases/tag/v0.1.6)), [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (cff) Metadata for R Packages") ([`v1.1.1`](https://github.com/ropensci/cffr/releases/tag/v1.1.1)), [circle](https://docs.ropensci.org/circle "R Client Package for Circle CI") ([`v0.7.3`](https://github.com/ropensci/circle/releases/tag/v0.7.3)), [crul](https://docs.ropensci.org/crul "HTTP Client") ([`v1.5.0`](https://github.com/ropensci/crul/releases/tag/v1.5.0)), [datefixR](https://docs.ropensci.org/datefixR "Standardize Dates in Different Formats or with Missing Data") ([`v1.7.0`](https://github.com/ropensci/datefixR/releases/tag/v1.7.0)), [git2rdata](https://docs.ropensci.org/git2rdata "Store and Retrieve Data.frames in a Git Repository") ([`v0.4.1`](https://github.com/ropensci/git2rdata/releases/tag/v0.4.1)), [GSODR](https://docs.ropensci.org/GSODR "Global Surface Summary of the Day (GSOD) Weather Data Client") ([`v4.1.2`](https://github.com/ropensci/GSODR/releases/tag/v4.1.2)), [historydata](https://docs.ropensci.org/historydata "Datasets for Historians") ([`v0.3.0`](https://github.com/ropensci/historydata/releases/tag/v0.3.0)), [jagstargets](https://docs.ropensci.org/jagstargets "Targets for JAGS Pipelines") ([`1.2.1`](https://github.com/ropensci/jagstargets/releases/tag/1.2.1)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.18v2`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.18v2)), [mapscanner](https://docs.ropensci.org/mapscanner "Print Maps, Draw on Them, Scan Them Back in") ([`v0.1.1`](https://github.com/ropensci/mapscanner/releases/tag/v0.1.1)), [mregions2](https://docs.ropensci.org/mregions2 "Gazetteer & Data Products") ([`v1.1.1`](https://github.com/ropensci/mregions2/releases/tag/v1.1.1)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.10.6`](https://github.com/ropensci/nodbi/releases/tag/v0.10.6)), [occCite](https://docs.ropensci.org/occCite "Querying and Managing Large Biodiversity Occurrence Datasets") ([`v0.5.8`](https://github.com/ropensci/occCite/releases/tag/v0.5.8)), [osmapiR](https://docs.ropensci.org/osmapiR "OpenStreetMap API") ([`v0.2.1`](https://github.com/ropensci/osmapiR/releases/tag/v0.2.1)), [phonfieldwork](https://docs.ropensci.org/phonfieldwork "Linguistic Phonetic Fieldwork Tools") ([`v0.0.17`](https://github.com/ropensci/phonfieldwork/releases/tag/v0.0.17)), [qualtRics](https://docs.ropensci.org/qualtRics "Download Qualtrics Survey Data") ([`v3.2.1`](https://github.com/ropensci/qualtRics/releases/tag/v3.2.1)), [rangr](https://docs.ropensci.org/rangr "Mechanistic Simulation of Species Range Dynamics") ([`v1.0.5`](https://github.com/ropensci/rangr/releases/tag/v1.0.5)), [rdataretriever](https://docs.ropensci.org/rdataretriever "R Interface to the Data Retriever") ([`v.3.1.1`](https://github.com/ropensci/rdataretriever/releases/tag/v.3.1.1)), [refsplitr](https://docs.ropensci.org/refsplitr "author name disambiguation, author georeferencing, and mapping of 
    coauthorship networks with Web of Science data") ([`v1.0.1`](https://github.com/ropensci/refsplitr/releases/tag/v1.0.1)), [robotstxt](https://docs.ropensci.org/robotstxt "A robots.txt Parser and Webbot/Spider/Crawler Permissions Checker") ([`v0.7.15`](https://github.com/ropensci/robotstxt/releases/tag/v0.7.15)), [rOPTRAM](https://docs.ropensci.org/rOPTRAM "Derive Soil Moisture Using the OPTRAM Algorithm") ([`v0.3`](https://github.com/ropensci/rOPTRAM/releases/tag/v0.3)), [stats19](https://docs.ropensci.org/stats19 "Work with Open Road Traffic Casualty Data from Great Britain") ([`v3.1.0`](https://github.com/ropensci/stats19/releases/tag/v3.1.0)), [stplanr](https://docs.ropensci.org/stplanr "Sustainable Transport Planning") ([`v1.2.2`](https://github.com/ropensci/stplanr/releases/tag/v1.2.2)), [vcr](https://docs.ropensci.org/vcr "Record HTTP Calls to Disk") ([`v1.6.0`](https://github.com/ropensci/vcr/releases/tag/v1.6.0)), [weatherOz](https://docs.ropensci.org/weatherOz "An API Client for Australian Weather and Climate Data Resources") ([`v1.0.0`](https://github.com/ropensci/weatherOz/releases/tag/v1.0.0)), and [webmockr](https://docs.ropensci.org/webmockr "Stubbing and Setting Expectations on HTTP Requests") ([`v1.0.0`](https://github.com/ropensci/webmockr/releases/tag/v1.0.0)).

## Software Peer Review

There are twelve recently closed and active submissions and 6 submissions on hold. Issues are at different stages: 

* One at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [rix](https://github.com/ropensci/software-review/issues/625), Rix: Reproducible Environments with Nix. Submitted by [Bruno Rodrigues](https://brodrigues.co). 

* Two at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [chopin](https://github.com/ropensci/software-review/issues/638), CHOPIN: Computation for Climate and Health research On Parallelized INfrastructure. Submitted by [Insang Song](https://www.issong.net). 

    * [agromet](https://github.com/ropensci/software-review/issues/599), Índices y Estadísticos Climáticos e Hidrológicos. Submitted by [Paola Corrales](https://paocorrales.github.io). 

* Two at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [cancerprof](https://github.com/ropensci/software-review/issues/637), API Client for State Cancer Profiles. Submitted by [Brian Park](https://github.com/realbp). 

    * [rsi](https://github.com/ropensci/software-review/issues/636), Efficiently Retrieve and Process Satellite Imagery. Submitted by [Michael Mahoney](https://mm218.dev/). 

* Five at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [gigs](https://github.com/ropensci/software-review/issues/626), Assess Fetal, Newborn, and Child Growth with International Standards. Submitted by [Simon Parker](https://github.com/simpar1471).  (Stats).

    * [eDNAjoint](https://github.com/ropensci/software-review/issues/642), Joint Modeling of Traditional and Environmental DNA Survey Data. Submitted by [Abigail Keller](https://github.com/abigailkeller). 

    * [gigs](https://github.com/ropensci/software-review/issues/626), Assess Fetal, Newborn, and Child Growth with International Standards. Submitted by [Simon Parker](https://github.com/simpar1471).  (Stats).

    * [sits](https://github.com/ropensci/software-review/issues/596), Satellite Image Time Series Analysis for Earth Observation Data Cubes. Submitted by [Gilberto Camara](https://www.gilbertocamara.org). 

    * [fwildclusterboot](https://github.com/ropensci/software-review/issues/546), Fast Wild Cluster Bootstrap Inference for Linear Models. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/).  (Stats).

* Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [emodnet.wfs](https://github.com/ropensci/software-review/issues/653), Access EMODnet Web Feature Service data through R. Submitted by [Maëlle Salmon](https://masalmon.eu/). 

    * [QuadratiK](https://github.com/ropensci/software-review/issues/632), A Collection of Methods Using Kernel-Based Quadratic Distances for. Submitted by [Giovanni Saraceno](https://github.com/giovsaraceno).  (Stats).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Other topics

* [Resources For Using R With Screen Readers](/blog/2024/09/05/screen-readers-tools) by Liz Hare. Tools and resources to use R with screen readers. Other languages: <a href='/es/blog/2024/09/05/recursos_para_utilizar_r_con_lectores_de_pantalla' lang='es'>Recursos para utilizar R con lectores de pantalla (es)</a>, <a href='/tr/blog/2024/09/05/ekran_okuyucularla_r_kullanımı_i̇çin_kaynaklar' lang='tr'>Ekran Okuyucularla R Kullanımı İçin Kaynaklar (tr)</a>.



### Tech Notes

* [Resources For Using R With Screen Readers](/blog/2024/09/05/screen-readers-tools) by Liz Hare. Tools and resources to use R with screen readers. Other languages: <a href='/es/blog/2024/09/05/recursos_para_utilizar_r_con_lectores_de_pantalla' lang='es'>Recursos para utilizar R con lectores de pantalla (es)</a>, <a href='/tr/blog/2024/09/05/ekran_okuyucularla_r_kullanımı_i̇çin_kaynaklar' lang='tr'>Ekran Okuyucularla R Kullanımı İçin Kaynaklar (tr)</a>.

* [Capturing Screenshots Programmatically With R](/blog/2024/09/10/script-screenshots) by Maëlle Salmon.

* [Labels For Technical Writing Projects](/blog/2024/09/12/labels-writing-projects) by Greg Wilson. Greg discusses the challenges of organizing non-software projects in GitHub and shares the label system he uses for technical writing projects like books and lessons.

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

* [medrxivr](https://docs.ropensci.org/medrxivr/), access and search MedRxiv and BioRxiv preprint data. [Issue for volunteering](https://github.com/ropensci/medrxivr/issues/41).

* [USAboundaries](https://docs.ropensci.org/USAboundaries/) (and USAboundariesdata), historical and contemporary boundaries of the United States of America . [Issue for volunteering](https://github.com/ropensci/USAboundaries/issues/50).

* [historydata](https://docs.ropensci.org/historydata/), datasets for historians. [Issue for volunteering](https://github.com/ropensci/historydata/issues/23).

### Calls for contributions

* [Help make qualtRics better! Code contributions wanted](/blog/2024/03/01/qualtrics-call-help/)

* [Help make assertr better! Come close issues](/blog/2024/02/27/assertr-call-help/)

* [Help users and developers of targets by answering questions!](/blog/2024/02/29/targets-call-help/)

* [Help make waywiser better! User requests wanted](/blog/2024/02/19/waywiser-call-help/)

Also refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### Reminder: R Consortium Infrastructure Steering Committee (ISC) Grant Program Accepting Proposals until October 1st!

The R Consortium [Call for Proposals](https://www.r-consortium.org/all-projects/call-for-proposals) might be a relevant funding opportunity for your package!
If you can't prepare your proposal in time, the next call should start [March 1st next year](https://www.r-consortium.org/all-projects/call-for-proposals).

### How to demonstrate an error in an R Markdown vignette

An useful piece of information shared by Hugo Gruson in our [Slack workspace](https://contributing.ropensci.org/resources.html#channels).
To demonstrate an error in a vignette, try setting `purl = FALSE` in chunks with `error = TRUE`.
[More info in a knitr issue](https://github.com/yihui/knitr/issues/2338).

### Better titles for roxygen2 "family" cross-references

Do you use the "family" roxygen2 tag for grouping and cross-linking manual pages?
Did you know you can override the default title from, for instance, "Other blabla" to "blabla functions and related data"?
If not, refer to [roxygen2 documentation](https://roxygen2.r-lib.org/articles/index-crossref.html#family).

### Create and use a custom roxygen2 tag

Read more about creating a custom tag that adds a new section to a manual page in this [blog post by Maëlle Salmon](https://masalmon.eu/2024/09/03/roxygen2-custom-tag/).

### Materials from posit::conf(2024) workshops

Materials from posit::conf(2024) workshops have been [posted](https://posit-conf-2024.github.io/workshops/).
Especially relevant to package developers: [From R User to R Programmer](https://posit-conf-2024.github.io/programming-r/) by Emma Rand and Ian Lyttle; and [Package Development: The Rest of the Owl](https://github.com/posit-conf-2024/pkg-dev) by Jenny Bryan whose introduction slidedeck features GitHub search tips.

### Some tips when searching GitHub issues

Speaking of GitHub search...

Michael Chirico shared the following tip on Mastodon: ["[you can use] the 'in:title' operator in GitHub search to restrict a search to issues/PRs matching a query in the title"](https://fosstodon.org/@michaelchirico/113083595380080927).

Jenny Bryan answered with another tip: ["involves:USERNAME" for "I was once part of a conversation about this"](https://mastodon.social/@jennybryan@fosstodon.org/113085363392572924).

### An usethis function to create a test helper file

The new usethis function [` usethis::use_test_helper("mocks")`](https://usethis.r-lib.org/reference/use_test_helper.html) will create a [helper file](https://testthat.r-lib.org/articles/special-files.html) under `tests/testthat/helper-mocks.R`.

### A devtools function for building the README and vignettes

Not a new function, but in case you ignore it...
The [`devtools::build_rmd()` and `devtools::build_readme()` functions](https://devtools.r-lib.org/reference/build_rmd.html) render R Markdown files using a temporary install of your current development package.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.
You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
