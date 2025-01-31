---
title: 'rOpenSci News Digest, May 2024'
author: 'The rOpenSci Team'
date: '2024-05-24'
tags:
  - newsletter
slug: ropensci-news-may-2024
description: Champions program update, metadat, new packages and package news
params:
  last_newsletter: '2024-04-22'
---



<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2024/05/24/ropensci-news-may-2024).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ
### rOpenSci in the Research Organization Registry

rOpenSci was added to the [Research Organization Registry](https://ror.org/) (ROR) in its latest [release](https://github.com/ror-community/ror-updates/releases/tag/v1.46). The ROR is  a global, community-led registry of open persistent identifiers for research organizations. ROR IDs help link and disambiguate metadata about organizations in the scholarly record, much like DOIs and ORCiDs do for manuscripts and researchers. [Linked metadata is rOpenSci's love language ❤️ !](/blog/2018/03/16/thanking-reviewers-in-metadata/) Find us at <https://ror.org/019jywm96>.

### What are the rOpenSci Champions up to now?

Our Champions and mentors have been carrying out various programmed activities.
The first stage of the program has a very important training component. This year, we divided the training into technical and community tracks, with several one to two-hour sessions each. Here, you can find the openly available material for each session.

The Technical Track is focused on good software and package development practices: 

* [Beautiful Code, Because We’re Worth It!](https://stylish-code.netlify.app/#/): a 1-hour session on [good practices for  writing code](/blog/2024/02/22/beautiful-code/). 

* [Package Development: The Mechanics](https://rpkgdev-mechanics-2024.netlify.app/): three 2-hour sessions for beginners to demystify the creation of an R package.

* [Package Development: Not Rocket Science](https://rpkgdev-rocket-2024.netlify.app/): a 2-hour hands-on workshop for advanced R package development with tips and tricks. 

* [How rOpenSci Performs Peer Review](https://github.com/maurolepore/ropensci-review): a 2-hour workshop to showcase and discuss how rOpenSci communicates, builds, and reviews software. 

The Community Track is focused on community-building skills:

* [How To Contribute to Open Projects and Communities](https://osschampionsprogram.netlify.app/): a 2-hour session presenting community participation frameworks, examples, and recommendations for your package. 

* [Marketing Ideas For Your Package](/blog/2024/03/07/package-marketing/): A blog post presenting a series of activities and tools for advertising your package.

Next month, we will complete the training with a workshop on Git and GitHub and another on Event Organization. 

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

- [Tuesday, June 4th, 09:00 Australia Western (01:00 UTC)](/events/coworking-2024-06), R in the Wild with cohosts [Ernest Guevarra](/author/ernest-guevarra/), [Tomás Zaba](/author/tom%C3%A1s-zaba/), [Nicholus Tint Zaw](/author/nicholus-tint-zaw/), [Zython Paul Lachica](/author/zython-paul-lachica/) and [Steffi LaZerte](/author/steffi-lazerte).
    - Work on some of your own wild workflows
    - Learn how others use R in the Wild (at work, with or without teams)
    - Chat with our cohosts, discuss the challenges they face, and wins they have through their work

- [Tuesday, July 2nd, 14:00 Europe Central (12:00 UTC)](/events/coworking-2024-07), Git and GitHub with cohost [Zhian Kamvar](/author/zhian-n.-kamvar/) and [Steffi LaZerte](/author/steffi-lazerte).
    - Read up on Git and GitHub and how they might serve you
    - Start your first Git/GitHub project
    - Chat with our cohost about the pros and cons of Git & GitHub, resources for getting started and tips and tricks.

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:


### New packages




The following  package recently became a part of our software suite:

+ [dendroNetwork](https://docs.ropensci.org/dendroNetwork), developed by Ronald Visser: Creating dendrochronological networks based on the similarity between tree-ring series or chronologies. The package includes various functions to compare tree-ring curves building upon the dplR package. The networks can be used to visualise and understand the relations between tree-ring curves. These networks are also very useful to estimate the provenance of wood as described in Visser (2021) <DOI:10.5334/jcaa.79> or wood-use within a structure/context/site as described in Visser and Vorst (2022) <DOI:10.1163/27723194-bja10014>.  It is available on [CRAN]( https://CRAN.R-project.org/package=dendroNetwork). It has been [reviewed](https://github.com/ropensci/software-review/issues/627) by Kaija Gahm and Zachary Gajewski.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following nine packages have had an update since the last newsletter: [comtradr](https://docs.ropensci.org/comtradr "Interface with the United Nations Comtrade API") ([`v1.0.0`](https://github.com/ropensci/comtradr/releases/tag/v1.0.0)), [dendroNetwork](https://docs.ropensci.org/dendroNetwork "Create Networks of Dendrochronological Series using Pairwise Similarity") ([`0.5.4`](https://github.com/ropensci/dendroNetwork/releases/tag/0.5.4)), [drake](https://docs.ropensci.org/drake "A Pipeline Toolkit for Reproducible Computation at Scale") ([`7.13.10`](https://github.com/ropensci/drake/releases/tag/7.13.10)), [fellingdater](https://docs.ropensci.org/fellingdater "Estimate, report and combine felling dates of historical tree-ring 
    series") ([`v1.0.2`](https://github.com/ropensci/fellingdater/releases/tag/v1.0.2)), [melt](https://docs.ropensci.org/melt "Multiple Empirical Likelihood Tests") ([`v1.11.4`](https://github.com/ropensci/melt/releases/tag/v1.11.4)), [nasapower](https://docs.ropensci.org/nasapower "NASA POWER API Client") ([`v4.2.1`](https://github.com/ropensci/nasapower/releases/tag/v4.2.1)), [osmextract](https://docs.ropensci.org/osmextract "Download and Import Open Street Map Data Extracts") ([`v0.5.1`](https://github.com/ropensci/osmextract/releases/tag/v0.5.1)), [stplanr](https://docs.ropensci.org/stplanr "Sustainable Transport Planning") ([`v1.2.0`](https://github.com/ropensci/stplanr/releases/tag/v1.2.0)), and [traits](https://docs.ropensci.org/traits "Species Trait Data from Around the Web") ([`v0.5.1`](https://github.com/ropensci/traits/releases/tag/v0.5.1)).

## Software Peer Review

There are thirteen recently closed and active submissions and 7 submissions on hold. Issues are at different stages: 

* One at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [dendroNetwork](https://github.com/ropensci/software-review/issues/627), Create networks of dendrochronological series using pairwise similarity. Submitted by [RonaldVisser](https://akademienl.social/@RonaldVisser). 

* Three at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [karel](https://github.com/ropensci/software-review/issues/620), Learning programming with Karel the robot. Submitted by [Marcos Prunello](https://unr.edu.ar/). 

    * [rOPTRAM](https://github.com/ropensci/software-review/issues/612), Derive soil moisture using the OPTRAM algorithm. Submitted by [Micha Silver](https://github.com/micha-silver). 

    * [mregions2](https://github.com/ropensci/software-review/issues/590), Access Data from Marineregions.org: The Marine Regions Gazetteer and the Marine Regions Data Products. Submitted by [salvafern](https://salvafern.github.io/). 

* Two at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [rix](https://github.com/ropensci/software-review/issues/625), Rix: Reproducible Environments with Nix. Submitted by [Bruno Rodrigues](https://brodrigues.co). 

    * [agromet](https://github.com/ropensci/software-review/issues/599), Índices y Estadísticos Climáticos e Hidrológicos. Submitted by [Paola Corrales](https://paocorrales.github.io). 

* Three at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [cancerprof](https://github.com/ropensci/software-review/issues/637), API Client for State Cancer Profiles. Submitted by [Brian Park](https://github.com/realbp). 

    * [osmapiR](https://github.com/ropensci/software-review/issues/633), OpenStreetMap API. Submitted by [Joan Maspons](https://github.com/jmaspons). 

    * [fwildclusterboot](https://github.com/ropensci/software-review/issues/546), Fast Wild Cluster Bootstrap Inference for Linear Models. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/).  (Stats).

* Three at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [chopin](https://github.com/ropensci/software-review/issues/638), CHOPIN: Computation for Climate and Health research On Parallelized INfrastructure. Submitted by [Insang Song](https://www.issong.net). 

    * [rsi](https://github.com/ropensci/software-review/issues/636), Efficiently Retrieve and Process Satellite Imagery. Submitted by [Michael Mahoney](https://mm218.dev/). 

    * [sits](https://github.com/ropensci/software-review/issues/596), Satellite Image Time Series Analysis for Earth Observation Data Cubes. Submitted by [Gilberto Camara](https://www.gilbertocamara.org). 

* One at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [gigs](https://github.com/ropensci/software-review/issues/626), Assess Fetal, Newborn, and Child Growth with International Standards. Submitted by [Simon Parker](https://github.com/simpar1471).  (Stats).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



* [Communication Tips for your Open-Source Project](/blog/2024/05/17/communication-tips-oss-project) by Maëlle Salmon.

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

### Token now needed for code coverage via codecov and {covr} on GitHub Actions

[Test coverage](https://r-pkgs.org/testing-design.html#sec-testing-design-coverage) reports are useful when assessing and improving tests of an R package.
One can run the covr package locally, or send results to an interface like codecov.io that provides interactive exploration of the output.
It is possible to compute test coverage and send the results to codecov.io on GitHub Actions, using the r-lib/actions actions.

Now, recently, workflows have started to fail if one did not set a codecov.io token as an environment variable. 
How to solve this

- For an individual repo, add [your codecov.io token as `CODECOV_TOKEN` to the repository secrets](https://docs.codecov.com/docs/adding-the-codecov-token).
- For an organization, ask the organization owner to create an organization wide codecov.io token and to store it as an organization secret. Make sure to update your [GitHub Actions workflow file](https://github.com/r-lib/actions/issues/834#issuecomment-2102337428), for instance by running [`usethis::use_github_action("test-coverage")`](https://usethis.r-lib.org/reference/use_github_action.html).

### Notes on package repositories

Lluís Revilla Sancho wrote about [Packaging R: getting in repositories](https://llrs.dev/post/2024/05/05/packaging-r-getting-in/).
We particularly note his two definitions of package repositories: the first one consists in making `install.packages()` work, the second in adding a layer of checks to packages in the repository. 
He then added "[R-universe](/r-universe/) is using the first definition but could be used to generate repositories with checks that comply with the second definition."

### Standardize a DESCRIPTION file in one function call

Do you know about the [`desc::desc_normalize()`](https://desc.r-lib.org/reference/desc_normalize.html) function that orders and formats DESCRIPTION fields in a standard way?
Once you start using it, there's no way back.

You can also call it indirectly via [`usethis::use_tidy_description()`](https://usethis.r-lib.org/reference/tidyverse.html) that also sets the Encoding field to UTF-8.

### Automated refactoring with xmlparsedata

Refactoring code can be tedious manual work, but it can also be tedious automated work. :wink:
Read a post about how to [replace all occurrences of a given function call with another one](https://masalmon.eu/2024/05/15/refactoring-xml/) using an XML representation of the code.

### What's your favorite IDE?

Athanasia Monica Mowinckel wrote an informative post about the [IDEs she uses](https://drmowinckels.io/blog/2024/ide/).

### Code review resources

Beside the [tidyverse code review guidance](https://code-review.tidyverse.org/), we can now recommend you check out the [code review anxiety workbook](https://developer-success-lab.gitbook.io/code-review-anxiety-workbook-1) by Carol Lee and Kristen Foster-Marks, that explains what code review anxiety is, and describes efficient methods to deal with it.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.
You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
