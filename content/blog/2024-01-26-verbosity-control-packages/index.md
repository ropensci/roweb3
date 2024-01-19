---
title: Please Shut Up! Verbosity Control in Packages
author: 
- Mark Padgham
- Maëlle Salmon
date: '2024-01-26'
slug: verbosity-control-packages
categories: []
output: hugodown::md_document
tags:
  - package development
---



We quietly introduced a new paragraph to the development version of our dev guide

> Provide a way for users to opt out of verbosity, preferably at the package level: make message creation dependent on an environment variable or option (like ["usethis.quiet"](https://usethis.r-lib.org/reference/ui.html?q=usethis.quiet#silencing-output) in the usethis package), rather than on a function parameter. The control of messages could be on several levels ("none, "inform", "debug") rather than logical (no messages at all / all messages). Control of verbosity is useful for end users but also in tests. More interesting comments can be found in an [issue of the tidyverse design guide](https://github.com/tidyverse/design/issues/42). 

This complements the [statistical software review requirement for Bayesian software](https://stats-devguide.ropensci.org/standards.html#output-verbosity).

This tech note's aim is to make the new requirement louder, and to gather community's feedback!

## Verbosity control at the package level

Controlling verbosity at the function level means that to silence messages, the user writes


```r
x <- mypackage::my_function(thing = 1, verbose = FALSE)
y <- mypackage::my_function(thing = 2, verbose = FALSE)
z <- mypackage::my_function(thing = 3, verbose = FALSE)
```

While this is a very widespread pattern, and quite clear, it has the drawback of introducing clutter to function calls, and of being needed in every function call.

Controlling verbosity at the package level means your user, instead, writes:


```r
rlang::local_options(mypackage.quiet = TRUE) # or options(), or {withr}
x <- mypackage::my_function(thing = 1)
y <- mypackage::my_function(thing = 2)
z <- mypackage::my_function(thing = 3)
```

How much lighter is this new syntax?

### How to implement package-level verbosity control in your package

One option :sweat_smile: would be to use your own wrapper for every user message, for instance:


```r
pkg_message <- function(...) {
  if (getOption("mypackage.quiet", FALSE)) {
    return()
  }
  message(...)
}
```

Also make sure to read the docs of the package you might be using to create an user's interface.
For instance if you use the [cli package](https://blog.r-hub.io/2023/11/30/cliff-notes-about-cli/#how-to-make-cli-quiet-or-not), you can use set a [cli's "handler" for messages](https://cli.r-lib.org/articles/semantic-cli.html#cli-messages).

Note that `cli::cli_inform()` allows you to set a special [class](https://cli.r-lib.org/reference/cli_abort.html) to your messages.
TODO: equivalent for `message()`?
This approach can be similar to using [classed conditions](https://www.mm218.dev/posts/2023-11-07-classed-errors/): they're more specifically suppressable, and more easily testable! 

Regarding testing messages, you might be interested in [testthat's snapshot testing](https://testthat.r-lib.org/articles/snapshotting.html).
And to avoid looking at a wall of text in your tests, you can make your package quiet in tests using `withr::local_options()` or `rlang::local_options()`.

TODO: add examples of real packages

## One step further: verbosity control as a factor not a logical

The previous section showed verbosity control as a binary choice: either quiet or not.
You could however, based on your use case, choose to provide different degrees of verbosity.
For instance these degrees could be "none", "inform" and "debug" where debug corresponds to the idea of leaving an [access panel](https://speakerdeck.com/jennybc/object-of-type-closure-is-not-subsettable?slide=77) to simplify future trouble-shooting.

TODO: add examples of real packages

## Conclusion

In this tech note we explained our new requirement that verbosity control should be at the package rather than at the function level, through the users setting an option.
We also presented the aspiration to have verbosity control as a choice between _degrees_ of verbosity.

How is verbosity control implemented in the packages you develop or like using?
Do you have any comment or question? 
Please don't remain quiet. :wink:
