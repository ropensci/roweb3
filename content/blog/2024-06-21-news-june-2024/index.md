---
title: 'rOpenSci News Digest, June 2024'
author: 'The rOpenSci Team'
date: '2024-06-21'
tags:
  - newsletter
slug: ropensci-news-june-2024
description: New goodpractice maintainer, CZI meeting report, rOpenSci community at upcoming events, new packages and package news
params:
  last_newsletter: '2024-05-24'
---



<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2024/06/21/ropensci-news-june-2024).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### rOpenSci takes over maintenance of the {goodpractice} package

The {goodpractice} package was started by Gábor Csárdi in 2016 to auto-magically provide advice on good practices for your own R package.
[rOpenSci's *Dev Guide*](https://devguide.ropensci.org) has recommended using it from [the first day we started writing it in 2018](https://github.com/ropensci/dev_guide/commits/main/?since=2018-03-26&until=2018-03-26).
The package is now a central part of our own internal [{pkgcheck} system](https://https://docs.ropensci.org/pkgcheck/), which is run automatically on all new submissions, and we recommend that all authors use [our 'pkgcheck-action' GitHub action](https://github.com/ropensci-review-tools/pkgcheck-action), which also runs {goodpractice}.

We are pleased to announce that rOpenSci has now taken over maintenance of the {goodpractice} package, thanks to the approval both of the original author Gábor, and the previous maintainers at ascent.io.
The package has now been moved to [our ropensci-review-tools GitHub organization](https://github.com/ropensci-review-tools), which holds all software used in our automated checking system.
This also means that documentation for the package is now built by our own documentation system, and will live from here on at [docs.ropensci.org/goodpractice/](https://docs.ropensci.org/goodpractice/).

### rOpenSci at CZI Open Science 2024

From June 10 to June 14 [Noam Ross](/author/noam-ross/), [Mauro Lepore](/author/mauro-lepore/) and [Yanina Bellini Saibene](/author/yanina-bellini-saibene/) participated on the [CZI Open Science 2024](https://chanzuckerberg.com/science/programs-resources/open-science/) event. 

On Wednesday, we showcased the [Champions Program](https://ropensci.org/champions/), sharing Champions' projects, training materials, and the results of the two-year pilot.  We had the chance to chat and learn about many other projects during these sessions. 

Yanina participated in the closing panel on _Case Study Session 3: Demonstrating Impact of Open Science_ to explore the challenges of using traditional academic metrics to measure project impact and emphasize alternative approaches. In [her talk](/events/czi-2024/), Yani introduced the work done by different rOpenSci members, the tools and metrics we use to capture their stories, and the impact we achieve together.

### The rOpenSci community at upcoming events

Meet rOpenSci team and community members at events in the near future!

- Two talks by rOpenSci team members, and more contributions by rOpenSci community members, to look forward to at useR! 2024 in Salzburg, Austria. 
    - [Maëlle Salmon](/author/maëlle-salmon/)'s keynote talk ["How your code might get rusty"](https://sched.co/1c9Jy) on Wednesday, July 10 at 09:20 CEST;
    - [Jeroen Ooms](/author/jeroen-ooms/)' talk  ["Navigating the R Ecosystem Using R-Universe"](https://sched.co/1c90h) on Thursday, July 11, 11:30 - 11:50 CEST.
    - [Jon Harmon](/author/jon-harmon/)'s virtual talk "Learning Together at the Data Science Learning Community" will go live on the [useR!2024 YouTube playlist](https://youtube.com/playlist?list=PL77T87Q0eoJhsC203plZ1H4p21AGrM9rl&si=usuV_NlAJ_nR0QA8) at 10:30am CDT on July 2;
    - [Paola Corrales](/author/pao-corrales/)' and [Elio Campitelli](/author/elio-campitelli/)'s tutorial ["Efficient Data Analysis with data.table"](https://sched.co/1c8yF) on Monday, July 3 (pre-registration required);
    - [Elio Campitelli](/author/elio-campitelli)'s talk ["Building Bilingual Bridges with Multilingual Manuals"](https://sched.co/1c8yj) on Tuesday, July 4 at 11:40 CEST.
    - [Hugo Gruson](/author/hugo-gruson)'s talk ["
Building Interoperability in Existing Software Ecosystems with S3 Classes"](https://sched.co/1c8z3) on Tuesday, July 9 at 14:50, and his poster ["A reproducible analysis of CRAN Task Views to understand the state of an R package ecosystem"](https://sched.co/1cDry)
    - [Lluís Revilla](/author/lluís-revilla-sancho/)'s and Henrik Bengtsson's [poster](https://sched.co/1cDsG) about CRAN packages archived and a the [cranhaven.org](http://cranhaven.org/) R-universe created to reduce the impact of that on users.
    - [Will Landau](/author/will-landau)'s and Charlie Gao's talk ["Moju-Kapu: How {Mirai} and {Crew} Are Powering the Next Generation of Parallel Computing in R"](https://sched.co/1c8ya) on Tuesday, July 9 at 11:00 CEST.
    - [Binod Jung Bogati](/blog/2024/02/15/champions-program-champions-2024/#binod-jung-bogati)'s talks ["Generate Raw Synthetic Dataset for Clinical Trial - Binod Jung Bogati, Numeric Mind"](https://sched.co/1c8w7) on Tuesday, July 9 at 13:30 CEST; and ["Translate R for Global Reach"](https://sched.co/1c90Y) on Thursday, July 11 at 12:10 CEST.
    
- At [posit::conf(2024)](/events/posit-2024/) in Seattle, US, you'll get to meet some champions and mentors! 
    - Look for: Andrea Gomez Vargas; Yi-Chin Sunny Tseng; Luis D. Verde Arregoitia; Francisco Cardozo; Jonathan Keane.
    - Don’t miss Luis’ lightning talk "Why’d you load that package for?" on Tuesday, Aug 13 at 1:00 PM PDT

- We're excited to share that rOpenSci community manager Yanina Bellini Saibene will deliver a keynote talk at [BioNT Community Event & CarpentryConnect-Heidelberg 2024](/events/carpentryconnect-2024/), on November 14th in Heidelberg, Germany.

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

- [Tuesday, July 2nd, 14:00 Europe Central (12:00 UTC)](/events/coworking-2024-07), Git and GitHub with cohost [Zhian Kamvar](/author/zhian-n.-kamvar/) and [Steffi LaZerte](/author/steffi-lazerte).
    - Read up on Git and GitHub and how they might serve you
    - Start your first Git/GitHub project
    - Chat with our cohost about the pros and cons of Git & GitHub, resources for getting started and tips and tricks.
    
- [Tuesday, August 6th, 9:00 America Pacific (16:00 UTC)](/events/coworking-2024-08), Building your first R package with cohost [Carolina Pradier](/author/carolina-pradier/) and [Steffi LaZerte](/author/steffi-lazerte).
    - Explore how to make R packages
    - Plan out that package you’ve always wanted to create
    - Chat with our cohost about tips and tricks for making your first R package

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:


### New packages




The following three packages recently became a part of our software suite:

+ [goodpractice](https://docs.ropensci.org/goodpractice), developed by Mark Padgham together with Karina Marks, Daniel de Bortoli, Gabor Csardi, Hannah Frick, Owen Jones, and Hannah Alexander: Give advice about good practices when building R packages. Advice includes functions and syntax to avoid, package structure, code complexity, code formatting, etc.  It is available on [CRAN]( https://CRAN.R-project.org/package=goodpractice). 

+ [mregions2](https://docs.ropensci.org/mregions2), developed by Salvador Fernandez-Bejarano together with Lotte Pohl: Explore and retrieve marine geo-spatial data from the Marine Regions Gazetteer and the Marine Regions Data Products, including the Maritime Boundaries. It has been [reviewed](https://github.com/ropensci/software-review/issues/590).

+ [rOPTRAM](https://docs.ropensci.org/rOPTRAM), developed by Micha Silver: The OPtical TRapezoid Model (OPTRAM) derives soil moisture based on the linear relation between a vegetation index and Land Surface Temperature (LST). The Short Wave Infra-red (SWIR) band is used as a proxy for LST. See: Sadeghi, M. et al., 2017. <https://doi.org/10.1016/j.rse.2017.05.041> . 

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following nine packages have had an update since the last newsletter: [goodpractice](https://docs.ropensci.org/goodpractice "Advice on R Package Building") ([`v1.0.5`](https://github.com/ropensci-review-tools/goodpractice/releases/tag/v1.0.5)), [beastier](https://docs.ropensci.org/beastier "Call BEAST2") ([`v2.5.1`](https://github.com/ropensci/beastier/releases/tag/v2.5.1)), [c14bazAAR](https://docs.ropensci.org/c14bazAAR "Download and Prepare C14 Dates from Different Source Databases") ([`5.0.0`](https://github.com/ropensci/c14bazAAR/releases/tag/5.0.0)), [comtradr](https://docs.ropensci.org/comtradr "Interface with the United Nations Comtrade API") ([`v1.0.1`](https://github.com/ropensci/comtradr/releases/tag/v1.0.1)), [DataPackageR](https://docs.ropensci.org/DataPackageR "Construct Reproducible Analytic Data Sets as R Packages") ([`v0.16.0`](https://github.com/ropensci/DataPackageR/releases/tag/v0.16.0)), [dynamite](https://docs.ropensci.org/dynamite "Bayesian Modeling and Causal Inference for Multivariate
    Longitudinal Data") ([`1.5.2`](https://github.com/ropensci/dynamite/releases/tag/1.5.2)), [readODS](https://docs.ropensci.org/readODS "Read and Write ODS Files") ([`v2.3.0`](https://github.com/ropensci/readODS/releases/tag/v2.3.0)), [rgbif](https://docs.ropensci.org/rgbif "Interface to the Global Biodiversity Information Facility API") ([`v3.8.0`](https://github.com/ropensci/rgbif/releases/tag/v3.8.0)), and [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.7.1`](https://github.com/ropensci/targets/releases/tag/1.7.1)).

## Software Peer Review

There are fourteen recently closed and active submissions and 6 submissions on hold. Issues are at different stages: 

* Three at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [karel](https://github.com/ropensci/software-review/issues/620), Learning programming with Karel the robot. Submitted by [Marcos Prunello](https://unr.edu.ar/). 

    * [rOPTRAM](https://github.com/ropensci/software-review/issues/612), Derive soil moisture using the OPTRAM algorithm. Submitted by [Micha Silver](https://github.com/micha-silver). 

    * [mregions2](https://github.com/ropensci/software-review/issues/590), Access Data from Marineregions.org: The Marine Regions Gazetteer and the Marine Regions Data Products. Submitted by [salvafern](https://salvafern.github.io/). 

* Four at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [cancerprof](https://github.com/ropensci/software-review/issues/637), API Client for State Cancer Profiles. Submitted by [Brian Park](https://github.com/realbp). 

    * [osmapiR](https://github.com/ropensci/software-review/issues/633), OpenStreetMap API. Submitted by [Joan Maspons](https://github.com/jmaspons). 

    * [rix](https://github.com/ropensci/software-review/issues/625), Rix: Reproducible Environments with Nix. Submitted by [Bruno Rodrigues](https://brodrigues.co). 

    * [agromet](https://github.com/ropensci/software-review/issues/599), Índices y Estadísticos Climáticos e Hidrológicos. Submitted by [Paola Corrales](https://paocorrales.github.io). 

* Five at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [eDNAjoint](https://github.com/ropensci/software-review/issues/642), Joint Modeling of Traditional and Environmental DNA Survey Data. Submitted by [Abigail Keller](https://github.com/abigailkeller). 

    * [chopin](https://github.com/ropensci/software-review/issues/638), CHOPIN: Computation for Climate and Health research On Parallelized INfrastructure. Submitted by [Insang Song](https://www.issong.net). 

    * [rsi](https://github.com/ropensci/software-review/issues/636), Efficiently Retrieve and Process Satellite Imagery. Submitted by [Michael Mahoney](https://mm218.dev/). 

    * [sits](https://github.com/ropensci/software-review/issues/596), Satellite Image Time Series Analysis for Earth Observation Data Cubes. Submitted by [Gilberto Camara](https://www.gilbertocamara.org). 

    * [fwildclusterboot](https://github.com/ropensci/software-review/issues/546), Fast Wild Cluster Bootstrap Inference for Linear Models. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/).  (Stats).

* One at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [QuadratiK](https://github.com/ropensci/software-review/issues/632), A Collection of Methods Using Kernel-Based Quadratic Distances for. Submitted by [Giovanni Saraceno](https://github.com/giovsaraceno).  (Stats).

* One at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [gigs](https://github.com/ropensci/software-review/issues/626), Assess Fetal, Newborn, and Child Growth with International Standards. Submitted by [Simon Parker](https://github.com/simpar1471).  (Stats).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Software Review

* [From scripts to package. Developing dendroNetwork and learning with rOpenSci](/blog/2024/06/06/from-scripts-to-package) by Ronald Visser. How scripts were transformed into a package and what I learned in the process.



### Tech Notes

* [A fresh new look for R-universe!](/blog/2024/06/12/runiverse-frontend) by Jeroen Ooms. We have given the WebUI for R-universe a big refresh. This is the biggest UX overhaul in since the beginning of the project.

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

* [historydata](https://docs.ropensci.org/historydata/), datasets for historians. [Issue for volunteering](https://github.com/ropensci/historydata/issues/23).

* [USAboundaries](https://docs.ropensci.org/USAboundaries/) (and USAboundariesdata), historical and contemporary boundaries of the United States of America . [Issue for volunteering](https://github.com/ropensci/USAboundaries/issues/50).

### Calls for contributions

* [Help make qualtRics better! Code contributions wanted](/blog/2024/03/01/qualtrics-call-help/)

* [Help make assertr better! Come close issues](/blog/2024/02/27/assertr-call-help/)

* [Help users and developers of targets by answering questions!](/blog/2024/02/29/targets-call-help/)

* [Help make waywiser better! User requests wanted](/blog/2024/02/19/waywiser-call-help/)

Also refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### Make your functions compa-tibble

Do the functions of your package use `data.frame` as input?
Do not miss Hugo Gruson's post [Make your functions compa-tibble](https://hugogruson.fr/posts/compa-tibble/) as users of your package might well try and pass a `tibble`, which you probably don't want to be a showstopper!

### Use lintr to enforce your package's function preferences

Do you want to commit to using the [cli package](https://blog.r-hub.io/2023/11/30/cliff-notes-about-cli/) instead of base R messaging?
You can configure the lintr settings for your codebase to pick up usage of certain functions, to inform you along with the preferred replacement.
See, as an example, [pkgdown's lintr configuration file](https://github.com/r-lib/pkgdown/blob/819cede3fbbb2410912f4d49365177c9159b809f/.lintr.R#L1) and the corresponding [GitHub Actions workflow](https://github.com/r-lib/pkgdown/blob/main/.github/workflows/lint.yaml) (from [r-lib/actions](https://usethis.r-lib.org/reference/use_github_action.html)).
This neat safeguard makes use of the [Undesirable function linter](https://lintr.r-lib.org/reference/undesirable_function_linter.html).

### More metadata on CRAN

CRAN pages of packages now show...

- Issues which need fixing! [Shared by Henrik Bengtsson](https://mastodon.social/@henrikbengtsson/112591630316235677).

- DOIs! Have you seen Achim Zeileis' announcement that [All R packages on CRAN will get an official DOI](https://fosstodon.org/@zeileis/112597049943483012)?
In contrast to Zenodo DOIs, it's the same DOI across all versions.


### A pure GitHub preview workflow for pkgdown websites

If you use a gh-pages branch on GitHub to store the source of your pkgdown website, and use GitHub Pages to deploy it, you could extend that workflow to create (and then clean) subdirectories in that branch to host _previews of pull requests_.
Check out this [GitHub Actions workflow file by Garrick Aden-Buie](https://github.com/rstudio/education-workflows/blob/a1b06838921c381918ba8142e52fa06afad95c97/examples/pkgdown.yaml#L66).

### Tips for refactoring test files

Do you put the object as close as possible to the related expectation(s)?
Read about this, and other, [tips for refactoring test files](https://masalmon.eu/2024/05/23/refactoring-tests/).

### One more tool for checking inputs of your R functions

Do you check [inputs of your R functions](https://blog.r-hub.io/2022/03/10/input-checking/)?
Beside the aforelinked R-hub blog post by Hugo Gruson, Sam Abbott, Carl Pearson, you might be interested in the experimental [stbl package](https://jonthegeek.github.io/stbl/) by Jon Harmon.


## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.
You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
