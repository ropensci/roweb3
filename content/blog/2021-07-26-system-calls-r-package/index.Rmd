---
title: How to Use System Commands in your R Package
author:
  - Maëlle Salmon
  - Jeroen Ooms
date: '2021-07-26'
slug: system-calls-R-package
categories: []
tags:
  - processx
  - sys
description: Reviews of way (not) to call the system from your R package.
output:
  html_document:
    keep_md: yes
---

Have you ever found a non-R tool that's perfect for getting your job done, and decided to somehow wrap it into an R script or package?
E.g. some sort of scientific software, a command-line interface (CLI), Python module or JS library?
In this post, we shall review best practice for such wrappers.
In particular, we shall compare the base R functions `system()` and `system2()`, the sys package and the processx package.

## Using the tool without calling the system

Before jumping to find ways to control that needed tool with system commands, you might try and find ways to not have to do that.

* Maybe there's a C or C++ library offering similar features to the CLI, like ImageMagick++, wrapped in the [magick R package](https://docs.ropensci.org/magick/) does for [ImageMagick](https://imagemagick.org/index.php); or like [libtiff wrapped in the ijtiff R package](/blog/2018/04/12/ijtiff/)? To get started with wrapping C libraries, check out [Davis Vaughan's blog post](https://blog.davisvaughan.com/2019/03/02/now-you-c-me/). For C++ dive into either [Rcpp](https://github.com/RcppCore/Rcpp) or the more recent [cpp11](https://cpp11.r-lib.org/articles/cpp11.html) (see [a vignette of cpp11](https://cpp11.r-lib.org/articles/motivations.html) for the motivations of cpp11 in particular compared to Rcpp).
* In the case of a Python module, you can use the [reticulate package](https://rstudio.github.io/reticulate/) for interacting with Python.
* In the case of a JS library, you can use the [V8 package](https://github.com/jeroen/v8).

You could also decide not to wrap the cool tool you found! Either you found a ready-to-use R solution or you decide to _port_ i.e. _translate_ the tool to R.
This is obviously quite ambitious depending on the size and scope of the ported tool.
The [vcr R package](https://docs.ropensci.org/vcr/) is a port of the [Ruby gem vcr](https://github.com/vcr/vcr); there is a package called [NetlogoR that is a port of NetLogo written entirely in R](https://onlinelibrary.wiley.com/doi/full/10.1111/ecog.04516).

Now, what if you actually need to write system commands...

## system() and system2()

use of system https://github.com/ropensci/nlrx/blob/caecf41cc47275bd5d02d3e19e205883554edae5/R/util_runnl.R#L174

the base R functions are not interruptible.

downsides https://twitter.com/coolbutuseless/status/1248856314010308611

What does sanitizing mean, examples.

antiword good example of wrapper as it's so small https://github.com/ropensci/antiword/blob/master/R/antiword.R yet useful (and all readers should know about Word)

## sys vs processx

https://github.com/jeroen/sys "Drop-in replacements for the base system2() function with fine control and consistent behavior across platforms. Supports clean interruption, timeout, background tasks, and streaming STDIN / STDOUT / STDERR over binary or text connections. Arguments on Windows automatically get encoded and quoted to work on different locales."

https://github.com/r-lib/processx "Tools to run system processes in the background. It can check if a background process is running; wait on a background process to finish; get the exit status of finished processes; kill background processes. It can read the standard output and error of the processes, using non-blocking connections. 'processx' can poll a process for standard output or error, with a timeout. It can also poll several processes at once." used in e.g. https://github.com/r-lib/pingr#readme and https://github.com/r-lib/hugodown/blob/97ea0cdd63152a58987ae9e2639bcc4db4e5a83a/R/hugo.R#L34

"processx really shines when it comes to controlling background processes. " https://www.tidyverse.org/blog/2018/09/processx-3.2.0/#advanced-usage-background-processes

## Declaring system dependencies in a package

If you decide to package up your R wrapper, you'll need to declare the system dependencies

* in [DESCRIPTION](https://r-pkgs.org/description.html#other-dependencies);
* in the documentation of your package, to indicate to human users how to install it. (you should also add some informative error in a configure script if your package has one for e.g. a C++ library).

Non human users such as continuous integration could install the system dependencies thanks to [R-hub sysreqs](https://github.com/r-hub/sysreqsdb/#sysreqs) or to [RStudio Package Manager](https://remotes.r-lib.org/reference/system_requirements.html); or you might need to add more specific code yourself in the CI configuration file.

Note that depending on the system dependency, maybe your package can even have a function that installs it like [hugodown](https://github.com/r-lib/hugodown) and [blogdown](https://github.com/rstudio/blogdown) do for Hugo.

## Conclusion

In this post we have summarized resources and best practice for wrapping non R tools in R.
MORE SUMMARIZING.

In [rOpenSci Software Peer-Review](/software-review/), at the moment of writing, Scientific Software Wrappers is a category [in scope](https://devguide.ropensci.org/policies.html#package-categories).

>  Packages that wrap non-R utility programs used for scientific research. These programs must be specific to research fields, not general computing utilities. Wrappers must be non-trivial, in that there must be significant added value above simple system() call or bindings, whether in parsing inputs and outputs, data handling, etc. Improved installation process, or extension of compatibility to more platforms, may constitute added value if installation is complex. This does not include wrappers of other R packages or C/C++ libraries that can be included in R packages. We strongly encourage wrapping open-source and open-licensed utilities - exceptions will be evaluated case-by-case, considering whether open-source options exist.

Have _you_ ever wrapped non R tools in R? Feel free to share in the comments below.
