---
slug: cran-dev
title: 'New cran.dev shortlinks to package information and documentation'
date: '2023-07-26'
author: Jeroen Ooms
description: 'The new `cran.dev` shortlinks help you navigate directly to the r-universe homepage, docs or API for any CRAN package.'
tags:
  - r-universe
  - tech notes
  - packages
---

## Introducing cran.dev shortlinks!

On r-universe you can find package repositories from many different organizations and maintainers. But sometimes you just want to lookup a particular CRAN package, without knowing the developer.
The new `cran.dev` shortlink service lets you navigate or link directly to the r-universe homepage and docs of any established CRAN package.

The root domain `https://cran.dev/{package}` redirects to the primary homepage for a package:

  - https://cran.dev/magick
  - https://cran.dev/Matrix
  - https://cran.dev/ggplot2

The subdomain `https://docs.cran.dev/{package}` redirects to package manual page:

  - https://docs.cran.dev/targets
  - https://docs.cran.dev/MASS
  - https://docs.cran.dev/Rcpp

Finally the subdomain `https://api.cran.dev/{package}` does not redirect, but returns a JSON blob with links to the package versions and resources. For example:

  - https://api.cran.dev/gert

This shows the package page and maintainer for the gert package, and information on both the current CRAN release and development versions. Right now it returns:

```json
{
  "package": "gert",
  "maintainer": "Jeroen Ooms <jeroen@berkeley.edu>",
  "home": "https://ropensci.r-universe.dev/gert",
  "release": {
    "version": "1.9.2",
    "date": "2023-06-30T08:43:26.000Z",
    "source": "https://github.com/cran/gert",
    "repository": "https://cloud.r-project.org",
    "docs": "https://cran.r-universe.dev/gert/doc/manual.html",
    "api": "https://cran.r-universe.dev/api/packages/gert"
  },
  "devel": {
    "version": "1.9000",
    "date": "2023-07-20T11:08:09.000Z",
    "source": "https://github.com/r-lib/gert",
    "repository": "https://ropensci.r-universe.dev",
    "docs": "https://ropensci.r-universe.dev/gert/doc/manual.html",
    "api": "https://ropensci.r-universe.dev/api/packages/gert"
  }
}
```

We can see the release and devel version of this package, with links to the respective sources, cranlike repository, manual, and package metadata.

From the above it can be seen that the gert r-universe page is https://ropensci.r-universe.dev/gert and the r-universe `"repository"` from where to install the devel version of gert:

```r
# install 'devel' gert
install.packages("gert", repos = "https://ropensci.r-universe.dev")
```

The `"api"` field shows the JSON url with all the information and metadata about this package:

```r
# Everything there is to know about devel gert
gert <- jsonlite::fromJSON('https://ropensci.r-universe.dev/api/packages/gert')
```

Note that not all packages have a `devel` version available. CRAN packages that are not found GitHub or GitLab or r-forge only have a `release` version, for example: https://api.cran.dev/MASS




