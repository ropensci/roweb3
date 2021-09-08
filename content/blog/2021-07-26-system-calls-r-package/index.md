---
title: How to Use System Commands in your R Script or Package
author:
  - Maëlle Salmon
  - Jeroen Ooms
date: '2021-07-26'
slug: system-calls-R-package
categories: []
tags:
  - tech notes
  - processx
  - sys
description: Reviews of way (not) to call the system from your R package.
output:
  html_document:
    keep_md: yes
---

Have you ever found a command-line tool that's perfect for getting your job done, and wanted to use it from an R script or package?
E.g. some sort of scientific software providing a specific functionality made available though a command-line interface (CLI)?

In this post, we shall review some options for writing such CLI wrappers in R.
In particular, we compare the base R functions `system()` and `system2()`, the [sys](https://cran.r-project.org/web/packages/sys/) package and the [processx](https://cran.r-project.org/web/packages/processx/) package.

But we start with some words of caution about the limitations of this approach, and explaining when, and how, to _not_ shell out, and try to find an alternative interface.

## Downsides of system commands

When possible, it is usually better to a C, C++ (or even JS, Python...) interface to interact with external software, rather than calling a command-line interface (CLI).
Interfacing to external software via a foreign language API is usually more robust, performant and flexible, than via a CLI.

The core issue is that each system command is started in a new process.
Different processes don't share memory, hence the only interaction via R and the shell program is via free text streams (pipes) between R and the child process.
This makes it complicated to exchange data, handle exceptions, and control the program execution from R. Let's explore this in more detail.

### Data input and output

A C/C++ library has formal functions with one or more arguments and a return value, each consisting of typed data structures. You can call such a C/C++ API from an R package, passing data from R objects into the library and back, in a very similar as when calling your own functions from the R package itself.

On the other hand, the only input to a shell command is a single string with the command line arguments.
Many CLI programs need to read input data from file(s), in some particular format, which can lead to performance overhead or read/write errors.

When the user has to provide the command arguments (such as filenames) which are passed to the program,
you have to consider these names may contain spaces or non-ascii characters.
This can again lead to bugs when they get pasted into the eventual shell command that is invoked by R.

### Progress and exception handling

The output of a command line program only consists of a status code (indicating if the execution was succcessful or not) and two text streams which the program prints to the screen. When invoked from R, we can capture these text streams, which results in two large strings, in addition to the status code.

Hence, there is no return object, or exception handling if a problem appears in program that we called.
This means that if we wrap a command line program in R and an error appears, the only thing we can do is to show the output text from the program to the user; we cannot programatically handle errors.

Because we have no shared memory, there is also no good way for R to inspect or control the command line program while it is running. From the R point of view, the external program is just a black box.

### Foreign language interfaces

If the software you need provides an alternative interface, or you there is a similar program that does, this might provide a better basis than a CLI tool.

The most robust interface way to interface with external libraries from R is via C or C++. Because R itself is written in C, calling a C or C++ library takes almost zero overhead. To get started with wrapping C libraries, check out [Davis Vaughan's blog post](https://blog.davisvaughan.com/2019/03/02/now-you-c-me/). For C++ dive into either [Rcpp](https://adv-r.hadley.nz/rcpp.html) or the more recent [cpp11](https://cpp11.r-lib.org/articles/cpp11.html).

Examples of rOpenSci packages interfacing to C/C++ interfaces include [magick](https://docs.ropensci.org/magick) (imagemagick), [pdftools](https://docs.ropensci.org/pdftools) (poppler), [ijtiff](https://docs.ropensci.org/ijtiff) (libtiff), [gert](https://docs.ropensci.org/gert) (libgit2), and many more. The "system dependencies" column in the [r-universe dashboard](https://ropensci.r-universe.dev/) shows the C/C++ libraries that R package are interfacing with.

Some software does not provide a C/C++ API but can be called via Python or JavaScript. In this case, you could use [reticulate](https://rstudio.github.io/reticulate/) or [V8](https://cran.r-project.org/web/packages/V8/vignettes/v8_intro.html) to create an R wrapper. Running external software through Python or JavaScript is not quite as performant as C/C++, but reticulate and V8 provide pretty a pretty decent foundations to exchange data and exceptions, so these are usually more robust than a CLI wapper.

## Tools for calling a CLI from R

We review 3 increasingly advanced ways to call a CLI program (a.k.a "shell out") from R:

* `system()` or `system2()` functions in base R
* the [sys](https://cran.r-project.org/web/packages/sys/index.html) package by Jeroen Ooms
* the [processx](https://cran.r-project.org/web/packages/processx/index.html) package by Gábor Csárdi

Depending on your needs you may prefer one or another solution.




(until here by jeroen)

---



### Control and progress

As written earlier calling a CLI from R means [control and insights over the program while it is running](#progress-and-control).
With `system()` or `system2()` all we can do is invoke the program and wait for it to complete, and hope it does not get stuck. 
The only option to get the output from the program is to let it write to a file, and read that file after the program has completed.

With `sys` or `processx` we get a little more control, as we can process the text output in R, directly as it gets printed by the program. 
This can be useful to see if the program is still running, or to implement real time processing of a text stream. 
With processx we can do some more advanced things by invoking the command as a background process, and then polling/pushing stream from/to it.

### STD blabla

How one gets more structured STDOUT/STDERR/STDIN.

### Security

https://twitter.com/GaborCsardi/status/1248893871758757893

What does sanitizing mean, examples.

Maybe mention https://xkcd.com/327/
## sys vs processx

https://github.com/jeroen/sys "Drop-in replacements for the base system2() function with fine control and consistent behavior across platforms. Supports clean interruption, timeout, background tasks, and streaming STDIN / STDOUT / STDERR over binary or text connections. Arguments on Windows automatically get encoded and quoted to work on different locales."

https://github.com/r-lib/processx "Tools to run system processes in the background. It can check if a background process is running; wait on a background process to finish; get the exit status of finished processes; kill background processes. It can read the standard output and error of the processes, using non-blocking connections. 'processx' can poll a process for standard output or error, with a timeout. It can also poll several processes at once." used in e.g. https://github.com/r-lib/pingr#readme and https://github.com/r-lib/hugodown/blob/97ea0cdd63152a58987ae9e2639bcc4db4e5a83a/R/hugo.R#L34

"processx really shines when it comes to controlling background processes. " https://www.tidyverse.org/blog/2018/09/processx-3.2.0/#advanced-usage-background-processes

## Declaring system dependencies in a package

If you decide to package up your R wrapper, you'll need to declare the system dependencies

* in [DESCRIPTION](https://r-pkgs.org/description.html#other-dependencies);
* in the documentation of your package, to indicate to human users how to install it. (you should also add some informative error in a configure script if your package has one for e.g. a C++ library).

Non human users such as continuous integration could install the system dependencies thanks to [R-hub sysreqs](https://github.com/r-hub/sysreqsdb/#sysreqs) or to [RStudio Package Manager](https://remotes.r-lib.org/reference/system_requirements.html); or you might need to add more specific code yourself in the continuous integration configuration file.

Note that depending on the system dependency, maybe your package can even have a function that installs it like [hugodown](https://github.com/r-lib/hugodown) and [blogdown](https://github.com/rstudio/blogdown) do for Hugo.

As often when developing R packages, a good tip is to look for examples of packages facing similar challenges to yours.
E.g. you could dive into the source of packages like magick or cld2.

## Conclusion

In this post we have summarized resources and best practice for wrapping non R tools in R.
MORE SUMMARIZING.

In [rOpenSci Software Peer-Review](/software-review/), at the moment of writing, Scientific Software Wrappers is a category [in scope](https://devguide.ropensci.org/policies.html#package-categories).

>  Packages that wrap non-R utility programs used for scientific research. These programs must be specific to research fields, not general computing utilities. Wrappers must be non-trivial, in that there must be significant added value above simple system() call or bindings, whether in parsing inputs and outputs, data handling, etc. Improved installation process, or extension of compatibility to more platforms, may constitute added value if installation is complex. This does not include wrappers of other R packages or C/C++ libraries that can be included in R packages. We strongly encourage wrapping open-source and open-licensed utilities - exceptions will be evaluated case-by-case, considering whether open-source options exist.

Have _you_ ever wrapped non R tools in R? Feel free to share in the comments below.
