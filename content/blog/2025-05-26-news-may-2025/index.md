---
slug: "news-may-2025"
title: rOpenSci News Digest, May 2025
author:
  - The rOpenSci Team
date: '2025-05-26'
tags:
  - newsletter
description: Career Paths for U.S. Federal Data Scientists, Website in Spanish
params:
  last_newsletter: '2025-04-28'
  doi: "10.59350/e4wq0-j73"
rmd_hash: bf05dd223aab88e6

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2025/05/26/news-may-2025). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Help us maintain {pkgcheck}!

You might know of [our {pkgcheck} system](https://docs.ropensci.org/pkgcheck/) used for our automated package checks, and for your own stand-alone and [GitHub-action usage](https://github.com/ropensci-review-tools/pkgcheck-action) on any package. We are seeking co-maintainers for the {pkgcheck} package that powers that. In particular, we have several [ideas for additional checks in current repo issues](https://github.com/ropensci-review-tools/pkgcheck/issues?q=is%3Aissue%20state%3Aopen%20label%3A%22%3Amag%3A%20Check%20Idea%22). We would like volunteers to attend an online get-together for us to coach you on how to implement new checks, and so to help you get involved in maintaining and further developing our checking system. If you're interested and already part of our slack group, please join our dedicatated `#pkgcheck` channel, otherwise email `mark@ropensci.org`.

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

-   Tuesday Jun 3, 2025 2:00 PM CEST (12:00 UTC), ["Getting to know the DSLC"](/events/coworking-2025-06/) with [Steffi LaZerte](/author/steffi-lazerte/) and cohost [Jon Harmon](/author/jon-harmon/).
    -   Visit the [DSLC](https://dslc.io/).

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

### New packages

<div class="highlight">

</div>

The following package recently became a part of our software suite:

<div class='highlight'>

-   [forcis](https://docs.ropensci.org/forcis), developed by Nicolas Casajus together with Mattia Greco, Sonia Chaabane, Xavier Giraud, and Thibault de Garidel-Thoron: Provides an interface to the FORCIS database (<doi:10.5281/zenodo.7390791>) on global foraminifera distribution. This package allows to download and to handle FORCIS data. It is part of the FRB-CESAB working group FORCIS. <https://www.fondationbiodiversite.fr/en/the-frb-in-action/programs-and-projects/le-cesab/forcis/>. It has been [reviewed](https://github.com/ropensci/software-review/issues/660) by Air Forbes and Scott Chamberlain.
    </div>

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions

<div class="highlight">

</div>

The following six packages have had an update since the last newsletter: [forcis](https://docs.ropensci.org/forcis "An R Client to Access the FORCIS Database") ([`1.0.0`](https://github.com/ropensci/forcis/releases/tag/1.0.0)), [geotargets](https://docs.ropensci.org/geotargets "targets Extensions for Geographic Spatial Formats") ([`v0.3.0`](https://github.com/ropensci/geotargets/releases/tag/v0.3.0)), [stplanr](https://docs.ropensci.org/stplanr "Sustainable Transport Planning") ([`overlapping_segments_in_overline`](https://github.com/ropensci/stplanr/releases/tag/overlapping_segments_in_overline)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.13.1`](https://github.com/ropensci/tarchetypes/releases/tag/0.13.1)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`1.11.3`](https://github.com/ropensci/targets/releases/tag/1.11.3)), and [tinkr](https://docs.ropensci.org/tinkr "Cast (R)Markdown Files to XML and Back Again") ([`0.3.0`](https://github.com/ropensci/tinkr/releases/tag/0.3.0)).

## Software Peer Review

<div class='highlight'>

There are twelve recently closed and active submissions and 3 submissions on hold. Issues are at different stages:

-   One at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

    -   [forcis](https://github.com/ropensci/software-review/issues/660), An R Client to Access the FORCIS Database. Submitted by [Nicolas Casajus](https://nicolascasajus.fr).

-   Two at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

    -   [pkgmatch](https://github.com/ropensci/software-review/issues/671), Find R Packages Matching Either Descriptions or Other R Packages. Submitted by [mark padgham](https://mpadge.github.io).

    -   [sits](https://github.com/ropensci/software-review/issues/596), Satellite Image Time Series Analysis for Earth Observation Data Cubes. Submitted by [Gilberto Camara](https://www.gilbertocamara.org).

-   Three at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

    -   [SSARP](https://github.com/ropensci/software-review/issues/685), SSARP (Species-/Speciation-Area Relationship Projector). Submitted by [kmartinet](https://github.com/kmartinet).

    -   [sasquatch](https://github.com/ropensci/software-review/issues/673), Use SAS, R, and quarto Together. Submitted by [Ryan Zomorrodi](http://ryanzomorrodi.github.io).

    -   [read.abares](https://github.com/ropensci/software-review/issues/667), Provides simple downloading, parsing and importing of Australian. Submitted by [Adam H. Sparks](https://adamhsparks.netlify.app/).

-   Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%222/seeking-reviewer(s)%22):

    -   [distionary](https://github.com/ropensci/software-review/issues/688), Create and Evaluate Probability Distributions. Submitted by [Vincenzo Coia](https://vincenzocoia.com).

    -   [galamm](https://github.com/ropensci/software-review/issues/615), Generalized Additive Latent and Mixed Models. Submitted by [Øystein Sørensen](https://osorensen.github.io/). (Stats).

-   Four at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

    -   [PFW](https://github.com/ropensci/software-review/issues/698), Tools for Filtering and Processing Data from Project FeederWatch. Submitted by [Mason Maron](https://github.com/Visorbearer).

    -   [dataset](https://github.com/ropensci/software-review/issues/681), Create Data Frames that are Easier to Exchange and Reuse. Submitted by [Daniel Antal](http://nl.linkedin.com/in/antaldaniel/).

    -   [capybara](https://github.com/ropensci/software-review/issues/645), Fast and Memory Efficient Fitting of Linear Models With High-Dimensional. Submitted by [Mauricio "Pachá" Vargas Sepúlveda](https://pacha.dev).

    -   [dataset](https://github.com/ropensci/software-review/issues/681), Create Data Frames that are Easier to Exchange and Reuse. Submitted by [Daniel Antal](http://nl.linkedin.com/in/antaldaniel/).

        </div>

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->

<div class="highlight">

</div>

<div class="highlight">

### Tech Notes

-   [Roaringly Acknowledge Organizations with ROR IDs in DESCRIPTION](/blog/2025/05/09/ror) by Maëlle Salmon.

</div>

## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

-   [hddtools](https://docs.ropensci.org/hddtools/), Hydrological Data Discovery Tools. [Issue for volunteering](https://github.com/ropensci/hddtools/issues/36).

-   [USAboundaries](https://docs.ropensci.org/USAboundaries/) (and USAboundariesdata), historical and contemporary boundaries of the United States of America . [Issue for volunteering](https://github.com/ropensci/USAboundaries/issues/50).

-   [historydata](https://docs.ropensci.org/historydata/), datasets for historians. [Issue for volunteering](https://github.com/ropensci/historydata/issues/23).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful tips for R package developers. :eyes:

### Safeguard your documentation in check environments

Or, in other words, how to have your package *not* fail `R CMD check` on CRAN, but examples and vignettes still rendered in pkgdown documentation?

Thanks to Alasdair Warwick, maintainer of the recently reviewed [gtexr package](https://docs.ropensci.org/gtexr/), for summarizing [some advice](https://github.com/ropensci-org/rotemplate/issues/120#issuecomment-2831521763) that we copy below:

-   For function examples, use the [`examplesIf` roxygen2 tag](https://roxygen2.r-lib.org/articles/rd.html?q=examplesIf#examples) with the `IN_PKGDOWN` variable e.g. `#' @examplesIf identical(Sys.getenv("IN_PKGDOWN"), "true")`
-   For vignettes, either pre-build if special tools/data/credentials are required which are unavailable on generic build servers (see <https://ropensci.org/blog/2019/12/08/precompute-vignettes/>), or use the `IN_PKGDOWN` variable with knitr eval option e.g.

``` r
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = Sys.getenv("IN_PKGDOWN") == "true"
)
```

Examples:

-   `examplesIf`: <https://github.com/ropensci/gtexr/blob/592ac781672f07eb67e935d4155570c5960d1fdb/R/get_service_info.R#L14> (see also Docs of the roxygen2 tag: <https://roxygen2.r-lib.org/articles/rd.html?q=examplesIf#examples>)
-   Vignette, knitr eval option: <https://github.com/ropensci/gtexr/blob/592ac781672f07eb67e935d4155570c5960d1fdb/vignettes/gtexr.Rmd#L16>

### More on {renv} and R versions

To follow up on last newsletter's item ["🔗 CI: Pin the R version if using renv"](/blog/2025/04/28/news-april-2025/#ci-pin-the-r-version-if-using-renv), a tip by Hugo Gruson: it's also possible to automatically set the R version to the one documented in `renv.lock` when using the [`r-lib/setup-r`action](https://github.com/r-lib/actions/blob/4f58f8ffa872cbd4cb016c51ec497fdbe0a02711/setup-r/README.md?plain=1#L37).

### `usethis::use_air()`

In March we mentioned [Air](/blog/2025/03/27/news-march-2025/#air-a-new-formatter-for-r), the new formatter developed at Posit. In usethis development version, there's a function that helps you set up a project to use Air: [`use_air()`](https://usethis.r-lib.org/dev/reference/use_air.html). See also the [issue about the JSON config](https://github.com/r-lib/usethis/issues/2114).

### Better HTTP testing with vcr's development version

Breaking news: a new vcr version is in the works! Follow the activity by Hadley Wickham and Scott Chamberlain in vcr's [GitHub repository](https://github.com/ropensci/vcr), check out the new [`local_cassette()` function](https://docs.ropensci.org/vcr/reference/use_cassette.html)... Or just wait for the next release! :smile_cat:

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).

