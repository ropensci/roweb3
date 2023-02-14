---
title: rOpenSci News Digest, February 2023
author:
  - Maëlle Salmon
date: '2023-02-17'
slug: ropensci-news-digest-february-2023
categories:
  - blog
tags:
  - newsletter
description: R-universe improvements, coworking, champions program kick-off
params:
  last_newsletter: '2023-01-20'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2023/02/17/ropensci-news-digest-february-2023).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### R-universe improvements!

We have changed the preferred git repo name where you host your `packages.json` registry for r-universe, see our post [New preferred repo name for r-universe registries](/blog/2023/02/07/runiverse-registry-repo/).
We now recommend to use the full lowercase name of your R-universe domain as the repo name, for instance `TileDB-Inc/tiledb-inc.r-universe.dev`.

Speaking of domains and URLs, we have [improved the URL schema for the r-universe.dev front-end](/blog/2023/01/30/runiverse-permanent-urls/) to make it even easier to find and share a link to an R package, article, API, or other resource.

### Coworking

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

* [Tuesday, Mar 7th, 9:00 Australian Western / 01:00 UTC](/events/coworking-2023-03/) "Checking data with naniar, visdat, assertr, and skimr" *Hosted by community host [Nick Tierney](/author/nicholas-tierney/) and [Steffi LaZerte](/author/steffi-lazerte/)*
    - Explore documentation, use cases and tutorials on these packages, or check your data!
    - Talk to [Nick](/author/nicholas-tierney//) and discuss how to use these packages in your workflow.
    
And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:

### New packages




The following  package recently became a part of our software suite:



Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following fifteen packages have had an update since the last newsletter: [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (cff) Metadata for R Packages") ([`v0.4.1`](https://github.com/ropensci/cffr/releases/tag/v0.4.1)), [datefixR](https://docs.ropensci.org/datefixR "Standardize Dates in Different Formats or with Missing Data") ([`v1.4.1`](https://github.com/ropensci/datefixR/releases/tag/v1.4.1)), [excluder](https://docs.ropensci.org/excluder "Checks for Exclusion Criteria in Online Data") ([`v0.5.0`](https://github.com/ropensci/excluder/releases/tag/v0.5.0)), [fingertipsR](https://docs.ropensci.org/fingertipsR "Fingertips Data for Public Health") ([`v1.0.10`](https://github.com/ropensci/fingertipsR/releases/tag/v1.0.10)), [gittargets](https://docs.ropensci.org/gittargets "Data Version Control for the Targets Package") ([`0.0.6`](https://github.com/ropensci/gittargets/releases/tag/0.0.6)), [hoardr](https://docs.ropensci.org/hoardr "Manage Cached Files") ([`v0.5.3`](https://github.com/ropensci/hoardr/releases/tag/v0.5.3)), [ijtiff](https://docs.ropensci.org/ijtiff "Comprehensive TIFF I/O with Full Support for ImageJ TIFF Files") ([`v2.3.0`](https://github.com/ropensci/ijtiff/releases/tag/v2.3.0)), [opentripplanner](https://docs.ropensci.org/opentripplanner "Setup and connect to OpenTripPlanner") ([`v0.5.1`](https://github.com/ropensci/opentripplanner/releases/tag/v0.5.1)), [osmdata](https://docs.ropensci.org/osmdata "Import OpenStreetMap Data as Simple Features or Spatial Objects") ([`v0.2.0`](https://github.com/ropensci/osmdata/releases/tag/v0.2.0)), [readODS](https://docs.ropensci.org/readODS "Read and Write ODS Files") ([`cran_v1.8`](https://github.com/ropensci/readODS/releases/tag/cran_v1.8)), [ReLTER](https://docs.ropensci.org/ReLTER "An Interface for the eLTER Community") ([`2.1.1`](https://github.com/ropensci/ReLTER/releases/tag/2.1.1)), [rerddap](https://docs.ropensci.org/rerddap "General Purpose Client for ERDDAP Servers") ([`v1.0.2`](https://github.com/ropensci/rerddap/releases/tag/v1.0.2)), [ruODK](https://docs.ropensci.org/ruODK "An R Client for the ODK Central API") ([`v1.4.0`](https://github.com/ropensci/ruODK/releases/tag/v1.4.0)), [terrainr](https://docs.ropensci.org/terrainr "Landscape Visualizations in R and Unity") ([`v0.7.3`](https://github.com/ropensci/terrainr/releases/tag/v0.7.3)), and [visdat](https://docs.ropensci.org/visdat "Preliminary Visualisation of Data") ([`v0.6.0`](https://github.com/ropensci/visdat/releases/tag/v0.6.0)).

## Software Peer Review

There are fourteen recently closed and active submissions and 2 submissions on hold. Issues are at different stages: 

* Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [stochLAB](https://github.com/ropensci/software-review/issues/551), Stochastic Collision Risk Model. Submitted by [Grant](http://www.blackbawks.net).  (Stats).

    * [rb3](https://github.com/ropensci/software-review/issues/534), Download and Parse Public Data Released by B3 Exchange. Submitted by [Marcelo S. Perlin](https://www.msperlin.com/). 

* Five at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [openalexR](https://github.com/ropensci/software-review/issues/560), Getting Bibliographic Records from OpenAlex Database Using DSL. Submitted by [Trang Le](http://trang.page). 

    * [wmm](https://github.com/ropensci/software-review/issues/522), World Magnetic Model. Submitted by [Will Frierson](https://github.com/wfrierson). 

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

    * [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com).  (Stats).

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com). 

* Four at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [waywiser](https://github.com/ropensci/software-review/issues/571), Ergonomic Methods for Assessing Spatial Models. Submitted by [Michael Mahoney](https://mm218.dev/).  (Stats).

    * [predictNMB](https://github.com/ropensci/software-review/issues/566), Evaluate Clinical Prediction Models by Net Monetary Benefit. Submitted by [Rex Parsons](http://rwparsons.github.io/).  (Stats).

    * [concstats](https://github.com/ropensci/software-review/issues/559), Market Structure, Concentration and Inequality Measures. Submitted by [Andreas Schneider](https://github.com/schneiderpy). 

    * [dfms](https://github.com/ropensci/software-review/issues/556), Dynamic Factor Models. Submitted by [Sebastian Krantz](https://github.com/SebKrantz). 

* Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [ohun](https://github.com/ropensci/software-review/issues/568), Optimizing Acoustic Signal Detection. Submitted by [Marcelo Araya-Salas](http://marceloarayasalas.weebly.com/). 

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](http://jounihelske.netlify.app).  (Stats).

* One at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [qualtdict](https://github.com/ropensci/software-review/issues/572), Generating Variable Dictionaries and Labelled Data Exports of Qualtrics. Submitted by [lyh970817](https://github.com/lyh970817). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Software Review

* [Dynamite for Causal Inference from Panel Data using Dynamic Multivariate Panel Models](/blog/2023/01/31/dynamite-r-package) by Jouni Helske. Dynamite is a new R package for Bayesian modelling of complex panel data using dynamic multivariate panel models.

### Other topics

* [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package) by Maëlle Salmon. An attempt to define what package maintenance entails, with a few tips.



### Tech Notes

* [Improved permanent URL schema for r-universe.dev](/blog/2023/01/30/runiverse-permanent-urls) by Jeroen Ooms. We have improved the URL schema for the r-universe.dev front-end to make it even easier to find and share a link to an R package, article, API, or other resource.

* [New preferred repo name for r-universe registries](/blog/2023/02/07/runiverse-registry-repo) by Jeroen Ooms. We have changed the preferred git repo name where you host your `packages.json` registry for r-universe.

## Call for maintainers

### Call for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](https://ropensci.org/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/)!

- **[citesdb](https://docs.ropensci.org/citesdb/)**,a high-performance database of shipment-level CITES trade data. Provides convenient access to over 40 years and 20 million records of
endangered wildlife trade data from the Convention on International Trade
in Endangered Species of Wild Fauna and Flora, stored on a local on-disk,
out-of memory 'DuckDB' database for bulk analysis. [Issue for volunteering](https://github.com/ropensci/citesdb/issues/21)


### Call for comaintainers

Refer to our [recent blog post](/blog/2022/10/17/maintain-or-co-maintain-an-ropensci-package/#packages-looking-for-co-maintainers) to identify packages where help is especially wished for!

## Package development corner

Some useful tips for R package developers. :eyes:

### New CRAN guideline on CITATION file

CRAN requires CITATION files to be declared as [`bibentry` items](https://stat.ethz.ch/R-manual/R-devel/library/utils/html/bibentry.html), and not in the previously-accepted form of [`citEntry()`](https://stat.ethz.ch/R-manual/R-devel/library/utils/html/citEntry.html).
As an example see [the dynamite CITATION file](https://github.com/ropensci/dynamite/blob/main/inst/CITATION) which refers to the R manual as well as other associated publications.

### Reference organization: the `@family` tag

In a package with more than a few help topics, reference organization is key to the user's experience.
Alphabetical order is rarely informative. :wink:
A powerful tool for organizing both the local and pkgdown reference is the [`@family` tag](https://roxygen2.r-lib.org/articles/index-crossref.html#family).

```r
#' @family datawrangling
```

- Locally it populates the "See also" section. You can tweak the title of the See also section for it not to be, say, "Other datawrangling" but rather "Data wrangling functionality", by having in `man/roxygen/meta.R`:

```r
list(
  rd_family_title = list(datawrangling = "Data wrangling functionality")
)
```

- In the pkgdown configuration for the reference index you can use [topic matching helpers](https://pkgdown.r-lib.org/reference/build_reference.html#topic-matching) such as `has_concept()` and `lacks_concepts()`.

### Gotcha: `invisible()` needs `return()`

The official man entry for `invisible()` [says that it](https://stat.ethz.ch/R-manual/R-devel/library/base/html/invisible.html):

> Return[s] a (temporarily) invisible copy of an object"

This might make it sound like `invisible()` directly implements an active **return** function, which it does not. While not strictly wrong, this statement is potentially misleading, especially followed as it is by the *Details*:

> This function can be useful when it is desired to have functions return values which can be assigned, but which do not print when they are not assigned. 

`invisible()` will only directly *return* from a function when it is wrapped in an active `return()` statement: `return(invisible())`; or when it's the very last line of the function code. 

This is all very nicely explained by [Peter Meissner on Stack Overflow](https://stackoverflow.com/a/38905341).

### A testing pattern: adding switches to your code

A recent R-hub blog post [explains a pattern for testing your package's behavior in for instance the absence of an internet connection, without turning off wifi](https://blog.r-hub.io/2023/01/23/code-switch-escape-hatch-test/).
It's based on using an early return in a helper function based on the presence of a specifically named environment variable (`MYPKG.TEST.NOINTERNET`) and on setting that environment variable locally in a test through `withr::local_envvar()`.

### Code comments tips

Another R-hub blog post [presents tips for writing as few comments as possible, while making the code as readable as possible](https://blog.r-hub.io/2023/01/26/code-comments-self-explaining-code/).

<!-- To be curated by hand -->

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
