---
title: An Example of the DRY/DAMP Principles for Package Tests 
author: 
- Maëlle Salmon
editor:
- Steffi LaZerte
date: '2024-03-18'
slug: dry-damp
output: hugodown::md_document
tags:
  - tech notes
  - package development
  - champions program
  - how-to
  - testing
---

rOpenSci's [second cohort of Champions has been onboarded](/blog/2024/02/15/champions-program-champions-2024/)!
Their training first started with a [session on code style](/blog/2024/02/22/beautiful-code/), was followed by three sessions on the basics of R package development, and ended with a session on [advanced R package development](https://rpkgdev-rocket-2024.netlify.app/), which consisted of a potpourri of tips with discussion, followed by time for applying these principles to the participants' packages.
Here, I want to share one of the topics covered: Package testing, and in particular, the DRY ("don't repeat yourself") and DAMP ("descriptive and meaningful phrases") principles.
For this topic, we used a [GitHub repository](https://github.com/maelle/swamp), containing an R package whose different commits illustrate the two principles. In each step we'll share a commit or diff illustrating the changes made.

## Stage 1: muddy!

First commit: Set up our test files, [test-works.R](https://github.com/maelle/swamp/blob/c67cc053cafb2cc5f5125cbc745b2f392a84e3df/tests/testthat/test-works.R) and [test-ok.R](https://github.com/maelle/swamp/blob/c67cc053cafb2cc5f5125cbc745b2f392a84e3df/tests/testthat/test-ok.R)

These initial test files both define an object called `test_object` at the top level, which is used in two tests in each file.

**test-works.R**
```r
test_object <- list(a = 1, b = 2)

test_that("multiplication works", {
  expect_equal(test_object[["b"]] * 2, 4)
})

test_that("addition works", {
  expect_equal(test_object[["a"]] + 2, 3)
})
```

and

**test-ok.R**
```r
test_object <- list(a = 1, b = 2)

test_that("division works", {
  expect_equal(test_object[["b"]] / 2, 1)
})

test_that("substraction works", {
  expect_equal(test_object[["a"]] - 1, 0)
})
```

It is not an optimal pattern because you can't look at each `test_that()` test in isolation and quickly understand what is going on.
In a very long test file you would even have to scroll up and down! :scream:
Furthermore we are being repetitive by defining the same test object in two test files.

## Stage 2: DRY!

Next commit: [DRY out these files](https://github.com/maelle/swamp/commit/381f244f56f1837207f2150a7e76c70bd59c0422)

At this stage we diligently remember about DRY, Don't Repeat Yourself, and about the mechanics of [testthat helper files](https://blog.r-hub.io/2020/11/18/testthat-utility-belt/):
files whose names start with `helper-` are loaded before all tests.

So we create a helper file (`helper-swamp.R`) within which `test_object` is defined and therefore available for tests!

In `tests/testthat/helper-swamp.R`,

```r
test_object <- list(a = 1, b = 2)
```

In the test files, we removed the first line that defined `test_object`.

Now things aren't perfect yet. 
When we look at any of the test files, we can't really know what `test_object` is as its name is not "descriptive and meaningful".

Furthermore we now have `test_object` which is *always* defined even if it isn't used in a test. 
At best this is unnecessary and useless; at worst it could have unintended side-effects, particularly with more complex code! [^leak]

[^leak]: This is a leak. In another test, one could wonder why some object exists, why a specific option has been set, etc. and it's a bit of a nightmare to debug.


## Stage 3: Focus on DAMP

Third commit: [Apply DAMP principals](https://github.com/maelle/swamp/commit/9cc08937e1cabf112955004212e1d0bccf2ccda4)

In the helper file, `tests/testthat/helper-swamp.R`, we re-factor the code into a _function_ with a more meaningful name (at least let's pretend it is!).

```r
basic_list <- function() {
  list(a = 1, b = 2)
}
```
Next, we call this function to define the object in all tests where it's needed. 
Thus the test files become

```r
test_that("division works", {
  test_object <- basic_list()
  expect_equal(test_object[["b"]] / 2, 1)
})
```

and 


```r
test_that("substraction works", {
  test_object <- basic_list()
  expect_equal(test_object[["a"]] - 1, 0)
})
```

Now, while the actual definition of the basic list is not in all tests, we have a better idea of what's going on when reading the test.

Further, if the test were to fail, in the console we could run `devtools::load_all()` and run the code of the test, as `devtools::load_all()` loads testthat helper files so `basic_list()` would be available.


## Conclusion

The balance between DRY ("Don't repeat yourself") and DAMP ("Descriptive and meaningful phrases") is a trade-off.
To keep the water analogy, we also need to ensure that our code doesn't have effects which may 'leak' unexpectedly.
What we should strive for are self-contained tests that we can understand and run without too much context.

Another consideration we haven't covered here, are tests that require specific elements, such as environment variables or options. In those cases try using [withr](https://withr.r-lib.org/) functions such as [`withr::local_envvar()`](https://withr.r-lib.org/reference/with_envvar.html) in each test that requires it.

One powerful idea from the book ["Software Engineering at Google"](https://www.oreilly.com/library/view/software-engineering-at/9781492082781/) by Titus Winters, Tom Manshreck, and Hyrum Wright, is that code can afford to be a bit less obvious because it has tests covering it, but test code, which isn't covered by tests, does not have this luxury.


## Further resources

- The three chapters on package testing of the R packages book by Hadley Wickham and Jenny Bryan are a highly recommended read: [Testing basics](https://r-pkgs.org/testing-basics.html), [Designing your test suite](https://r-pkgs.org/testing-design.html), [Advanced testing techniques](https://r-pkgs.org/testing-advanced.html).

- Blog post [Why Good Developers Write Bad Unit Tests](https://mtlynch.io/good-developers-bad-tests/) by Michael Lynch.
