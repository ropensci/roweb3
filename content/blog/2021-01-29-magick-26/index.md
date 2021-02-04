---
slug: magick-26
title: 'Behind the magick: updates to imagemagick and beyond'
date: '2021-01-29'
author: Jeroen Ooms
tags:
  - magick
  - images
  - packages
  - tech notes
  - r-universe
summary: Shorter summary hey
---

It has been [a while](https://ropensci.org/technotes/2019/09/27/ropensci-docs/) since we posted an update about [magick](https://docs.ropensci.org/magick/articles/intro.html), but behind the scenes we are constantly tweaking and improving this package, which has become a very mature and complete toolkit for image processing in R.

Over the past year, we did 6 CRAN releases, containing many small features and fixes, but perhaps more importantly, the package is getting betting better due to updates of the underlying ImageMagick library. 

As mentioned in the [NEWS](https://cran.r-project.org/web/packages/magick/NEWS), magick 2.6.0 gains support for "raw" and "heif" delegates on Windows and MacOS. The raw delegate is based on [libraw](https://www.libraw.org/) which allows reading RAW files obtained from digital photo cameras. [Heif](https://github.com/strukturag/libheif) is a new library that provides a set of formats for high quality (Ultra HD+) images in HEVC and AV1 format. Support for these formats was [requested](https://github.com/ropensci/magick/issues/292) by users of the R magick package. 

R users on Windows / MacOS don't need to do anything special. If you install the latest version of magick, you will be able to read these formats. This post briefly explains how this works.

## Magick and ImageMagick

The R magick package is a wrapper around the [C++](https://www.imagemagick.org/Magick++/STL.html) interface from the famous [ImageMagick](https://en.wikipedia.org/wiki/ImageMagick) software, which is one of the most widely used open source programs, and over 30 years old! 

ImageMagick implements a wide range of image manipulation algorithms, but it also depends on many other C/C++ libraries for importing and exporting images in one of the countless image formats that exist these days. ImageMagick calls these 3rd party "delegates". And all of these libraries are constantly being developed, so the stack is a small ecosystem in itself.

You might have noticed that when you load the magick package in R, it shows something like this:

```r
> library(magick)
Linking to ImageMagick 6.9.11.57
Enabled features: cairo, fontconfig, freetype, heic, lcms, pango, raw, rsvg, webp
Disabled features: fftw, ghostscript, x11
```

This shows which version of ImageMagick the R package has been compiled against, and which of the delegates are enabled for your system, i.e. which image formats you will be able to read and which other features are supported. But how do these get there?

## System libraries on Linux

On Linux systems, ImageMagick is provided by the system package manager, e.g. `apt` or `yum`. The system package manager provides the imagemagick binaries, and also automatically installs all other system libraries that ImageMagick depends on for the delegates.

In order to install the magick package on Linux, users have to first install the ImageMagick C++ library by running a command like `apt-get install libmagick++-dev`. This will install the ImageMagick library, including all (recursive) dependencies. As you can see, ImageMagick has quite a few dependencies!

![Imgur](https://imgur.com/FCadYMu.png)

After `libmagick++-dev` has been installed, we can run `install.packages("magick")` in R and it will find and use the version of ImageMagick on your system. Hence on Linux, the maintainers of your distribution have to build and update ImageMagick, and decide which delegates to enable.

## System libraries on Windows / MacOS

Windows and MacOS do not have system package managers, hence we have to provide our own binaries for imagemagick and dependencies. We statically link these during compilation, such that the resulting binary R package that Windows / MacOS users download from CRAN is entirely self contained, and does not require installing anything else other than the R package itself.

Building and updating these libraries is quite a bit of work. System libraries have to be built with the same toolchains as used to compile the R package. And because R 4.0 switched to new toolchains, we currently have 5 different sets of binaries for each system library:

 - Windows GCC-8.3.0 for R 4.x: https://github.com/r-windows/rtools-packages
 - Windows GCC-4.9.3 for R 3.x: https://github.com/r-windows/rtools-backports
 - MacOS High-Sierra for R 4.x: https://dl.bintray.com/autobrew/high_sierra/
 - MacOS El-Capitain for R 3.x: https://dl.bintray.com/autobrew/el_capitan/
 - MacOS Big-Sur AMD64 for the new M1 CPU: https://dl.bintray.com/autobrew/arm64_big_sur/

This may look pretty complicated, but the end result is that users on MacOS and Windows can simply use `install.packages('magick')` and then magick (or any other R package) will work out of the box.

## Building and updating

If you want to learn more, or want to suggest an update or change to a system library used by R packages, the best place to get started is the [rtools-packages](https://github.com/r-windows/rtools-packages) repository. This is where we maintain the official system packages for R 4.0 on Windows. The repository has a bit of documentation on how to build these libraries locally, and CI to automatically build pull requests.
