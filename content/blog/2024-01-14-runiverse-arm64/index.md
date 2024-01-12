---
slug: runiverse-arm64
title: 'R-universe now builds MacOS ARM64 binaries for used on Apple Silicon (aka M1/M2/M3) systems'
date: '2024-01-14'
author: Jeroen Ooms
photogallery: true
featured: true
description: 'R-universe now builds MacOS ARM64 binaries for used on Apple Silicon (aka M1/M2/M3) systems.'
tags:
  - tech notes
  - r-universe
  - arm64
  - macos
---


## Abstract / TLDR

[R-universe](https://r-universe.dev) now provides MacOS arm64 binaries for all R packages. This means that MacOS users on Apple Silicon hardware (aka M1/M2/M3) can install the very latest builds of any R package without the need for any compliation:

```r
install.packages('arrow',
  repos = c('https://apache.r-universe.dev', 'https://cloud.r-project.org'))
```

The system is based on cross-compiling from intel to arm64, though this should not make much of a difference for package authors and users. Packages with C/C++/Fortran/Rust code are all supported.

## Why cross compiling

Because GitHub Actions currently does not offer arm64 runners for OSS projects, the arm64 binaries are cross-compiled on the MacOS intel runners. The cross build environment is set up to mimic a native arm64 machine, such that most R packages do not need any modification to work. We found only a small number of packages with a buggy configure script that may need a fix to allow cross-compilation.

The r-universe workflow only builds arm64 binaries when needed, i.e. for packages that include compiled code (C/C++/Fortran/Rust). Packages that do not include any compiled code are portable by design, so for these packages the same binaries built for MacOS on intel are served both in the x86_64 and arm64 cranlike repositories, without the need for a cross compile step.

Just like CRAN, the r-universe package homepage shows a link to the `r-4.3-arm64` binaries. Packages without compiled code only have a `r-4.3-any` binary which is served for either architecture.

{{< figureforgallery src="example-arrow.png" alt="Screenshot of r-universe apache arrow homepage" >}}

To have a look at the build logs, click on the little apple icon next to these links. Alternatively, you can use the `/buildlog` shortlink, for example `https://apache.r-universe.dev/arrow/buildlog` will take you to the latest arrow builds.

On this page you can find the arm64 build log specifically by expanding the `r-release-macos` job and then under the section "Cross Compile for MacOS ARM64". If this section is disabled, it means it was skipped because this package does not have compiled code, and does not need cross compilation.

{{< figureforgallery src="macos-cross.png" alt="Screenshot of GitHub Actions output" >}}

## Some technical details

For those interested how the cross compilation works, here are the main ingredients:

 - The standard MacOS Xcode toolchains are used to cross compile C/C++ code by passing the `-arch arm64` flag to clang and clang++.
 - The [universal gfortran 12.2](https://mac.r-project.org/tools/) version from CRAN is used to cross compile fortran code, also by passing `gfortran -arch arm64` (big thanks to Simon Urbanek).
 - The same collection of [system libs](https://mac.r-project.org/bin/darwin20/arm64/) used by CRAN is preinstalled in the build environment.
 - R packages with a configure script are built with `--configure-args="--build=x86_64-apple-darwin20 --host=aarch64-apple-darwin20"`. These flags are [needed by autoconf scripts](https://www.gnu.org/software/autoconf/manual/autoconf-2.68/html_node/Specifying-Target-Triplets.html), but other packages can use them as well.
 - The r-universe [macos-cross workflow](https://github.com/r-universe-org/build-and-check/blob/v1/macos-cross/action.yml) overrides some more files and variables to target arm64.
 - We put some shell [shims](https://github.com/r-universe-org/prepare-macos/tree/master/shims) on the PATH to trick packages that shell out to `uname` or `arch` to determine the architectrue.
 - A clever [cargo shim](https://github.com/r-universe-org/prepare-macos/blob/master/shims/cargo.sh) is used to override the default cargo build target to `aarch64-apple-darwin` and copy outputs to the expected directory after the build.

With this setup, almost any R package can be built in the cross environment exactly the same way they do on actual arm64 hardware. However if you find your package does not work and you would like some help fixing it, please feel free to [open an issue](https://github.com/r-universe-org/help/issues).
