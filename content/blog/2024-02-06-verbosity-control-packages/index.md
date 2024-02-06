---
title: Please Shut Up! Verbosity Control in Packages
author: 
- Mark Padgham
- Maëlle Salmon
date: '2024-02-06'
slug: verbosity-control-packages
categories: []
output: hugodown::md_document
tags:
  - package development
---



We recently introduced a new paragraph to the development version of our dev guide

> Provide a way for users to opt out of verbosity, preferably at the package level: make message creation dependent on an environment variable or option (like ["usethis.quiet"](https://usethis.r-lib.org/reference/ui.html?q=usethis.quiet#silencing-output) in the usethis package), rather than on a function parameter. The control of messages could be on several levels ("none, "inform", "debug") rather than logical (no messages at all / all messages). Control of verbosity is useful for end users but also in tests. More interesting comments can be found in an [issue of the tidyverse design guide](https://github.com/tidyverse/design/issues/42). 

This complements the [statistical software review requirement for Bayesian software](https://stats-devguide.ropensci.org/standards.html#output-verbosity).

This tech note's aim is to make the new requirement louder, demonstrate some approaches to verbosity control, and to gather community feedback!

## Verbosity control at the package level

Controlling verbosity at the function level means that silencing messages requires writing code like:


```r
x <- mypackage::my_function(thing = 1, verbose = FALSE)
y <- mypackage::my_function(thing = 2, verbose = FALSE)
z <- mypackage::my_function(thing = 3, verbose = FALSE)
```

While this is a very widespread pattern, and quite clear, it has the drawback of introducing clutter to function calls, and of being needed in every function call.
Moreover, having verbosity-control at the function-level generally requires other packages which use any such functions to hard-code verbosity (or leave at default, unchangeable values).
Not only does this make verbosity control difficult or even impossible, it also prevents effective debugging.

Controlling verbosity at the package level means your user, instead, writes:


```r
options(mypackage.quiet = TRUE) # or rlang::local_options() or withr::local_options()
x <- mypackage::my_function(thing = 1)
y <- mypackage::my_function(thing = 2)
z <- mypackage::my_function(thing = 3)
```

Package-level control is much easier!

### How to implement package-level verbosity control in your package

One option :sweat_smile: would be to write your own wrapper for messages such as,


```r
pkg_message <- function(...) {
  if (getOption("mypackage.quiet", FALSE)) {
    return()
  }
  message(...)
}
```

Fortunately, there are other packages which largely take care of this for you, notably [rlang](https://rlang.r-lib.org) and [cli](https://cli.r-lib.org), both of which include their own equivalents of base R's [`message()`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/message.html), [`warning()`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/warning.html), and [`stop()`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/stop.html) functions.
(The cli functions ultimately call the rlang versions, so it really doesn't matter which one you use.)
Of course, the base R functions are perfectly fine, and can definitely be used.
The alternatives merely make a few aspects more convenient, including:

1. The [cli package](https://blog.r-hub.io/2023/11/30/cliff-notes-about-cli/#how-to-make-cli-quiet-or-not) draws on the rlang functions but with improved on-screen format and extensive customization options; and
2. Verbosity can be controlled in any package which uses rlang or cli by [global environment variables](https://rlang.r-lib.org/reference/abort.html#muffling-and-silencing-conditions).

The second advantage is particularly relevant for the topic of this post.
Simply replacing any calls to `message()`, `warning()`, or `stop()` with the equivalent `rlang_inform()`, `rlang_warn()`, or `rlang_abort()` functions allows anyone to suppress all messages by specifying, `options(rlib_message_verbosity = "quiet")` (or the equivalent for warnings).

Note that there is also an "rlang" way of setting options, the [`rlang::local_options()` function](https://rlang.r-lib.org/reference/local_options.html) (or the same function in [the withr package](https://withr.r-lib.org/reference/with_options.html)).
As with messages above, the base R version is fine; the rlang/withr versions simply implement a few additional features.
In particular, base R options are always set globally, whereas rlang's local options are set within the current [R frame](http://adv-r.had.co.nz/Environments.html#env-basics), and unset when the frame is exited.
The code in the final section below provides one example of the advantages of this approach.

Finally, the `rlang::local_options()` function can be used to set `rlib_message_verbosity = "quiet"` in test files, to suppress the wall of text that often appears when running tests.
This wall of text can be an obstacle when trying to debug test logs; using rlang or cli for messages and warnings provides an easy way to actively control test logs and improve debugging.

## One step further: multiple levels of verbosity

Verbosity control is often implemented as a binary choice, typically controlled by a logical parameter, such as `verbose = FALSE`, or `quiet = TRUE`.
The `rlib_message_verbosity` option described above also only has two primary levels, "quiet" and "verbose".
Note that these are not logical parameters, but character variables.
The default behaviour (of "verbose") can also be overridden an additional parameter in the `rlang_inform/warn/abort()` functions, `frequency`, which controls how often messages are issued.
This is particularly useful in issuing messages only once per R session, by setting `frequency = "once"`.
More generally, it may often be useful to implement different levels of verbosity for users and developers, like "quiet", "inform", and "debug".
This practice corresponds to the idea of leaving an [access panel](https://speakerdeck.com/jennybc/object-of-type-closure-is-not-subsettable?slide=77) to simplify future trouble-shooting.
Even if only two levels are implemented, it is easy to extend levels in the future if they are already defined as character strings; changing verbosity control from logical (dual-level) to multi-level is more complex, and can be avoided by not using logical flags in the first place.

### "verbose" or "quiet"?

"verbose."
Because "quiet" always means nothing should be done.
But because code does things, this translates to having to check whether a "quiet" parameter is somehow *not* quiet.
That is negative logic, which makes code harder to read.
Positive logic is much clearer, and less error prone: `if (verbose) { ... do something }`, as demonstrated in the following section.

## Bonus section: Regaining package level control from global options

A package which uses rlang/cli/withr-type packages to issue and control messaging will respond to the local (or global) options in the same way as all other packages which use this system.
In this way, those options become truly global, as they are shared between and understood by multiple packages.
One problem with this is that users may often want to debug their own package only, while leaving all other packages quiet.
This again requires custom message handlers, like the following (remembering that the second parameter to the `getOption()` is the default for cases where no such option has been set):


```r
pkg_message <- function(...) {
  is_verbose_mode <- (getOption("mypackage.verbose", "quiet") == "verbose")
  if (is_verbose_mode) {
    # Options local to this function only; reset on exit!
    rlang::local_options(rlib_message_verbosity = "verbose")
  }
  rlang::inform(...)
}
```

That then allows behaviour like this:


```r
pkg_message("normal message")
rlang::local_options(rlib_message_verbosity = "quiet")
pkg_message("suppressed message")
rlang::local_options(mypackage.verbose = "verbose")
pkg_message("reawakened message")
```

```
normal message
reawakened message
```

And my local package-level verbosity options can then override the rlang verbosity controls.

### Extending levels of verbosity

Finally, we'll briefly demonstrate how the rlang/cli two-level verbosity control of "quiet"/"verbose" can be extended to implement a "debug" level in your own package.
This again requires a custom message handler, slightly modified from the above to issue debug messages only:


```r
debug_msg <- function(...) {
  is_debug_mode <- (getOption("mypackage.verbose", "quiet") == "debug")
  if (is_debug_mode) {
    rlang::local_options(rlib_message_verbosity = "verbose")
    rlang::inform(...) # or rlang::warn, cli::cli_alert_info, whatever
  }
}
```

That enables this behaviour:


```r
my_fn <- function(x) {
    # ... do stuff
    debug_msg(paste0("'x' has wrong value: ", x))
}
my_fn(1) # no message issued
rlang::local_options(rlib_message_verbosity = "verbose")
my_fn(1) # still not issued
rlang::local_options(mypackage.verbose = "debug")
my_fn(1) # debug message is issued!
```

```
'x' has wrong value: 1
```

## Conclusion

In this tech note we explained our new requirement that verbosity control should be at the package rather than at the function level, through the users setting an option.
We also presented the aspiration to have verbosity control as a choice between _degrees_ of verbosity, and showed how that enables verbosity control to be refined in future package development.
Now go some noise - just ensure that you can control it!

How is verbosity control implemented in the packages you develop or like using?
Do you have any comments or questions? 
Please don't remain quiet. :wink:
