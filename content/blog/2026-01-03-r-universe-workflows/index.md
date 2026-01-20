---
slug: "r-universe-workflows"
title: Testing the R-universe build workflow from your own GitHub repository
author:
  - Jeroen Ooms
date: 2026-01-03
tags:
  - r-universe
  - infrastructure
description: "We refactored the R-universe CI workflows to make it possible to run the exact same workflow from your own GitHub repository."
params: 
  doi: ""
---

We refactored the R-universe CI workflows to make it possible to run the exact same workflow from your own GitHub repository. This allows you to test or debug the build and check process on your R package, exactly as it will happen on R-universe, but without actually deploying to https://r-universe.dev.

The instructions on [r-universe-org/workflows](https://github.com/r-universe-org/workflows) explain how it works: simply create a file `/.github/workflows/r-universe-test.yml` in your R package git repo with the following config:

```yaml
name: Test R-universe

on:
  push:
  pull_request:

jobs:
  build:
    name: R-universe testing
    uses: r-universe-org/workflows/.github/workflows/build.yml@v3
    with:
      universe: ${{ github.repository_owner }}
```

That is everything. The workflow will use the fully automated R-universe setup to build and check the package on a range of R versions on Linux, Windows, and MacOS configurations very similar to CRAN.

It is possible to use this workflow in your R package for pushes and/or pull requests alongside those from [r-lib/actions](https://github.com/r-lib/actions). Both will check your R package, but note that the purpose is very different: workflows from [r-lib/actions](https://github.com/r-lib/actions) are highly configurable and can test R packages using countless options and environments. The R-universe workflow on the other hand is, just like CRAN, not customizable at all: it uses the exact setup and process as it happens on R-universe, nothing else.

The ability to test-run the build workflow has been recurring feature request, and I hope that it will indeed help package maintainers with debugging problems. I also hope the refactoring might make it a little bit easier to understand the R-universe build process, and enable the community to hack on the workflows and actions to contribute improvements.
