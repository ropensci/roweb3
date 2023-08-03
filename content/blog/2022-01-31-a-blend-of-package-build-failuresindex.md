---
slug: "package-build-failures"
title: A Blend of Package Build Failures
author:
  - Maëlle Salmon
date: 2022-01-31
tags:
  - r-universe
  - tech notes
# The summary below will be used by e.g. Twitter cards
description: "Some common and less common problems we saw in logs of package and pkgdown website builds."
---

The [rOpenSci R-universe](https://ropensci.r-universe.dev/) is a bit special as, compared to other R-universes, it [builds docs](/blog/2021/09/03/runiverse-docs/) for all the packages in our [suite](/packages).
Looking at the dashboard helps us identify failures in building the packages as well as in building the pkgdown websites.
We then help authors fix these issues in order to comply with our [package curation policy](https://devguide.ropensci.org/curationpolicy.html).
As a package author you should also rely on [continuous integration](https://devdevguide.netlify.app/ci.html) in your own repo for catching e.g. `R CMD check` problems.
Following one of our latest rounds of monitoring, we summarize some common and less common mistakes.
Many of them are *not* specific to our build system.

## Before we start: how to debug

If you maintain an rOpenSci package and notice an error for your package in the dashboard and the error message is not clear enough,

* For pkgdown errors try installing the latest pkgdown version from CRAN then run `pkgdown::build_site()`.
* If that does not reproduce the error install [rotemplate](https://docs.ropensci.org/rotemplate/) then run `rotemplate::build_ropensci_docs()` (it might generate a logo and favicons that you'd have to delete).
* For any tricky aspect of building your docs or packages on R-universe, feel free to ping us e.g. in the [Slack #package-maintenance channel](https://contributing.ropensci.org/resources.html#channels-slack), we'll be happy to help (and to collect anonymous examples for our next failures round-up :wink:)! If not an rOpenSci package author, you can post your package development questions on our [forum](https://discuss.ropensci.org/c/package-development/29).


## Problems building vignettes or articles
### Missing dependencies or credentials

Packages needed in the vignettes should be listed in the `Suggests` dependency field of `DESCRIPTION`.

For packages needed in articles (vignettes that are `.Rbuildignore`d) you can (at least for the rOpenSci docs building) use the `extra_packages` field in [`_pkgdown.yml`](https://github.com/ropensci/weathercan/blob/bf667a694c54a04c70b51435c03a0139048e16fe/_pkgdown.yml#L2) as the docs building system will install those too.

For system dependencies needed in the vignettes, you can also list [APT packages in `_pkgdown.yml`](https://github.com/ropensci/virtuoso/blob/7693bf77d28f3f11efe00d597048fec946771e66/_pkgdown.yml#L4). Alternatively, your code could also automatically install any dependency on pkgdown or CI (cf [example in rdataretriever](https://github.com/ropensci/rdataretriever/pull/296/files)).


Remember that your vignette cannot be built if it's missing other necessary information (e.g. credentials), as those are not available on R-universe.
Therefore, you need to resort to [pre-computing your vignette or article](/blog/2019/12/08/precompute-vignettes/).

### Unbalanced chunk delimiters in vignettes

Before knitr 1.35, a chunk like the one below, with 4 opening back ticks but only 3 closing back ticks, would have been valid:

`````markdown
````r
1 + 1
```
`````

Well [it no longer is](https://yihui.org/en/2021/10/unbalanced-delimiters/) so a vignette with such a chunk will no longer be rendered!
Thankfully since [knitr 1.37](https://yihui.org/en/2022/01/knitr-news/#unbalanced-chunk-delimiters) the error message is quite clear and it is rather straightforward to find the lines to fix.

## Wrong `NEWS.md` structure

In order for pkgdown to build your website changelog, your package changelog in [`NEWS.md`](https://pkgdown.r-lib.org/reference/build_news.html) needs to be structured with h1 or h2, optionally with lesser headings below each version heading.
If you e.g. have no heading, you'll get an error message such as

```r
 x callr subprocess failed: Invalid NEWS.md: inconsistent use of section headings.
ℹ Top-level headings must be either all <h1> or all <h2>.
ℹ See ?build_news for more details. 
```

## Whacky use of temporary directories

If you use temporary directories in your examples or tests, do not use `tempdir()` directly but rather a subdirectory of it.
Also make sure to always clean after yourself. 
Otherwise you might end up with a hard-to-debug error.
For more info, refer to the excellent ["Test fixtures" testthat vignette by Jenny Bryan](https://testthat.r-lib.org/articles/test-fixtures.html).

## Changed upstream data source

If you have tests or vignettes depending on non-cached API queries, and the API changes, you might end up with an error (e.g., if a data station changes IDs).
Thankfully these errors are rather straightforward to fix.
For tests, find more guidance in [HTTP testing in R](https://books.ropensci.org/http-testing/).

## Dead upstream data source

Now, if the API your package was wrapping no longer exists, the easiest way forward is to [archive](https://devguide.ropensci.org/curationpolicy.html#archivalguidance) your package... and maybe create another one for an alternative API if there's one?

## Treacheous `.gitignore`

When things work perfectly on your computer but not on R-universe or any other continuous integration, one potential problem is `.gitignore` if it lists a folder or file that's actually necessary for building the package or its docs!
In that case, either fix `.gitignore` or the way that folder/file is used.

## Invalid Markdown files

pkgdown will build [any Markdown files in your package in `./` or `./.github`](https://pkgdown.r-lib.org/reference/build_home.html).
If you have e.g. an old issue template from when these files contained only HTML comments, there will be a pkgdown failure.
The fix is to fix, move or delete the Markdown file.

## Undetected README badges

This isn't a failure but is slightly annoying: If your README badges aren't moved to the sidebar by pkgdown, check the [structure of your badges paragraph](https://pkgdown.r-lib.org/reference/build_home.html#dev-badges).

## Conclusion

In this post we provided you with a bouquet of some mistakes to avoid when developing a package.
If you enjoyed this content, subscribe to our [monthly newsletter](/news) that features a Package Development Corner section with tips!
