---
title: Roaringly acknowledge organizations with ROR IDs in DESCRIPTION
author: 
- Maëlle Salmon
editor:
date: '2025-05-09'
slug: ror
output: hugodown::md_document
tags:
  - orcid
  - desc
  - metadata
  - community
params:
  doi: "10.59350/m6f0c-7991"
---

A few years ago, the R community started using [ORCID](https://orcid.org/) ("Open Researcher and Contributor ID") to persistently and uniquely identify individual authors of packages in DESCRIPTION.
The idea is the following: you enter authors' ORCID as a specially named comment in their `person()` object. 
For instance I can be represented by:

```r
person("Maëlle", "Salmon", , "maelle@ropensci.org", role = c("cre", "aut"),
       comment = c(ORCID = "0000-0002-2815-0399"))
```

Although anyone could use your ORCID, maliciously or inadvertently[^mistake], you definitely benefit from using your ORCID in your work.
In the case of R packages, CRAN pages and pkgdown websites feature a pretty icon linking to your ORCID profile that in turn can link to your favorite online presence.
Recognition! Personal branding!

This year, the exact same idea was applied to _organizations_ using [ROR](https://ror.org/) ("Research Organizations Registry") IDs.
Any organization, be it a resarch organization, an initiative or a company, can [request to be listed](https://ror.org/registry/) in the registry.
A few months ago, it became possible to list ROR IDs in DESCRIPTION.
Thanks to [R Core](https://ror.org/02zz1nj61) for adding the feature and to [Achim Zeileis](https://orcid.org/0000-0003-0918-3766) for [spreading the news](https://fosstodon.org/@zeileis/113899983089249684).
For instance, rOpenSci can be represented by:

```r
person("rOpenSci", role = "fnd",
          comment = c("https://ropensci.org/", ROR = "019jywm96"))
```

The ROR icon, although less striking than the bright green ORCID icon, appears on the CRAN page of the package:

{{< figure src="vcr-cran.png" alt="Screenshot of the CRAN page of the vcr package. Near the names of human authors Scott Chamberlain and Aaron Wolen are small ORCID icons. Near the name of the organizational author author rOpenSci is a small ROR icon." >}}

In 2018 we had reported about tooling for manipulating ORCID. 
This year, we'd like to explain the tooling for including ROR.

## ROR support in the devtools ecosystem

Once ROR IDs were supported by base R, a next technical step was to have them totally backed by the devtools ecosystem too.
The roadmap and actual code for that were fairly simple, since we could follow what had been done for ORCID. 
It is very fortunate that ORCID support was added before ROR because "orcid" is a better string to search for than "ror" that comes up in, say, "error". :smile_cat:

### ROR IDs support in {desc}

The [desc package](https://desc.r-lib.org/) helps you manipulate DESCRIPTION files programmatically.
In its current [development version](https://github.com/r-lib/desc/), all functions handling authors (adding, searching or complementing entries) [now](https://github.com/r-lib/desc/pull/159) feature a `ror` argument.
Furthermore, a new function, `desc_add_ror()`, was created.

For instance you can add a ROR ID to an author entry:

```r
desc::desc_add_ror("019jywm96", given = "rOpenSci")
```

You can add an author entry including its ROR ID:

```r
desc::desc_add_author(given = "rOpenSci", ror = "019jywm96", role = "fnd")
```

These functions can be handy to update a bunch of packages at once.
Even if packages are updated one by one, it is shorter to share and apply the instructions as a code snippet.

### ROR support in {roxygen2}

The [roxygen2 package](https://roxygen2.r-lib.org/) generates your package's `NAMESPACE` and manual pages using specially formatted comments.
Among those manual pages, your package might (and [should](https://devguide.ropensci.org/pkg_building.html#docs-general)) contains a package-level one.
You can create such a page using [`usethis::use_package_doc()`](https://usethis.r-lib.org/reference/use_package_doc.html). 
The following content will be added to `R/package-name-package.R`, for instance `R/usethis-package.R`.

```r
#' @keywords internal
"_PACKAGE"

## usethis namespace: start
## usethis namespace: end
NULL
```

Running `devtools::document()` will create an Rd file for `?package-name`, whose content comes from `DESCRIPTION`, including ORCIDs and ROR IDs.

In this case, you might want to install roxygen2's [development version](https://github.com/r-lib/roxygen2/pull/1699) to see the ROR ID properly reformatted to an URL.
Example of the desc package: [package-level doc source](https://github.com/r-lib/desc/blob/main/R/desc-package.R), [package-level manual page](https://github.com/r-lib/desc/blob/6e32ba71072a1e17a9e643ad5e15d30948c31015/man/desc-package.Rd#L31), [manual page on pkgdown](https://desc.r-lib.org/dev/reference/desc-package.html#author).[^example]

[^example]: This might not be the best example as that particular manual page was fixed manually after documenting with roxygen2's released version. :see_no_evil:

### ROR support in {pkgdown}

The [pkgdown package](https://pkgdown.r-lib.org/) creates a documentation website for your package based on its metadata and documentation.
Since its [2.1.2 version](https://pkgdown.r-lib.org/news/index.html#new-features-2-1-2), ROR IDs in DESCRIPTION are transformed into icons, similar to ORCID IDs.

The sidebar of [pkgdown's own website](https://pkgdown.r-lib.org/index.html) includes an ROR icon near Posit's name.


## ROR icons: towards more library support?

As of today, ROR icons like those on the CRAN pages, pkgdown websites and our website's footer come from [files](https://ror.readme.io/docs/display). We have however opened an icon request for ROR in Font Awesome repository, that you can [upvote](https://github.com/FortAwesome/Font-Awesome/issues/20550) by using thumbs up. This strategy worked for [ORCID](https://github.com/FortAwesome/Font-Awesome/issues/4401). There's already a ROR icon in the more specialized [academicons library](https://jpswalsh.github.io/academicons/).

## Conclusion: go forth, register and use ROR IDs!

In this tech note, we explained what ROR IDs are: persistent IDs for organizations.
They are to organizations what ORCIDs are to individuals.
We've shown ROR IDs are supported in the base R and devtools ecosystem.
We encourage you to register your organization and to use the ID in your package's DESCRIPTION.

[^mistake]: Don't we all resort to copy-pasting formatting from others' metadata files? :sweat_smile:

