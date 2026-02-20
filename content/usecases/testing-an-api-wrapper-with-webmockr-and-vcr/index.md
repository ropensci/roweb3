---
title: "Testing an API wrapper with webmockr and vcr"
reporter: "Dave Parr"
date: 2020-06-09
resource: "[webmockr](https://docs.ropensci.org/webmockr) and [vcr](https://docs.ropensci.org/vcr) with the HTTP testing book. This question on ROpenSci helped me discover the tools"
original_url: "https://discuss.ropensci.org/t/testing-an-api-wrapper-with-webmockr-and-vcr/2125"
language: [English]
---

#### rOpenSci package or resource used*
[webmockr](https://docs.ropensci.org/webmockr/) and [vcr](https://docs.ropensci.org/vcr/) with the [HTTP testing book](https://books.ropensci.org/http-testing/). This [question on ROpenSci](http://ropensci.discourse.group/t/best-practices-for-testing-api-packages/460) helped me discover the tools.

#### What did you do? 
I tested the dev.to api wrapper I wrote. I used webmockr to create stubs to the apis, and vcr to record the API response to a local disk for testing purposes. I wrote it up [here](https://dev.to/daveparr/testing-my-dev-to-api-package-with-testthat-webmockr-and-vcr-2dgm).

#### URL or code snippet for your use case*
My code is [on GitHub](https://github.com/DaveParr/dev.to.ol)

#### Sector
Hobby

#### Field(s) of application 
Data exchange


