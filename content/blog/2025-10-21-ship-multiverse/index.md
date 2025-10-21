---
title: Go for Launch! Packages Shipped to the R-Multiverse
author: 
- Maëlle Salmon
editor:
  - Steffi LaZerte
date: '2025-10-21'
slug: packages-multiverse
description: Packages submitted to the R-multiverse during our recent coworking session.
output: hugodown::md_document
tags:
  - r-multiverse
  - r-universe
  - packages
  - community
params:
  doi: "10.59350/pjqfq-q2q45"
---

Will Landau recently introduced the R-multiverse, [a new way to publish R packages](/commcalls/r-multiverse/), during an rOpenSci community call.[^posit]
After that event, a [coworking](/blog/2023/06/21/coworking/) session allowed even more discussion between Will, his R-multiverse fellow administrators Jeroen Ooms and Maëlle Salmon, and community members.

A key mission in that coworking session was to submit packages to the R-multiverse live!
Following the [instructions](https://r-multiverse.org/contributors.html), any package maintainer wishing to send their software to the community repository needs to:

- create a GitHub or GitLab release of their package;
- open a Pull Request to the [contributions](https://github.com/r-multiverse/contributions) GitHub repository, adding a text file that contains the URL to the repository.[^json]

Will also shared an R function that allows you to perform R-multiverse package checks locally before submitting: [`multiverse.internals::review_package()`](https://r-multiverse.org/multiverse.internals/reference/review_package.html).

Three packages were submitted during the coworking session!

## Package submissions

### riem, to get weather data from ASOS stations (airports) via the Iowa Environment Mesonet.

I submitted my [riem package](https://github.com/r-multiverse/contributions/pull/238) that accesses airport weather data, even if it is also distributed on CRAN: I wanted to explore different publication venues.
Because the automatic checks (of the license for instance) passed and because I am a public member of a GitHub organization trusted by the multiverse (ropensci), my PR was automatically merged. 

Read more about [riem](https://docs.ropensci.org/riem/).

### geotargets, that extends targets to work with geospatial data formats

Eric R. Scott submitted the [geotargets package](https://github.com/r-multiverse/contributions/pull/239) that extends targets to work with geospatial data formats, such as rasters and vectors (e.g., shapefiles).
Eric co-authored `geotargets` alongside Nick Tierney and Andrew Brown, but Nick is the primary maintainer.
However, it's perfectly okay that Eric submitted the package rather than Nick.
In fact, R-multiverse lets you contribute packages you didn't write at all[^3], as long as the license grants [clear permission to distribute and modify the code](https://en.wikipedia.org/wiki/Free_and_open-source_software).

Read more about [geotargets](https://docs.ropensci.org/geotargets/).

[^3]: Package authorship stays the same.

### weathercan, to find and download historical weather data from Environment and Climate Change Canada (ECCC)

Steffi LaZerte submitted her [weathercan package](https://github.com/r-multiverse/contributions/pull/240/), also a weather package but for Canada! 
Steffi wondered whether it made sense to submit weathercan before making a bunch of fixes and enhancements she had planned over the next few weeks. Turns out that, yes it does make sense! Because the multiverse will pick up the latest release automatically. 
Steffi only needs to remember to create a new release after improving weathercan. 

Read more about [weathercan](https://docs.ropensci.org/weathercan/).

## What's next for those packages?

Now that these packages are in, they're distributed through the [**community** repository](https://r-multiverse.org/community.html).
It's like a preview of new releases.

In a few weeks, when R-multiverse starts building the next [**production** snapshot](https://r-multiverse.org/production.html), they will be checked together with other packages.
If they are good to go, their release at that point will be the one built into production.
If there are some issues, the maintainer can still push fixes.

As long as those packages are listed in the R-multiverse, they will participate in the quarterly production snapshots.
The maintainers only need to keep creating releases (good practice anyway) and to follow the [status](https://r-multiverse.org/status/) of their package on the multiverse.

For the package users to know they can install the package from the [community](https://r-multiverse.org/community.html) or the [production](https://r-multiverse.org/production.html) repositories, package maintainers will need to update the installation instructions in the README of their package.
They could also add a [badge](https://r-multiverse.org/contributors.html#badges).

## What's next for the R-multiverse?

After the posit conf talk, the rOpenSci community call, and the rOpenSci coworking session, the R multiverse is aiming at increasing participation in its system to strengthen and diversify it.
New package submissions are welcome, as are [questions and feature requests](https://github.com/r-multiverse/help).
You can also apply to become a [package moderator](https://r-multiverse.org/moderators.html) to help handle new submissions.

[^posit]: And before that in a talk at posit::conf! Stay tuned for the release of the public talk recordings on YouTube.
[^json]: Or a slightly more involved JSON file if the package is in a subdirectory for instance.