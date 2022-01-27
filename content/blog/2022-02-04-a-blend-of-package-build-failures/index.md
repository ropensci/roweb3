---
slug: "package-build-failures"
title: A Blend of Package Build Failures
author:
  - Maëlle Salmon
date: 2022-02-04
tags:
  - tech notes
# The summary below will be used by e.g. Twitter cards
description: "Some common and less common problems we saw in logs of package and pkgdown website builds."
---

The [rOpenSci R-universe](https://ropensci.r-universe.dev/ui#builds) is a bit special as, compared to other R-universes, it [builds docs](/blog/2021/09/03/runiverse-docs/) for all the packages in our [suite](/packages).
Looking at the dashboard helps us identify failures in building the packages, in building their pkgdown websites.
We then help authors fix those, to comply with our [package curation policy](https://devguide.ropensci.org/curationpolicy.html).
Following one of our latest rounds of monitoring, we summarize some common and less common mistakes.


## Missing dependencies of vignettes or articles

Packages needed in the vignettes should be listed in the `Suggests` dependency field of `DESCRIPTION`.

For packages needed in articles (vignettes that are `.Rbuildignore`d) you can use the `extra_packages` field in [`_pkgdown.yml`](https://github.com/ropensci/weathercan/blob/bf667a694c54a04c70b51435c03a0139048e16fe/_pkgdown.yml#L2) as the docs building system will install those too.

### What about system dependencies

You can also list [APT packages in `_pkgdown.yml`](https://github.com/ropensci/virtuoso/blob/7693bf77d28f3f11efe00d597048fec946771e66/_pkgdown.yml#L4).

Your code could also automatically install any dependency on pkgdown or CI, cf [this example](https://github.com/ropensci/rdataretriever/pull/296/files).


## Non buildable vignettes

## Unbalanced chunk delimiters in vignettes

Before knitr 1.35, a chunk like the one below, with 4 opening back ticks but only 3 closing back ticks, would have been valid:

`````markdown
````{r}
1 + 1
```
`````

Well [it no longer is](https://yihui.org/en/2021/10/unbalanced-delimiters/) so a vignette with such a chunk will no longer be rendered!
Thankfully since [knitr 1.37](https://yihui.org/en/2022/01/knitr-news/#unbalanced-chunk-delimiters) the error message is quite clear and it is rather straightforward to find the lines to fix.

## Wrong NEWS.md structure

## Whacky use of temporary directories

## Changed upstream data source

## Dead upstream data source

## Treacheous .gitignore

## Invalid Markdown files

## Not a failure: undetected README badges

## Conclusion

In this post we provided you with a bouquet of some mistakes to avoid.
If you enjoy this content, subscribe to our [monthly newsletter](/news) that features a Package Development Corner section with tips!
Last but not least, if you maintain an rOpenSci package, for any tricky aspect of building your docs or packages on R-universe, feel free to ping us e.g. in the Slack #package-maintenance channel!