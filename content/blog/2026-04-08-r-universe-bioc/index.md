---
slug: "r-universe-bioc"
title: "A New Collaboration: Modernizing Bioconductor Infrastructure with R-universe"
author:
  - The rOpenSci Team
  - The Bioconductor Team
date: '2026-04-08'
tags:
  - r-universe
  - infrastructure
  - bioconductor
photogallery: true
featured: true
description: "R-universe is collaborating with Bioconductor to help gradually modernize parts of its infrastructure, while accommodating the project’s scale, governance, and established processes."
params:
  doi: "10.59350/sj9wy-g8055"
---

<small>_This article is cross-posted on [Bioconductor](https://blog.bioconductor.org/), [rOpenSci](https://ropensci.org/blog/), and [R-Consortium](https://r-consortium.org/blog/)._</small>

For more than two decades, the [Bioconductor project](https://www.bioconductor.org/) has been a cornerstone of the R ecosystem, providing high-quality, peer-reviewed tools for bioinformatics and computational biology. Its curated repository model, rigorous review standards, and tightly coordinated release process have helped establish Bioconductor as one of the most trusted distribution channels in scientific computing.

However the infrastructure that supports such a long-standing and large-scale project inevitably accumulates technical debt. Legacy build systems, bespoke tooling, and historically grown workflows add up to costly and unsustainable maintenance work. For this reason, [R-universe](https://r-universe.dev/) is collaborating with Bioconductor to help gradually modernize parts of its infrastructure, while accommodating the project’s scale, governance, and established processes. In turn, Bioconductor is helping R-universe expand and refine its features as we learn to serve the complex needs of the Bioconductor community.

This collaboration reflects a core principle of R-universe as an R Consortium [Infrastructure Steering Committee (ISC)](https://r-consortium.org/all-projects/) top-level project: supporting reviewed package repositories such as rOpenSci and Bioconductor, and providing modern, open, and reusable infrastructure that strengthens the broader R ecosystem.

## A shared mission: Tooling for managed repositories

R-universe was designed as a next-generation package distribution and build system for R. It provides:

  * Continuous building and checking of R packages across platforms  
  * Binary packages for Windows, macOS, Linux, and WebAssembly  
  * Transparent and reproducible build environments managed via GitHub actions  
  * Dashboards and metadata apis for monitoring ecosystem health and activity  
  * CRAN-like package repositories with discoverable metrics and documentation

From the outset, a key objective has been to support curated and reviewed communities — such as rOpenSci and Bioconductor — by offering modern infrastructure without requiring them to redesign their governance model or review processes.

For Bioconductor, this means incrementally introducing piece-wise functionality, with consideration for established release cycles and quality control mechanisms:

  1. Setting up independent build and dashboard tooling, replicating processes from the current Bioconductor build systems on R-universe infrastructure.
  2. Mirorring Windows/macOS binaries produced on R-universe to Bioconductor.
  3. Exploring further integration of results and metadata produced by R-universe for Bioconductor health/activity monitoring and aiding the curation processes.
  4. Potential future steps toward deeper automation and harmonization

By taking small gradual steps towards adopting R-universe components, everyone gets the opportunity to experiment with new tooling and evaluate where adjustments may be needed in order to minimize disruption to existing practices.

An important milestone in this collaboration is that Bioconductor now uses R-universe to build the Windows and macOS binaries, which significantly reduces costs and the maintenance load on the Bioconductor team. Beyond binary distribution, we are currently exploring on deeper integration of R-universe’s continuous check results into Bioconductor’s quality control and release processes. 

## Two Universes: Release and Development

Bioconductor maintains two distinct repositories:

* A **release** branch for stable packages  
* A **devel** branch for ongoing development and the next release cycle

To mirror this structure, we currently operate two dedicated R-universe instances:

* **Development branch:** [https://bioc.r-universe.dev](https://bioc.r-universe.dev)  
* **Release branch:** [https://bioc-release.r-universe.dev](https://bioc-release.r-universe.dev)

These universes integrate directly with Bioconductor’s existing Git infrastructure and provide continuous builds for packages in both branches.

Through the R-universe dashboard, package maintainers and users can:

  * Inspect cross-platform check results  
  * Review extended BiocCheck diagnostics  
  * Monitor build logs and dependency graphs  
  * Explore rich package metadata and metrics  
  * Publish binary packages for Windows, macOS, and Linux

This provides a familiar yet modern interface for Bioconductor contributors, aligned with what users increasingly expect from contemporary R package infrastructure.

Information about each package is available on `https://bioc.r-universe.dev/{pkgname}`, for example https://bioc.r-universe.dev/DESeq2 shown below:

{{< figureforgallery src="https://docs.r-universe.dev/img/bioc-pkg.png" alt="screenshot of r-universe package" >}}


If this your first time visiting R-universe, we recommend clicking the "Website Tour" button which will walk you through the most important information in 1 or 2 minutes.

## Technical Documentation for Bioconductor Maintainers

The R-universe project maintains comprehensive technical documentation at [https://docs.r-universe.dev](https://docs.r-universe.dev). For Bioconductor specifically, we created a dedicated summarizing the most relevant topics for developers to get started with R-universe: [https://docs.r-universe.dev/bioconductor/](https://docs.r-universe.dev/bioconductor/)

As the collaboration evolves and new components get introduced, the documentation will continue to be expanded. The goal is to provide Bioconductor maintainers with a clear reference point for understanding how R-universe fits into their development workflow, while maintaining compatibility with the established practices that have made Bioconductor a successful project within the R community.

## Looking Ahead

Adopting new infrastructure inevitably involves adjustments. For Bioconductor developers, integrating with a new build and distribution system will likely require some changes to workflows, and time to become familiar with new or different package checks, build diagnostics, and binary distribution.

However, by gradually moving toward common infrastructure, the Bioconductor project will benefit from improvements that are being continuously developed and maintained for the broader R ecosystem. A system based on modern CI will provide developers with improved tooling, and will give the core team more time to focus on community coordination and quality control, rather than on maintaining costly infrastructure. At the same time, a shared platform can increase the visibility and accessibility of Bioconductor software to the greater R community.

We look forward to continuing this collaboration and to working with the Bioconductor community to ensure that the next generation of infrastructure supports the project for many years to come.

