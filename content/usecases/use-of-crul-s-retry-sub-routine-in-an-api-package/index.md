---
title: "Use of crul's retry sub-routine in an API package"
reporter: "Maëlle Salmon"
date: 2020-04-16
resource: "[crul](https://docs.ropensci.org/crul)"
original_url: "https://discuss.ropensci.org/t/use-of-cruls-retry-sub-routine-in-an-api-package/2035"
language: [English]
---

#### rOpenSci package or resource used*
[`crul`](https://docs.ropensci.org/crul)

#### URL or code snippet for your use case*
_Link to a blog post, a gist, or an academic paper, or provide some code inline_

* [PR in `ropenaq`](https://github.com/ropensci/ropenaq/pull/50)

* [Post on the R-hub blog about retry sub-routines in `crul` and `httr`, and (not) re-inventing the wheel when developing R packages](https://blog.r-hub.io/2020/04/07/retry-wheel/)

#### Sector
_List one of: academic / industry / government / non-profit / other_

Other

#### Field(s) of application 
_e.g. ecology, epidemiology, Antarctic and Southern Ocean research, biomedical research, energy, finance, history, social sciences, anything!_

Air quality (exposure science? epidemiology?)

#### What did you do? 
_Explain briefly what you did, to pique your readers' interest_

The [`retry()` method in `crul::HttpClient`](https://docs.ropensci.org/crul/reference/HttpClient.html#method-retry) replaced my own code for retrying in case of failures in my rOpenSci `ropenaq` package that provides access to data from OpenAQ API (air quality data). 

I had code with a `while` loop, counting iterations, adding waiting time, etc., and it turns out I didn't need to! Using the method from `crul` I'm saving lines of code and the responsability for testing the retrying is at least partly on `crul` maintainer. :wink:



