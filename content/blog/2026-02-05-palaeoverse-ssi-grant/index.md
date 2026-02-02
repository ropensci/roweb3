---
title: Paleontology R Packages to Benefit from Software Sustainability Institute Grant
author:
- Will Gearty
- The Palaeoverse Team
date: "2026-02-05"
slug: "palaeoverse-ssi-grant"
categories: []
tags:
- community
- sustainability
- reproducibility
- paleontology
- earth science
- grant
- fossils
- maintenance
- open science
description: "A grant from the Software Sustainability Institute will go towards improving the sustainability and maintainability of R packages used in paleontological research."
editor: ~
---

[Palaeoverse](https://palaeoverse.org/), a grassroots organization that develops R packages for paleontology, has been [awarded a Large Grant](https://www.software.ac.uk/rsmf-round-1-projects) from the [Software Sustainability Institute](https://www.software.ac.uk/), via the [Research Software Maintenance Fund](https://www.software.ac.uk/programmes/research-software-maintenance-fund), for the project 'Converting Users to Contributors: Enabling Sustainable Maintenance and Development of Palaeoverse'.
This funding will support efforts to improve the sustainability and maintainability of several key R packages used in paleontological research.

{{< figure src = "palaeoverse.png" alt = "The Palaeoverse logo" class = "pull-left" >}}

## Welcome to the Palaeoverse

[Palaeoverse](https://palaeoverse.org/) is an initiative aiming to unite the paleontological community through shared resources, agreed standards, and a collective commitment to improving reproducibility in paleontological research.
The project began in 2022 when a group of early-career researchers, including myself, recognized a common challenge: many of us were independently developing similar programmatic workflows for cleaning and preparing paleontological data due to a lack of standardized tools and protocols, leading to duplicated work that was difficult to reproduce.
In response, we came together to develop the [palaeoverse R package](https://palaeoverse.palaeoverse.org/)—a toolkit designed to streamline data preparation and exploration in paleontological research.
Since then, Palaeoverse has evolved into a formally organized initiative with a growing scope.
We maintain multiple [R packages](https://github.com/palaeoverse), curate [resources](https://palaeoverse.org/external), host [lectures](https://www.youtube.com/@ThePalaeoverse), and run [training workshops](https://workshop.palaeoverse.org/).
These resources have been developed entirely through the [current team](https://palaeoverse.org/#about-us)’s voluntary efforts.

### The Palaeoverse toolkit

The Palaeoverse toolkit currently includes several R packages that address various aspects of paleontological data pipelines:

- The [palaeoverse](https://palaeoverse.palaeoverse.org/) package[^1] provides functionality to support data preparation and exploration for paleobiological analyses, improving code reproducibility and accessibility.
The aim of palaeoverse is to generate a community-driven software package of generic functions for the paleobiological community.
The package does not provide implementations of statistical analyses, rather it provides auxiliary functions to help streamline analyses and improve code readability and reproducibility.
- The [rphylopic](https://rphylopic.palaeoverse.org/) package[^2] allows users to add silhouettes of organisms from the [PhyloPic database](https://www.phylopic.org/) to plots generated in base R and ggplot2.
rphylopic was originally developed and maintained by [Scott Chamberlain](/author/scott-chamberlain/) for rOpenSci.
The Palaeoverse team refactored the entire package, released v.1.0.0, and has been maintaining the package since.
- The [rmacrostrat](https://rmacrostrat.palaeoverse.org/) package[^3] provides streamlined and improved accessibility to the geological database [Macrostrat](https://macrostrat.org/).
The package provides functionality for querying the database via the dedicated API and retrieving various geological data (such as lithostratigraphic units) and definitions/metadata associated with those data and Macrostrat more broadly.
- The [sepkoski](https://sepkoski.palaeoverse.org/) package[^4] provides access to Sepkoski’s fossil marine animal genera compendium[^5][^6].
The aim of the package is to offer a light and easily-accessible solution to working with Sepkoski’s compendium to support teaching exercises.

{{< figure src = "sepkoski_curve.png" alt = "A stacked area plot showing the number of marine animal genera across the Phanerozoic; the genera are split by color into Sepkoski's evolutionary fauna: Cambrian, Paleozoic, Modern (plus an Unassigned category); the x-axis has a geological timescale on it" class = "pull-left" caption = "Sepkoski's evolutionary fauna, using the Sepkoski fossil marine animal genera compendium, as plotted by the `sepkoski_curve_base()` function in the sepkoski R package. Number of genera are counted per international geological stage bin. The timescale on the x-axis comes from the `axis_geo()` function in the palaeoverse R package." >}}

## Funding the next generation of contributors

Computational methods play an increasingly central role in paleontology, creating a pressing need for reliable, community-endorsed software that supports reproducible research.
Palaeoverse was established to address this demand, but its continued success now depends on broader community engagement to ensure its longevity and that its development reflects the diverse needs of the field, rather than those of its core contributors.
As the project expands, reducing maintenance overhead and strengthening long-term sustainability remain critical challenges for safeguarding its future.
Our vision, therefore, is to evolve Palaeoverse into a community-driven project, where users actively contribute to the development, maintenance, and review of Palaeoverse software and resources.

To achieve our vision, we have identified two strategic priorities for the organization: 

1. **Foster a contributor-friendly environment**. This involves auditing and updating our software packages to improve internal structure, code readability, and maintainability.
We also want to develop comprehensive contributor guidelines and documentation to establish transparent and accessible standards.

2. **Grow community engagement and build a contributor network**. We want to supplement our existing program of Palaeoverse workshops with bespoke training and community-building initiatives focused on software development and maintenance.
Given the low prevalence of these skills in paleontology, these events will be critical for equipping researchers with the knowledge and confidence needed to contribute to open-source scientific software, including Palaeoverse.

Through these efforts we will set clear expectations for contributions, streamline contributor submissions, and cultivate a contributor network.
Our hope is that this will spur a new community-sustaining growth phase for Palaeoverse.
Unfortunately, these lofty goals require a lot of time and money, and funding for maintenance of preexisting software is scarce (large research grants are usually looking for novel software) and all of the core contributors are busy with many other responsibilities...

### Research Software Maintenance Fund

Last April, the [Software Sustainability Institute](https://www.software.ac.uk/) announced a call for proposals for the first round of the [Research Software Maintenance Fund](https://www.software.ac.uk/programmes/research-software-maintenance-fund).
This fund aims to support the maintenance and sustainability of research software that is already in use by the community (that's us!).
The Palaeoverse team put together a proposal for a Large Grant to cover these two strategic priorities.
Then, in December, we found out that our proposal, 'Converting Users to Contributors: Enabling Sustainable Maintenance and Development of Palaeoverse', was chosen as one of four Large Awards[^7] to be funded!
The funding, totaling ~£480,000 (~650,000 USD) over two years, will go towards:

1. A dedicated, full-time Research Software Engineer who will audit and refactor the entire Palaeoverse toolkit, with a focus on improving standardization, accessibility, and reducing future maintenance needs.
2. A dedicated, full-time Community Engagement Coordinator who will develop and run bespoke community training events on research software development (like [The Carpentries](https://carpentries.org)), hackathons, and a dedicated mentorship program (modeled after the [rOpenSci Champions Program](/champions/)) to train the next generation of Palaeoverse contributors.
3. Funds for travel and subsistence for the community training events, hackathons, and mentorship program.

### Getting involved in Palaeoverse

We are extremely excited for the future of Palaeoverse, and we invite you to join us on this next chapter, whether or not you are a paleontologist!
There are several ways to get involved:

- You can contribute to the functionality of the Palaeoverse R toolkit.
Our [contributing guide](https://palaeoverse.palaeoverse.org/CONTRIBUTING.html) is a great place to start.
You can also check out our [GitHub repositories](https://github.com/palaeoverse) to find issues that speak to you. For example, we have a lot of [issues](https://github.com/palaeoverse/palaeoverse/issues) for the palaeoverse package that would be great for new contributors.
- Become a [Palaeoverse Reviewer](https://palaeoverse.org/form/reviewer) to help review code, documentation, and resources.
We particularly value community input to ensure that the toolkit has a smooth user experience.
- Contribute to Palaeoverse databases like the [Directory](https://palaeoverse.org/directory) and [Grant Track](https://palaeoverse.org/funding), which aim to centralize useful information for the community.
- Be active in community spaces such as the [Palaeoverse Google Group](https://groups.google.com/g/palaeoverse), where you can share ideas and resources, advertise opportunities, and network with colleagues.
Help us build a stronger community in computation paleontology!
The Google Group has been fairly quiet lately, but we're hoping to breath new life into it as part of our new community initiatives!
- Follow us on [social media](https://bsky.app/profile/palaeoverse.bsky.social) and enjoy the ride!

Altogether, we hope that, by devoting these resources to Palaeoverse over the next two years, we will build a strong community of users and contributors that will sustain the Palaeoverse R packages and broader organization for many years to come.

[^1]: Jones, L.A., Gearty, W., Allen, B.J., Eichenseer, K., Dean, C.D., Galván S., Kouvari, M., Godoy, P.L., Nicholl, C., Dillon, E.M., Flannery-Sutherland, J.T., Chiarenza, A.A. (2023). palaeoverse: A community-driven R package to support palaeobiological analysis. *Methods in Ecology and Evolution*. 14(9): 2205–2215. https://doi.org/10.1111/2041-210X.14099
[^2]: Gearty, W. and Jones, L.A. (2023). rphylopic: An R package for fetching, transforming, and visualising PhyloPic silhouettes. *Methods in Ecology and Evolution*. 14(11): 2700-2708. https://doi.org/10.1111/2041-210X.14221
[^3]: Jones, L.A., Dean, C.D., Gearty, W., and Allen, B.J. (2024). rmacrostrat: An R package for accessing and retrieving data from the Macrostrat geological database. *Geosphere*. 20(6): 1456–1467. https://doi.org/10.1130/GES02815.1
[^4]: Jones L.A. (2022). sepkoski: Sepkoski's Fossil Marine Animal Genera Compendium. R package version 0.0.1. https://github.com/LewisAJones/sepkoski/. https://doi.org/10.5281/zenodo.7342194.
[^5]: Sepkoski, J. J. (1981). A factor analytic description of the Phanerozoic marine fossil record. *Paleobiology*. 7(1): pp. 36–53. https://doi.org/10.1017/S0094837300003778
[^6]: Sepkoski, J. J. (2002). A compendium of fossil marine animal genera. *Bulletins of American Paleontology*. 363: 1-560. https://doi.org/10.1017/S2475262200000335
[^7]: The Research Software Maintenance Fund also awarded a similarly sized grant to R-Core for a similar project titled ['Enabling the Next Generation of Contributors to R'](https://blog.r-project.org/2025/12/17/rsmf-enabling-the-next-generation-of-contributors-to-r/). We're honored to be in such esteemed company!

