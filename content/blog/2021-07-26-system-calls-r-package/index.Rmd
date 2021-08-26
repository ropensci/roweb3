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

Have you ever found a non-R tool that's perfect for getting your job done, and decided to somehow use it from an R script or package?
E.g. some sort of scientific software, a command-line interface (CLI), Python module or JS library?
In this post, we shall review best practice for such wrappers.
In particular, we shall compare the base R functions `system()` and `system2()`, the sys package and the processx package.
We shall however start with a section explaining when, and how, to _not_ shell out i.e. _not_ call the system.

## Using the tool without calling the system

Before jumping to find ways to control that needed tool with system commands, you might try and find ways to _not_ have to do that.

### Downsides of calling the system

Why is it a better idea to use C, C++ (or even JS, Python...) rather than calling a command-line interface (CLI)?
Interfacing to external software via a foreign language API is usually more robust, performant and flexible, than via a CLI.

The core issue is that invoking a command starts a new process. 
Different processes don't share memory, hence the only interaction via R and the shell program is via free text streams.

#### Input

A C/C++ API has formal functions with one or more arguments consisting of typed data structures. 
On the other hand, the only input to a shell command is a single string with command line arguments, because there is no shared memory between R and the program we are calling. 
To pass any data to the program, you probably need to write it to disk in some format, 
and then the program has to read it from the file, which can lead to performance overhead or read/write errors. 

When the user has can provide the command arguments (such as filenames) which are passed to the program,
you have to consider these names may contain spaces or non-ascii characters. 
This can again lead to problems when they are all combined into the eventual command that is invoked by R.

#### Output and errors

The output of a command line program only consists of a status code (indicating if the program had an error or not) and text that the program prints to the screen. 

There is no return value, or exception handling if an error appears in program that we called.
This means that if we wrap a command line program in R, we have very limited means to handle errors. 
Basically the only thing we can in case when the program errors, is to show the text that the program printed to the user. 
We cannot really programatically figure out what caused the error.

#### Progress and control

Because we have no shared memory, there is also no good way for R to inspect or control the command line program while it is running. 
Foreign language interfaces might provide a better experience for that.

### C or C++

Maybe there's a C or C++ library offering similar features to the CLI, like ImageMagick++, wrapped in the [magick R package](https://docs.ropensci.org/magick/) does for [ImageMagick](https://imagemagick.org/index.php); or like [libtiff wrapped in the ijtiff R package](/blog/2018/04/12/ijtiff/)? 

To get started with wrapping C libraries, check out [Davis Vaughan's blog post](https://blog.davisvaughan.com/2019/03/02/now-you-c-me/). 

For C++ dive into either [Rcpp](https://adv-r.hadley.nz/rcpp.html) or the more recent [cpp11](https://cpp11.r-lib.org/articles/cpp11.html) (see [a vignette of cpp11](https://cpp11.r-lib.org/articles/motivations.html) for the motivations of cpp11 in particular compared to Rcpp).

### Python and JS

* In the case of a Python module, you can use the [reticulate package](https://rstudio.github.io/reticulate/) for interacting with Python. E.g. in an R Markdown document you could [pass objects between Python and R ](https://rstudio.github.io/reticulate/articles/r_markdown.html#calling-python-from-r-1).

* In the case of a JS library, you can use the [V8 package](https://github.com/jeroen/v8). It e.g. [propagates runtime exceptions to R errors](https://cran.r-project.org/web/packages/V8/vignettes/v8_intro.html#warnings,_errors_and_consolelog).

### Porting (re-writing) rather than wrapping

You could also decide not to wrap the cool tool you found! Either you found a ready-to-use R solution or you decide to _port_ i.e. _translate_ the tool to R.
This is obviously quite ambitious depending on the size and scope of the ported tool.
The [vcr R package](https://docs.ropensci.org/vcr/) is a port of the [Ruby gem vcr](https://github.com/vcr/vcr); there is a package called [NetlogoR that is a port of NetLogo written entirely in R](https://onlinelibrary.wiley.com/doi/full/10.1111/ecog.04516) (as opposed to the rOpenSci [nlrx package](https://docs.ropensci.org/nlrx/) that calls NetLogo).

Now, what if you actually need to write system commands...

## Tools for calling a CLI from R

To call a CLI from R you can use

* `system()` or `system2()` from base R;
* the sys package e.g. used in [antiword](https://github.com/ropensci/antiword/blob/master/R/antiword.R);
* the processx package.

## Advantages of sys and processx over base R

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
