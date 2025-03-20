---
slug: "news-march-2025"
title: rOpenSci News Digest, March 2025
author:
  - The rOpenSci Team
date: '2025-03-27'
tags:
  - newsletter
description: Call for 
params:
  last_newsletter: '2025-02-27'
  doi: "10.59350/a6syn-6hc72"
rmd_hash: 6cb911b854e23d8a

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2025/03/27/news-march-2025). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### rOpenSci Champions Program 2025 In Spanish: Apply before April 30th!

We have great news: The call for applications to be part of the new cohort of our 2025 Program is now open! And for the first time it will be in Spanish!

Our program seeks to identify, recognize and reward people who are leaders in an open science community, research software engineering and the R programming community.

This year's program is focused on people from Latin America and for the first time will be conducted entirely in Spanish. The main goal is to foster sustainable research software as a pillar of Open Science in Latin America through capacity and community building.

Find out more in our [call for applications](/blog/2025/03/10/champeons-latin-america/) open until Wednesday, April 30, 2025.

### Better documentation for R-universe!

Thanks to funding by [Google Season of Docs](https://ropensci.org/blog/2024/04/12/gsod-announcement/), we were able to start a new comprehensive documentation project for all users and developers of R-universe. We established a central place where we collect the various sources of information and describe examples and use cases, using popular authoring tools to support collective maintenance.

Read more in our [blog post](https://ropensci.org/blog/2025/02/28/r-universe-docs-launch/), read the [documentation website](https://docs.r-universe.org).

### rOpenSci participation on NumFOCUS's DISC Unconf 2025

[The NumFocus' DISC Unconf](https://numfocus.github.io/disc-unconference-2025/) took place as a hybrid event in São Paulo, Brazil, from March 14 to 16, 2025. Our community manager, Yanina Bellini Saibene, and rOpenSci Champions, Andrea Gomez Vargas and Liz Hare, participated.

Prior to the meeting in Sao Paulo, participants met online to get to know each other and present their ideas for projects. Ten projects were selected and then developed during the weekend in Brazil.

During the event, rOpenSci members collaborated with other participants to exchange experiences, brainstorm solutions, and design practical resources that could be shared with the broader community. The worked on projects related to [open mentoring programs](https://numfocus.github.io/disc-unconference-2025-projects/en/creating_an_open_mentorship_initiative.html), leadership skill training, and [international research funding](https://numfocus.github.io/disc-unconference-2025-projects/en/navigating-funding-landscape.html).

We also have the chance to hear about other projects that interest the rOpenSci community, like open science training for researchers in the Global South and multilingual solutions for open science.

This unconference provided a valuable space to discuss pressing issues related to open research, education, software, and science. It was inspiring to work alongside peers who are committed to building more inclusive and accessible systems.

This event also gives the opportunity to meet in person with other members of rOpenSci in Sao Paulo, in the picture we can see Haydee Svab (rOpenSci Champions), Francesca Palmeira (rOpenSci Champions), Beatriz Milz (rOpenSci Editor and Mentor), Andrea Gomez Vargas (rOpenSci Champions) and Yanina Bellini Saibene (rOpenSci Community Manager).

TODO: add the picture here

We discussed our translation effort and catch up on the champions' work after the program and in our new champion program cohort.

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

-   [Tuesday April 1st 9:00 Americas Pacific (16:00 UTC)](/events/coworking-2025-04), "R you joking? Silly R packages for April Fools' day" with [Steffi LaZerte](/author/steffi-lazerte/) and [Yanina Bellini Saibene](/author/yanina-bellini-saibene/)
    -   Explore silly R packages
    -   Chat with our hosts and other attendees and share your favourite silly R packages!
-   [Tuesday, 15 April 2025 13:00 UTC](/events/clinica-champions-2025-04/) (**Spanish**) "Clinica de Aplicación para el Programa de Campeon(e\|a)s de rOpenSci" with [Yanina Bellini Saibene](/author/yanina-bellini-saibene/) and [Steffi LaZerte](/author/steffi-lazerte/)
    -   Prepara tu solicitud para el Programa de Campeones.
    -   Conoce a la co-anfitriona Yanina Bellini Saibene para charlar sobre el Programa de Campeones.

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

### New packages

<div class="highlight">

</div>

The following five packages recently became a part of our software suite:

<div class='highlight'>

-   [saperlipopette](https://docs.ropensci.org/saperlipopette), developed by Maëlle Salmon: Holds functions creating Git messes, that users would then solve, to follow <https://ohshitgit.com/>.

-   [geotargets](https://docs.ropensci.org/geotargets), developed by Nicholas Tierney together with Eric Scott and Andrew Brown: Provides extensions for various geographic spatial file formats, such as shape files and rasters. Currently provides support for the terra geographic spatial formats. See the vignettes for worked examples, demonstrations, and explanations of how to use the various package extensions. It has been [reviewed](https://github.com/ropensci/software-review/issues/675) by Anthony Martinez and Denisse Fierro Arcos.

-   [mapmetadata](https://docs.ropensci.org/mapmetadata), developed by Rachael Stickland: Prior to gaining full access to health datasets, explore publicly available metadata and map metadata onto predefined research domains. This package uses structural metadata files downloaded from the Health Data Research Gateway (<https://healthdatagateway.org/en>). In theory, any metadata file with the same structure as the files downloaded from this gateway can be used with this package, but the package has been developed and tested on metadata files from this gateway only. It has been [reviewed](https://github.com/ropensci/software-review/issues/674) by Zoë Turner and Yohann Mansiaux.

-   [mbquartR](https://docs.ropensci.org/mbquartR), developed by Alex Koiter: This package has four main functions: 1) download the Manitoba Original Survey Legal Descriptions data set; 2) find the coordinates of a quarter sections given the legal land description (e.g., "NE-11-33-29W"); 3) find the legal land description using coordinates (lat and long); and 4) plot these points on a map. It has been [reviewed](https://github.com/ropensci/software-review/issues/658) by Emily H Markowitz and Sheila Saia.

-   [pangoling](https://docs.ropensci.org/pangoling), developed by Bruno Nicenboim: Provides access to word predictability estimates using large language models (LLMs) based on transformer architectures via integration with the Hugging Face ecosystem. The package interfaces with pre-trained neural networks and supports both causal/auto-regressive LLMs (e.g., GPT-2; Radford et al., 2019) and masked/bidirectional LLMs (e.g., BERT; Devlin et al., 2019, <doi:10.48550/arXiv.1810.04805>) to compute the probability of words, phrases, or tokens given their linguistic context. By enabling a straightforward estimation of word predictability, the package facilitates research in psycholinguistics, computational linguistics, and natural language processing (NLP). It has been [reviewed](https://github.com/ropensci/software-review/issues/575) by Lisa Levinson and Utku Turk.

    </div>

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions

<div class="highlight">

</div>

The following five packages have had an update since the last newsletter: [ijtiff](https://docs.ropensci.org/ijtiff "Comprehensive TIFF I/O with Full Support for ImageJ TIFF Files") ([`v3.1.0`](https://github.com/ropensci/ijtiff/releases/tag/v3.1.0)), [mapmetadata](https://docs.ropensci.org/mapmetadata "Map health metadata onto predefined research domains") ([`v4.0.2`](https://github.com/ropensci/mapmetadata/releases/tag/v4.0.2)), [tidyhydat](https://docs.ropensci.org/tidyhydat "Extract and Tidy Canadian Hydrometric Data") ([`0.7.1`](https://github.com/ropensci/tidyhydat/releases/tag/0.7.1)), [vcr](https://docs.ropensci.org/vcr "Record HTTP Calls to Disk") ([`v1.7.0`](https://github.com/ropensci/vcr/releases/tag/v1.7.0)), and [waywiser](https://docs.ropensci.org/waywiser "Ergonomic Methods for Assessing Spatial Models") ([`v0.6.2`](https://github.com/ropensci/waywiser/releases/tag/v0.6.2)).

## Software Peer Review

<div class='highlight'>

There are twelve recently closed and active submissions and 6 submissions on hold. Issues are at different stages:

-   Three at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

    -   [geotargets](https://github.com/ropensci/software-review/issues/675), Targets Extensions for Geospatial Formats. Submitted by [Nicholas Tierney](https://www.njtierney.com).

    -   [mapmetadata](https://github.com/ropensci/software-review/issues/674), Map health metadata onto predefined research domains. Submitted by [Rachael Stickland](https://github.com/RayStick).

    -   [mbquartR](https://github.com/ropensci/software-review/issues/658), Finding Manitoba Quarter Sections. Submitted by [Alex Koiter](http://www.alexkoiter.ca).

-   Three at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

    -   [gtexr](https://github.com/ropensci/software-review/issues/684), Query the GTEx Portal API. Submitted by [Alasdair Warwick](https://github.com/rmgpanw).

    -   [butterfly](https://github.com/ropensci/software-review/issues/676), Verification For Continually Updating Timeseries Data. Submitted by [Thomas Zwagerman](https://thomaszwagerman.co.uk/).

    -   [pkgmatch](https://github.com/ropensci/software-review/issues/671), Find R Packages Matching Either Descriptions or Other R Packages. Submitted by [mark padgham](https://mpadge.github.io).

-   Three at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

    -   [forcis](https://github.com/ropensci/software-review/issues/660), An R Client to Access the FORCIS Database. Submitted by [Nicolas Casajus](https://nicolascasajus.fr).

    -   [sits](https://github.com/ropensci/software-review/issues/596), Satellite Image Time Series Analysis for Earth Observation Data Cubes. Submitted by [Gilberto Camara](https://www.gilbertocamara.org).

    -   [fwildclusterboot](https://github.com/ropensci/software-review/issues/546), Fast Wild Cluster Bootstrap Inference for Linear Models. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/). (Stats).

-   One at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%222/seeking-reviewer(s)%22):

    -   [galamm](https://github.com/ropensci/software-review/issues/615), Generalized Additive Latent and Mixed Models. Submitted by [Øystein Sørensen](https://osorensen.rbind.io). (Stats).

-   Two at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

    -   [read.abares](https://github.com/ropensci/software-review/issues/667), Provides simple downloading, parsing and importing of Australian. Submitted by [Adam H. Sparks](https://adamhsparks.netlify.app/).

    -   [capybara](https://github.com/ropensci/software-review/issues/645), Fast and Memory Efficient Fitting of Linear Models With High-Dimensional. Submitted by [Mauricio "Pachá" Vargas Sepúlveda](https://pacha.dev).

        </div>

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->

<div class="highlight">

</div>

<div class="highlight">

-   [Better documentation for R-universe!](/blog/2025/02/28/r-universe-docs-launch) by Maëlle Salmon, Jeroen Ooms, and Noam Ross. We are excited to announce that R-Universe now has a documentation website thanks to Google Season of Docs.

-   [rOpenSci Champions Program 2025: In Spanish!](/blog/2025/03/10/champeons-latin-america) by Yanina Bellini Saibene. The call is open for a new cohort of our Champions Program with a focus on Latin America. Apply. Other languages: <a href='/es/blog/2025/03/10/campeones-america-latina' lang='es'>Nueva cohorte del Programa de Campeon(a\|e)s rOpenSci (es)</a>.

</div>

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

-   [photosearcher](https://docs.ropensci.org/photosearcher/), Searches Flickr for photographs and metadata. [Issue for volunteering](https://github.com/ropensci/photosearcher/issues/21).

-   [MODIStsp](https://docs.ropensci.org/MODIStsp/), automatic download and preprocessing of MODIS Land Products Time Series. [Issue for volunteering](https://github.com/ropensci/MODIStsp/issues/262).

-   [hddtools](https://docs.ropensci.org/hddtools/), Hydrological Data Discovery Tools. [Issue for volunteering](https://github.com/ropensci/hddtools/issues/36).

-   [USAboundaries](https://docs.ropensci.org/USAboundaries/) (and USAboundariesdata), historical and contemporary boundaries of the United States of America . [Issue for volunteering](https://github.com/ropensci/USAboundaries/issues/50).

-   [historydata](https://docs.ropensci.org/historydata/), datasets for historians. [Issue for volunteering](https://github.com/ropensci/historydata/issues/23).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

The bib2df package, for parsing BibTeX files into tibbles, would need some help! [Issue for volunteering](https://github.com/ropensci/bib2df/issues/65).

## Package development corner

Some useful tips for R package developers. :eyes:

### `lintr::use_lintr()`

If you use the lintr package for static code analysis, you might need to add a configuration file that will activate some linters, deactive others, exclude files from the linting. To create it, you can run [`lintr::use_lintr()`](https://lintr.r-lib.org/reference/use_lintr.html). Remember this is a function of lintr, not usethis!

### flint renamed flir

Speaking of linting, you might remember about a package we mentioned in [last August's newsletter](/blog/2024/08/30/news-august-2024/#find-and-fix-problems-in-r-code-automatically), that would not only find problems in your package like lintr, but also fix them. This package by Etienne Bacher is now called [flir](https://flir.etiennebacher.com/).

### Air, a new formatter for R

Have you ever used the styler R package to style your codebase? You might be interested in the new formatter [Air](https://posit-dev.github.io/air/). Read more in the [post by Davis Vaughan and Lionel Henry on the tidyverse blog](https://www.tidyverse.org/blog/2025/02/air/).

Compared to styler, Air offers much less customization, but is much faster. A section of the announcement is dedicated to the [comparison with styler](https://www.tidyverse.org/blog/2025/02/air/#how-is-this-different-from-styler).

### IDEs for R package developers

Have you heard of the beta IDE Positron developed by Posit (formerly RStudio)? It might be worth a try, for instance for being able to install Git extensions like GitLens, or for the nice UI for unit tests. Note that it's still in beta.

Other IDEs popular in the R community are

-   The precursor of Positron developped by Posit: [RStudio](https://docs.posit.co/ide/user/) that Posit said will still be maintained;
-   The cousins of Positron [VSCodium](https://vscodium.com/) or [VSCode](https://code.visualstudio.com/) with the [R Extension](https://open-vsx.org/extension/REditorSupport/r). Positron is a fork of VSCode like VSCodium, therefore its interface will be familiar to VSCode or VSCodium users.
-   [Neovim](https://github.com/R-nvim/R.nvim)
-   [ESS](https://github.com/MilesMcBain/esscss)

### Penguins data in base R!

Looking for a dataset for tests or docs, available in base R? The penguins dataset is [coming](https://developer.r-project.org/blosxom.cgi/R-devel/NEWS/2025/02/22) to the base R datasets package! Thanks to to Ella Kaye, Heather Turner, and Kristen Gorman for their work on this.

### Git Stash for Newbies

Read all about [Git Stash, and why and how you might use it](https://thetidytrekker.com/post/git-stash-for-newbies/git-stash-for-newbies.html), in a post by Meghan Harris.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).

