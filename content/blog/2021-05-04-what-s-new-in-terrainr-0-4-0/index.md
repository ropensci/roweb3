---
title: What's New in terrainr 0.4.0?
author:
  - Mike Mahoney
date: '2021-05-04'
slug: what-s-new-in-terrainr-0-4-0
categories: []
tags:
  - API client
  - API
  - community
  - CRAN
  - data access
  - data visualisation
  - data-retrieval
  - ggplot2
  - geospatial
  - Software Peer Review
  - terrainr
  - USGS
  - visualization
  - tech notes
package_version: 0.4.0
description: The new CRAN release of terrainr improves consistency, CRS logic, and fixes some bugs.
twitterImg: blog/2021/05/04/what-s-new-in-terrainr-0-4-0/washington.jpg
twitterAlt: A 3D rendering of the summit of Mt. Washington, including watershed boundaries and river lines.
tweet: What's new in terrainr 0.4.0? By @mikemahoney218
output:
  html_document:
    keep_md: yes
---



terrainr version 0.4.0 is now on CRAN! This version is a relatively minor update 
that shouldn't impact most workflows, but makes some changes to improve the 
logic and consistency of the package. The rest of this post runs through the 
changes you can expect if you `update.packages` any time soon!

## What's a terrainr?

[terrainr](https://docs.ropensci.org/terrainr/) is an R package for the 
retrieval and visualization of spatial data. It provides functions to download
elevation data and basemap tiles for points within the United States (using 
public domain data from the USGS National Map), visualize them in R via ggplot2,
and process them for 3D visualization using the Unity 3D engine. You can see
[the docs and access the GitHub repo here!](https://docs.ropensci.org/terrainr/)

{{< figure src = "washington.jpg" alt = "A 3D rendering of the summit of Mt. Washington, including watershed boundaries and river lines." >}}

terrainr is a recent addition to rOpenSci, passing through the 
[peer-review process](https://github.com/ropensci/software-review/issues/416) at
the end of February. The package is a lot better for the comments from 
[Mike Johnson](https://github.com/mikejohnson51) and 
[Sydney Foks](https://github.com/sfoks) during the review process, and I'm 
incredibly grateful for their contribution.

Now, as for what's new in version 0.4.0:

## `merge_rasters` can handle tiles with different numbers of bands

The old implementation of `merge_rasters` was very bulky, read all your map 
tiles into memory at once, and was a bit of a mess to maintain thanks to the 
large number of paths you could theoretically take through the code. The commit
(suggested via rOpenSci review!) replacing it with `gdalwarp` via `sf` is 
probably the single best code improvement I've made to this package. Unfortunately,
the old method could also handle merging rasters with differing numbers of 
bands, while the simple `gdalwarp` fix couldn't.

So the old implementation is back as an internal method while I look for a 
better solution to this problem. `merge_rasters` will now attempt to use 
`gdalwarp` to merge your input files and then fall back to (a massively 
simplified version of) the older version if `gdalwarp` fails.

As for why you'd want to automatically merge rasters with different numbers of 
bands, well...

## `get_tiles` doesn't auto-download transparency values for NAIP imagery

NAIP orthophotography provides fantastic continuous 1-meter images for the 
continental United States. When downloading these photos with the argument 
`transparency = true`, which used to be the default, _most_ photos don't have
any transparent pixels to talk about and as such are returned and saved as 3
band rasters (RGB images). _Some_ photos, however, do have such pixels and are
returned with a 4th alpha band. This causes problems with `gdalwarp` as well as
image editing software, and the majority of the time users are not better served 
by these pixels being transparent. 

As a result, this version changes the default `transparency` argument for 
`get_tiles` and `hit_national_map_api` to `false` when downloading NAIP images
(no other data source is impacted). This is one of the reasons this version 
gets a 0.x.0 number -- while it should be a small change, the same inputs to 
functions no longer returns the same outputs (though I doubt people would 
notice), so I'm counting this as a breaking change. 

There's a slightly more impactful breaking change worth noting though:

## Functions pay attention to the provided CRS

This header is actually about two distinct changes.

First, another new behavior with `get_tiles` is that rather than assuming the 
provided data and downloaded image should both be using the WGS84 CRS (EPSG 
4326), `get_tiles` will now infer the EPSG CRS from any provided `sf` or 
`Raster` object. If the numeric code is missing, this function will still assume
4326.

Similarly, rather than specifying `target_crs` in `vector_to_overlay`, this 
function will now return an overlay projected to match `reference_raster`'s CRS.
Missing CRS are handled slightly differently here -- if the `error_crs` argument
is `NULL`, this function will warn; if `FALSE` it will assume 4326, and if 
`TRUE` it will interrupt the function with an error.

Those are the major changes to this iteration! On top of these there are some 
minor changes to the package internals, slowly removing dead code paths and 
simplifying things behind the scenes. If you have any problems (bugs or missing
features) with the package, feel free to [open an issue!](https://github.com/ropensci/terrainr/issues)
