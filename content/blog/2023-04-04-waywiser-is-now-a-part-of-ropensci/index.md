---
slug: "post-template"
title: waywiser is Now a Part of rOpenSci
author:
  - Mike Mahoney
# Set the date below to the publication date of your post
date: 2023-04-04
# Minimal tags for a post about a community-contributed package 
# that has passed software peer review are listed below
# Consult the Technical Guidelines for information on choosing tags
tags:
  - Software Peer Review
  - packages
  - R
  - tech notes
  - geospatial
  - tidymodels
# The summary below will be used by e.g. Twitter cards
description: "Plus version 0.3.0 now on CRAN, and a new preprint"
preface: This post was originally published on [Mike Mahoney's personal blog](https://www.mm218.dev/posts/2023-03-21-waywiser-ropensci/).
---

I'm thrilled to share that [waywiser](https://docs.ropensci.org/waywiser/), my R package focused on providing framework-agnostic (but [tidymodels](https://www.tidymodels.org/)-friendly) methods for assessing models fit to spatial data[^terminology], has passed [peer review](/software-review/) and been accepted to [rOpenSci](/). As always, [the review process](https://github.com/ropensci/software-review/issues/571) improved the package immensely, thanks to the thoughtful reviews of [Virgilio Gómez-Rubio](https://becarioprecario.github.io/) and [Jakub Nowosad](https://jakubnowosad.com/)[^book], as well as the shepherding of [Anna Krystalli](https://www.r-rse.eu/) and [Paula Moraga](https://www.paulamoraga.com/) as editors.

As of Monday, March the 20th, the reviewed version has officially [made its way to CRAN](https://cran.r-project.org/package=waywiser). This is a [huge update](https://docs.ropensci.org/waywiser/news/index.html#waywiser-030), bringing in a ton of new functions and improving consistency and speed across the package, and I'm excited to have it officially released.

I'm also very excited to have put out a [preprint describing the package](https://arxiv.org/abs/2303.11312), which goes a bit deeper into the logic of why and how the package implements the features it does. This is my first solo-authored paper[^solo], and by far and away the one with the most equations[^eq]. Despite both of those, I'm pretty pleased with how this paper turned out; I think it's a useful addition to the package documentation for users who want a more thorough explication of the scholarly background of package features.

[^terminology]: I use this terminology in a number of places throughout the documentation to try and emphasize that nothing about the models themselves need to be spatial. The models don't need to incorporate spatial information at all for these methods to be useful. I'll admit that it's a bit clunky, though, and have a habit of lapsing back to "spatial models".
[^book]: Only a little intimidating having my package reviewed by the authors of two of the best books on using R for spatial analysis!
[^eq]: 23 numbered equations! My undergraduate degree is in ecology, where [each additional equation per page is associated with 28% fewer citations](https://www.pnas.org/doi/abs/10.1073/pnas.1205259109); four years ago I'd never have expected I'd be writing a paper that looks like this.
[^solo]: And frankly, I don't intend to make it a habit. I highly appreciate working with collaborators, particularly with my current research group, and know that my work is usually better for having gone through multiple rounds of revisions before being released. I really missed that process while working on this paper!