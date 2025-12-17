---
title: Fast forward! Highlights from vcr's 2.0.0 release
author: 
- Maëlle Salmon
editor:
  - 
date: '2025-11-06'
slug: vcr-2.0.0
description: "`local_cassette()` and other improvements in the new version of the vcr package."
output: hugodown::md_document
tags:
  - vcr
  - testing
  - tech notes
params:
  doi: "10.59350/30mx4-v8n44"
---

{{< figure src = "logo.png" alt = "vcr logo featuring... a vcr" class = "pull-left" >}} When an R package exchanges data with a web resource like a web API,
testing can become difficult:
you don't want tests to fail when the API is down,
you don't want to spend precious tokens of an API subscription for testing,
etc.
A few R packages deal with that challenge: 
one of them helps you spin up a local fake web service (webfakes),
others help you _record_ requests and responses once and replay them in tests (vcr, httptest, httptest2).
All of them are documented in our book [HTTP testing in R](https://books.ropensci.org/http-testing/).

A few months ago, Scott Chamberlain's [vcr package](https://docs.ropensci.org/vcr/) got some TLC from Hadley Wickham who had started using it for his [ellmer package](https://github.com/search?q=repo%3Atidyverse%2Fellmer%20vcr&type=code).
That work lead to the 2.0.0 release of vcr! :tada:

In this post, we shall explain the main improvements brought to vcr.
You can also refer to [Scott's release post](https://recology.info/2025/07/vcr-v2/).

## Less curly braces!

To use vcr, you need to activate a cassette in a given context: 
in that context,

- the first time you run the code the interactions are recorded in a mock file.
- the following times you run the code, the interactions are replayed.

The workhorse of vcr in tests used to be the `use_cassette()` function that worked like the [`withr::with_`](https://withr.r-lib.org/articles/withr.html) functions: you'd add a cassette name as first argument, and then add the code you'd like to use that cassette, all of this within the function call.

```r
test_that("gh_api_status() works", {
  vcr::use_cassette("gh_api_status", {
    status <- gh_api_status()
  })

  testthat::expect_type(status, "character")
})
```

Now you can use `vcr::local_cassette()` instead:

```r
test_that("gh_api_status() works", {
  vcr::local_cassette("gh_api_status")

  status <- gh_api_status()
  expect_type(status, "character")
})
```

Less nesting! 
The cassette's context is the `test_that()` call.
It's very similar to `withr::local_` calls.

Likewise, vcr now has [`local_vcr_configure()`](https://docs.ropensci.org/vcr/reference/vcr_configure.html) to temporarily edit the vcr configuration,
 and [`local_vcr_configure_log()`](https://docs.ropensci.org/vcr/reference/vcr_configure_log.html) to temporarily edit the vcr logging configuration.

## vcr for docs!

Now, vcr can support not only reliable HTTP testing but more reliable manual pages and vignettes!

Refer to:

- [`insert_example_cassette()`](https://docs.ropensci.org/vcr/reference/insert_example_cassette.html);
- [`setup_knitr()`](https://docs.ropensci.org/vcr/reference/setup_knitr.html) (an alternative to [pre-computing your vignettes and articles](/blog/2019/12/08/precompute-vignettes/)!)


## Updated docs

The main vignette of vcr has been updated to reflect how the package currently works, 
and is a good [starting point](https://docs.ropensci.org/vcr/articles/vcr.html).
Other [articles](https://docs.ropensci.org/vcr/articles/index.html) include a crucially useful one on [debugging vcr failures](https://docs.ropensci.org/vcr/articles/debugging.html).

We have also updated the 101 intro to vcr in the [HTTP testing in R](https://books.ropensci.org/http-testing/vcr.html) book.

## How to update your package

If you were already using vcr and want to adapt your package to the newest and greatest:

- switch from `use_cassette()` to `local_cassette()`. 
- check that no function you use has been deprecated.
- delete your cassettes.
- run the test code to re-record cassettes, then run the test code again to check it all works.

## Future work

Future work might include:

- [adding an roxygen2 tag for examples](https://github.com/ropensci/vcr/pull/548) to make the usage of vcr in manual pages easier.
- [fixing/clarifying the turning off of vcr](https://github.com/ropensci/vcr/pull/548) to test real interactions.
- and more... don't hesitate to [contribute](https://github.com/ropensci/vcr/)!

## Conclusion

In this post we summarized the highlights of vcr's 2.0.0 release.
We're thrilled to see that 7 year old package -- the age of reason :wink: -- get better at its important mission:
help make HTTP testing smoother!
Thanks to the maintainer Scott Chamberlain and main release contributor Hadley Wickham, and other contributors
[Christopher T. Kenny](https://github.com/christopherkenny), [Athanasia Monika Mowinckel](https://github.com/drmowinckels), [Richard Littauer](https://github.com/RichardLitt), [Russ Biggs](https://github.com/russbiggs), and [Soumya Ray](https://github.com/soumyaray).