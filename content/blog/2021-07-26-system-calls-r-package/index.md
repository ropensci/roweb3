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
description: Way (not) to call the system from your R package.
output:
  html_document:
    keep_md: yes
---

Have you ever found a command-line tool that's perfect for getting your job done, and wanted to use it from an R script or package?
E.g. some sort of scientific software providing a specific functionality made available though a command-line interface (CLI)?

In this post, we shall show some options for writing such CLI wrappers in R.
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

The output of a command line program only consists of a exit code (indicating if the execution was successful or not) and two text streams which the program prints to the screen. When invoked from R, we can capture these text streams, which results in two large strings, in addition to the exit code.

Hence, there is no return object, or exception handling if a problem appears in program that we called.
This means that if we wrap a command line program in R and an error appears, the only thing we can do is to show the output text from the program to the user; we cannot programmatically handle errors.

Because we have no shared memory, there is also no good way for R to inspect or control the command line program while it is running. From the R point of view, the external program is just a black box.

### Foreign language interfaces

If the software you need provides an alternative interface, or you there is a similar program that does, this might provide a better basis than a CLI tool.

The most robust interface way to interface with external libraries from R is via C or C++. Because R itself is written in C, calling a C or C++ library takes almost zero overhead. To get started with wrapping C libraries, check out [Davis Vaughan's blog post](https://blog.davisvaughan.com/2019/03/02/now-you-c-me/). For C++ dive into either [Rcpp](https://adv-r.hadley.nz/rcpp.html) or the more recent [cpp11](https://cpp11.r-lib.org/articles/cpp11.html).

Examples of rOpenSci packages interfacing to C/C++ interfaces include [magick](https://docs.ropensci.org/magick) (imagemagick), [pdftools](https://docs.ropensci.org/pdftools) (poppler), [ijtiff](https://docs.ropensci.org/ijtiff) (libtiff), [gert](https://docs.ropensci.org/gert) (libgit2), and many more. The "system dependencies" column in the [r-universe dashboard](https://ropensci.r-universe.dev/) shows the C/C++ libraries that R package are interfacing with.

Some software does not provide a C/C++ API but can be called via Python or JavaScript. In this case, you could use [reticulate](https://rstudio.github.io/reticulate/) or [V8](https://cran.r-project.org/web/packages/V8/vignettes/v8_intro.html) to create an R wrapper. Running external software through Python or JavaScript is not quite as performant as C/C++, but reticulate and V8 provide pretty a pretty decent foundations to exchange data and exceptions, so these are usually more robust than a CLI wrapper.

## Several methods of calling a CLI program from R

We show 3 increasingly advanced ways to call a CLI program (a.k.a "shell out") from R:

* `system()` or `system2()` functions in base R
* the [sys](https://cran.r-project.org/web/packages/sys/index.html) package
* the [processx](https://cran.r-project.org/web/packages/processx/index.html) package

Depending on your needs you may prefer one or another solution.

### Base system/system2

Base R provides functions `system` and `system2`. The R [source code](https://github.com/wch/r-source/blob/c65ce1f39fa9b831490e384a567c3bcab7b81141/src/library/base/R/unix/system.unix.R#L19-L52) for these functions is pretty self-explanatory: all the arguments and options are combined into one big shell command, which is then passed to a local shell process (`sh` on unix or `cmd` on Windows).
For example, if you run a command:

```r
system2("whoami", stdout = TRUE)
## [1] "jeroen"
```

R will [convert this](https://github.com/wch/r-source/blob/c65ce1f39fa9b831490e384a567c3bcab7b81141/src/library/base/R/unix/system.unix.R#L80-L87) into the shell command that writes output to a temporary file and run that:

```
whoami > /tmp/RtmpnMXhzK/fileef2a84a02fb68
```

When the function has completed, R tries to read the file and return the text. But while the program is running we have no idea what is going on. This is fine for simple programs, but for executing more complex, long running commands, this provides very limited control over the progress and intermediate results of the process.

### The sys package

The [sys package](https://github.com/jeroen/sys#sys) is a small powerful package (mostly C code without dependencies) to run commands. The package is designed to mimic `system2` but the internals are more sophisticated to give better control over the running process. For example we can use a callback function to handle stdout/stderr text from the program _while it is being printed by the process_, and returns the exit code for the process:

```r
res <- sys::exec_wait("whoami", std_out = function(x){
  cat("My name is:", rawToChar(x))
})
## My name is: jeroen
res
## [0]
```

The package has various other APIs that are useful when invoking complex programs. For example `exec_background()` will run a program as a background process, or `exec_internal()` will return a list with the exit code, stdout and stderr. The ?exec_wait manual pages gives an overview of the options.

### The processx package

The [processx package](https://processx.r-lib.org/reference/index.html) is much more advanced than base or sys. It provides a very extensive framework that is capable of executing and controlling many processes simultaneously from R. The simplest case is the `run` function which will again run and wait for a single command (but with [many more options](https://processx.r-lib.org/reference/run.html)):

```r
processx::run('whoami')
## $status
## [1] 0
## 
## $stdout
## [1] "jeroen\n"
## 
## $stderr
## [1] ""
## 
## $timeout
## [1] FALSE
```

Where processx really excels is to execute and control background processes, potentially many at once, without blocking R. It provides a very [extensive API](https://processx.r-lib.org/reference/process.html) for launching and managing processes through a special R class. This allows you to implement [very advanced things in R](https://www.tidyverse.org/blog/2018/09/processx-3.2.0/#advanced-usage-background-processes), such as a webserver or parallel processing framework, but it is a bit more complicated than base or sys.


## Conclusion

In this post we have shown a few ways to execute system commands in R.

In [rOpenSci Software Peer-Review](/software-review/), at the moment of writing, Scientific Software Wrappers is a category [in scope](https://devguide.ropensci.org/policies.html#package-categories).

>  Packages that wrap non-R utility programs used for scientific research. These programs must be specific to research fields, not general computing utilities. Wrappers must be non-trivial, in that there must be significant added value above simple system() call or bindings, whether in parsing inputs and outputs, data handling, etc. Improved installation process, or extension of compatibility to more platforms, may constitute added value if installation is complex. This does not include wrappers of other R packages or C/C++ libraries that can be included in R packages. We strongly encourage wrapping open-source and open-licensed utilities - exceptions will be evaluated case-by-case, considering whether open-source options exist.

