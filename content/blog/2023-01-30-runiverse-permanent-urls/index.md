---
slug: runiverse-permanent-urls
title: 'Improved permanent URL schema for r-universe.dev'
date: '2023-01-30'
author: Jeroen Ooms
description: 'We have improved the URL schema for the r-universe.dev front-end to make it even easier to find and share a link to an R package, article, API, or other resource.'
tags:
  - r-universe
  - tech notes
  - front-end
  - documentation
  - dashboard
---
<style>
ul a:hover{text-decoration: underline;}
</style>

<small><em>This post is part of a series of technotes about [r-universe](https://r-universe.dev), a new umbrella project by rOpenSci under which we experiment with various ideas for improving publication and discovery of research software in R.
As the project evolves, we will post updates to document features and technical details.
For more information, visit the [r-universe project page](/r-universe/).</em></small>

## Pretty permanent URLs!

We have improved the URL schema for the [r-universe.dev](https://r-universe.dev) front-end to make it even easier to find and share a link to an R package, article, API, or other resource.

The old URLs will now automatically be redirected to the new locations, so this should be a non-breaking change. But of course we recommend updating your references to link to the new permanent URLs.

### Package homepages

The new URLs have the same form as github pages, where the homepage for a package can be found under the root directory of your universe url, i.e. `https://{owner}.r-universe.dev/{pkg}`. For example the landing packages for some packages look like this:

 - [https://jeroen.r-universe.dev<b>/jsonlite</b>](https://jeroen.r-universe.dev/jsonlite)
 - [https://ropensci.r-universe.dev<b>/targets</b>](https://ropensci.r-universe.dev/targets)
 - [https://tidyverse.r-universe.dev<b>/ggplot2</b>](https://tidyverse.r-universe.dev/ggplot2)


And so on. The URLs above return package information in html format. Simply append `/json` to retrieve the same information (and more) in api format:

 - [https://jeroen.r-universe.dev<b>/jsonlite/json</b>](https://jeroen.r-universe.dev/jsonlite/json)
 - [https://ropensci.r-universe.dev<b>/targets/json</b>](https://ropensci.r-universe.dev/targets/json)
 - [https://tidyverse.r-universe.dev<b>/ggplot2/json</b>](https://tidyverse.r-universe.dev/ggplot2/json)

A few exemptions are the following root paths, which are reserved names for the r-universe front-end sections and cranlike-server, and hence do not refer to a package:

 - [https://jeroen.r-universe.dev<b>/builds</b>](https://jeroen.r-universe.dev/builds)
 - [https://jeroen.r-universe.dev<b>/contributors</b>](https://jeroen.r-universe.dev/contributors)
 - [https://jeroen.r-universe.dev<b>/packages</b>](https://jeroen.r-universe.dev/packages)
 - [https://jeroen.r-universe.dev<b>/articles</b>](https://jeroen.r-universe.dev/articles)
 - [https://jeroen.r-universe.dev<b>/badges</b>](https://jeroen.r-universe.dev/badges)
 - [https://jeroen.r-universe.dev<b>/src</b>](https://jeroen.r-universe.dev/src) (cranlike-server)
 - [https://jeroen.r-universe.dev<b>/bin</b>](https://jeroen.r-universe.dev/bin) (cranlike-server)
 - [https://jeroen.r-universe.dev<b>/stats</b>](https://jeroen.r-universe.dev/stats) (stream apis)

### Resources within a package

Resources that are part of a package, such as the pdf/html manual, news file, and preferred citation, can now be found under that package URL. Some examples:

 - [https://jeroen.r-universe.dev<b>/jsonlite/DESCRIPTION</b>](https://jeroen.r-universe.dev/jsonlite/DESCRIPTION)
 - [https://jeroen.r-universe.dev<b>/jsonlite/NEWS</b>](https://jeroen.r-universe.dev/jsonlite/NEWS)
 - [https://jeroen.r-universe.dev<b>/jsonlite/NEWS.txt</b>](https://jeroen.r-universe.dev/jsonlite/NEWS.txt)
 - [https://jeroen.r-universe.dev<b>/jsonlite/jsonlite.pdf</b>](https://jeroen.r-universe.dev/jsonlite/jsonlite.pdf)
 - [https://jeroen.r-universe.dev<b>/jsonlite/citation</b>](https://jeroen.r-universe.dev/jsonlite/citation) (if available)
 - [https://jeroen.r-universe.dev<b>/jsonlite/citation.cff</b>](https://jeroen.r-universe.dev/jsonlite/citation.cff)
 - [https://jeroen.r-universe.dev<b>/jsonlite/citation.txt</b>](https://jeroen.r-universe.dev/jsonlite/citation.txt)
 - [https://jeroen.r-universe.dev<b>/jsonlite/citation.json</b>](https://jeroen.r-universe.dev/jsonlite/citation.json)
 - [https://jeroen.r-universe.dev<b>/jsonlite/doc/</b>](https://jeroen.r-universe.dev/jsonlite/doc/) (html manual and vignettes)
 - [https://jeroen.r-universe.dev<b>/jsonlite/doc/manual.html</b>](https://jeroen.r-universe.dev/jsonlite/doc/manual.html)
 - [https://jeroen.r-universe.dev<b>/jsonlite/doc/json-mapping.pdf</b>](https://jeroen.r-universe.dev/jsonlite/doc/json-mapping.pdf)

The URLs for these resources are, where possible, consistent with the CRAN website and/or the R local dynamic help server.

### Link to sections of a package homepage

One benefit of the new schema is that you can link directly to sections within a package homepage. You can also find these links by clicking on the header of the section on the page.

 - [https://jeroen.r-universe.dev<b>/jsonlite#readme</b>](https://jeroen.r-universe.dev/jsonlite#readme)
 - [https://jeroen.r-universe.dev<b>/jsonlite#reference</b>](https://jeroen.r-universe.dev/jsonlite#reference)
 - [https://jeroen.r-universe.dev<b>/jsonlite#citation</b>](https://jeroen.r-universe.dev/jsonlite#citation)
 - [https://jeroen.r-universe.dev<b>/jsonlite#development</b>](https://jeroen.r-universe.dev/jsonlite#development)
 - [https://jeroen.r-universe.dev<b>/jsonlite#users</b>](https://jeroen.r-universe.dev/jsonlite#users)

### Feeds and sitemaps

Finally there are some meta APIs that are mainly for non-human consumption:

 - [https://jeroen.r-universe.dev<b>/feed.xml</b>](https://jeroen.r-universe.dev/feed.xml) (RSS feed)
 - [https://jeroen.r-universe.dev<b>/sitemap_index.xml</b>](https://jeroen.r-universe.dev/sitemap_index.xml) (Universe sitemap index)
 - [https://jeroen.r-universe.dev<b>/jsonlite/sitemap.xml</b>](https://jeroen.r-universe.dev/jsonlite/sitemap.xml) (package sitemap)

That's it for now. As said, in order to not break any existing links, we have created automatic redirects from the old URLs to the new location where possible. If you run into any problems, please open an issue in [r-universe-org/help](https://github.com/r-universe-org/help) or send a message on the `#r-universe` channel in the ropensci slack.


