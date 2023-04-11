---
slug: runiverse-registry-repo
title: 'New preferred repo name for r-universe registries'
date: '2023-02-07'
author: Jeroen Ooms
description: 'We have changed the preferred git repo name where you host your `packages.json` registry for r-universe.'
tags:
  - r-universe
  - tech notes
  - registry
  - packages
  - dashboard
---

## Running your own package registry

Tiny update for [r-universe](https://r-universe.dev) users whos run their own package registry: we have changed the preferred git repo name where you host your `packages.json` registry file.

Previously the git repository was simply called `universe`, i.e. the registry for [tiledb-inc.r-universe.dev](https://tiledb-inc.r-universe.dev) was in the GitHub repository `tiledb-inc/universe`. We now recommend to instead use the full lowercase name of your r-universe domain as the repo name, i.e [`tiledb-inc/tiledb-inc.r-universe.dev`](https://github.com/tiledb-inc/tiledb-inc.r-universe.dev).

The old name `universe` will keep working as well, so this should not break any existing registries, but we recommend renaming it.

## Why the change

Why the change? First of all, the old name `universe` was too generic, which made its purpose sometimes unclear for larger GitHub organizations.

But there was also a potential bug: if you would fork somebody `universe` repo in order to send them a PR, you would automatically have a git repo named `universe` under your own GitHub account, and unintentionally start a CRAN-like repo under your own name, but with their packages.

Hence the obvious solution was to use the same format as github-pages, where the name of the repo is simply the full domain name at which your universe is hosted.
