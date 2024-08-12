---
slug: runiverse-frontend
title: 'A fresh new look for R-universe!'
date: '2024-06-12'
author: Jeroen Ooms
description: 'We have given the WebUI for R-universe a big refresh. This is the biggest UX overhaul in since the beginning of the project.'
photogallery: true
featured: true
tags:
  - r-universe
  - tech notes
  - registry
  - search
  - packages
  - dashboard
---

## A whole new frontend!

As you may have noticed, we have given the [WebUI for R-universe](https://ropensci.r-universe.dev/packages) a big refresh. This is the biggest UX overhaul since the beginning of the project.

The old "dashboard" had become a bit convoluted over the years as features and ideas were added and removed while the project was taking shape. The new front-end keeps the same minimal design, but has been fully rewritten to improve performance, SEO, and incorporate feedback from users.

Also the [new implementation](https://github.com/r-universe-org/frontend) should be easier to maintain and contribute to: if you want to suggest some tweaks, just follow instructions from the [readme](https://github.com/r-universe-org/frontend#readme) to run it locally and test your changes using live data.

## A quick overview of changes

You can explore the new WebUI by searching for your favorite package on [r-universe search](https://r-universe.dev/search) or navigating directly to `https://{owner}.r-universe.dev/{pkg}`. Some high-level changes to notice:

 - Pages are responsive with a max-width of 1440px to look nice on small and large screens.
 - Main contents are rendered server-side which improves performance and SEO.
 - Cleaner top navbar which links to other universe content and has a search box.
 - Universe (owner) information sidebar has moved to the left.
 - Every package gets a section with citation info (also available via the API in html, txt or cff)
 - Development and contributors chart shows proper dates on x axis and max 12 contriburors.
 - Neat table with overview of package help pages link directly to beautiful [postdoc html manuals](https://ropensci.org/blog/2022/11/29/postdoc-docs/).


{{< figureforgallery src="package1.png" alt="Screenshot of a package homepage on r-universe" >}}
{{< gallery >}}
{{< figureforgallery src="package2.png" alt="Screenshot of citation section of package homepage" >}}
{{< figureforgallery src="package3.png" alt="Screenshot of development and contributor chart" >}}
{{< figureforgallery src="package4.png" alt="Screenshot of help pages table" >}}
{{< /gallery >}}

Moreover the rendering of articles (vignettes) has improved to be a bit more readable. We hope this makes it easier to explore all the amazing written content available in R packages.

{{< figureforgallery src="article1.png" alt="Screenshot viewing an article on r-universe" >}}

## Browsing all content from a universe

The examples above display information and content from a single package. The top navbar links to the overview pages that show other content that is available in a universe (for details see our previous post: [*Discovering and learning everything there is to know about R packages using r-universe*](https://ropensci.org/blog/2023/02/27/runiverse-discovering/)).

All r-universe subdomains still use the following url scheme:

 - [`https://{owner}.r-universe.dev/builds`](https://ropensci.r-universe.dev/builds) - repository index
 - [`https://{owner}.r-universe.dev/packages`](https://ropensci.r-universe.dev/packages) - package cards
 - [`https://{owner}.r-universe.dev/articles`](https://ropensci.r-universe.dev/articles) - vignettes with titels, dates, and authors
 - [`https://{owner}.r-universe.dev/contributors`](https://ropensci.r-universe.dev/contributors) - contributions from/by this owner
 - [`https://{owner}.r-universe.dev/badges`](https://ropensci.r-universe.dev/badges) - all available badges
 - [`https://{owner}.r-universe.dev/apis`](https://ropensci.r-universe.dev/apis) - interactive tool to explore r-universe APIs

Each of these pages has been rewritten in the same frontend system with lots of style and performance tweaks. Below some more screenshots.

{{< gallery >}}
{{< figureforgallery src="builds.png" alt="Screenshot of builds tab of a repository." >}}
{{< figureforgallery src="packages.png" alt="Screenshot of packages tab of a repository." >}}
{{< figureforgallery src="articles.png" alt="Screenshot of articles tab of a repository." >}}
{{< figureforgallery src="contribution.png" alt="Screenshot of contribution tab of a repository." >}}
{{< figureforgallery src="badges.png" alt="Screenshot of badges tab of a repository." >}}
{{< figureforgallery src="api.png" alt="Screenshot of api tab of a repository." >}}
{{< /gallery >}}
