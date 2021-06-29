---
slug: setup-runiverse
title: 'How to create your personal CRAN-like repository on R-universe'
date: '2021-06-22'
author: Jeroen Ooms
featured: true
tags:
  - r-universe
  - articles
  - tech notes
---

<small><em>This post is part of a series of technotes about [r-universe](https://r-universe.dev), a new umbrella project by rOpenSci under which we experiment with various ideas for improving publication and discovery of research software in R.
As the project evolves, we will post updates to document features and technical details.
For more information, visit the [r-universe project page](/r-universe/).</em></small>

---

## R-universe: your personal R space

The [r-universe](https://r-universe.dev) platform provides users and organizations with a personal CRAN-like repository for publishing software, rmarkdown articles, and other content that fits in an R package.

The system automatically tracks registered git repositories containing R packages, builds binaries for Windows and MacOS, renders vignettes, and makes all data available through dashboards, feeds and APIs on personal subdomains, for example:

 - https://ropensci.r-universe.dev
 - https://ggseg.r-universe.dev
 - https://r-spatial.r-universe.dev
 - https://mrc-ide.r-universe.dev
 - https://feddelegrand7.r-universe.dev

The initial pilot was mostly focused mainly on CRAN/rOpenSci developers, but as of last month we have opened up the system for anyone to create a personal R universe and start publishing packages. 

Creating a universe for your R packages is easy and can be done in a few simple steps:

 1. Create a git repository named [universe](https://github.com/maelle/universe) on your GitHub account, containing a [`packages.json`](https://github.com/maelle/universe/blob/master/packages.json) file which lists the git repositories with R packages to include.
 2. Install the [r-universe app](https://github.com/apps/r-universe/installations/new) on this same GitHub account for which you want to create the universe.
 3. That's it. Wait for your packages to start appearing on `https://<yourname>.r-universe.dev` once they have finished building.

In this technote, we describe these steps in more detail. You can also watch the recording from our [community call about getting started with R-universe](https://ropensci.org/commcalls/may2021-r-universe/) or flip through the [slides](https://jeroen.github.io/runiverse2021/) with screenshots.

## Your personal r-universe subdomain

In r-universe, every user has a private subdomain, where you control the content, and which does not interfere with other users. The subdomains are tied to the GitHub account with that name. For example my GitHub username is `jeroen` and therefore my subdomain is [`https://jeroen.r-universe.dev`](https://jeroen.r-universe.dev), and packages from the `rOpenSci` organization get published to [`https://ropensci.r-universe.dev`](https://ropensci.r-universe.dev). Note domain names are by definition case-insensitive and lowercased.

Hence, in order to start a universe you need a GitHub account. However the R packages themselves do not necessarily need to exist under that same  account. They don't even need to be on GitHub: they may be hosted on any public git server.
If your R packages are hosted on another git service, such as Gitlab, or a university git server, you can simply use a GitHub account only for publishing a `packages.json` registry for that username, without having to buy into the full GitHub platform.


## The packages.json registry file

In order to publish content on r-universe, you need to create a registry file called [packages.json](https://github.com/maelle/universe/blob/master/packages.json), which lists the git urls containing the R packages you want to include in your universe. The file is formatted as a JSON array with required fields `package` and `url` for each entry, for example:

```json
[
    {
        "package": "curl",
        "url": "https://github.com/jeroen/curl"
    },
    {
        "package": "pdftools",
        "url": "https://github.com/ropensci/pdftools"
    },
    {
        "package": "stringdist",
        "url": "https://github.com/markvanderloo/stringdist",
        "subdir": "pkg"
    }
]
```

You can either hand-write this `packages.json` file, or programmatically create it using the tools of your choice. For example you can generate it in R from a data frame using jsonlite:

```r
df <- data.frame(
    package = c("curl", "pdftools", "stringdist"),
    url = c("https://github.com/jeroen/curl", "https://github.com/ropensci/pdftools", 
        "https://github.com/markvanderloo/stringdist"),
    subdir = c(NA, NA, "pkg")
)
jsonlite::write_json(df, 'packages.json', pretty = TRUE)
```

The `url` value __must be a public git url__. This is important; our build servers literally call `git clone ${url}` on each of the entries. The `package` field must match the name of the R package from the DESCRIPTION file under that url. If the R package does not live in the root of the git repository, you also need to set the `subdir` field to the path of the R package root directory.

When creating a new universe, start by adding no more than a few packages. You can easily add more packages later by updating your packages.json file.

To publish your registry, simply create a git repository called `universe` on your GitHub account and push your `packages.json` file. See for example: https://github.com/maelle/universe.

## Installing the GitHub app

Once you pushed your `packages.json` file to your new `universe` repository on GitHub, the next step is to install the [R-universe GitHub app](https://github.com/apps/r-universe/installations/new) on your account.

[![ghapp](https://jeroen.github.io/runiverse2021/images/installapp.png)](https://jeroen.github.io/runiverse2021/#50)

The GitHub app requires very limited permissions, it only requests permission to *read and write commit statuses*. This means that the R-universe build system can post a green checkmark on your package git commits, once your package is successfully built and deployed to R-universe. Thereby R-universe serves as a full CI-CD system that shows you if your package build and deploy was successful.

[![success](https://jeroen.github.io/runiverse2021/images/commitstatus.png)](https://jeroen.github.io/runiverse2021/#54)


## What happens next

Once you installed the app, the system will automatically create your personal monorepo under the r-universe organization: `https://github.com/r-universe/<yourname>`. This is where the system keeps the full history of your packages, as explained in a previous technote about [the r-universe build system](/blog/2021/03/04/r-universe-buildsystem/).
The actions tap of your monorepo is also where the building happens.

[![builds](https://jeroen.github.io/runiverse2021/images/actions.png)](https://github.com/r-universe/maelle/actions)

After a while (usually no more than one hour), packages and articles that have completed building on all platforms will start appearing on your dashboard, and directly become available for installation by users.


[![dashboard](https://jeroen.github.io/runiverse2021/images/maelledash.png)](https://maelle.r-universe.dev)

## Adding badges and user instructions

Once your packages have appeared on the dashboard, try installing them in R using the instructions from the dashboard page, for example:

```r
# Enable this universe
options(repos = c(
    maelle = 'https://maelle.r-universe.dev',
    CRAN = 'https://cloud.r-project.org'))

# Install some packages
install.packages('tinkr')
```

To help your users, you can consider copying these instructions to your package README.md files. And of course you can add an r-universe badge to your readme as well.

The badge API is simply `/badges/<package>` which will yield an SVG image that can directly be embedded into your markdown files, showing the deployed version for the given package:


```md
![r-universe](https://r-lib.r-universe.dev/badges/cpp11)
```

For example this would produce the following badge: <img style="margin-bottom:3px;" src="https://r-lib.r-universe.dev/badges/cpp11"></img>


## Pro tip: tracking custom branches or releases

By default, R-universe tracks and builds the default branch for each package git repository, e.g. `master` or `main`. It is possible to customize which git branch or tag to track by adding a `branch` field to the registry.

The `branch` field can take the name of any git reference (either a branch or a tag). You can also set it to a special value `"*release"` which will automatically lookup the most recent GitHub release, using [the same syntax](https://cran.r-project.org/web/packages/remotes/vignettes/dependencies.html) as in remotes. For example:

```json
[
  {
    "package" : "somepackage",
    "url" : "https://github.com/jeroen/somepackage",
    "branch" : "stable"
  }
  {
    "package": "jose",
    "url": "https://github.com/jeroen/jose",
    "branch" : "*release"
  }
]
```

If you just want to use the default git branch, it is safest to omit the `branch` field. This way everything will keep working, even if the default branch gets another name at some point in the future.

## Auto-generated universes for CRAN developers

When browsing the [r-universe homepage](https://r-universe.dev/organizations/) you may notice that some major universes that contain many CRAN packages do not have a `packages.json` registry. How is this possible?

When the r-universe app is installed on a GitHub account that does not have a proper packages.json file, the build system automatically starts adding all packages from CRAN which are owned by that particular GitHub account.
Ownership is determined by the presence of a link to a GitHub repository in the `URL` or `BugReports` field of a CRAN package. Our scraper scans all CRAN packages for GitHub links on a daily basis and stores results in the [cran-to-git](https://github.com/r-universe-org/cran-to-git) database.

These are effectively auto-generated registries, on which the build system will fall back if the user does not have a personal registry. As soon as the user creates a proper `universe` registry repository with the `packages.json` file, this will take precedence, and the build system will automatically switch over.
