---
title: 'rOpenSci News Digest, February 2024'
author: 'The rOpenSci Team'
date: '2024-02-23'
tags:
  - newsletter
slug: news-february-2024
description: Code of conduct transparency report; coworking; new packages and package news
params:
  last_newsletter: "2024-01-25"
---



<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2024/02/23/news-february-2024).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### rOpenSci 2023 Code of Conduct Transparency Report


Transparency reports are intended to help the community understand what kind of Code of Conduct incidents we receive reports about annually and how the Code of Conduct team responds, always preserving the privacy of the people who experience or report incidents.

Read the [report](/blog/2024/01/12/transparency2023/).

### rOpenSci Champions Program 

We are proud to welcome our second cohort of Champions!  Learn about them and the projects they will develop while participating in the rOpenSci Champions Program.

Read the [blog post](/blog/2024/02/15/champions-program-champions-2024/).
  
### R-universe updates

Thanks to [contributions from Hiroaki Yutani](https://github.com/r-wasm/webr/pull/358#issuecomment-1954019290) the R-universe WebAssembly toolchain now includes the Rust compiler. So have experimental support for compiling packages with rust code for use in WebR!

R-universe now supports [vignettes written in Quarto](https://quarto-dev.r-universe.dev/articles/quarto/hello.html)!

In preparation for the next major R release in April, we have started building MacOS binaries for 4.4, and will soon drop the 4.2 binaries.

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

- [Tuesday, March 5th, 9:00 Australia Western (1:00 UTC)](/events/coworking-2024-03/), Dates, Times and Timezones in R. With cohost [Steffi LaZerte](/author/steffi-lazerte/) and [Alex Koiter](/author/alex-koiter/).
    - Explore resources for working with dates, times, and timezones in R
    - Work on a project dealing with dates and times
    - Ask questions or troubleshoot your timezone problems with the cohost and other attendees.
    
- Tuesday, April 2nd, 14:00 Europe Central (13:00 UTC) Theme and Cohost TBA
    
And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!


## Software :package:

### New packages




The following  package recently became a part of our software suite, or were recently reviewed again:

+ [fluidsynth](https://docs.ropensci.org/fluidsynth), developed by Jeroen Ooms: Bindings to libfluidsynth to parse and synthesize MIDI files. It can read MIDI into a data frame, play it on the local audio device, or convert into an audio file.  It is available on [CRAN]( https://CRAN.R-project.org/package=fluidsynth). 

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following nineteen packages have had an update since the last newsletter: [commonmark](https://docs.ropensci.org/commonmark "High Performance CommonMark and Github Markdown Rendering in R") ([`v1.9.1`](https://github.com/r-lib/commonmark/releases/tag/v1.9.1)), [baRcodeR](https://docs.ropensci.org/baRcodeR "Label Creation for Tracking and Collecting Data from
    Biological Samples") ([`v0.1.8`](https://github.com/ropensci/baRcodeR/releases/tag/v0.1.8)), [comtradr](https://docs.ropensci.org/comtradr "Interface with the United Nations Comtrade API") ([`v0.4.0.0`](https://github.com/ropensci/comtradr/releases/tag/v0.4.0.0)), [dbparser](https://docs.ropensci.org/dbparser "Drugs Databases Parser") ([`v2.0.2`](https://github.com/ropensci/dbparser/releases/tag/v2.0.2)), [fluidsynth](https://docs.ropensci.org/fluidsynth "Read and Play Digital Music (MIDI)") ([`generaluser-gs-v1.471`](https://github.com/ropensci/fluidsynth/releases/tag/generaluser-gs-v1.471)), [GSODR](https://docs.ropensci.org/GSODR "Global Surface Summary of the Day (GSOD) Weather Data Client") ([`v3.1.10`](https://github.com/ropensci/GSODR/releases/tag/v3.1.10)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.16`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.16)), [melt](https://docs.ropensci.org/melt "Multiple Empirical Likelihood Tests") ([`v1.11.0`](https://github.com/ropensci/melt/releases/tag/v1.11.0)), [nasapower](https://docs.ropensci.org/nasapower "NASA POWER API Client") ([`v4.2.0`](https://github.com/ropensci/nasapower/releases/tag/v4.2.0)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.10.1`](https://github.com/ropensci/nodbi/releases/tag/v0.10.1)), [rangr](https://docs.ropensci.org/rangr "Mechanistic Simulation of Species Range Dynamics") ([`v1.0.3`](https://github.com/ropensci/rangr/releases/tag/v1.0.3)), [readODS](https://docs.ropensci.org/readODS "Read and Write ODS Files") ([`v2.2.0`](https://github.com/ropensci/readODS/releases/tag/v2.2.0)), [rnaturalearthdata](https://docs.ropensci.org/rnaturalearthdata "World Vector Map Data from Natural Earth Used in rnaturalearth") ([`v1.0.0`](https://github.com/ropensci/rnaturalearthdata/releases/tag/v1.0.0)), [rnaturalearthhires](https://docs.ropensci.org/rnaturalearthhires "High Resolution World Vector Map Data from Natural Earth used in
    rnaturalearth") ([`v1.0.0`](https://github.com/ropensci/rnaturalearthhires/releases/tag/v1.0.0)), [rvertnet](https://docs.ropensci.org/rvertnet "Search Vertnet, a Database of Vertebrate Specimen Records") ([`v0.8.4`](https://github.com/ropensci/rvertnet/releases/tag/v0.8.4)), [stats19](https://docs.ropensci.org/stats19 "Work with Open Road Traffic Casualty Data from Great Britain") ([`v3.0.3`](https://github.com/ropensci/stats19/releases/tag/v3.0.3)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.7.12`](https://github.com/ropensci/tarchetypes/releases/tag/0.7.12)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.5.1`](https://github.com/ropensci/targets/releases/tag/1.5.1)), and [unifir](https://docs.ropensci.org/unifir "A Unifying API for Calling the Unity 3D Video Game Engine") ([`v0.2.4`](https://github.com/ropensci/unifir/releases/tag/v0.2.4)).

## Software Peer Review

There are fifteen recently closed and active submissions and 4 submissions on hold. Issues are at different stages: 

* One at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [weatherOz](https://github.com/ropensci/software-review/issues/598), An API Client for Australian Weather and Climate Data Resources. Submitted by [Rodrigo Pires](https://github.com/bozaah). 

* Three at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [quadkeyr](https://github.com/ropensci/software-review/issues/619), Tools for converting QuadKeys used in Microsoft's Bing Maps Tile System into raster images. Submitted by [Florencia D'Andrea](https://github.com/flor14). 

    * [baRulho](https://github.com/ropensci/software-review/issues/609), Quantifying (Animal) Sound Degradation. Submitted by [Marcelo Araya-Salas](https://marce10.github.io/). 

    * [mregions2](https://github.com/ropensci/software-review/issues/590), Access Data from Marineregions.org: The Marine Regions Gazetteer and the Marine Regions Data Products. Submitted by [salvafern](https://salvafern.github.io/). 

* Three at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [fellingdateR](https://github.com/ropensci/software-review/issues/618), Estimate, report and combine felling dates of historical tree-ring. Submitted by [KriHa](https://www.researchgate.net/profile/Kristof_Haneca). 

    * [rgeeExtra](https://github.com/ropensci/software-review/issues/608), Extensions for rgee. Submitted by [Cesar Aybar](https://csaybar.github.io). 

    * [agromet](https://github.com/ropensci/software-review/issues/599), Índices y Estadísticos Climáticos e Hidrológicos. Submitted by [Paola Corrales](https://paocorrales.github.io). 

* Five at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [rix](https://github.com/ropensci/software-review/issues/625), Rix: Reproducible Environments with Nix. Submitted by [Bruno Rodrigues](https://brodrigues.co). 

    * [nuts](https://github.com/ropensci/software-review/issues/623), nuts: Convert European Regional Data. Submitted by [Moritz Hennicke](https://hennicke.science/). 

    * [pangoling](https://github.com/ropensci/software-review/issues/575), Access to Large Language Model Predictions. Submitted by [Bruno Nicenboim](https://bnicenboim.github.io/). 

    * [dfms](https://github.com/ropensci/software-review/issues/556), Dynamic Factor Models. Submitted by [Sebastian Krantz](https://github.com/SebKrantz). 

    * [fwildclusterboot](https://github.com/ropensci/software-review/issues/546), Fast Wild Cluster Bootstrap Inference for Linear Models. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/).  (Stats).

* Three at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [dendroNetwork](https://github.com/ropensci/software-review/issues/627), Create networks of dendrochronological series using pairwise similarity. Submitted by [RonaldVisser](https://akademienl.social/@RonaldVisser). 

    * [karel](https://github.com/ropensci/software-review/issues/620), Learning programming with Karel the robot. Submitted by [Marcos Prunello](https://unr.edu.ar/). 

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](https://jounihelske.netlify.app).  (Stats).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



* [Please Shut Up! Verbosity Control in Packages](/blog/2024/02/06/verbosity-control-packages) by Mark Padgham and Maëlle Salmon. This post was discussed on the [R Weekly highlights podcast](https://rweekly.fireside.fm/152?t=80) hosted by Eric Nantz and Mike Thomas.

* [Introducing rOpenSci Champions - Cohort 2023-2024](/blog/2024/02/15/champions-program-champions-2024) by Ezekiel Adebayo Ogundepo, Sehrish Kanwal, Andrea Gomez Vargas, Liz Hare, Francesca Belem Lopes Palmeira, Binod Jung Bogati, Yi-Chin Sunny Tseng, Mirna Vazquez Rosas Landa, Erika Siregar, Jacqui Levy, and Yanina Bellini Saibene. The rOpenSci Champions Program starts this 2024 with a new cohort of Champions. We are pleased to introduce you to our Champions and their projects.



### Tech Notes

* [Help make waywiser better! User requests wanted](/blog/2024/02/19/waywiser-call-help) by Mike Mahoney and Maëlle Salmon.

* [Read and Play Digital Music (MIDI) in R using the *fluidsynth* package](/blog/2024/02/20/fluidsynth) by Jeroen Ooms. A new package with bindings to libfluidsynth to read and synthesize midi files in R.

* [Beautiful Code, Because We’re Worth It!](/blog/2024/02/22/beautiful-code) by Maëlle Salmon and Yanina Bellini Saibene.

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

[internetarchive](https://docs.ropensci.org/internetarchive/), an API Client for the Internet Archive. [Issue for volunteering](https://github.com/ropensci/internetarchive/issues/17).

[historydata](https://docs.ropensci.org/historydata/), datasets for historians. [Issue for volunteering](https://github.com/ropensci/historydata/issues/23).

[textreuse](https://docs.ropensci.org/textreuse/), detect text reuse and document similarity. [Issue for volunteering](https://github.com/ropensci/textreuse/issues/97).

[tokenizers](https://docs.ropensci.org/tokenizers/), fast, consistent tokenization of natural language text. [Issue for volunteering](https://github.com/ropensci/tokenizers/issues/86).

[USAboundaries](https://docs.ropensci.org/USAboundaries/) (and USAboundariesdata), historical and contemporary boundaries of the United States of America . [Issue for volunteering](https://github.com/ropensci/USAboundaries/issues/50).

### Calls for contributions

[Help make waywiser better! User requests wanted](/blog/2024/02/19/waywiser-call-help/)

Also refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### R Consortium Infrastructure Steering Committee (ISC) Grant Program Accepting Proposals starting March 1st!

The R Consortium Call for Proposal might be a relevant funding opportunity for your package!
Find out more in their [post](https://www.r-consortium.org/blog/2024/02/08/r-consortium-infrastructure-steering-committee-isc-grant-program-accepting-proposals-starting-march-1st).
Don't forget to browse past funded projects for inspiration.

### Verbosity control in R packages

Don't miss Mark Padgham's and Maëlle Salmon's tech note on [verbosity control in R packages](/blog/2024/02/06/verbosity-control-packages/), that explains our new requirement around verbosity control: use a package-level option to control it rather than an argument in every function.
Your feedback on the new requirement is welcome!

### A creative way to have users update your package

Miles McBain [shared a creative strategy](https://mastodon.social/deck/@milesmcbain@fosstodon.org/111895762949362247) for having users update (internal) R packages regularly: printing the installed version in a different colour at package loading, depending on whether it is the latest version.

### Progress on multilingual help support

Elio Campitelli [shared some news](https://mastodon.social/deck/@eliocamp/111881088800842535) of their project for multilingual help support.
There's a first working prototype!
Find out more in the [repository](https://github.com/eliocamp/rhelpi18n).

### Load different R package versions at once with git worktree

If you've ever wanted to have two folders corresponding each to a different version of an R package, say the development version and a former release, to open each of them in a different R session, you might enjoy this [blog post by Maëlle Salmon](https://masalmon.eu/2024/01/23/git-worktree/) presenting how to use git worktree for this purpose.

### A package live review

Nick Tierney recently live reviewed the soils package by Jadey Ryan, together with Miles McBain and Adam Sparks.
Jadey Ryan published a [thorough blog post about the review](https://jadeyryan.com/blog/2024-01-22_package-review/).
The [recording](https://www.youtube.com/watch?v=OttYnXwM4dU) is available.
You can suggest your package for a future live review by Nick in his [repository](https://github.com/njtierney/streaming-ideas).

### GitHub Actions now supports free arm64 macOS runners for open source projects

This piece of news was [shared](https://mastodon.social/deck/@gaborcsardi@fosstodon.org/111850319401048086) by Gábor Csárdi who's updated [r-lib/actions](https://github.com/r-lib/actions) to include the new "macos-14" runner that you can include in your build matrix.



## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.
You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
