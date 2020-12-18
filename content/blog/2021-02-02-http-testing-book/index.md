---
slug: "http-testing-book"
title: "Learn All About HTTP Testing: Book Update"
author:
  - Maëlle Salmon
  - Scott Chamberlain
date: 2021-02-02
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
---

More and more R packages access resources on the web, and play crucial roles in workflows.
Examples from the [rOpenSci suite of packages](/packages/all/) include [rromeo](https://docs.ropensci.org/rromeo/), [GSODR](https://docs.ropensci.org/GSODR/), [qualtRics](https://docs.ropensci.org/qualtRics/), [rnassqs](https://docs.ropensci.org/rnassqs/), and many, many others. 
Like for all other packages, appropriate unit testing can make them more robust.
Their unit testing brings special challenges: dependence of tests on a good internet connection, testing in the absence of authentication secrets, etc.
Having tests fail due to resources being down or slow, during development or on CRAN, means a time loss for everyone involved (slower development, messages from CRAN).
Although many packages accessing remote resources are well tested, there used to be a lack of resources around best practices... 
But now there is one great information source, our [HTTP testing in R](https://books.ropensci.org/http-testing/) online book! :tada:

## Motivation and support for the book

The best guidance about HTTP testing for R packages used to be an [rOpenSci forum entry](https://discuss.ropensci.org/t/best-practices-for-testing-api-packages/460) that pre-dated the development of relatively new packages for HTTP testing that have now been released on CRAN: [`vcr`](https://docs.ropensci.org/vcr/) and [`webmockr`](https://docs.ropensci.org/webmockr/) by Scott Chamberlain,  [`httptest`](https://enpiar.com/r/httptest/) by Neal Richardson, [webfakes](http://webfakes.r-lib.org/) by Gábor Csárdi.
These packages help make HTTP testing smooth to set up and resilient to internet connection failures, which means faster tests, tests running well even when on a spotty internet connection, and less burden on the remote resources.

We have updated the HTTP testing in R online book to make it a free, central reference for developers of R packages accessing web resources, to help them have a faster and more robust development.
Scott created the book a while back, as central documentation for his packages [crul](https://docs.ropensci.org/crul), [vcr](https://docs.ropensci.org/) and [webmockr](https://docs.ropensci.org/).
Maëlle got [funding from the R Consortium](https://www.r-consortium.org/projects/awarded-projects/2020-group-1#HTTP+testing+in+R+Book) to expand the scope of the book.
Thank you, R Consortium!
Thanks also to Scott, [Adam Sparks](/author/adam-sparks/), [Matthias Grenié](/author/matthias-grenié/) and [Neal Richardson](https://enpiar.com/) for contributing to the project proposal. Thanks also to [Gábor Csárdi](https://github.com/gaborcsardi) who was also consulted... even before he created webfakes!
Last but not least, thanks to recent readers of the book like [Dave Parr](https://www.daveparr.info/) and [Lluís Revilla Sancho](https://llrs.dev/) for useful feedback.

## What's between the covers?

The book still has advanced content about webmockr and vcr, but these only come after new content.

* An introduction (how original), giving some basic information and resources suggestions around HTTP in R and _graceful R packages_ as well as the reason why we need special packages for HTTP testing.

* A Whole Games section inspired by the Whole Game section of the R packages book by Hadley Wickham and Jenny Bryan. We created a minimal R package interacting with two web APIs and added tests to it (of normal behavior, of behavior when there is an API error) _three times_
    * Using vcr and webmockr;
    * Using httptest;
    * Using webfakes.

The section also features a comparison of the two packages using mock files / cassettes for storing API responses or interactions (vcr and httptest), and a comparison of all packages.

## Other updates to get excited about

Whilst writing chapters Maëlle filled several docs and feature requests to vcr, httptest, webfakes.
All three maintainers were very cooperative and nice.

* There was a recent tech note about vcr release, part of which is a consequence of the book update.
* In httptest the new `httptest::with_mock_dir()` function was contributed as a result

## Further work and feedback request!

While we are happy of the book current state, we are committed to updating and improving it!
Have a look at the book issue tracker, and feel free to give us feedback there or on rOpenSci forum.
Comments by experts and newbies and any expertise level in-between are most welcome!
Happy HTTP testing!
