---
slug: "r-universe-updates"
title: "Five recent R-universe features you might have missed"
description: "In this technote we look at a few recent additions that make R-universe a little nicer, faster, or more convenient to use."
author: Jeroen Ooms
date: '2026-06-07'
tags:
  - r-universe
  - infrastructure
photogallery: true
featured: true
params:
  doi: "10.59350/yw9nq-n2878"
---

One of the challenges of working on R-universe is that there is never really a release day.

Unlike software projects that accumulate changes for a big launch, R-universe evolves continuously. New features, infrastructure improvements, UI tweaks, and build system enhancements are silently deployed all the time without most people noticing.

Every now and then, however, a few features emerge that are worth highlighting. In this technote we look at five recent additions that make R-universe a little nicer, faster, or more convenient to use.

## 1. Social media cards that actually look good

{{< figureforgallery src="https://ropensci.r-universe.dev/card.svg" alt="Example of preview card for organization" >}}


Sharing package links on social media used to be a somewhat underwhelming experience, but not anymore! We provide beautiful preview images every package, article, and universe, for example:

 - https://ropensci.r-universe.dev/card.png
 - https://ropensci.r-universe.dev/card.svg
 - https://ropensci.r-universe.dev/targets/card.png
 - https://ropensci.r-universe.dev/targets/card.svg


Each card includes package or universe stats and is automatically exposed through the appropriate HTML headers (`og:image`, `og:title`, etc). Whenever somebody shares a package link, the preview should look a bit more polished without requiring any work from package maintainers.

<blockquote class="bluesky-embed" data-bluesky-uri="at://did:plc:sh6yzcjqgrzfyn5ka2hut3o5/app.bsky.feed.post/3mkuf6q2xc226" data-bluesky-cid="bafyreichh7mv56ykfbnyyfstbgqlrftmpbrw5qtkhptgp5zgtrypovrmga" data-bluesky-embed-color-mode="system"><p lang="en">R-universe now generates social media preview cards for each package, like this one: ropensci.r-universe.dev/targets. You can also get the card manually from the /{package}/card.png API (or svg).<br><br><a href="https://bsky.app/profile/did:plc:sh6yzcjqgrzfyn5ka2hut3o5/post/3mkuf6q2xc226?ref_src=embed">[image or embed]</a></p>&mdash; Jeroen Ooms (<a href="https://bsky.app/profile/did:plc:sh6yzcjqgrzfyn5ka2hut3o5?ref_src=embed">@jeroenooms.bsky.social</a>) <a href="https://bsky.app/profile/did:plc:sh6yzcjqgrzfyn5ka2hut3o5/post/3mkuf6q2xc226?ref_src=embed">12:01 · May 2, 2026</a></blockquote><script async src="https://embed.bsky.app/static/embed.js" charset="utf-8"></script>

When a link to a vignette article is shared, R-universe automatically extracts the title and section headings from the document to generate a more informative description. For example [this one](https://bsky.app/profile/jeroenooms.bsky.social/post/3mnprwytac22e).

All this won't guarantee your package goes viral, but at least it looks cool :)

## 2. PACKAGES.rds support (or: implementing R internals in JavaScript)

This feature is mostly invisible, but improves performance of installing packages in R, and therefore also the workflow of building packages in R-universe:

Every CRAN-like repository needs an index file which lists all the content from that repo. This file may be provided in a text-based [PACKAGES](https://ropensci.r-universe.dev/src/contrib/PACKAGES) format and/or a binary [PACKAGES.rds](https://ropensci.r-universe.dev/src/contrib/PACKAGES.rds) format (rds is R's internal binary serialization format, see `?saveRDS`).

Historically R-universe supported only the former text-based format, because all repository metadata is generated on-request in JavaScript on the server side, and emitting DCF text streams from our database is fast and easy. However, on the R side, loading RDS is a bit faster than parsing a text, which becomes noticeable for large repositories like https://bioc.r-universe.dev/. 

So therefore we now also serve the [PACKAGES.rds](https://ropensci.r-universe.dev/src/contrib/PACKAGES.rds) files. The implementation exists in this [NPM package](https://github.com/r-universe-org/packages-rds/blob/main/src/index.js) which reverse engineers a subset of the R RDS serializer, so that we can easily run it in our [express stack](https://github.com/r-universe-org/express-frontend). On MacOS and Windows it defaults to the new zstd compression, which makes it even faster than CRAN.



## 3. Fancy sort/filter bars in the WebUI 

{{< figureforgallery src="cover.png" alt="A screenshot of the new search bar" >}}


The styling of universe-level pages that list packages, articles, and datasets have been improved, gaining some nice interactive filter and sort capabilities. For example the [`/packages`](https://ropensci.r-universe.dev/packages) page now allows you to do a (fuzzy) search looking for keywords that appear in package descriptions/tags/authors/etc, and sort the packages based on their of stars / downloads / dependents / etc. 


A similar filter bar is available on the [`/articles`](https://ropensci.r-universe.dev/articles) and [`/datasets`](https://ropensci.r-universe.dev/datasets) pages to help you search those as well.

## 4. For the impatient: trigger a sync manually

{{< figureforgallery src="sync.png" alt="A screenshot of the new search sync button" >}}


R-universe automatically checks for updates in upstream git repositories and package registries approximately once per hour. Occasionally, however, you have just pushed a commit, fixed a build issue, updated a vignette, or corrected a typo, and waiting an hour suddenly feels like a very long time.

To accommodate the impatient among us, a new sync button has been added to the universe sidebar. Clicking the button immediately triggers a sync to check for any updates.


## 5. Making check results easier to find and share

{{< figureforgallery src="checks1.png" alt="A screenshot of the checks table on the R-Universe website" >}}


For some organizations, package checks are among the most important parts of R-universe. We've made several improvements to make check results easier to access and easier to share with collaborators.

First, package pages now support direct links to the check table using the `#checktable` anchor, for example: https://jeroen.r-universe.dev/curl#checktable. Second, build logs and build artifacts linked in this table can now be downloaded without requiring GitHub authentication. The underlying files still live on GitHub Actions, but R-universe now proxies the download links. This means users can access logs and build artifacts directly from the package page, even if they do not have a GitHub account. So "I don't have GitHub" is no longer available as an excuse for ignoring check failures.

{{< figureforgallery src="checks2.png" alt="A screenshot of the checks table as GitHub summary" >}}


Finally, build runs now include a deployment summary generated via the [GitHub Actions Job Summaries feature](https://github.blog/news-insights/product-news/supercharging-github-actions-with-job-summaries/): navigate to any [build run](https://github.com/r-universe/jeroen/actions/runs/26840445416) and scroll down, there you find a summary table showing exactly the data deployed to R-universe during that run, including package checks and deployment results. This makes it easier to inspect builds directly from GitHub without having to cross-reference multiple pages.

