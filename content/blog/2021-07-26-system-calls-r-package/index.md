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

In this post, we have a look at a few options for writing such CLI wrappers in R.
In particular, we compare the base R functions `system()` and `system2()`, the [sys](https://cran.r-project.org/web/packages/sys/) package and the [processx](https://cran.r-project.org/web/packages/processx/) package.

But we start with some words of caution about the limitations of this approach, and explaining why it may be better to _not_ shell out, and try to use an alternative interface if possible.

## Downsides of system commands

When possible, it is usually better to use a C, C++ (or even JS, Python...) interface to interact with external software, rather than calling a command-line interface (CLI).
A CLI is mainly intended for interactive use by a human, with free-form text as input and output. To programatically interface with external software, a foreign language API is typically more robust and performant.

The core issue is that each CLI execution starts a new process.
Because processes don't share memory, the only interaction with the executing program is via free text streams (pipes) between R and the child process.
This lack of structure makes it cumbersome to exchange data, handle exceptions, and control the program execution from R. Let's explore these things in a bit more detail.

### Data input and output

A C/C++ library has formal functions with one or more arguments and a return value, each consisting of typed data structures. You can call such a C/C++ API from an R package, passing data from R objects from memory into the library and back, in a similar way as when calling functions from the package itself.

On the other hand, the only input to a shell command is a single string with the command line arguments.
Most programs that need actual input data will need to read this from file(s) on disk, in some particular format, which can lead to performance overhead or read/write errors.

When the user has to provide the command arguments (such as filenames) that are to be passed to the command line program,
you have to consider these names could contain spaces or non-ascii characters.
This can again lead to bugs when they get joined into the shell command that is invoked by R.

### Progress and exception handling

The output of a command line program only consists of an exit code (an integer indicating if the execution was successful) and two text streams which the program prints to the screen. When invoked from R, we can capture these text streams, which results in two large strings, in addition to the exit code. This is all that we get back from executing a system command.

Hence, there is no return object, or exception handling if a problem appears in called program.
This means that if we interface with a CLI tool in R and an error appears, the best we can do is to show the output text from the program to the user; we cannot programmatically handle errors.

Because we have no shared memory, there is also no good way for R to inspect or control the command line program while it is running. From the R point of view, the external program is basically a black box.

### Finding the program

Finally, a practical issue with CLI wrappers is that the external program often has to be installed manually by the user, and that it is sometimes unclear if, and where, the program is installed on the user machine. 

Especially on Windows, many programs are not on the PATH, and the R wrapper may first need to find the installation path to execute the program. This is another major disadvantage in comparison with C/C++ libraries, which can be linked into the R package when it is built and do not require manual installation by the end-user. But when writing CLI wrappers you need to keep in mind that the program you are trying to execute may not even exist.


## The alternative: foreign language interfaces

If the software you need provides an alternative interface, or a similar program exists that does, this might provide a better basis than a CLI tool.

When possible, the most robust way to interface with external libraries is via C or C++. Because R itself is written in C, calling a C or C++ library takes almost zero overhead. To get started with wrapping C libraries, check out [Davis Vaughan's blog post](https://blog.davisvaughan.com/2019/03/02/now-you-c-me/). For C++ dive into either [Rcpp](https://adv-r.hadley.nz/rcpp.html) or the more recent [cpp11](https://cpp11.r-lib.org/articles/cpp11.html).

Examples of rOpenSci packages interfacing to C/C++ interfaces include [magick](https://docs.ropensci.org/magick) (imagemagick), [pdftools](https://docs.ropensci.org/pdftools) (poppler), [ijtiff](https://docs.ropensci.org/ijtiff) (libtiff), [gert](https://docs.ropensci.org/gert) (libgit2), and many more. The "system dependencies" column in the [r-universe dashboard](https://ropensci.r-universe.dev/) shows the C/C++ libraries that R package are interfacing with.

Some software does not provide a C/C++ API but can be called via Python or JavaScript. In this case, you could use [reticulate](https://rstudio.github.io/reticulate/) or [V8](https://cran.r-project.org/web/packages/V8/vignettes/v8_intro.html) to create an R wrapper. Running external software through Python or JavaScript is not quite as performant as C/C++, but reticulate and V8 provide a solid bridge to exchange data and exceptions, so these packages are often more reliable than a CLI wrapper.

## Several tools for calling a CLI program from R

Now that we have warned you, let's move on to the main topic of this post: how to call a CLI program from R. We show 3 increasingly advanced ways to invoke a system command (a.k.a "shell out") from R:

* `system()` or `system2()` functions in base R
* the [sys](https://cran.r-project.org/web/packages/sys/index.html) package
* the [processx](https://cran.r-project.org/web/packages/processx/index.html) package

Depending on your needs you may prefer one or another solution.

### Base system/system2

Base-R provides functions `system` and `system2`. The R [source code](https://github.com/wch/r-source/blob/c65ce1f39fa9b831490e384a567c3bcab7b81141/src/library/base/R/unix/system.unix.R#L19-L52) for these functions is self-explanatory: all the arguments and options are combined into one big shell command, which is then passed to a local shell (`sh` on unix or `cmd` on Windows).
For example, if you run this in R:

```r
system2("whoami", stdout = TRUE, stderr = TRUE)
## [1] "jeroen"
```

R will [convert this](https://github.com/wch/r-source/blob/c65ce1f39fa9b831490e384a567c3bcab7b81141/src/library/base/R/unix/system.unix.R#L80-L87) into the shell command that writes output to a temporary file, such as below. After the command exits with success, R tries to read the file and return the content.

```
whoami > /tmp/RtmpnMXhzK/fileef2a84a02fb68 2>&1
```

During the program execution, we don't know what is going on; R blocks and waits for the command to finish, as long as it takes. This is fine for simple commands, but for complex long running programs, it can be nice to have more control over the progress or intermediate output from the running program.

### The sys package

The [sys package](https://github.com/jeroen/sys#sys) is a small powerful package (mostly C code without dependencies) to run commands. The core of the package was designed to mimic the `system2` API, but the internals are very different to give more control over the running process.

Instead of combining all input in a large shell command that writes output to files in disk, sys invokes the target program directly, and manages input and output by creating in-memory pipes between R and the child process. This makes it possible to use callback functions to handle output from the program immediately while it is being printed, and finally return the exit code for the process. It can also safely be interrupted at any time by pressing ESC or ctrl+C:

```r
res <- sys::exec_wait("ping", "google.com", std_out = function(x){
  cat("Some output:", rawToChar(x))
})
## Some output: 64 bytes from 142.251.36.46: icmp_seq=1 ttl=118 time=17.977 ms
## Some output: 64 bytes from 142.251.36.46: icmp_seq=2 ttl=118 time=18.244 ms
## ...

res
## [0]
```

The package also supports binary (non text) stdout/stderr data, and has several other APIs that are useful when invoking complex programs. The `exec_internal()` function is a wrapper which buffers the stdout/stderr output in R (without writing to a file on disk) and finally returns it along with the exit code:

```r
out <- sys::exec_internal('whoami')
out
## $status
## [1] 0
## 
## $stdout
## [1] 6a 65 72 6f 65 6e 0a
## 
## $stderr
## raw(0)

rawToChar(out$stdout)
## [1] "jeroen\n"
```

Note that stdout here is a raw vector, in order to supports commands that give binary output. Use `base::rawToChar()` or `sys::as_text()` to convert a raw vector into a string.

Sys also provides basic functionality to spawn a background process with `exec_background()` however for this use case the processx package may be a better fit.

### The processx package

The [processx package](https://processx.r-lib.org/reference/index.html) is much more advanced. It provides a very extensive framework for executing and controlling many processes simultaneously from R. The `processx::run()` function implements the simple execute-and-wait scenario similar to base or sys, (but with [many more options](https://processx.r-lib.org/reference/run.html)):

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

Where processx really stands out is the capability to manage execution of many concurrent background processes, without blocking R. It provides an [extensive API](https://processx.r-lib.org/reference/process.html) for launching and controlling processes through objects of a special `process` class. 

```r
library(processx)
p <- process$new("sleep", "2")
p$is_alive()
## [1] TRUE
p
## PROCESS 'sleep', running, pid 5376.
p$kill()
p$is_alive()
## [1] FALSE
```

Processx makes it possible to implement [very advanced things in R](https://www.tidyverse.org/blog/2018/09/processx-3.2.0/#advanced-usage-background-processes), such as a multicore webserver or parallel processing framework, but it is much more complicated than base-R or sys. If you just need to execute a single command and get it's output, depending on processx may be overkill, but for advanced applications it is definitely the most powerful of the three.


## Conclusion

In this post we compared several tools to execute system commands in R, and also explained some of the low-level mechanics and limitations of CLI wrappers. Depending on the degree of control you wish to have on the subprocess and output streams, you may prefer base-R, sys, or processx.

Scientific Software Wrappers is a category in scope for [rOpenSci Software Peer-Review](/software-review/) as explained in our [devguide](https://devguide.ropensci.org/policies.html#package-categories):

_Packages that wrap non-R utility programs used for scientific research. These programs must be specific to research fields, not general computing utilities. Wrappers must be non-trivial, in that there must be significant added value above simple system() call or bindings, whether in parsing inputs and outputs, data handling, etc. Improved installation process, or extension of compatibility to more platforms, may constitute added value if installation is complex. This does not include wrappers of other R packages or C/C++ libraries that can be included in R packages. We strongly encourage wrapping open-source and open-licensed utilities - exceptions will be evaluated case-by-case, considering whether open-source options exist._

We encourage authors of packages containing software wrappers to explore the options and make an informed decision on if, and how, to wrap CLI utilities in R packages.