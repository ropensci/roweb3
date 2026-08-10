---
slug: r-universe-winarm
title: "Windows ARM64 comes to R-universe"
author:
  - Jeroen Ooms
date: 2026-08-06
tags:
  - r-universe
  - tech notes
  - windows
  - arm64
params:
  doi: "10.59350/mk9p7-erv80"
---

Attentive package authors already noticed something new in their r-universe page over the past few weeks: R-universe has quietly started building and checking packages for Windows ARM64.

 - https://ropensci.r-universe.dev/pdftools#checktable
 - https://cran.r-universe.dev/dplyr#checktable
 - https://bioc-release.r-universe.dev/S4Vectors#checktable

R-universe has supported ARM64 on Linux and macOS for some time already, but not Windows. With this addition, packages are now built and checked on both **x86_64** and **ARM64** across all major operating systems, making the R ecosystem fully ARM ready.

## Porting the R ecosystem to ARM Windows

The R-universe service is part of [a broader community effort](https://contributor.r-project.org/windows-arm64/) to bring the R ecosystem to Windows ARM64. This project builds on the work from Tomáš Kalibera, whose efforts laid much of the [groundwork](https://blog.r-project.org/2024/04/23/r-on-64-bit-arm-windows/index.html) for modernizing R on Windows to support UCRT and ARM.

Among other things, the project provides daily builds of [base R installers](https://github.com/r-devel/windows-arm64/releases#release-devel) for Windows ARM64 (R-release, R-patched, and R-devel), built on GitHub Actions with the [rtools45 toolchain](https://cran.r-project.org/bin/windows/Rtools/rtools45/news.html). Because CRAN repositories do not have Windows ARM64 binaries yet, these installers are patched to install binary packages from R-universe instead, so `install.packages()` just works. There is nothing users need to configure.


### What we had to fix along the way

Rolling this out on R-universe turned out to be a great way to find out which parts of the ecosystem were not quite ready for Windows on ARM. Some things that needed patching:

- The base R installers themselves, to pick up ARM64 binaries from the right repository path.
- External software such as [JAGS](https://github.com/r-windows/JAGS/releases/tag/installers), which needed some changes to compile `rjags` and `runjags` for arm.
- Rust integration: many R packages using Rust were hard-coding the `x86_64-pc-windows-gnu` target. The extendr project shipped a fix in `extendr-api` 0.8.2, and rustup now supports the `aarch64-pc-windows-gnullvm` target we need.
- Big compiled packages like arrow, plus a few dozen other packages with issues such as unconditionally passing `-msse` compiler flags (ARM chips do not do SSE) or autoconf scripts misdetecting the toolchain.

For broken CRAN and Bioconductor packages we maintain a set of [install-time patches](https://github.com/r-devel/windows-arm64/tree/main/patches), and we are in the process of upstreaming these fixes to the package maintainers. With these patches in place, the entire R ecosystem now builds on Windows ARM64. 🎉


### Testing in the real world

The fact that everything builds does not yet guarantee that everything behaves exactly as expected. We would love help from users to find any loose ends. Hence if you are running Windows on ARM hardware, or you are using a Windows VM on MacOS, we would love for you to take this for a spin. 

For package developers there several ways to test packages with compiled code on Windows ARM64. As mentioned, if your package is already on CRAN or BioConductor, you can find binaries and check results on R-universe at `https://cran.r-universe.dev/{pkg}` or `https://bioc.r-universe.dev/{pkg}`.

In addition, GitHub Actions provides free `windows-11-arm` runners, and the standard workflows from `r-lib/actions` support them out of the box.

## Helping the ecosystem evolve

This project is exactly one of the reasons for building the R-universe system. Besides providing an open space for developers to publish new software, it also serves as a versatile infrastructure that lets us experiment with new tooling and platforms to help move the ecosystem forward as a whole. Having an automated platform that continuously builds thousands of packages made it possible to find those missing pieces, fix them, and iterate quickly.

By identifying and fixing the main hurdles now, we want to help package authors address the problems before they hit end-users, and pave the way for a smooth introduction of Windows ARM64 support on mainstream repositories such as CRAN and Posit Package Manager when the time is ready.
