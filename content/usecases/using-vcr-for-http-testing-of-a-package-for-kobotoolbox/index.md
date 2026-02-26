---
title: "Using vcr for HTTP testing of a package for Kobotoolbox"
reporter: "Frie"
date: 2022-03-24
image: using-vcr-for-http-testing-of-a-package-for-kobotoolbox.png
resource: "[vcr](https://docs.ropensci.org/vcr) the excellent http testing in r book"
original_url: "https://discuss.ropensci.org/t/using-vcr-for-http-testing-of-a-package-for-kobotoolbox/2865"
language: [English]
---

#### rOpenSci package or resource used*
- [vcr](https://docs.ropensci.org/vcr/)
- the excellent [http testing in r book](https://books.ropensci.org/http-testing/index.html)

#### What did you do? 
We - a couple of volunteers from data4good network [CorrelAid](https://correlaid.org) developed a wrapper for the API of [Kobotoolbox](https://kobotoolbox.org), a data collection tool widely used in humanitarian aid. For testing the package functions, we used the `vcr` package and the HTTP testing book.

#### URL or code snippet for your use case*
https://github.com/correlaid/kbtbr

Disclaimer: while we were developing, another package for the exact same purpose was published which is maybe better than ours (e.g. it uses `labelled` to store question labels as well): https://gitlab.com/dickoa/robotoolbox  :) 



#### Sector
non-profit 

#### Field(s) of application 
humanitarian, non-profit


