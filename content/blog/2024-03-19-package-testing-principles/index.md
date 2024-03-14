---
title: An example of the DRY/DAMP principles for package tests 
author: 
- Maëlle Salmon
date: '2024-03-19'
slug: dry-damp
output: hugodown::md_document
tags:
  - tech notes
  - package development
---

rOpenSci's [second cohort of champions was onboarded](/blog/2024/02/15/champions-program-champions-2024/)!
Their training included a session on [advanced R package development](https://rpkgdev-rocket-2024.netlify.app/), which consisted of a potpourri of tips with discussion, followed by time for application in the participants' packages.
One of the topics covered was package testing, in particular the DRY ("don't repeat yourself") and DAMP ("descriptive and meaningful phrases") principles.
For this topic, we used a [GitHub repository](https://github.com/maelle/swamp), containing an R package whose different snapshots illustrate the two principles.

## Stage 1: muddy!

Test files [test-works](https://github.com/maelle/swamp/blob/c67cc053cafb2cc5f5125cbc745b2f392a84e3df/tests/testthat/test-works.R) and [test-ok](https://github.com/maelle/swamp/blob/c67cc053cafb2cc5f5125cbc745b2f392a84e3df/tests/testthat/test-ok.R) both define an object called `test_object` at the top level. 
It is used in two tests in each file.

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
Furthermore we define the same test object in two test files.

## Stage 2: DRY!

[diff](https://github.com/maelle/swamp/commit/381f244f56f1837207f2150a7e76c70bd59c0422)

At this stage we diligently remember about DRY, Don't Repeat Yourself, and about the mechanics of [testthat helper files](https://blog.r-hub.io/2020/11/18/testthat-utility-belt/):
files whose name start with `helper-` are loaded before all tests.

So we create a helper file where we create `test_object`, which is therefore available for tests!

In `tests/testthat/helper-swamp.R`,

```r
test_object <- list(a = 1, b = 2)
```

In the test files, we removed the first line that defined `test_object`.

Now things aren't perfect yet. 
When we look at any of the test files, we can't really know what `test_object` is as its name is not "descriptive and meaningful".

Furthermore we now have `test_object` always defined for all test files which is probably useless. (a leak!)
It might not be problematic here but it could be.
It would be even worse for code with side effects.


## Stage 3: focus a bit more on DAMP

[diff](https://github.com/maelle/swamp/commit/9cc08937e1cabf112955004212e1d0bccf2ccda4)

In `tests/testthat/helper-swamp.R`,

```r
basic_list <- function() {
  list(a = 1, b = 2)
}
```
In the test files

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

At this stage we re-factor the code of the helper file into a _function_ with a more meaningful name (at least let's pretend it is!).
We call this function to define the object in all tests where it's needed.
So while the actual definition of the basic list is not in all tests, we have a better idea of what's going on when reading the test.

If the test were to fail, in the console we could run `devtools::load_all()` and run the code of the test, as `devtools::load_all()` loads testthat helper files so `basic_list()` would be available.


## Conclusion

The balance between DRY ("Don't repeat yourself") and DAMP ("Descriptive and meaningful phrases") is a trade-off.
To keep the water analogy, we also don't want code whose effects leak unexpectedly.
What we should strive for are self-contained test that we can understand and run without too much context.

One powerful idea from the [book "Software Engineering at Google"](https://www.oreilly.com/library/view/software-engineering-at/9781492082781/) by Titus Winters, Tom Manshreck, Hyrum Wright, is that code can afford to be a bit less obvious because it has tests covering it, whereas test code isn't covered by test code.

For elements such as environment variables and options, we would use calls such as `withr::local_envvar()` in each test.

## Further resources

- The three chapters on package testing of the R packages book by Hadley Wickham and Jenny Bryan are a highly recommended read: [Testing basics](https://r-pkgs.org/testing-basics.html), [Designing your test suite](https://r-pkgs.org/testing-design.html), [Advanced testing techniques](https://r-pkgs.org/testing-advanced.html).

- Blog post [Why Good Developers Write Bad Unit Tests](https://mtlynch.io/good-developers-bad-tests/) by Michael Lynch.
