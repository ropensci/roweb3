---
slug: "http-testing-book"
title: "Learn All About HTTP Testing: Book Update"
author:
  - Maëlle Salmon
  - Scott Chamberlain
date: 2021-01-26
tags:
  - testing
  - software
  - book
  - bookdown
  - vcr
  - webmockr
  - httptest
  - webfakes
# The summary below will be used by e.g. Twitter cards
description: "The 'HTTP testing in R' book has been updated. Useful for developers of packages interacting with web resources."
output: 
  html_document:
    keep_md: true
params:
  doi: "10.59350/4g62n-khf69"
---

More and more R packages access resources on the web, and play crucial roles in workflows.
Examples from the [rOpenSci suite of packages](/packages/all/) include [rromeo](https://docs.ropensci.org/rromeo/), [GSODR](https://docs.ropensci.org/GSODR/), [qualtRics](https://docs.ropensci.org/qualtRics/), [rnassqs](https://docs.ropensci.org/rnassqs/), and many, many others. 
Like for all other packages, appropriate unit testing can make them more robust.
However, unit testing of these packages can bring special challenges: dependence of tests on a good internet connection, testing in the absence of authentication secrets, etc.
Having tests fail due to resources being down or slow, during development or on CRAN, means a time loss for everyone involved (slower development, messages from CRAN).
Although many packages accessing remote resources are well tested, there used to be a lack of resources around best practices... 
But now there is one great information source, our [HTTP testing in R](https://books.ropensci.org/http-testing/) online book! :tada:

## Motivation and support for the book

The best guidance about HTTP testing for R packages used to be an [rOpenSci forum entry](https://discuss.ropensci.org/t/best-practices-for-testing-api-packages/460) by [Noam Ross](/author/noam-ross/) that pre-dated the development of relatively new packages for HTTP testing that have now been released on CRAN: [`vcr`](https://docs.ropensci.org/vcr/) and [`webmockr`](https://docs.ropensci.org/webmockr/) by Scott Chamberlain,  [`httptest`](https://enpiar.com/r/httptest/) by Neal Richardson, [webfakes](http://webfakes.r-lib.org/) by Gábor Csárdi.
These packages help make HTTP testing smooth to set up and resilient to internet connection failures, which means faster tests, tests running well even when on a spotty internet connection, and less burden on the remote resources.

We have updated the HTTP testing in R online book to make it a free, central reference for developers of R packages accessing web resources, to help them have a faster and more robust development.
Scott created the book a while back, as central documentation for his packages [crul](https://docs.ropensci.org/crul), [vcr](https://docs.ropensci.org/) and [webmockr](https://docs.ropensci.org/).
Maëlle got [funding from the R Consortium](https://www.r-consortium.org/projects/awarded-projects/2020-group-1#HTTP+testing+in+R+Book) to expand the scope of the book.
Thank you, R Consortium!
Thanks also to Scott, [Adam Sparks](/author/adam-sparks/), [Matthias Grenié](/author/matthias-grenié/) and [Neal Richardson](https://enpiar.com/) for contributing to the project proposal. Thanks also to [Gábor Csárdi](https://github.com/gaborcsardi) who was also consulted... even before he created webfakes!
Last but not least, thanks to recent readers of the book like [Dave Parr](https://www.daveparr.info/), [Lluís Revilla Sancho](/author/lluís-revilla-sancho/) and [Hugo Gruson](https://www.normalesup.org/~hgruson/) for useful feedback.

## What's between the covers?

The book still has advanced content about webmockr and vcr, but now this comes after new content.

* An introduction (how original), giving some basic information and resource suggestions around [HTTP in R](https://books.ropensci.org/http-testing/http-in-r-101.html) and [graceful HTTP R packages](https://books.ropensci.org/http-testing/graceful.html) as well as the reason why we need [special packages for HTTP testing](https://books.ropensci.org/http-testing/pkgs-testing-chapter.html).

* A Whole Games section inspired by the [Whole Game chapter of the R packages book by Hadley Wickham and Jenny Bryan](https://r-pkgs.org/whole-game.html). We [created a minimal R package](https://books.ropensci.org/http-testing/introduction.html) interacting with two web APIs and added tests to it (of normal behavior, of behavior when there is an API error) _three times_
    * Using [vcr and webmockr](https://books.ropensci.org/http-testing/vcr.html);
    * Using [httptest](https://books.ropensci.org/http-testing/httptest.html);
    * Using [webfakes](https://books.ropensci.org/http-testing/webfakes.html).

The section also features a [comparison of the two packages using mock files / cassettes](https://books.ropensci.org/http-testing/mocking-pkgs-comparison.html) for storing API responses or interactions (vcr and httptest), and a [comparison of all packages](https://books.ropensci.org/http-testing/pkgs-comparison.html).

* An Advanced Topics section about topics transverse to all packages.
   * Making [real requests](https://books.ropensci.org/http-testing/real-requests-chapter.html);
   * [CRAN- (and Bioconductor) preparedness for your tests](https://books.ropensci.org/http-testing/cran-preparedness.html);
   * [Security](https://books.ropensci.org/http-testing/security-chapter.html);
   * [Faking HTTP errors](https://books.ropensci.org/http-testing/errors-chapter.html);
   * [Contributor friendliness](https://books.ropensci.org/http-testing/contributor-friendliness.html).

* A [conclusion](https://books.ropensci.org/http-testing/conclusion-4.html) (again, how original) underlining what the next steps are. In particular, we encourage you to read the docs of the HTTP package(s) you end up using. For [webmockr](https://books.ropensci.org/http-testing/mocking.html) and [vcr](https://books.ropensci.org/http-testing/vcr-intro.html), these docs also live in the same book so you don't have far to go.


## Other technical details

Whilst writing chapters Maëlle filed several docs and feature requests to vcr, httptest, webfakes.
All three maintainers were very kind and receptive.

* There was a recent [tech note about vcr release](/technotes/2020/12/18/vcr-release/), part of which is a consequence of the book update.
* In httptest the new `httptest::with_mock_dir()` function was contributed as a result of Maëlle's work.
* In webfakes Maëlle suggested and helped develop the [OAuth2.0 apps](http://webfakes.r-lib.org/articles/oauth.html).

Besides, the book itself is an early adopter of a brand-new bookdown template by Hadley Wickham, `bookdown::bs4_book()`, which you might want to check out for your own bookish endeavors!
It's only available in the [development version of bookdown](https://github.com/rstudio/bookdown/) at the moment of writing, and there quite a [few features still in the work](https://github.com/rstudio/bookdown/issues?q=is%3Aopen+sort%3Aupdated-desc+label%3A%22bs4_book+%3Ahiking_boot%3A%22+).
As for deployment, we'd recommend looking at the [GitHub Actions workflow for the R packages book](https://github.com/hadley/r-pkgs/blob/master/.github/workflows/build-book.yaml) that we drew inspiration from.

## Further work and feedback request!

While we are happy with our "HTTP testing in R" book, we are committed to updating and improving it!
Have a look at the [book issue tracker](https://github.com/ropensci-books/http-testing/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc), and feel free to give us feedback there or on [rOpenSci forum](https://discuss.ropensci.org/).
Comments by experts and newbies and any expertise level in-between are most welcome!
Happy HTTP testing!
