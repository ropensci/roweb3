---
title: "Automated generation of a taxonomic classification document"
reporter: "[Joel Nitta](https://github.com/joelnitta)"
date: 2025-06-13
image: use-case-3.jpeg
alt: "Screenshot showing taxonomic database as plain text CSV above, with and arrow pointing down. Below it is a screenshot of a webpage with a human readable version of the same data as a taxonomic classification scheme."
resource: "taxlist, targets"
original_url: "https://github.com/orgs/ropensci/discussions/3"
language: English
---

### rOpenSci package or resource used

taxlist, targets

### What did you do?

I import a taxonomic database of [ferns and lycophytes](https://pteridogroup.github.io/) in [Darwin Core format](https://docs.ropensci.org/dwctaxon/articles/what-is-dwc.html) into R, then use [taxlist](https://github.com/ropensci/taxlist) to help convert it into a human-readable classification. The code is automated using [targets](https://github.com/ropensci/targets) and runs as a cron-job once per day. Whenever the source data are updated, the workflow runs and pushes the final result (a Markdown file) to GitHub and updates the website.

### URL or code snippet for your use case

Classification: https://pteridogroup.github.io/ppg.html
Source code: https://github.com/pteridogroup/ppg

### Image

{{< figure src="use-case-3.jpeg" alt="Screenshot showing taxonomic database as plain text CSV above, with and arrow pointing down. Below it is a screenshot of a webpage with a human readable version of the same data as a taxonomic classification scheme." >}}

### Sector

Academic

### Field of application

Taxonomy

### Mastodon profile URL

https://fosstodon.org/@joelnitta

### Bluesky profile URL

https://bsky.app/profile/joelnitta.com

