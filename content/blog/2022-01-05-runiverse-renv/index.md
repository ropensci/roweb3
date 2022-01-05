---
slug: runiverse-renv
title: 'How renv restores packages from r-universe'
date: '2022-01-05'
author: Jeroen Ooms
description: 'The latest version of renv now supports restoring packages that were installed from r-universe.'
tags:
  - r-universe
  - tech notes
  - reproducibility
  - renv
---

<small><em>This post is part of a series of technotes about [r-universe](https://r-universe.dev), a new umbrella project by rOpenSci under which we experiment with various ideas for improving publication and discovery of research software in R.
As the project evolves, we will post updates to document features and technical details.
For more information, visit the [r-universe project page](/r-universe/).</em></small>


## What is renv

RStudio's [renv](https://rstudio.github.io/renv/) package is a powerful dependency management toolkit for R. It allows you to create a *lockfile* that records the exact versions of R packages used in a given project, and provides tooling to install exactly those same versions on another machine, or at a later point in time. This is very useful to create an isolated environment for reproducibility or production purposes.

The latest version of renv (0.15.0) now supports restoring packages that were installed from r-universe. In this post we explain how this works, and why.

## Why r-universe is not an archive

The letter A in CRAN stands for 'archive': the source code for all versions of all packages that were ever released on CRAN are stored indefinitely on an ever-growing ftp server. The CRAN homepage for each package has a link to "Old sources" which lists all the source packages (with timestamps) in the archive, [some dating back over 20 years](https://cran.r-project.org/src/contrib/Archive/Matrix/). This is a fantastic service, but quite expensive. For this reason CRAN has to limit the size of source packages and release frequency per package. 

A fundamental difference between [r-universe](https://r-universe.dev) and CRAN is that r-universe has *rolling* development model. The system automatically tracks the upstream git repositories and continuously builds and deploys from the latest commits, sometimes many times per day per package. We do not archive all of these versions in r-universe, but instead rely on the upstream git repositories to provide historical sources.

Because packages published in r-universe are by definition built from a public git server, R and renv can treat such packages the same way as packages installed directly from git using e.g. `install_github()`. Effectively, r-universe serves a gateway to content on git, and if we know the upstream git-url and commit-id, it is unimportant how the package was installed exactly.

## How it works

For every R package on r-universe, the build system adds some extra fields to the DESCRIPTION file with details on where the package was installed from. This includes the cranlike repository on r-universe, and the upstream Git url, branch and commit that the package was built from. 

For example, have a look at the DESCRIPTION file from the gert package:

```r
# Download gert source package and extract the DESCRIPTION file
gert <- download.packages('gert', '.', type = 'source', repos = 'https://r-lib.r-universe.dev')
untar(gert[,2], 'gert/DESCRIPTION', tar = 'internal')
readLines('gert/DESCRIPTION')
```

The following fields were added by r-universe:

```r
## ...
## [30] "Repository: https://r-lib.r-universe.dev"
## [31] "RemoteUrl: https://github.com/r-lib/gert"
## [32] "RemoteRef: HEAD"
## [33] "RemoteSha: b9dcd4c00449702cf70e782dc28eabf80c8d5971"
```

We can also retrieve the same data though the r-universe APIs, for example:

```r
pkg <- jsonlite::fromJSON('https://r-lib.r-universe.dev/packages/gert/any/src')
pkg$RemoteSha
## [1] "b9dcd4c00449702cf70e782dc28eabf80c8d5971"
```

Now this gives us an unambiguous reference to the exact source code, in this case:

    https://github.com/r-lib/gert/tree/b9dcd4c00449702cf70e782dc28eabf80c8d5971

This provides renv and similar tools with the required information for installing precisely this same version on another machine. There is no way to cheat: any change in source code will result in a different sha, even if the version number in the description file stays the same.

## How renv restores from r-universe

Depending on where a package originates from, renv uses different methods for finding an older source. For CRAN packages, it uses the CRAN archive, and for packages installed with `install_github()` it will checkout the old version from git based on the commit hash.

For r-universe it uses a hybrid approach: it first checks if the required version is available from the cranlike repository that was mentioned in the package `Repository` field, i.e. `https://r-lib.r-universe.dev` for the `gert` example above. The benefit of using the cranlike repository is that binary packages are available for Windows and Mac, which will ease the installation a bit.

If the package is no longer available on r-universe, renv will clone and checkout the source code from the `RemoteUrl` and `RemoteSha` values, in the same way as for packages installed with `install_github()`.

