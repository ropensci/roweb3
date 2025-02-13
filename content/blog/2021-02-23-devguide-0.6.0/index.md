---
title: 'rOpenSci Dev Guide 0.6.0: Updates'
author:
  - Maëlle Salmon
  - Brooke Anderson
  - Laura DeCicco
  - Julia Gustavsen
  - Anna Krystalli
  - Mauro Lepore
  - Karthik Ram
  - Noam Ross
  - Melina Vidoni
date: '2021-02-23'
slug: devguide-0.6.0
tags:
  - Software Peer Review
  - dev guide
description: "Updates in version 0.6.0 of the online book 'rOpenSci Packages: Development, Maintenance, and Peer Review
rOpenSci Packages: Development, Maintenance, and Peer Review'"
twitterImg: img/blog-images/2019-05-16-dev-guide-update/cover.png
output: 
  html_document:
    keep_md: true
params:
  doi: "10.59350/zqs5x-jtz09"
---

rOpenSci Software Peer Review's guidance is gathered in [an online book](https://devguide.ropensci.org/) and keeps improving!
To find out what's new in our dev guide 0.6.0, you can [read the changelog](https://devguide.ropensci.org/booknews.html), 
or this blog post for more digested information.

> We have resumed activity after a break due to the COVID-19 crisis, but are being gentle with deadlines and timing, giving a lot of grace to all people involved. We're all doing our best and rOpenSci is trying to be accommodating with schedules during this challenging period.

## On our way to Spanish!

We're extending our software review system to submissions in Spanish, as [we had hinted to in a forum post](https://discuss.ropensci.org/t/language-documentation-for-a-package/2221/3) and other venues!
The first package to be reviewed in Spanish is [
censo2017](https://github.com/ropensci/software-review/issues/414) by [Pachá (aka Mauricio Vargas Sepúlveda)](/author/pachá-aka-mauricio-vargas-sepúlveda/) that provides access to the 2017 Chilean Census.
Editor [Melina Vidoni](/blog/2019/01/31/more_editors/) is in charge of this review, the reviewers are [Frans van Dunné](https://github.com/FvD) and [María Paula Caldas](https://www.mpaulacaldas.com/).
Frans van Dunné most kindly translated our [review template to Spanish](https://devguide.ropensci.org/reviewtemplatees.html)!
¡Muchas gracias!

If you speak Spanish and would like to hear more about our software peer review system, [check out the recording of the LatinR talks by package author Miguel Alvarez and editor Maëlle Salmon](/events/latinr-2020/).

## Guidance for package documentation

To help R users, we now require information about overlap with other packages be [mentioned prominently in package docs](https://devguide.ropensci.org/building.html#general).
_If there is potential overlap or confusion with other packages providing similar functionality or having a similar name, add a note in the README, main vignette and potentially the Description field of DESCRIPTION. Example in [rtweet README](https://docs.ropensci.org/rtweet/), [rebird README](https://docs.ropensci.org/rebird/#auk-vs-rebird)._

As regards documentation and CRAN-readiness, the guide now has updated tips around [escaping examples](https://devguide.ropensci.org/building.html#examples).
_To safe-guard examples (e.g. requiring authentication) to be run on CRAN you need to use `\dontrun{}`. However, for a first submission CRAN won’t let you have all examples escaped so. In this case you might add some small toy examples, or wrap example code in `try()`. Also refer to the `@exampleIf` tag present, at the time of writing, in roxygen2 development version._

## Guidance for package testing

The [guidance around testing](https://devguide.ropensci.org/building.html#testing) mentions two tools that might help package authors: the new [snapshot tests](https://testthat.r-lib.org/articles/snapshotting.html) in testthat; and the recently updated book ["HTTP testing in R"](/blog/2021/01/26/http-testing-book/) by Scott Chamberlain and Maëlle Salmon.

We have now removed mentions to Travis CI in particular from [the chapter about continuous integration](https://devguide.ropensci.org/ci.html), as we [no longer recommend using the service](/technotes/2020/11/19/moving-away-travis/).

## Guidance for package evolution

We added a small but important note around CRAN releases in the [Releasing chapter](https://devguide.ropensci.org/releasing.html#releasing-1) about a frequent conundrum for maintainers.
_CRAN does not like too frequent updates. That said, if you notice a major problem one week after a CRAN release, explain it in cran-comments.md and try releasing a newer version._

The chapter about [package evolution](https://devguide.ropensci.org/evolution.html) now has a link to the [lifecycle package](https://lifecycle.r-lib.org/articles/lifecycle.html) that might be useful for communicating changes to users.

We added a small update to the [package curation policy](https://devguide.ropensci.org/curationpolicy.html#legacy-acquired-packages): it now mentions a possible exception for keeping legacy packages that are vital parts of the R and/or rOpenSci package ecosystem which are actively monitored by staff. 

Last but not least, we will now more strongly enforce the use of a [NEWS.md](https://devguide.ropensci.org/releasing.html#news) file to indicate the changes made during review, and will require the package version to be increased after review.

## Meta changes

Did you notice the guide got a design refresh? :sparkles:
We switched from `bookdown::gitbook()` to `bookdown::bs4_book()` that's available in the development version of the [bookdown package](https://github.com/rstudio/bookdown/).
We enjoy having the general table of contents on the left and the table of contents for the current chapter on the right.
We also find searching more intuitive.

Another meta change is that thanks to [Hugo Gruson](https://github.com/Bisaloo), we provide clearer citation guidance in case you want to cite the guide itself in a scientific publication!
We improved our Zenodo metadata, and use the [zen4R package](https://github.com/eblondel/zen4R) for creating a BibTex chunk in the dev guide.


```r
cat("\n```bibtex\n")
zenodo <- zen4R::ZenodoManager$new(
  token = Sys.getenv("ZENODO_TOKEN")
)
guide <- zenodo$getDepositionByConceptDOI("10.5281/zenodo.2553043")
guide$exportAsBibTeX("dev_citation")
cat(readLines("dev_citation_BibTeX.bib"), sep = "\n")
cat("\n```\n")
fs::file_delete("dev_citation_BibTeX.bib")
```


```bibtex
@software{ropensci_2021_4554776,
  author       = {rOpenSci and
                  Brooke Anderson and
                  Scott Chamberlain and
                  Laura DeCicco and
                  Julia Gustavsen and
                  Anna Krystalli and
                  Mauro Lepore and
                  Lincoln Mullen and
                  Karthik Ram and
                  Noam Ross and
                  Maëlle Salmon and
                  Melina Vidoni},
  title        = {{rOpenSci Packages: Development, Maintenance, and 
                   Peer Review}},
  month        = feb,
  year         = 2021,
  publisher    = {Zenodo},
  version      = {0.6.0},
  doi          = {10.5281/zenodo.4554776},
  url          = {https://doi.org/10.5281/zenodo.4554776}
}

```

## Conclusion

In this post we summarized the changes incorporated into our book ["rOpenSci Packages: Development, Maintenance, and Peer Review"](https://devguide.ropensci.org/) over the last months. 
We are thankful for all contributions that shaped this release. 
We are already working on the next version, such as improving guidance for [encouraging package citations](/blog/2021/02/16/package-citation/) and wondering how prescriptive to be regarding [HTTP testing](/blog/2021/01/26/http-testing-book/).
