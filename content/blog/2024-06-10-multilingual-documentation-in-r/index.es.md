---
slug: "20424-06-10-documentacion-multlingue"
title: Documentación en múltiples idiomas
# Delete the package_version line below if your post is not about a package
author:
  - Elio Campitelli
# Set the date below to the publication date of your post
date: 2024-06-10
# Minimal tags for a post about a community-contributed package 
# that has passed software peer review are listed below
# Consult the Technical Guidelines for information on choosing tags
tags:
  - R
  - packages
  - multilingual
# The summary below will be used by e.g. Mastodon preview cards
description: "A very short summary of your post (~ 100 characters)"
# If you have no preferred image for Mastodon preview cards,
# delete the socialImg and socialAlt lines below 
# - Note "/" between year/month/day
socialImg: blog/2019/06/04/post-template/name-of-image.png
socialAlt: "Alternative description of the image"
# the text below is for populating the "share on Mastodon" button
# if deleted, the title of the post will be used
social: "A post about blabla by @username@server.extension!"
---

English is the de-facto international language and this is reflected in R by the use of English for function and argument names (e.g. `mean()` instead of `promedio()` or `Mittelwert()`) and documentation language.
And while contributed packages can be documented in other languages, the vast majority are documented in English.

There is [a small number of packages documented in other languages](https://cderv.rbind.io/2018/03/11/non-english-pkg-in-cran/), seemingly tailored to their target audience.
For example, the [labstatR](https://cran.r-project.org/web/packages/labstatR/index.html) package serves as a companion to the Italian book "Laboratorio Di Statistica Con R" and is documented in Italian.
Similarly, the [chilemapas](https://cran.r-project.org/web/packages/chilemapas/chilemapas.pdf) package provides simplified maps for Chile, with documentation and function names in Spanish.

Although these packages are more accessible for their intended users, they are much less accessible to the wider community.
Users who do not speak the language may find it difficult to discover and use the functions that these packages provide.
Package authors face the dilemma of either making their package inaccessible to their target demographic or isolating it from the wider R ecosystem.

The developer of the [utilsIPEA](https://cran.r-project.org/web/packages/utilsIPEA/index.html) package publicly expressed [the need for bilingual documentation](https://stackoverflow.com/questions/37288823/bilingual-english-and-portuguese-documentation-in-an-r-package), recognising that his package would be used both by people in Brazil, who might prefer documentation in Portuguese, and the broader international community.

At least two packages have tried to solve this dilemma by documenting their package in English and publishing a second version documented in another language: [ExpDes](https://cran.r-project.org/web/packages/ExpDes/index.html) and [ExpDes.pt](https://cran.r-project.org/web/packages/ExpDes.pt/index.html), as well as [orloca](https://cran.r-project.org/web/packages/orloca/index.html) and [orloca.es](https://cran.r-project.org/web/packages/orloca.es/index.html).
The [karel](https://cloud.r-project.org/web/packages/karel/index.html) package, on the other hand, has two sets of functions, one with English names and documentation, and another in Spanish.

Both approaches are very hard to maintain and don't scale well to multiple languages; the first one also requires users to load a different package to access the documentation in their language.
A more effective solution would be for R to support multilingual documentation as a standard feature.

## User

Users need to install the rhelpi18n package

``` r
pak::pak("eliocamp/rhelpi18n")
```

then, install a translation module developed by the community.
For testing purposes, the base.es module translates a few base functions to Spanish.

``` r
pak::pak("eliocamp/base.es")
```

Then, in each session, calling `library(rhelpi18n)` will activate the multilingual capability and help will be displayed in the R session language if available.
Language can be change with the `LANGUAGE` environmental variable, like this:

``` r
Sys.setenv(LANGUAGE = "es")
```
