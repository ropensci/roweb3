---
slug: "news-october-2025"
title: rOpenSci News Digest, October 2025
author:
  - The rOpenSci Team
date: '2025-10-24'
tags:
  - newsletter
description: R-multiverse comm call, useR! 2025, posit::conf(2025), coworking, new package, package news
params:
  last_newsletter: '2025-09-29'
  doi: "10.59350/cwdyp-ads64"
rmd_hash: e1fbd79e102053c1

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2025/10/24/news-october-2025). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### 2025-11-06 Community call: Graceful Internet Packages

Join us for our next Community Call, ["Graceful Internet Packages"](/commcalls/graceful-internet-packages/), on Thursday, 06 November 2025 at 15:00 UTC featuring Matthias Grenié, Tan Ho, and Salix Dubois. In this session, we'll explore how to design and maintain R packages that interact with online data sources. Our speakers will share practical lessons, examples, and best practices to help R package developers create reliable packages.

### Community call recording: R-multiverse, a new way to publish R packages

[Resources associated with the community call all](/commcalls/r-multiverse/), including the video recording, slides, notes have been posted.

You can also find the notes from the related [coworking session](https://ropensci.org/events/coworking-2025-10/) on our website.

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

-   Tuesday November 3rd, 09:00 Australia Western (01:00 UTC), ["Code Review with rOpenSci"](/events/coworking-2025-11/) with [Steffi LaZerte](/author/steffi-lazerte/) and cohost [Liz Hare](/author/liz-hare).
    -   Explore resources for Code review;  
    -   Sign up to volunteer to do [software peer-review](https://airtable.com/app8dssb6a7PG6Vwj/shrnfDI2S9uuyxtDw) at rOpenSci;  
    -   Chat with Liz Hare, and learn more about rOpenSci's code review and the resources available.

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

### New packages





The following package recently became a part of our software suite:



-   [partialling.out](https://docs.ropensci.org/partialling.out), developed by Marc Bosch-Matas: Creates a data frame with the residuals of partial regressions of the main explanatory variable and the variable of interest. This method follows the Frisch-Waugh-Lovell theorem, as explained in Lovell (2008) <https://doi.org/10.3200/JECE.39.1.88-91>. It has been [reviewed](https://github.com/ropensci/software-review/issues/703) by Christian Testa, Kyle Butts, and Adam Loy.
    

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions





The following six packages have had an update since the last newsletter: [saperlipopette](https://docs.ropensci.org/saperlipopette "Create Example Git Messes") ([`v0.1.0`](https://github.com/ropensci-training/saperlipopette/releases/tag/v0.1.0)), [datapack](https://docs.ropensci.org/datapack "A Flexible Container to Transport and Manipulate Data and Associated Resources") ([`1.4.2`](https://github.com/ropensci/datapack/releases/tag/1.4.2)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.24`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.24)), [occCite](https://docs.ropensci.org/occCite "Querying and Managing Large Biodiversity Occurrence Datasets") ([`v0.6.1`](https://github.com/ropensci/occCite/releases/tag/v0.6.1)), [spatsoc](https://docs.ropensci.org/spatsoc "Group Animal Relocation Data by Spatial and Temporal Relationship") ([`v0.2.11`](https://github.com/ropensci/spatsoc/releases/tag/v0.2.11)), and [stats19](https://docs.ropensci.org/stats19 "Work with Open Road Traffic Casualty Data from Great Britain") ([`v3.4.0`](https://github.com/ropensci/stats19/releases/tag/v3.4.0)).

## Software Peer Review



There are fifteen recently closed and active submissions and 3 submissions on hold. Issues are at different stages:

-   Three at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%225/awaiting-reviewer(s)-response%22):

    -   [mantis](https://github.com/ropensci/software-review/issues/710), Multiple Time Series Scanner. Submitted by [Phuong Quan](https://github.com/phuongquan).

    -   [pkgmatch](https://github.com/ropensci/software-review/issues/671), Find R Packages Matching Either Descriptions or Other R Packages. Submitted by [mark padgham](https://mpadge.github.io).

    -   [read.abares](https://github.com/ropensci/software-review/issues/667), Provides simple downloading, parsing and importing of Australian Bureau of Agricultural and Resource Economics and Sciences (ABARES) data sources. Submitted by [Adam H. Sparks](https://adamhsparks.netlify.app/).

-   Three at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

    -   [babelquarto](https://github.com/ropensci/software-review/issues/720), Renders a Multilingual Quarto Book. Submitted by [Maëlle Salmon](https://masalmon.eu/).

    -   [openFDA](https://github.com/ropensci/software-review/issues/714), openFDA API. Submitted by [Simon Parker](https://github.com/simpar1471).

    -   [galamm](https://github.com/ropensci/software-review/issues/615), Generalized Additive Latent and Mixed Models. Submitted by [Øystein Sørensen](https://osorensen.github.io/). (Stats).

-   Three at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

    -   [reviser](https://github.com/ropensci/software-review/issues/709), Tools for Studying Revision Properties in Real-Time Time Series Vintages. Submitted by [Marc Burri](https://marcburri.github.io/).

    -   [distionary](https://github.com/ropensci/software-review/issues/688), Create and Evaluate Probability Distributions. Submitted by [Vincenzo Coia, Ph.D., P.Stat.](https://vincenzocoia.com).

    -   [partialling.out](https://github.com/ropensci/software-review/issues/703), Residuals from partial regressions. Submitted by [Marc Bosch](https://github.com/marcboschmatas). (Stats).

-   One at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%222/seeking-reviewer(s)%22):

    -   [rcrisp](https://github.com/ropensci/software-review/issues/718), Automate the Delineation of Urban River Spaces. Submitted by [Claudiu Forgaci](https://github.com/cforgaci). (Stats).

-   Five at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

    -   [ernest](https://github.com/ropensci/software-review/issues/722), A Toolkit for Nested Sampling. Submitted by [Kyle Dewsnap](https://github.com/kylesnap). (Stats).

    -   [coevolve](https://github.com/ropensci/software-review/issues/717), Fit Bayesian Generalized Dynamic Phylogenetic Models using Stan. Submitted by [Scott Claessens](https://scottclaessens.github.io/). (Stats).

    -   [priorsense](https://github.com/ropensci/software-review/issues/704), Prior Diagnostics and Sensitivity Analysis. Submitted by [Noa Kallioinen](https://github.com/n-kall). (Stats).

    -   [SPARQLchunks](https://github.com/ropensci/software-review/issues/656), Run SPARQL Chunks and Inline Functions to Retrieve Data. Submitted by [André Ourednik](https://ourednik.info).

    -   [capybara](https://github.com/ropensci/software-review/issues/645), Fast and Memory Efficient Fitting of Linear Models With High-Dimensional. Submitted by [Mauricio "Pachá" Vargas Sepúlveda](https://pacha.dev).

        

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->







-   [rOpenSci Code of Conduct Committee Templates](/blog/2025/09/30/coc-templates) by Yanina Bellini Saibene, Natalia Morandeira, and Mark Padgham. rOpenSci has a stablish Code of Conduct Committee and process for their functioning. We use templates to support our work and we share these templates in this blog post.

### Tech Notes

-   [A Primer on Domain Verification](/blog/2025/10/10/verification) by Maëlle Salmon. How domain verification helps against impersonation and takeover attacks, and how to use it.



## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

[grainchanger](https://docs.ropensci.org/grainchanger/), data aggregation methods for raster data. [Issue for volunteering](https://github.com/ropensci/grainchanger/issues/17).

[photosearcher](https://docs.ropensci.org/photosearcher), searches Flickr for photographs and metadata. [Issue for volunteering](https://github.com/ropensci/photosearcher/issues/22).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### Community over code

In his post reflecting on [Arrow's 10 year anniversary](https://enpiar.com/2025/10/07/arrow-turns-10/), Neal Richardson provides interesting insights including:

> "These values are capped off by the foundation's mantra, "community over code," which means that focusing on how people work together is more important than technical purity."

### Felienne Hermans' AI newsletter

Felienne Hermans now translates her excellent weekly AI newsletter to [English](https://www.felienne.nl/2025-39/?ref=the-ai-nieuws-van-deze-week-newsletter#english)!

### AI helping find potential issues in software

Daniel Stenberg, creator and maintainer of curl, [posted](https://mastodon.social/@bagder/115241241075258997) that "Joshua Rogers sent us a *massive* list of potential issues in #curl that he found using his set of AI assisted tools".

### Two Git tricks

`git blame` helps you explore the history of a file to understand why certain lines were added or modified.

Now, did you know how to...

-   find out which Git commit deleted a *file*? You can do that by filtering commits that touched that path: `git log --oneline -- path/to/file`.

-   find out which Git commited deleted a *line*? You can [do that](https://stackoverflow.com/questions/16181279/find-out-which-commit-removed-a-particular-word-line-in-git/16181840#16181840) with `git log -S<string> path/to/file` or `git log -G<regex> path/to/file`.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).





