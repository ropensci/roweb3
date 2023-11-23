---
slug: runiverse-wasm
title: 'R-universe now builds WASM binaries for all R packages'
date: '2023-11-17'
author: Jeroen Ooms
photogallery: true
featured: true
description: 'R-universe now builds WebAssembly binaries for all R packages for use in WebR applications such as shinylive.'
tags:
  - tech notes
  - r-universe
  - webr
  - wasm
---


## Abstract / TLDR

[R-universe](https://r-universe.dev) now builds WASM binaries of all R packages for use in WebR applications (such as [shinylive](https://shinylive.io/r)). For example to test the dev version of dplyr, you can open the [WebR demo](https://webr.r-wasm.org/latest/) page and run:

```r
install.packages('dplyr',
  repos = c('https://tidyverse.r-universe.dev', 'https://repo.r-wasm.org'))
```

As explained below, not all R packages are supported yet; some packages need some fixes to work in WebAssembly, but coverage is rapidly growing. The r-universe dashboards shows which packages are available and link to the build logs to help you debug issues.

__Update:__ Have a look at this [observable notebook](https://observablehq.com/d/6936259b898a25ce) for more ideas on how to use WebR on websites.

{{< figureforgallery src="screenshot.png" alt="Screenshot of rOpenSci dashboard with WebAssembly icons highlighted" >}}



## What is WebAssembly

One of the most exciting recent developments in the R ecosystem is the [WebR](https://docs.r-wasm.org/webr/latest/) project by George Stagg from Posit, to port R to WebAssembly (for short: WASM).

Without going into much technical detail, [WebAssembly](https://webassembly.org/) is a new portable binary-code format that makes it possible to safely run compiled code (from e.g. C/C++/Fortran/Rust) within a website. All major browsers support WASM, and the format is now also getting adopted in other environments. For example cloudflare lets you [run wasm binaries in the cdn workers](https://developers.cloudflare.com/workers/runtime-apis/webassembly/), and the R package [V8](https://jeroen.r-universe.dev/V8) provides a very basic experimental WASM engine in R.

WebAssembly is becoming a ubiquitous binary execution format, that enables us to ship executable code that can run on any platform. Sounds familiar? Indeed, however there are two major differences with Java. Unlike Java, no special language is needed; we just compile existing C/C++/Rust code into WebAssembly. And second, WebAssembly is an open standard designed to be natively supported in browsers, whereas Java required installation of a terrible plugin to run "web applets". So this time it actually works well.


## Porting R to WebAssembly

WebR is a port of a ([slightly modified](https://github.com/r-wasm/webr/tree/main/patches/R-4.3.0)) version of R to WebAssembly. Before continuing, we should appreciate the mountains of work that were invested in this, mainly by George Stagg.

The R codebase consists of a lot of C and Fortran code. I said above that we can just compile C/Fortran into WASM, but this is only partially true: because WASM has to run safely within any website, it is a fairly restricted platform. A lot of common operations available on most systems are disabled in WASM. For example, we cannot open network sockets, invoke shell commands, or access the local filesystem. Hence porting software to WASM involves adapting the code to work with and around these limitations.

In this [video presentation](https://www.youtube.com/watch?v=Mpq9a6yMl_w) George briefly discusses some of the pieces that are used to make R run inside WebAssembly, such as the virtual filesystem and off-screen canvas. Also have a look at [these slides](https://georgestagg.github.io/shiny-without-a-server-2023/) about shinylive, which is an experimental version of shiny based on WebR that runs entirely in WebAssembly without the need for any server.


## Building all the R packages

Now that we have a working version of R in WebAssembly, the next challenge is to build the 23000+ contributed R packages for WebAssembly.

One thing that is perhaps not immediately obvious, is that it won't be possible to install packages directly *from source* the way we typically do in R, because the toolchains needed to compile WASM themselves to not run under WASM. To make it possible to use R packages in WebR, they first have to be compiled on another platform using e.g. [emscripten](https://emscripten.org) and/or [rust](https://www.rust-lang.org/) toolchains. The resulting *binary package* can be served in a package repository from where WebR can download and install it.

As you can imagine, doing this manually is quite an exercise. But with some help from George we were able to create a docker container that has all the tooling to build R packages for WebAssembly, and plugged this into the r-universe build workflow. So now r-universe automatically builds WebR compatible binaries for each update in any of the packages we are tracking. This makes it easy for users and maintainers to try the package in WebR or test changes.

The packages can be installed simply using as described above `install.packages`. Each package homepage on r-universe also contains a direct link to the wasm binary if available:


{{< figureforgallery src="packagepage.png" alt="Screenshot of dplyr package homepage on r-universe" >}}

## Available System libraries

The main reason why some popular R packages are not yet available for WebAssembly is because they depend on external system libraries, such as `libcurl` or `gdal`. On most platforms such libraries can be installed by a package manager like `apt` or `brew`, however no good package manager for WebAssembly currently exists, so we need to port and build these libraries manually, which again is a lot of work.

The docker build image currently includes about 25 external C/C++ libraries which are built from the [r-wasm recipes](https://github.com/r-wasm/webr/tree/main/libs/recipes) scripts. This is a pretty arbitrary selection, mainly consisting of libraries used by the R spatial packages (gdal + dependencies) and some libraries related to graphics used to build base R itself.

In order to expand the coverage of R packages available in WebR, we would need to expand this list. If your R package requires a system library that is currently unavailable, you could try sending a PR to the above recipes (but please make sure that you first test it by building the docker image locally). Hopefully at some point a proper emscripten package manager will appear that provides these libraries for us.


## WebAssembly Coverage

Currently R-universe is tracking 41086 packages of which 38677 have a WASM binary. However note that these are not all unique packages: for CRAN packages we both track the latest CRAN release, as well as upstream Git repo (aka devel version) if known.

There is another important caveat: many R packages can themselves be compiled to WebAssembly, but they depend on one or more other R packages that currently are not available, and therefore cannot be used yet. This is actually a significant share: many of the packages mentioned above that require system libraries are actually important packages used by many others. So if that system library is not available, it makes all the dependents unavailable as well.

The webR project maintains a [shiny app to monitor WASM status for CRAN packages](https://repo.r-wasm.org/) (the app is slow to load, be patient). So here we can see that currently 19356 out of 20040 CRAN packages can be built for WebAssembly, but only 10483 are are ready to use in the sense that all their dependencies are available as well.
