---
title: "rOpenSci Dev Guide 1.0.0: Trilingual and Improved"
author:
  - Maëlle Salmon
  - Mark Padgham
  - Noam Ross
date: '2026-01-09'
slug: devguide-1.0.0
tags:
  - Software Peer Review
  - dev guide
  - multilingual
description: "Updates in version 1.0.0 of the online book 'rOpenSci Packages: Development, Maintenance, and Peer Review'"
twitterImg: img/blog-images/2019-05-16-dev-guide-update/cover.png
output: 
twitterAlt: cover of rOpenSci dev guide, showing a package production line with small humans discussing, examining and promoting packages
params:
  doi: "10.59350/pthhe-b9v52"
---

rOpenSci Software Peer Review's guidance is gathered in an [online book](https://devguide.ropensci.org/booknews) that keeps improving!
This blog post summarises what's new in our Dev Guide 1.0.0, with all changes listed in the [changelog](https://devguide.ropensci.org/booknews.html).

## Now available in Portuguese!

Our guide is now trilingual ([English](https://devguide.ropensci.org/index.html), [Spanish](https://devguide.ropensci.org/es/index.es.html), [Portuguese](https://devdevguide.netlify.app/pt/index.pt))!

Find more about the awesome translation project to Portuguese in our [blog post](/blog/2025/11/25/translation-devguide-pt/).

Note that our [babelquarto package](https://docs.ropensci.org/babelquarto/) to render multilingual Quarto books or websites was recently [peer-reviewed](https://github.com/ropensci/software-review/issues/720) by Ella Kaye and João Granja-Correia.

We're actively working on our [babeldown package](https://docs.ropensci.org/babeldown/) to create and update translations using the DeepL API.

In the [dev guide](https://github.com/ropensci/dev_guide/pull/940/files) itself, tools useful for internationalizing _packages_ are mentioned: potools, the experimental rhelpi18n package, selecting a language for a pkgdown website.

## Policy Updates

We made some changes to rOpenSci policies and scope:

- New category for [rOpenSci internal and peer-review tools](https://devdevguide.netlify.app/softwarereview_policies#package-categories#:~:text=rOpenSci%20internal%20tools).

- New explicit rule to only [submit one package at a time](https://devdevguide.netlify.app/softwarereview_author#lifecycle#:~:text=do%20not%20submit%20several).

- New requirement to not call the [default branch "master"](https://devdevguide.netlify.app/pkg_building#version-control#:~:text=not%20be%20master).

## Editor Guide, Author Guide & Reviewer Guide

The guides that live in our guide. :smile_cat:

The whole [editor guide](https://devdevguide.netlify.app/softwarereview_editor) was has been restructured to follow the typical flow of submissions,
and to better explain how to use the [software-review dashboard](https://dashboard.ropensci.org/).
We added a section on challenges, and documented how to put the system on vacation (which we generally do over the new year period).

Likewise, we improved the organization and content of the [author guide](https://devdevguide.netlify.app/softwarereview_author) (thanks to [Alec Robitaille](https://github.com/robitalec) and [Joan Maspons](https://github.com/jmaspons)).

In the [reviewer guide](https://devdevguide.netlify.app/softwarereview_reviewer), we removed the link to the defunct Mozilla Review guide in favor of explicit items.

## Packaging Best Practices

In the packaging guide (another guide within the guide!), we added a minimal mention of criteria for choosing [example datasets](https://devdevguide.netlify.app/pkg_building#example-datasets). 
Furthermore, we created a section for [Packages wrapping external software](https://devdevguide.netlify.app/pkg_building#external-software).
The [licencing section](https://devdevguide.netlify.app/pkg_building#licence) now explicitly requires acknowledging authors of bundled code.
Last but not least, the [section about dependencies](https://devdevguide.netlify.app/pkg_building#pkgdependencies) recommends checking the development status of dependencies.

The whole book now mentions the [Air CLI](https://posit-dev.github.io/air/) every time it mentions the styler package, as Air can be viewed as styler's successor.

In the chapter about Package evolution, we added how to [deprecate *data*](https://devdevguide.netlify.app/maintenance_evolution#data-deprecate), and explained the [drawbacks of renaming a widely-used package](https://devdevguide.netlify.app/maintenance_evolution#renaming-packages).

## Testing guidance

We updated our [testing guidance](https://devdevguide.netlify.app/pkg_building.html#testing) with

- a [mention of tinytest](https://devdevguide.netlify.app/pkg_building.html#testing#:~:text=tinytest) as an alternative to testthat;
- a note on keeping tests written with testthat [self-contained](https://devdevguide.netlify.app/pkg_building.html#testing#:~:text=self-contained).

## Package Documentation

With particular thanks to [Alasdair Warwick ](https://github.com/rmgpanw), we improved the documentation :wink: of our documentation building system, including:

- More details on the [technical aspects](https://devdevguide.netlify.app/pkg_ci#rodocsci) of docs building for rOpenSci packages;
- Updated [math guidance](https://devdevguide.netlify.app/pkg_building.html#mathjax) for pkgdown based on pkgdown's update.

## Metadata & Package Information

We documented more ways to acknowledge contributors:

-  in the [authorship](https://devdevguide.netlify.app/pkg_building.html#authorship) section of the packaging guide, with [ROR IDs](/blog/2025/05/09/ror/);

- in the chapter about [collaboration](https://devdevguide.netlify.app/maintenance_collaboration.html#attributions), the [allcontributors R package](https://docs.ropensci.org/allcontributors/).

## Conclusion

In this post we summarized the changes in the latest version of our book [“rOpenSci Packages: Development, Maintenance, and Peer Review”](https://devguide.ropensci.org).
We are thankful for all contributions that created this release. 
We are already working on the next version, don't hesitate to help us shape it by opening an [issue](https://github.com/ropensci/dev_guide/issues)!