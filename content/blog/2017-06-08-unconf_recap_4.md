---
slug: unconf_recap_4
title: 'Unconf projects 4: cityquant, notary, packagemetrics, pegax'
date: '2017-06-08'
author:
  - Scott Chamberlain
topicid: 742
tags:
  - community
  - meetings
  - unconf
  - unconf17
params:
  doi: "10.59350/czh0x-b2z33"
---

Continuing our series of blog posts ([day 1](/blog/2017/06/05/unconf_recap_1), [day 2](/blog/2017/06/06/unconf_recap_2), [day 3](/blog/2017/06/07/unconf_projects_3)) this week about [unconf 17](/blog/2017/06/02/unconf2017).


## `cityquant`
**Summary:**  The goal with the `cityquant` project was to build a digital dashboard for sustainable cities.

![sustain](https://sustainsb.github.io/images/scores_flower-plot_sbcounty.png)

They also had a "spin-off" project called [selfquant](https://github.com/maczokni/selfquant) to get data from a quantified self google sheets template to keep track of weekly performance in various categories.

**Team:** [Reka Solymosi](https://github.com/maczokni), [Ben Best](https://github.com/bbest), [Chelsea Ursaner](https://github.com/chursaner), [Tim Phan](https://github.com/timphan), [Jasmine Dumas](https://github.com/jasdumas)

**Github:** <https://github.com/ropenscilabs/cityquant>

&nbsp;

## `notary`

**Summary:** `notary` is actually two things:

`notary`: An R package for signing and verification of R packages. It has functions for installing and verifying packages, validating GitHub releases, sourcing files with verification, and more.

{{< figure src = "/img/blog-images/2017-06-08-unconf_recap_4/notarylogo.png" width = "100" class = "center" caption = "notary package logo" alt = "security book" >}}

`r-security-practices`: A [bookdown book](https://ropenscilabs.github.io/r-security-practices/index.html) targeting users, developers, and admins on R security best practices.

{{< figure src = "/img/blog-images/2017-06-08-unconf_recap_4/rsecuritybook.png" width = "300" class = "center" caption = "security book" alt = "security book" >}}

**Team:** [Stephanie Locke](https://github.com/stephlocke), [Oliver Keyes](https://github.com/Ironholds), [Rich FitzJohn](https://github.com/richfitz), [Bob Rudis](https://github.com/hrbrmstr), [Joroen Ooms](https://github.com/jeroen)

**Github:** <https://github.com/ropenscilabs/notary> / <https://github.com/ropenscilabs/r-security-practices>

&nbsp;

## `packagemetrics`

**Summary:**  `packagemetrics` is a package for helping you choose which package to use. Their tool collects metrics including CRAN downloads, GitHub stars, whether it's tidyverse compatible, whether it has tests and vignettes, number of contributors, and more!

This project combined two ideas from our brainstorming stage: [Avoiding redundant / overlapping packages](https://github.com/ropensci/unconf17/issues/78) and [A framework for reproducible tables](https://github.com/ropensci/unconf17/issues/69).

{{< figure src = "/img/blog-images/2017-06-08-unconf_recap_4/pkgmetrics.png" width = "100" class = "center" caption = "packagemetrics package example" alt = "packagemetrics" >}}

**Team:** [Erin Grand](https://github.com/eringrand), [Sam Firke](https://github.com/sfirke), [Hannah Frick](https://github.com/hfrick), [Becca Krouse](https://github.com/bzkrouse), [Lori Shepherd](https://github.com/lshep)

**Github:** <https://github.com/ropenscilabs/packagemetrics>

&nbsp;

## `pegax`

**Summary:**  `pegax` is a very alpha client for parsing taxonomic names. Taxonomic names are things such as _Homo sapiens_ (human beings) [wikispecies](https://species.wikimedia.org/wiki/Homo_sapiens), or _Ursus americanus_ (american black bear) [wikispecies](https://species.wikimedia.org/wiki/Ursus_americanus), or _Balaenoptera musculus_ (blue whale) [wikispecies](https://species.wikimedia.org/wiki/Balaenoptera_musculus). Taxonomic names can be hard to parse - and thus something called [Parsing Expression Grammar (PEG)](https://en.wikipedia.org/wiki/Parsing_expression_grammar) can be employed to help. We were lucky that Oliver Keyes just started an R package for PEGs in R called [piton](https://github.com/Ironholds/piton) - which is now used in `pegax` to parse taxonomic names.

{{< figure src = "/img/blog-images/2017-06-08-unconf_recap_4/pegax.png" width = "100" class = "center" caption = "packagemetrics package example" alt = "packagemetrics" >}}

**Team:**

[Scott Chamberlain](https://github.com/sckott) (with help from [Oliver Keyes](https://github.com/kellobri))

**Github:** <https://github.com/ropenscilabs/pegax>

