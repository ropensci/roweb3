---
slug: runiverse-snapshots
title: 'Downloading snapshots and creating stable R packages repositories using r-universe'
date: '2023-05-31'
author: Jeroen Ooms
description: 'We added a a new API on R-universe to download a full snapshot of any CRAN-like repo plus documentation, which you can use to mirror somewhere or just for backup.'
photogallery: true
tags:
  - r-universe
  - tech notes
  - snapshot
  - packages
  - dashboard
---

## Downloading repository snapshots

The new snapshot API lets you download a full copy of any CRAN-like repository on r-universe. You can use such a snapshot to mirror the entire package repository on your own servers, or for example to build a stable, validated release of your package repository.

The endpoint is simply `/api/snapshot` and has several parameters to filter content. By default the API returns a zip file with all the packages, binaries, and documentation in your repository. If this is more than you need, the API lets you choose to include e.g. only binaries for certain platforms or certain versions of R, or to create a repository from a subset of the packages in your universe. Explore the parameters on the API tab of any universe, for example: https://ggseg.r-universe.dev/api

{{< figureforgallery src="screenshot.png" alt="Screenshot of r-universe API explorer tab." >}}


## How to use snapshots

A CRAN-like R package repository is essentially a static directory of package files and indexes, with a specific naming structure. R-universe automatically builds and updates all these files based on a registry of packages and upstream git repositories. But once everything is generated, you could simply copy the entire folder elsewhere, and have a working CRAN-like package repository on that URL!

For example, you could create a github-action which downloads a snapshot and saves it on your github pages. A minimal example of such an action here: https://github.com/jeroen/backup. Note how the action that updates the mirror is vary fast; downloading and extracting te snapshot from r-universe only takes a few seconds. So this is easily something that could be done on a regular basis.

You can also install packages in R directly from a local snapshot by prefixing the path with `file://` in that you pass to `install.packages` (on Windows we need to normalize the path to look more unixy):

```r
# Download and extract the snapshot
curl::curl_download("https://jeroen.r-universe.dev/api/snapshot/zip?binaries=4.3", "snapshot.zip")
snapshot <- file.path(tempdir(), 'jeroen')
unzip("snapshot.zip", exdir = snapshot)

# Install packages from the local repository
prefix <- ifelse (.Platform$OS.type == "windows", "file:///", "file://")
repos <- paste0(prefix, normalizePath(snapshot, "/"))
install.packages(c("V8", "mongolite"), repos = repos)
```

## Towards 'validated' stable R packages repositories

Snapshots can be useful for several purposes, e.g for archiving, or to mirror an R package repository within a corporate intranet. But there is one important use case we want to highlight:

One gap in the R ecosystem [has always been](https://journal.r-project.org/archive/2013-1/ooms.pdf) the lack of staged, stable package repositories. Packages on CRAN and R-universe and other networks[^1] get constantly updated, pushing breaking changes directly to end-users. This is convenient for developers but not ideal for production and reproducibility.

By comparison, Linux distributions (like Ubuntu, RHEL) also consist of a large set of constantly changing software packages. However most Linux end-users do not get updates directly, because their system gets updates from a stable branch of the package repositories. Such a stable branch is like a snapshot of the entire package repository, which only gets small critical updates; never major changes. This way end-users are shielded from unexpected big changes until they decide to upgrade to a new release of the Linux distribution.

## Using the registry and snapshot tools for staging

By default, packages in r-universe get constantly updated from the default git branch. But if you want to release a validated set R packages, all tools are available to develop controlled R package repositories as well:

In your `packages.json` registry file where you list the packages and git sources to include, you can [specify which branch or tag to track](https://ropensci.org/blog/2021/06/22/setup-runiverse/#pro-tip-tracking-custom-branches-or-releases) for all packages in your universe. You can even set this value to a fixed commit. This way you can control the exact version of each R package is included in the cranlike repository, to make sure that version passes your criteria or review process.

Once your universe has built all the packages and versions that you need (say for a given paper or application), you can use the snapshot API to create a release of your cranlike repository. By hosting or sharing this snapshot, you can provide access to a cranlike package repository that has exactly the R packages and versions that you validated.



[^1]: One notable exception is bioconductor, which does have stable releases of the entire bioconductor package network.
