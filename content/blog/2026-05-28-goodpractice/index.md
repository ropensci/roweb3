---
slug: goodpractice
title: "Our goodpractice package has new superpowers"
author:
    - Mark Padgham
    - Athanasia Mo Mowinckel
date: '2026-05-28'
tags:
  - package development
  - tech notes
  - best pratice  
description: We have worked hard over the past few months on major upgrades to our goodpractice package. Checks are now grouped into categories, making it easier to control which checks are run. The biggest change has been adding over 100 new checks, from new lints to many new CRAN checks. 
params:
  doi:
---

The [goodpractice package](https://docs.ropensci.org/goodpractice) has been recommended by rOpenSci since it was first started just over 10 years ago by Gabor Csardi.
We used to ask our editors to manually run goodpractice on all packages submitted to software peer-review, and then to ask authors to fix any notable issues flagged by the package.
It is now integrated within our own [pkgcheck system](https://docs.ropensci.org/pkgcheck), and used to automatically identify any goodpractice issues with all new submissions.
The package has transitioned maintenance [several times](/blog/2024-06-21-news-june-2024/index.md) before Gabor gave the green light for us to take over maintenance of the package [exactly two years ago (28th May 2024)](https://github.com/ropensci-review-tools/goodpractice/commit/c3f0b8e4c8e2cd7d88361bb670dd79284e6494d1).
