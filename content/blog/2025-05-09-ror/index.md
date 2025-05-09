---
title: Roaringly Acknowledge Organizations with ROR IDs in DESCRIPTION
author: 
- Maëlle Salmon
editor: Steffi LaZerte
date: '2025-05-09'
slug: ror
output: hugodown::md_document
tags:
  - orcid
  - desc
  - metadata
  - community
  - tech notes
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
Any organization, be it a research organization, an initiative or a company, can [request to be listed](https://ror.org/registry/) in the registry.
A few months ago, it became possible to list ROR IDs in DESCRIPTION, which a few dozen 
[CRAN packages](https://github.com/search?q=%2F%28%3F-i%29ROR+%3D+%22%2F++user%3Acran+path%3A**%2FDESCRIPTION&type=code&ref=advsearch) currently do -- 
although this is still far from the thousands of CRAN packages adopting [ORCIDs](https://github.com/search?q=%2F%28%3F-i%29ORCID+%3D+%22%2F++user%3Acran+path%3A**%2FDESCRIPTION&type=code&ref=advsearch).
Thanks to [R Core](https://ror.org/02zz1nj61) for adding the feature[^feature] and to [Achim Zeileis](https://orcid.org/0000-0003-0918-3766) for [spreading the news](https://fosstodon.org/@zeileis/113899983089249684).

A package maintainer might need to list organizations in `DESCRIPTION`: for instance a company that owns the copyright to the package ("cph" role), an entity that funded work on the software ("fnd" role).
Adding the organization's ROR ID to its `person()` object identifies it even more clearly. 
As an illustration, rOpenSci can be represented by:

```r
person("rOpenSci", role = "fnd",
       comment = c("https://ropensci.org/", ROR = "019jywm96"))
```

[^feature]: Currently, packages on CRAN with a ROR ID in `DESCRIPTION` get a NOTE in CRAN checks, that can be ignored. [Example](https://cran.r-project.org/web/checks/check_results_vcr.html)

The ROR icon, although less striking than the bright green ORCID icon, appears on the CRAN page of the package and links to the organization's ROR page that in turn can link to the organization's website:

{{< figure src="vcr-cran.png" alt="Screenshot of the CRAN page of the vcr package. Near the names of human authors Scott Chamberlain and Aaron Wolen are small ORCID icons. Near the name of the organizational author rOpenSci is a small ROR icon." >}}

In 2018 we had [reported](/blog/2018/10/08/orcid/) about tooling for using ORCID. 
This year, we'd like to explain the tooling for including ROR IDs.

## ROR support in the {devtools} ecosystem

Once ROR IDs were supported by base R, a next technical step was for them to be supported by Posit's ["devtools ecosystem"](https://r-pkgs.org/setup.html) too.
Even if devtools is not strictly necessary for developing packages, many package developers, including some in the rOpenSci community, do use devtools.

The code supporting ROR in desc, roxygen2 and pkgdown follows the code supporting ORCID in those packages. 
It is very fortunate that ORCID support was added before ROR because "orcid" is a better string to search for than "ror" that comes up in, say, "error". :smile_cat:

### ROR IDs support in {desc}

The [desc package](https://desc.r-lib.org/), maintained by Gábor Csárdi, helps you manipulate `DESCRIPTION` files programmatically.
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

The [roxygen2 package](https://roxygen2.r-lib.org/), maintained by Hadley Wickham, generates your package's `NAMESPACE` and manual pages using specially formatted comments.
Among those manual pages, your package might (and [should](https://devguide.ropensci.org/pkg_building.html#docs-general), according to our dev guide) contains a package-level one.
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
Example of the tinkr package: [package-level doc source](https://github.com/ropensci/tinkr/blob/main/R/tinkr-package.R), 
[package-level manual page](https://github.com/ropensci/tinkr/blob/4937951b655e7e8cb0aaf3025f82f0d921d0b3d5/man/tinkr-package.Rd#L32), 
[manual page on pkgdown](https://docs.ropensci.org/tinkr/reference/tinkr-package.html#author).

### ROR support in {pkgdown}

The [pkgdown package](https://pkgdown.r-lib.org/), maintained by Hadley Wickham, creates a documentation website for your package based on its metadata and documentation.
Since its [2.1.2 version](https://pkgdown.r-lib.org/news/index.html#new-features-2-1-2), ROR IDs in `DESCRIPTION` are transformed into icons, similar to ORCID IDs.

The sidebar of [tinkr's website](https://docs.ropensci.org/tinkr/index.html) includes a ROR icon near rOpenSci name.


## Support for ROR icons?

As of today, ROR icons like those on the CRAN pages, pkgdown websites and our website's footer come from [files](https://ror.readme.io/docs/display). We have however opened an icon request for ROR in the Font Awesome repository, that you can [upvote](https://github.com/FortAwesome/Font-Awesome/issues/20550) by using thumbs up. This strategy worked for [ORCID](https://github.com/FortAwesome/Font-Awesome/issues/4401). There's already a ROR icon in the more specialized [academicons library](https://jpswalsh.github.io/academicons/).

## Conclusion: go forth, register and use ROR IDs!

In this tech note, we explained what ROR IDs are: persistent IDs for organizations.
They are to organizations what ORCIDs are to individuals.
We've shown ROR IDs are supported in the base R and devtools ecosystems.

ROR IDs can help identify more clearly an entity you list in your package's `DESCRIPTION` because it, say, funded the work or owns the copyrights to it.
We encourage you to register your organization to the Research Organization Registry and to use the resulting ID in your package's `DESCRIPTION`.
Such a task could be tackled during a [package spring cleaning](https://www.tidyverse.org/blog/2023/06/spring-cleaning-2023/).

[^mistake]: Don't we all resort to copy-pasting formatting from others' metadata files? :sweat_smile:

