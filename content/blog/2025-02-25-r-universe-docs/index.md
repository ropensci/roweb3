---
slug: "r-universe-docs-launch"
title: Improved documentation for R-universe!
author:
  - Maëlle Salmon
  - Jeroen Ooms
  - Noam Ross
editor:
date: 2025-02-25
tags:
  - r-universe
  - documentation
description: "We are excited to announce that R-Universe now has a documentation website thanks to Google Season of Docs!"
params:
  doi: "10.59350/p2pxy-jma94"
---

In 2021, rOpenSci created [R-universe](https://r-universe.dev), a platform for building, testing, distributing and discovering R packages.
Although the R-universe project had already been broadly adopted by developers, users, and organizations, our development had outpaced our documentation.
It remained difficult for developers to discover and make use of all its features because the documentation was fragmented: We had a project page on our organization's website that provided a broad overview, various technical notes about individual feature releases, an ad-hoc list of frequently asked questions on a project's GitHub README, and a GitHub discussion board.
We noticed that even advanced users often did not know about key features or use cases.

Thanks to funding by [Google Season of Docs](/blog/2024/04/12/gsod-announcement/), we set out to create a comprehensive, central documentation site for developers and users, disambiguate the different sources of information, and provide infrastructure and a process to more easily maintain documentation in the future.

## A new documentation website!

R-universe now has a dedicated documentation website at <https://docs.r-universe.org>.

We chose to create it as a [Quarto book](https://quarto.org/docs/books/) 
as it is a format many members of the R community are used to reading ([R Packages](https://r-pkgs.org/), [R for Data Science](https://r4ds.hadley.nz/), [our development guide](https://devguide.ropensci.org/)[^babelquarto]) and know how to contribute to.

The documentation is currently organized into four main sections:

- **Browse** that documents the user experience navigating packages and universes.
- **Install** that explains how to install packages from R-universe, how to ensure reproducibility, and how to create a dependency on a package published on R-universe.
- **Publish** that focusses on the package developer experience: why and how to publish packages.
- **Infrastructure**, a very much in progress section aiming at documenting governance and funding but also how R-universe works under the hood.

We hope the structure is helpful to readers.
The website also has search functionality.

The documentation website features links to the GitHub source and issue tracker to make it hopefully easier to contribute.

[^babelquarto]: Our dev guide is a special Quarto book, as it has multilingual support thanks to our R package [babelquarto](https://docs.ropensci.org/babelquarto).

We are thankful to the documentation reviewers [Lluís Revilla](/author/lluís-revilla-sancho/) and [Yaoxiang Li](/author/yaoxiang-li/) who provided very insightful feedback that helped us strengthen the website.

## Documentation integration to the website 

The documentation website is linked from the [R-universe dashboard](https://r-universe.dev/search).

We've also _embedded_ documentation into the website: each package page, like [textreuse's](https://ropensci.r-universe.dev/textreuse), has a "Website tour" button in the navbar, that guides you through all the information displayed on the page.
Note that the website tour is not available on mobile.

## A streamlined docs experience

While working on the documentation website, we also improved the documentation experience in other R-universe websites.

We simplified the [R-universe project page on our website](/r-universe) for it to only contain a big picture description of the project, as well as links to relevant resources including the documentation website, technical notes, recent talk recordings.
That web page has even been translated to [Spanish](/es/r-universe/).

We added a general README to the [organization profile on GitHub](https://github.com/r-universe-org/), also aiming to point users to relevant websites and online spaces such as the docs, obviously, but also the discussion board and general issue tracker.

We retired the former FAQ and replaced it with a list of where to find information, get help and participate to the project: <https://github.com/r-universe-org/help> 
To ensure former links to specific FAQ answers were not lost, we kept the section titles but replaced the content with links to the corresponding docs chapters.

## Conclusion 

We hope the improved documentation for R-universe will ease onboarding for new users, and discovery of new features by more experienced users.
We intend to keep improving the documentation based on the platform evolution but also based on your feedback: please don't hesitate to file an issue about aspects you found unclear, incorrect or missing!


