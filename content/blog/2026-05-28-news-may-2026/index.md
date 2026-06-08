---
slug: "news-may-2026"
title: rOpenSci News Digest, May 2026
author:
  - The rOpenSci Team
date: '2026-05-28'
tags:
  - newsletter
description: 15 years of rOpenSci; champions program; maintainer month; new packages and package news
params:
  last_newsletter: '2026-04-30'
  doi: "10.59350/8bear-txs95"
rmd_hash: 30bb161c3b9d12fd

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2026/05/28/news-may-2026). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### 15 Years of rOpenSci, and we're just getting started 🎉

This year we celebrate 15 years of rOpenSci! First up we have a coworking session followed by a couple casual virtual community celebrations. Please join us! Read more in our [blog post](/blog/2026/05/13/anniversary2026/) about these upcoming events.

Also exciting is that this blog post about our 15 year anniversary was featured in the R Weekly Highlights [podcast](https://serve.podhome.fm/episodepage/r-weekly-highlights/227) hosted by Eric Nantz and Mike Thomas.

### Champions Program update

The rOpenSci Champions Program is currently running two very active cohorts, with many activities happening across the program, and everything is on track!

The **2025--2026 cohort** is wrapping up their projects and outreach activities, with several Champions presenting their work at events such as R/Pharma, useR!, Posit, and LatinR 2026. We also recently held a cohort meeting bringing together Champions and mentors from the 2025--2026 cohort and one meeting for mentors only, to share mentoring tips and tricks.

Meanwhile, the **2026--2027 cohort** has started their training activities, including three weekly training workshops for Champions and a mentor training workshop. Mentors and Champions have also had their first meetings together to get to know each other and begin planning their collaboration.

Stay tuned to our [events page](/events) for Champions outreach activities and to our blog to learn more about Champions' projects.

### May is Maintainer Month

Open source software doesn't sustain itself. Behind every R package, there is at least one person who responds to issues, reviews pull requests, keeps up with dependency changes, and makes sure everything still works.

We joined the #MaintainerMonth celebration with a month-long series of rOpenSci's maintainer spotlights: **36 maintainers from 15 countries across 4 continents**, maintaining more than 50 packages that together serve thousands of researchers and data practitioners around the world.

Follow our social media ([Mastodon](https://hachyderm.io/@rOpenSci) and [LinkedIn](https://www.linkedin.com/company/ropensci/)) and the official hashtag (#MaintainerMonth) to learn more about the maintainers who support open source software. **Thank you** to those who agreed to participate and to all the maintainers in our community.

### Software-Review update

This month saw a slight policy shift in the way editors handle new software review submissions, assisted by an internal update to our bot system. Previously, our rotating Editor-in-Chief (EiC) was solely responsible for initial decisions on whether to proceed with submissions. Once a decision was reached, a handling editor took over, and generally guided each submission through to approval. However, recent increases in submissions have been too much for one EiC to handle. Submissions will now be passed on more quickly to handling editors who will then make initial scope and fit decisions.

As part of this change, the EiC can now ask the bot to "ping editors". Editors will receive an email alerting them of this new submission and can then decide whether to take it on as editor. Each time an editor clicks on a link in the email, the EiC will receive an email notification, and once an editor is assigned, all links will be automatically deactivated.

For anybody interested in how to develop an email alert system like this, please contact us and we'll have happy to share what we learnt along the way. Full code is in [this R file](https://github.com/ropensci-review-tools/roreviewapi/blob/main/R/editor-search.R).

### Social media cards for R-universe

When posting about your package or universe on social media, you can get a pretty social media card featuring important information about (respectively):

- the package such as its maintainer, its [keywords](https://docs.r-universe.dev/publish/metadata.html#keywords), its URL, its version, its number of stars, etc.

{{< figure src="https://ropensci.r-universe.dev/targets/card.png" width="600" class="center" alt="">}}

- the universe such as its number of packages and contributors, etc.

{{< figure src="https://ropensci.r-universe.dev/card.png" width="600" class="center" alt="">}}

[More information in the R-universe documentation](https://docs.r-universe.dev/browse/packages.html#social-media-cards).

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

- Tuesday June 2nd 2026, 14:00 Europe Central (12:00 UTC) ["15 years with rOpenSci"](/events/coworking-2026-06/), with [Steffi LaZerte](/author/steffi-lazerte/) and cohost [Noam Ross](/author/noam-ross).
  - Explore rOpenSci projects
  - Do a deep dive into the rOpenSci blog history
  - Meet rOpenSci's Executive Director, Noam Ross, and discuss how rOpenSci has evolved over the last 15 years.
- Tuesday July 7nd 2026, 09:00 Americas Pacific (16:00 UTC) ["Debugging in R"](/events/coworking-2026-07/), with [Yanina Bellini Saibene](/author/yanina-bellini-saibene/) and cohost [Shannon Pileggi](/author/shannon-pileggi).
  - Read up on debugging in R
  - Meet community host, Shannon Pileggi, and discuss tips and tricks for debugging in R.

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

### New versions





The following ten packages have had an update since the last newsletter: [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (CFF) Metadata for R Packages") ([`v1.4.0`](https://github.com/ropensci/cffr/releases/tag/v1.4.0)), [gutenbergr](https://docs.ropensci.org/gutenbergr "Download and Process Public Domain Works from Project Gutenberg") ([`v0.5.1`](https://github.com/ropensci/gutenbergr/releases/tag/v0.5.1)), [dataset](https://docs.ropensci.org/dataset "Create Data Frames for Exchange and Reuse") ([`0.4.4`](https://github.com/ropensci/dataset/releases/tag/0.4.4)), [sofa](https://docs.ropensci.org/sofa "Connector to CouchDB") ([`v0.4.1`](https://github.com/ropensci/sofa/releases/tag/v0.4.1)), [saperlipopette](https://docs.ropensci.org/saperlipopette "Create Example Git Messes") ([`v1.0.0`](https://github.com/ropensci-training/saperlipopette/releases/tag/v1.0.0)), [medrxivr](https://docs.ropensci.org/medrxivr "Access and Search MedRxiv and BioRxiv Preprint Data") ([`snapshot`](https://github.com/ropensci/medrxivr/releases/tag/snapshot)), [textreuse](https://docs.ropensci.org/textreuse "Detect Text Reuse and Document Similarity") ([`v1.0.1`](https://github.com/ropensci/textreuse/releases/tag/v1.0.1)), [EDIutils](https://docs.ropensci.org/EDIutils "An API Client for the Environmental Data Initiative Repository") ([`v2.1.0`](https://github.com/ropensci/EDIutils/releases/tag/v2.1.0)), [rsi](https://docs.ropensci.org/rsi "Efficiently Retrieve and Process Satellite Imagery") ([`v0.3.3`](https://github.com/Permian-Global-Research/rsi/releases/tag/v0.3.3)), and [UCSCXenaTools](https://docs.ropensci.org/UCSCXenaTools "Download and Explore Datasets from UCSC Xena Data Hubs") ([`v1.7.0`](https://github.com/ropensci/UCSCXenaTools/releases/tag/v1.7.0)).

The writexl package has a [new maintainer](https://github.com/ropensci/writexl/pull/98#issuecomment-4191858158), Bill Denney. NLMR is now maintained by [Jakub Nowosad](https://github.com/ropensci/NLMR/issues/116#issuecomment-4280937012).

## Software Peer Review



There are eighteen recently closed and active submissions and 4 submissions on hold. Issues are at different stages:

- One at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

  - [saperlipopette](https://github.com/ropensci/software-review/issues/754), Create Example Git Messes. Submitted by [Maëlle Salmon](https://masalmon.eu/).

- Three at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%225/awaiting-reviewer(s)-response%22):

  - [nycOpenData](https://github.com/ropensci/software-review/issues/750), Convenient Access to NYC Open Data API Endpoints. Submitted by [Christian Martinez](https://github.com/martinezc1).

  - [ernest](https://github.com/ropensci/software-review/issues/730), A Toolkit for Nested Sampling. Submitted by [Kyle Dewsnap](https://github.com/kylesnap). (Stats).

  - [pkgmatch](https://github.com/ropensci/software-review/issues/671), Find R Packages Matching Either Descriptions or Other R Packages. Submitted by [mark padgham](https://mpadge.github.io).

- Six at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

  - [pvEBayes](https://github.com/ropensci/software-review/issues/760), Empirical Bayes Methods for Pharmacovigilance. Submitted by [Yihao Tan](https://github.com/YihaoTancn). (Stats).

  - [RAMEN](https://github.com/ropensci/software-review/issues/743), RAMEN: Regional Association of Methylome variability with the Exposome and geNome. Submitted by [Erick Navarro-Delgado](https://erick-navarrodelgado.netlify.app).

  - [logolink](https://github.com/ropensci/software-review/issues/741), An Interface for Running NetLogo Simulations. Submitted by [Daniel Vartanian](http://danielvartan.com).

  - [rcrisp](https://github.com/ropensci/software-review/issues/718), Automate the Delineation of Urban River Spaces. Submitted by [Claudiu Forgaci](https://github.com/cforgaci). (Stats).

  - [priorsense](https://github.com/ropensci/software-review/issues/704), Prior Diagnostics and Sensitivity Analysis. Submitted by [Noa Kallioinen](https://github.com/n-kall). (Stats).

  - [galamm](https://github.com/ropensci/software-review/issues/615), Generalized Additive Latent and Mixed Models. Submitted by [Øystein Sørensen](https://osorensen.github.io/). (Stats).

- One at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

  - [ciecl](https://github.com/ropensci/software-review/issues/765), International Classification of Diseases ICD-10/ICD-11 for Chile. Submitted by [Rodolfo Tasso](https://github.com/Rodotasso).

- Five at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%222/seeking-reviewer(s)%22):

  - [EpiStrainDynamics](https://github.com/ropensci/software-review/issues/763), Infer temporal trends of multiple pathogens. Submitted by [Saras Windecker](http://www.smwindecker.com). (Stats).

  - [lakefetch](https://github.com/ropensci/software-review/issues/762), Calculate Fetch and Wave Exposure for Lake Sampling Points. Submitted by [jeremylfarrell](https://github.com/jeremylfarrell).

  - [RAQSAPI](https://github.com/ropensci/software-review/issues/744), A Simple Interface to the US EPA Air Quality System Data Mart API. Submitted by [mccroweyclinton-EPA](https://github.com/mccroweyclinton-EPA).

  - [fcmconfr](https://github.com/ropensci/software-review/issues/740), Fuzzy Cognitive Map Analysis in R. Submitted by [benroston](https://github.com/bhroston). (Stats).

  - [coevolve](https://github.com/ropensci/software-review/issues/717), Fit Bayesian Generalized Dynamic Phylogenetic Models using Stan. Submitted by [Scott Claessens](https://scottclaessens.github.io/). (Stats).

- Two at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

  - [metasurvey](https://github.com/ropensci/software-review/issues/752), Reproducible Survey Data Processing with Step Pipelines. Submitted by [Mauro Loprete](https://github.com/mauroloprete).

  - [LBDiscoverAnalysis](https://github.com/ropensci/software-review/issues/725), Co-occurrence Discovery Models and Visualization for Biomedical LBD. Submitted by [Chao Liu](https://github.com/chaoliu-cl).

    

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->







- [New Mentoring Team with Experienced Mentors and New Voices](/blog/2026/05/06/mentors-2026) by Alber Hamersson Sánchez Ipia, Pablo Paccioretti, Erick Navarro Delgado, Guadalupe Pascal, Andrea Gomez Vargas, Monika Avila Marquez, Luis D. Verde Arregoitia, Francisco Cardozo, Elio Campitelli, Pao Corrales, and Yanina Bellini Saibene. Meet the new team of mentors who will accompany our Champions in their projects for a year, sharing experience, guidance and enthusiasm. Other languages: <a href='/es/blog/2026/05/26/mentoras_es-2026' lang='es'>Nuevo equipo de mentor(a\|e)s con experiencia y nuevas voces (es)</a>.

- [15 Years of rOpenSci, and We're Just Getting Started 🎉](/blog/2026/05/13/anniversary2026) by The rOpenSci Team.

{{< figure class="center" src="PixelArt15yearrOpenSci.png" alt="Retro pixel-art graphic celebrating rOpenSci's 15th anniversary. The text 'rOpenSci' appears at the top in pixel font, flanked by three pixel-art balloons. A browser window frames the central message: '15 YEARS / TRANSFORMING OPEN SCIENCE' in bold pixel letters, overlaid on the rOpenSci geometric network pattern. A pixel badge reads 'OMG'. A pixel folder and sparkle icons complete the design." width="400" >}}



## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

- [charlatan](https://docs.ropensci.org/charlatan), create fake data in R. [Issue for volunteering](https://github.com/ropensci/charlatan/issues/150).

- [landscapetools](https://docs.ropensci.org/landscapetools), R package for some of the less-glamorous tasks involved in landscape analysis. [Issue for volunteering](https://github.com/ropensci/landscapetools/issues/48).

- [hddtools](https://docs.ropensci.org/hddtools), Tools to discover hydrological data, accessing catalogues and databases from various data providers. [Issue for volunteering](https://github.com/ropensci/hddtools/issues/36).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful information for R package developers. :eyes:

### devtools' install functions now officially deprecated

The `devtools::install_` functions like [`devtools::install_github()`](https://devtools.r-lib.org/reference/install-deprecated.html) have now been officially [deprecated](https://devtools.r-lib.org/reference/install-deprecated.html) in favor of [pak](https://pak.r-lib.org/). The [manual page](https://devtools.r-lib.org/reference/install-deprecated.html) contains a migration guide. Time to update older READMEs!

### New Git commands!

New in Git: git history! Thanks to Hugo Gruson for bringing this to our attention.

Imagine...

😰 Oops, that old commit's message had a typo! 😌 git history reword <commit-id>

😰 Oops, that old commit is too big! 😌 git history split <commit-id> (to split it into two commits)

[Git release notes](https://github.blog/open-source/git/highlights-from-git-2-54/#h-rewrite-history-with-git-history); [Git docs](https://git-scm.com/docs/git-history).

### roxygen2 8.0.0

A new version of roxygen2 hit CRAN. Among the highlights are improvements for R6, S7, inheritance, and better documentation of roxygen2 itself, including the [vignette on extending roxygen2 with your own tags and roclets](https://roxygen2.r-lib.org/articles/extending.html). [Release announcement](https://opensource.posit.co/blog/2026-05-01_roxygen2-8-0-0/).

### Comment `DESCRIPTION` files

Have you noticed this line in the release notes of R 4.6.0?

> [`read.dcf()`](https://rdrr.io/r/base/dcf.html) now recognizes lines starting with `#` as comment lines. By Dirk Eddelbuettel, Laurent Gatto and Hugo Gruson.

This means it's becoming possible to add comments to `DESCRIPTION` files, for instance to note why you added a given dependency.

### {cross} R package for running code with different package versions

Have you ever used [Git worktree](https://masalmon.eu/2024/01/23/git-worktree/) to load several R package versions at once (in different sessions), for instance to create a benchmark? Davis Vaughan made such endeavors much smoother with his [cross R package](https://github.com/DavisVaughan/cross). cross uses Git worktree under the hood to install different package versions in temporary libraries and then runs R code with these different versions. Furthermore, it has a user-friendly interface!

For example, to compare the released version of vctrs to the developement version on GitHub, you could run the following.

``` r
cross::bench_versions(pkgs = c("vctrs", "r-lib/vctrs"), {
  library(vctrs)
  x <- c(1, NA, 2, 3, NA)
  bench::mark(missing = vec_detect_missing(x))
})
```

### On attribution with a footnote

James Balamuta wrote two thoughtful posts on a [tricky situation and its resolution](https://blog.thecoatlessprofessor.com/posts/closing-the-footnote-loop/). TL;DR James' work on portable R was used in another repository with only minimal acknowledgement through a footnote in a comment. However, those involved came together to work out a resolution through meaningful conversation.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org). This guide will help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways such as through sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so though our signup form](/news/). Until it's time for our next newsletter, you can keep in touch with us through our [website](/), [Mastodon](https://hachyderm.io/@rOpenSci), or [LinkedIn](https://www.linkedin.com/company/ropensci/). See you soon!



