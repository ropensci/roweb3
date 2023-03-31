---
slug: cran-to-git
title: 'How we ingest CRAN / Bioconductor packages in r-universe'
date: '2023-03-31'
author: Jeroen Ooms
description: 'How r-universe searches for, and includes, packages on CRAN / Bioconductor that are available on GitHub or GitLab or R-forge.'
tags:
  - r-universe
  - tech notes
  - registry
  - packages
  - dashboard
---


## How packages appear in r-universe

Last month we explained how r-universe lets you easily search and browse for R packages, articles, and datasets to [discover and learn](/blog/2023/02/27/runiverse-discovering/) about everything that the R ecosystem has to offer.

Currently r-universe is tracking and indexing over 18.000 R packages. These are a mix of 

- packages from popular networks like [CRAN](https://cran.r-project.org/) and [Bioconductor](https://www.bioconductor.org/), 
- and packages that have been [registered by users](/blog/2021/06/22/setup-runiverse/).

In previous posts we already explained [how to create your personal CRAN-like repository](/blog/2021/06/22/setup-runiverse/) and register the packages to be included your r-universe. This post explains the other part: how the system automatically finds packages on CRAN and BioConductor that we can include in r-universe.

## Why we look for the upstream package Git source

For R packages to be trackable by r-universe, the source has to be publicly accessible via git[^1]. Most packages in r-universe are found on GitHub, but in fact any git server is allowed.

We strongly prefer tracking projects from their official upstream git source, that is to say, where the authors commit changes and where users report bugs. The git source provides lot of important information such as:

 - The latest changes
 - Who is the owner of the project
 - If there is an active bug tracker
 - Historical statistics on development activity and contributors
 - Project metadata like categories

R-universe automatically analyses all this information, uses it to rank and classify packages, and presents the data via the [r-universe.dev](https://r-universe.dev) web user interfaces and APIs. For this reason we really want to find the true Git home and owner even for packages that have a copy on CRAN or BioConductor.

## How we identify the upstream Git source

For R packages on CRAN and BioConductor we perform the following steps to determine their upstream git source:

 1. Inspect the `URL` and `BugReports` field in the DESCRIPTION file to look for a github/gitlab/bitbucket/r-forge address. If the package can be found here, this is the preferred method.
 2. If this fails, but the maintainer has a GitHub account, we look for the package under this Github account. If the package is found and the version is equal or greater than CRAN/Bioc, this is assumed as the official source.
 3. Finally if the maintainer has a Github account, but we could not find the package there either, we ingest a copy of the package from [metacran](https://github.com/cran) in the universe of the maintainer. As explained above, this is suboptimal because a CRAN copy does not provide information about development activity or issue reporting and so on.

This data is updated every night and published in our [crantogit](https://github.com/r-universe-org/cran-to-git/blob/master/crantogit.csv) registry. Today's statistics are:

 - 10805 CRAN/Bioc packages found at the git url from the description (yay, you rule!)
 - 1983 packages found under the maintainer's Github account
 - 4613 packages ingested from the CRAN/Bioc mirror in the maintainer's universe

This is roughly how it works, but there are a lot of subtleties to the process. For example, the scraper may not be able to find a package if it is stored in an unusual subdirectory within a Git repository. Also CRAN has the unusual habit of unpredictably archiving and unarchiving packages. As a general rule, packages that get archived on CRAN (and are not part of any other registry) still remain on r-universe for 2 months.


## Tips for package authors

If you maintain an R package, regardless of where you publish it, I highly recommend these two things to let us (and others) identify the official source and maintainer of the project:

 - Put the Github/Gitlab/R-forge/Bitbucket home of your project in the `URL` and/or `BugReports` fields in the package DESCRIPTION file when you publish on CRAN/BioConductor. You can do it manually or by running the [`usethis::use_github_links()` function](https://usethis.r-lib.org/reference/use_github_links.html). This makes it clear where to report bugs, and also prevents confusion about the official source if someone forks your package, or creates a package with the same name.
 - If you have a GitHub account (even if you never use it!), do register your maintainer email address(es) in your [Github account settings](https://github.com/settings/emails) (see also [this faq](https://github.com/r-universe-org/help#how-to-link-a-maintainer-email-addresses-to-a-username-on-r-universe)). This way the maintainer can be linked to your github account/picture and systems like r-universe and metacran can correctly identify ownership and contributions.

Finally I want to emphasize again that packages do not need to be on CRAN to be included in r-universe. It is super easy to [setup your own universe](/blog/2021/06/22/setup-runiverse/) and get the same benefits!


[^1]: One notable exception is [r-forge](https://r-forge.r-project.org/) which is using SVN, but has a live git mirror on [github.com/r-forge](https://github.com/r-forge)

