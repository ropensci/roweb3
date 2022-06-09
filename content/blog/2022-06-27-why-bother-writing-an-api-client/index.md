---
title: Why Bother Writing (and Publicizing) an API Client
author:
  - Maëlle Salmon
  - Matthias Grenié
  - Hugo Gruson
date: '2022-06-27'
slug: publicize-api-client-yes-no
categories: []
tags:
  - api
  - API client
description: A very short summary of your post (~ 100 characters)
twitterImg: blog/2019/06/04/post-template/name-of-image.png
twitterAlt: Alternative description of the image
tweet: A post about blabla by @username!
---

Count httr & co reverse dependencies on CRAN.

A package is useful to you / your team.
Now do you really want to publicize it and to guarantee maintenance.

Your package can simplify the authentication for your users, whilst supporting security best practices.
For instance the docs and features of your package could encourage the use of keyring for storing credentials.
gh, opencage.

A *part* of your package features might be related to API interactions.
See for instance the incredibly useful PR helpers in usethis.

Offer an unified interface to different data sources.
https://jessicatytam.github.io/specieshindex/
https://docs.ropensci.org/spocc/


Having both high level / low level functions.
Low level functions for calls the high level functions do not cover (yet)

Contact API maintainers or be sure the API is well maintained.
This won't prevent bad surprises but should still help.
Decreasing the likelihood of uncommunicated API changes, of not knowing where to file a bug report.
Users of the R package might file bug reports with your package instead of with the API maintainers.

An API can be flaky. In that case you could work around it using retries.

Assess potential usage.
Of course usage might depend on your efforts: your package might make a data source more accessible to users who would feel less at ease writing httr2 code themselves; and your promotion efforts might make a wider audience tap into the API your package is wrapping.

Also, maybe you might want to still develop an API package as a way to learn general package development and maintenance skills and to display these skills of yours to a wider audience.

Could the package be developed automatically based on an OpenAPI (formely called Swagger) specifications?
Maybe, but currently there is no established tool for that so you would first need to develop the R package creating R packages. :wink:

{{< tweet user="JonTheGeek" id="1516395969398595589" >}}

## Resources for API package developers

Now, if you are still motivated to maintain an API package for a small (your team?) or big (the world!) audience, we recommend:

- The [R packages book by Hadley Wickham and Jenny Bryan](https://r-pkgs.org/) (the online version corresponds to the future second edition, not completely revised at the time of writing);
- [httr2 "Wrapping APIs" vignette](https://httr2.r-lib.org/articles/wrapping-apis.html) (or httr vignettes, or curl docs, depending on what dependency you prefer);
- [HTTP testing in R](https://books.ropensci.org/http-testing/) including a more general chapter on ["Graceful HTTP R packages"](https://books.ropensci.org/http-testing/graceful.html);
- Reading all docs of the API you are using, potentially subscribing to its changelog;
- Asking questions to friendly communities ([rOpenSci forum](http://discuss.ropensci.org/) or [semi-open slack workspace](https://contributing.ropensci.org/resources.html?q=slack#channels), [package development category of RStudio community forum](https://community.rstudio.com/c/package-development/11))

## Conclusion

If you need to write code wrapping an API, you can obviously always package it up and follow best practice.
Now, whether to publicize and guarantee maintenance of the resulting tool is a conscious decision to make.
You should also regularly re-assess your maintaining the package.
Onboard contributors regularly to share the load and potentially leave completely at some point without the package getting orphaned.
Good luck, we hope you get all [`200`](https://http.cat/200)'s!