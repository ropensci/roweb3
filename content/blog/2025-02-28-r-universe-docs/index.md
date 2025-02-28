---
slug: "r-universe-docs-launch"
title: Better documentation for R-universe!
author:
  - Maëlle Salmon
  - Jeroen Ooms
  - Noam Ross
editor:
date: 2025-02-28
tags:
  - r-universe
  - documentation
description: "We are excited to announce that R-Universe now has a documentation website thanks to Google Season of Docs!"
params:
  doi: "10.59350/p2pxy-jma94"
---

Since the initial launch in 2021, our [R-universe](https://r-universe.dev) platform has steadily grown into a comprehensive infrastructure for publishing and discovering R material.
As functionality keeps evolving and community adoption increases, we felt the need for a central documentation point.

New features and developments are generally discussed in the [issue tracker](https://github.com/r-universe-org/help/issues) or [discussion board](https://github.com/r-universe-org/help/discussions), and sometimes on the [rOpenSci blog](/technotes/).
Technical details can be found in the README files and source code of the respective repositories under [r-universe-org](https://github.com/r-universe-org/) that contain all the workflows, actions, and server code (the R-universe system is entirely open source).
This fragmentation can make it difficult to find up-to-date information, especially for new users.

Thanks to funding by [Google Season of Docs](/blog/2024/04/12/gsod-announcement/), we were able to start a new comprehensive documentation project for all users and developers of R-universe.
We established a central place where we collect the various sources of information and describe examples and use cases, using popular authoring tools to support collective maintenance.

## New r-universe docs

The new R-universe documentation website is now live at <https://docs.r-universe.org>.
You can find the source code on [GitHub](https://github.com/r-universe-org/docs).

We created it as a [Quarto book](https://quarto.org/docs/books/) as this is a common format that many members of the R community are used to reading (for instance in [R Packages](https://r-pkgs.org/), [R for Data Science](https://r4ds.hadley.nz/), [our development guide](https://devguide.ropensci.org/)[^babelquarto]) and can contribute to.

The documentation is currently organized into four main sections:

- **Browse** that documents the user experience navigating packages and universes.
- **Install** that explains how to install packages from R-universe, how to ensure reproducibility, and how to create a dependency on a package published on R-universe.
- **Publish** that focuses on the package developer experience: why and how to publish packages.
- **Infrastructure**, documenting governance, funding, and how R-universe works under the hood for those who want to contribute. (A work in progress!)

In addition the website has search functionality, and features links to the GitHub repository where you can contribute to the documentation.

![screenshot of r-universe documentation website](docs.png)

[^babelquarto]: Our dev guide is a special Quarto book, as it has multilingual support thanks to our R package [babelquarto](https://docs.ropensci.org/babelquarto).

We are thankful to the documentation reviewers [Lluís Revilla](/author/lluís-revilla-sancho/) and [Yaoxiang Li](/author/yaoxiang-li/) who provided insightful feedback that helped us improve the initial version of the website.

## Interactive website tour

Besides a new docs site, we also added some *embedded* documentation into the website: each package page has a ["Website tour" button](https://docs.r-universe.dev/browse/packages.html#website-tour) in the navbar, that guides you through all the information displayed on the page.
Go give it a try![^mobile]

[![screenshot of r-universe dashboard](textreuse.png)](https://ropensci.r-universe.dev/textreuse)

[^mobile]: The tour is not available on mobile.

## A streamlined docs experience

While working on the documentation we also updated other information sources:

We simplified the [R-universe project page on the rOpenSci website](/r-universe) the be easier to maintain. It now contains a big-picture description of the project, as well as links to relevant resources including the documentation website, technical notes, recent talk recordings.
That web page is also available in [Spanish](/es/r-universe/).

The README on the [organization profile on GitHub](https://github.com/r-universe-org/) was updated to list relevant websites and online spaces such as the docs, obviously, but also the discussion board and general issue tracker.
The former [FAQ list](https://github.com/r-universe-org/help) was retired and replaced with links to relevant docs chapters, and references on where to get help and participate to the project.

## Conclusion

The new docs project will become the central place where we maintain up-to-date information for users and developers of R-universe.
The initial version of the site has the most important bits, but is far from complete.
Just like R-universe itself, the documentation is a living project that has to grow iteratively based on your needs and contributions.

If you have used R-universe in one way or another, and have ideas on how documentation could be improved, we welcome your [contributions](https://docs.r-universe.dev/#contributing-to-this-guide).


