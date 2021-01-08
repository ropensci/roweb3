---
slug: installing-v8
title: Installing V8 is now even easier
date: '2020-11-12'
author: Jeroen Ooms
tags:
  - V8
  - Linux
---

Google's amazing [V8 JavaScript/WASM engine](https://v8.dev/) is probably one of the most sophisticated open-source software libraries available today. It is used to power the computation in Google Chrome, NodeJS, and also [CloudFlare Workers](https://developers.cloudflare.com/workers/learning/how-workers-works), which make it possible to run code for your website inside the CDN edges.

The R package V8 exposes this same engine in R, and has been on CRAN since 2014. It is used by many R packages to wrap JavaScript libraries, such as [geojsonio](https://docs.ropensci.org/geojsonio/), [jsonld](https://docs.ropensci.org/jsonld/), [DiagrammeR](https://github.com/rich-iannone/DiagrammeRsvg), or [almanac](https://davisvaughan.github.io/almanac/). Recently we have seen an increase in usage because the latest version of [rstan](https://mc-stan.org/rstan/) now uses V8 for their parser. 

However some rstan users complained that they found V8 difficult to install on Linux servers. This release tries to make that even easier.

## Installing V8 on Windows / MacOS

Installing V8 from CRAN on Windows and MacOS works out of the box:

```r
install.packages("V8")
```

The V8 engine is statically linked with the R package, so there are no external dependencies. Everything just works.

## Installing V8 on Linux, the usual way

Because R packages on Linux are always installed from source, you need to install the V8 C++ engine separately. This is easy to do, for example on Ubuntu/Debian you use:

```sh
# Debian / Ubuntu
sudo apt-get install libv8-dev
```

And on Fedora/CentOS you would need:

```sh
# Fedora / CentOS
sudo yum install v8-devel
```

Once the V8 engine is installed, you can install the R package using the regular `install.packges("V8")` and everything will work as usual.

## Installing V8 on Linux, the alternative way

For most users, the instructions above are all you need. However some Linux users complained that they had difficulty getting V8, for example because they do not have sudo permissions, or because they are on a Linux distribution that does not provide the V8 engine (e.g. Gentoo Linux or OpenSuse).

Therefore we added an alternative installation method for Linux to automatically download a static build of libv8 during package installation. Simply set an env variable `DOWNLOAD_STATIC_LIBV8` when installing the package, for example:

```r
# For Linux: download libv8 during installation
Sys.setenv(DOWNLOAD_STATIC_LIBV8=1)
install.packages("V8")
```

This way, you can install the V8 package on any x64 Linux system, without separate system requirements. 

Another benefit over the other method, is that this gives you a more recent version of the V8 engine than what ships with some Linux distributions. We found that it works so well that we decided to enable this by default on Travis and Github-Actions. But for local installations, you need to opt-in via the environment variable above.

I hope that this takes away the last bit of friction, to take advantage of the amazing features of V8 in R, and that it is safe to depend on this package. At least it has made some rstan users [very happy](https://github.com/stan-dev/rstan/issues/831#issuecomment-717614929).
