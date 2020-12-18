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

The best guidance about HTTP testing for R packages used to be an [rOpenSci forum entry](https://discuss.ropensci.org/t/best-practices-for-testing-api-packages/460) that pre-dated the development of relatively new packages for HTTP testing that have now been released on CRAN: [`vcr`](https://docs.ropensci.org/vcr/) and [`webmockr`](https://docs.ropensci.org/webmockr/) by Scott Chamberlain,  [`httptest`](https://enpiar.com/r/httptest/) by Neal Richardson, [webfakes](http://webfakes.r-lib.org/) by Gábor Csárdi.
These packages help make HTTP testing smooth to set up and resilient to internet connection failures, which means faster tests, tests running well even when on a spotty internet connection, and less burden on the remote resources.

We have updated the HTTP testing in R online book to make it a free, central reference for developers of R packages accessing web resources, to help them have a faster and more robust development.
Scott created the book a while back, as central documentation for his packages [crul](https://docs.ropensci.org/crul), [vcr](https://docs.ropensci.org/) and [webmockr](https://docs.ropensci.org/).
Maëlle got [funding from the R Consortium](https://www.r-consortium.org/projects/awarded-projects/2020-group-1#HTTP+testing+in+R+Book) to expand the scope of the book. 
