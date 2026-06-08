---
title: An API for Everything There Is to Know About Packages
author:
  - Maëlle Salmon
editor:
  - Steffi LaZerte
date: "2026-06-04"
slug: r-universe-apis-use-cases
description: Use cases of the R-Universe APIs
tags:
  - tech notes
  - r-universe
  - api
params:
  doi: "10.59350/vrv9q-27605"
output: hugodown::md_document
rmd_hash: 88bb2c052d32c116

---

R-Universe, our platform for improving publication and discovery of research software in R, not only provides a human-friendly website, but also programmatic access through APIs! Thanks to those APIs you can list universes, list packages in an universe, get information on packages, and perform searches; all without any need for authentication.

The APIs are both handy and reliable. You can build upon them, as both rOpenSci and community members have done. In this post, we provide a short overview of use cases with the R-Universe API.

## Know which packages are yours

The toolbox for rOpenSci community management tasks, [promoutils](https://ropensci.r-universe.dev/promoutils), calls an R-Universe API to list and get information on [rOpenSci packages](https://github.com/ropensci-org/promoutils/blob/18c80362002bafe48c7c88c1ca062ac3a3050358/R/utils.R#L25). This list of packages is in particular used in the [function](https://github.com/ropensci-org/promoutils/blob/18c80362002bafe48c7c88c1ca062ac3a3050358/R/help_wanted_json.R#L48) that outputs data on [help-wanted issues](/help-wanted).

## Display packages developed at your organization

If your organization develops R packages, you can use its R-Universe as the source of truth for your package collection. For instance, the [R-Universe of ggsegverse](https://ggsegverse.r-universe.dev/builds) corresponds to, well, the ggsegverse. Therefore, on the ggsegverse website, the [listing of packages](https://ggsegverse.github.io/ecosystem/) is created by querying `https://ggsegverse.r-universe.dev/api/packages`, the endpoint for [information on all packages in the universe](https://docs.r-universe.dev/browse/api.html#information-of-all-packages-in-an-universe).

{{< figure src="ggsegverse.png" alt="Screenshot of the ggsegverse website, with informative package cards" link="https://ggsegverse.github.io/ecosystem/" >}}

Likewise, the [docs page](https://ggsegverse.github.io/docs/) of ggsegverse relies on the R-Universe API to retrieve links to vignettes for each package.

### Server-side or client-side API requests

The ggsegverse website performs **client-side requests**: it queries the R-Universe API when you open the webpage, through a [JS script](https://github.com/ggsegverse/ggsegverse.github.io/blob/aea3723f885387ca9399408ccfbcc7a1ec9d7820/js/api.js). You can also check this through the [web developer tools](https://inspectelement.org/apis.html#how-to-find-and-use-undocumented-apis):

{{< figure src="request.png" alt="Screenshot of the web developer tools' network tab, showing the XHR request logged when one reloads the ggsegverse website" >}}

The rendering of the nice package cards happens through [another JS script](https://github.com/ggsegverse/ggsegverse.github.io/blob/fec52718432d098b1162772f3f94985a1d0feef3/js/render.js) that uses information such as the package's title, description, number of stars, etc.

In contrast, for package listings on author and package pages, the rOpenSci website uses **server-side requests**: the API is called when Hugo renders our website. For instance, for the list of packages at the bottom of [Jeroen Ooms' author page](/author/jeroen-ooms/), we [query](https://github.com/ropensci/roweb3/blob/503f0547854925eaa72a0e2c36420e3731e98ebf/themes/ropensci/layouts/author/list.html#L84) the R-Universe API link from our website [configuration](https://github.com/ropensci/roweb3/blob/7851904c5297868b7c372788166c526f2fe2ed1d/config.toml#L60) and [filter](https://github.com/ropensci/roweb3/blob/503f0547854925eaa72a0e2c36420e3731e98ebf/themes/ropensci/layouts/author/list.html#L85) the packages by GitHub login.

{{< figure src="jeroen.png" alt="Screenshot of Jeroen Ooms' author page on the rOpenSci website, featuring the list of rOpenSci packages that he maintains." >}}

On a Quarto website, you could have a code chunk using R to query the R-Universe APIs, through the [universe R package](https://docs.ropensci.org/universe/) for instance.

In any case, if you use server-side requests, you need to re-render your website regularly to avoid your packages' listing to get out-of-date. The nice thing about client-side requests is that the package lists will be always up-to-date!

## Conclusion

In this post we provided some use cases of the R-Universe APIs. Try them out, or read the [docs](https://docs.r-universe.dev/browse/api.html) to get a sense of all the information that's shared through the different endpoints. If you maintain some infrastructure that uses an R-Universe API, feel free to report a [use case](/usecases)!

