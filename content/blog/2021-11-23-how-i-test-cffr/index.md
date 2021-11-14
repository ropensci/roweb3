---
title: How I Test cffr on (about) 2,000 Packages using GitHub Actions and R-universe
author: Diego Hernangómez
date: '2021-11-23'
tags:
  - cffr
  - CI
  - community
  - GitHub Actions
  - r-universe
  - tech notes
  - testing
  - testthat
slug: how-i-test-cffr
tweet: How I test cffr on ~2,000 packages using GitHub Actions & R-universe by @dhernangomez
---

When GitHub announced [support for CITATION.cff
files](https://twitter.com/natfriedman/status/1420122675813441540) I though of
creating a package that would assist R developers in this matter. I was already
using [codemetar](https://docs.ropensci.org/codemetar/) for most of my packages,
so I was familiar with the creation of these kind of metadata files.

I borrowed some ideas from codemetar, although I decided to create most of my
code from scratch (I enjoy challenging myself, and there is no better way of
learning). Finally, the first working version of
[cffr](https://docs.ropensci.org/cffr/) was released on September 15, 2021.

## The challenge

One of the things I had always in mind is that cffr should be able to work with
any R package, no matter if it was available on CRAN, Bioconductor, the
[R-universe](/r-universe/) or exclusively on GitHub/GitLab. So when I finished
the initial version, I needed to test it with the largest possible number of
packages.

I started setting up a [testthat](https://testthat.r-lib.org/)[^1] test [in a
separate
folder](https://github.com/ropensci/cffr/blob/main/tests/testthat/test_ci/test-full_cff.R),
that I ignored in .Rbuildignore. This test was basically a
[loop](https://github.com/ropensci/cffr/blob/6260303668303010c0c90ff381518960299a18f0/tests/testthat/test_ci/test-full_cff.R#L35:L61)
over [all the R packages installed
locally](https://github.com/ropensci/cffr/blob/6260303668303010c0c90ff381518960299a18f0/tests/testthat/test_ci/test-full_cff.R#L4:L7),
where I created the corresponding `cff` object for each package and validated
it. Finally, the test created a [small report in
Markdown](https://github.com/ropensci/cffr/blob/6260303668303010c0c90ff381518960299a18f0/tests/testthat/test_ci/test-full_cff.R#L64:L100)
with the summary of the results.

[^1]: Wickham H (2011). "testthat: Get Started with Testing." *The R Journal*,
    **3**, 5--10.
    <https://journal.r-project.org/archive/2011-1/RJournal_2011-1_Wickham.pdf>.

This setup was fine and worked locally, I just needed to run:

``` r
# Load package
devtools::load_all()
          
# Run the tests
testthat::test_dir("tests/testthat/test_ci")
```

And voilà! The Markdown report was created in
`tests/testthat/test_ci/_snaps/full_cff.md`.

However I was not completely comfortable with this setup. Locally, I have
installed \~200 packages, and it seemed to me like a small sample (CRAN hosts
more than 18,300 packages), so I needed to enlarge that sample. Also, I didn't
want to install more packages on my computer just for testing, so the question
was: **how do I achieve this?**

## The solution: Continuous Integration (CI)

The alternative approach seemed pretty obvious: using CI with GitHub Actions. So
basically I created [this
workflow](https://github.com/ropensci/cffr/blob/main/.github/workflows/test-ci.yaml)
integrating the previous script[^2].

[^2]: The workflow is derived from
    [r-lib/actions/tree/master/examples](https://github.com/r-lib/actions/tree/master/examples).

But still there were some open questions, such as: **how do I select a
meaningful sample of R packages?**

### Initial steps

The action
[`r-lib/actions/setup-r-dependencies`](https://github.com/r-lib/actions/tree/master/setup-r-dependencies)
was already included in my workflow, so I started using the `extra-packages`
option to install the tidyverse and tidymodels. I decided to start with these
two packages as they import some of the most popular R packages. Also, extra
points for `r-lib/actions/setup-r-dependencies` as it uses caching for the
installed packages, meaning that subsequent deploys would be significantly
faster.

So it was a good start in my quest to test cffr on a large sample of packages,
but I was not still there...

### Working with CRAN Task Views

Do you know [CRAN Task Views](https://cran.r-project.org/web/views/)? These are
useful collections of packages classified by relevant topics. With the
[ctv](https://cran.r-project.org/web/packages/ctv/index.html) package[^3], it is
quite straightforward to install the packages included in each of those views. I
decided then to install the core packages of all views, in order to increase my
package sample:

[^3]: Zeileis A (2005). "CRAN Task Views." *R News*, **5**(1), pp. 39--40.
    <https://CRAN.R-project.org/doc/Rnews/>

``` r
# Install core packages of all views
options(repos = c(
  CRAN = "https://cloud.r-project.org"
))

allviews <- ctv::available.views()
packs <- lapply(seq_len(length(allviews)), function(x) {
  allviews[[x]]$packagelist
})

packs <- dplyr::bind_rows(packs)
core <- dplyr::filter(packs, core == TRUE)
```

Out of interest, there are a total of **4,276** packages included in the CRAN
Task Views (in the `packs` object) and **286** core packages (in the `core`
object).

### Increasing the number with the r-universe

[R-universe](/r-universe/) by [Jeroen Ooms](/author/jeroen-ooms/) is a wonderful
project that, apart of the functionality of acting as a CRAN-like repo, includes
several other components. One of those components is a specific [API
Endpoint](https://ropensci.r-universe.dev/ui#api) for every R-universe with some
very useful resources, such as the ability to retrieve a [list of all the
packages included in each R-universe](https://ropensci.r-universe.dev/packages).

This fit perfectly with my needs, so my next step was to retrieve packages of
selected R-universes:

-   [rOpenSci](https://ropensci.r-universe.dev/)

-   [r-lib](https://r-lib.r-universe.dev/)

-   [R-Forge](https://r-forge.r-universe.dev/)

-   [RStudio](https://rstudio.r-universe.dev/)

-   [r-spatial](https://r-spatial.r-universe.dev/)

I selected these well-known organizations as they host a lot of popular packages
among use**R**s. Also, my hope was that other developers would have at some
point checked the DESCRIPTION and the inst/CITATION of many of these packages as
the starting point for developing their own (as I usually do 😁), so these
packages could be considered representative enough.

Extracting a list of packages from an R-universe is as easy as:

``` r
# rOpenSci packages from R-universe
ropensci <- unlist(jsonlite::read_json("https://ropensci.r-universe.dev/packages"))
ropenscireviewtools <- unlist(jsonlite::read_json("https://ropenscireviewtools.r-universe.dev/packages"))

# r-lib packages
rlib <- unlist(jsonlite::read_json("https://r-lib.r-universe.dev/packages"))

# R-Forge packages
rforge <- unlist(jsonlite::read_json("https://r-forge.r-universe.dev/packages"))

# RStudio packages
rstudio <- unlist(jsonlite::read_json("https://rstudio.r-universe.dev/packages"))

# r-spatial packages
rspatial <- unlist(jsonlite::read_json("https://r-spatial.r-universe.dev/packages"))
```

And I joined all the retrieved packages into a single object `all`:

``` r
all <- sort(unique(c(core$name, ropensci, ropenscireviewtools, rlib, rforge, rstudio, rspatial)))
```

That makes a grand total of **925 packages**. At this point, I was quite happy
with the sample of packages, since it included a large set relevant packages.

## Final steps: installing the packages

I was almost there! Now, the last step was just to install these packages and
test them.

With the aim of improving the performance, I filtered out the packages already
installed on the system like this:

``` r
# Check packages not installed yet
instpack <- as.character(installed.packages()[, "Package"])
toinstall <- setdiff(all, instpack)
```

I also decided to install most of the packages directly from CRAN, except those
belonging to rOpenSci. For these packages, I decided to use the R-universe
server, so I would have a mix of CRAN and R-universe packages in my sample for
testing purposes:

The following script does the trick:

``` r
# Install
options(repos = c(
  ropensci = "https://ropensci.r-universe.dev",
  ropenscireviewtools = "https://ropensci-review-tools.r-universe.dev",
  CRAN = "https://cloud.r-project.org"
))

install.packages(toinstall,
  dependencies = TRUE,
  verbose = TRUE, quiet = TRUE,
  type = "binary"
)

# Update
update.packages(type = "binary")
```

Note that I installed the packages using `dependencies = TRUE`. This forces the
installation of the packages from Depends, Imports and Suggest, so by doing this
I was substantially increasing the overall number of packages installed by my
GitHub Actions. Thanks to caching, on a regular run the previous process of
installing packages takes less than 4 minutes on GitHub. That, in my opinion, is
more than satisfactory[^4].

[^4]: Note also the use of `type = "binary"`. The workflow runs on Windows and
    macOS, so in order to speed up the process I instructed to install the
    precompiled versions. For that very same reason, I didn't run this full test
    on Linux, since it would be necessary to compile every package from source.

Then, it was just a matter of running the first chunk presented in this blog
post as part of the GitHub Actions:

``` r
# Load package
devtools::load_all()
          
# Run the tests
testthat::test_dir("tests/testthat/test_ci")
```

I also created a step (named "Display results") that basically prints the output
of the Markdown report. The last bits were to include a scheduled run via
[cron](https://docs.github.com/en/actions/learn-github-actions/events-that-trigger-workflows#scheduled-events)
and to use the action
[`actions/upload-artifact@v2`](https://github.com/actions/upload-artifact) to
update the final report after each run.

See here an extract of the results of the last run:

\`\`\` markdown \# Test ALL installed packages

    ## Sessioninfo 

    R version 4.1.2 (2021-11-01)
    Platform: x86_64-w64-mingw32/x64 (64-bit)
    Running under: Windows Server x64 (build 17763)

    Matrix products: default

    locale:
    [1] LC_COLLATE=C                          
    [2] LC_CTYPE=English_United States.1252   
    [3] LC_MONETARY=English_United States.1252
    [4] LC_NUMERIC=C                          
    [5] LC_TIME=English_United States.1252    

\< omitted \>

    ## Summary 

    [1] "testing a sample of 1930 installed packages"

    ---

    ## OK rate 

    [1] "99.74%"

    ---

    ## Errors 

\< omitted \>

    ...

## The result

At this stage, I was ready to check cffr with a broad number of packages. This
workflow has been really useful for detecting corner cases not initially covered
in the first release, so after several iterations I now feel comfortable with
the compatibility of cffr with a large number of representative R packages.

On subsequent runs (once the packages are cached) the whole workflow run takes
\~13 minutes on Windows and \~8 minutes on macOS. This allows me to rapidly test
any improvement of the package.

## Lessons learned

After validating the metadata of hundreds of packages, there are some thoughts
that I would like to share:

1.  cffr was able to produce valid `cff` objects for **1,925 packages** out of
    1,930[^5]. I opened a couple of
    [pull](https://github.com/selva86/InformationValue/pull/5)
    [requests](https://github.com/ropensci/photosearcher/pull/13) on some of the
    failing packages where I saw a clear mistake in the metadata. So in some
    ways this exercise could be also used to improve other packages by detecting
    typos, etc. in the metadata.

2.  The DESCRIPTION files are [pretty
    standardized](https://cran.r-project.org/doc/manuals/r-release/R-exts.html#The-DESCRIPTION-file)
    and usually they are not a problem for cffr. However,
    [inst/CITATION](https://cran.r-project.org/doc/manuals/r-release/R-exts.html#CITATION-files)
    are tricky (*Do you have a inst/CITATION? Do you still use
    [`citEntry()`](https://rdrr.io/r/utils/citEntry.html) instead of
    [`bibentry()`](https://rdrr.io/r/utils/bibentry.html)? Maybe you use `meta`
    information from your DESCRIPTION or you use
    [`citation(auto = meta)`](https://rdrr.io/r/utils/citation.html)?*). This
    was the most difficult issue to solve when developing the package.

3.  There are differences between the accepted keys on `bibentry()`, BibTeX and
    the
    [`preferred-citation`](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md#preferred-citation)
    field of a CITATION.cff file. I tried to map those as best I could,
    suggestions welcomed!

[^5]: At the moment of writing, CRAN hosted **18,369 packages**, so the testing
    sample is \~10.5% of the overall number of packages on CRAN.

One thing I did after completing this process was to make use of the
`bibentry()` function instead of `citEntry()` in the inst/CITATION files of all
my packages. I chose this since the syntax is very similar to BibTeX, and the
function also provides guidance on the possible entry types, as well as specific
validity checks.

And that's all! If you have any suggestions for how to improve the current
validation workflow, I would glad to hear it and include it in my checks.
