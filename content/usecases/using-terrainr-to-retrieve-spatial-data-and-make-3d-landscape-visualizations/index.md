---
title: "Using terrainr to retrieve spatial data and make 3D landscape visualizations"
reporter: "Michael Mahoney"
date: 2021-03-01
image: using-terrainr-to-retrieve-spatial-data-and-make-3d-landscape-visualizations.jpeg
resource: "[terrainr](https://docs.ropensci.org/terrainr)"
original_url: "https://discuss.ropensci.org/t/using-terrainr-to-retrieve-spatial-data-and-make-3d-landscape-visualizations/2385"
language: [English]
---

#### rOpenSci package or resource used*
[terrainr](https://github.com/ropensci/terrainr)

#### What did you do? 
Visualized Mt. St. Helens in Unity, using public-domain data from the USGS entirely retrieved and pre-processed in R.

#### URL or code snippet for your use case*
```
library(terrainr)
library(sf)
library(progressr)
handlers("progress")

st_helens <- data.frame(
  lat = 46.1914,
  lng = -122.1956
)

st_helens <- st_as_sf(st_helens, coords = c("lng", "lat"))
st_helens <- st_set_crs(st_helens, 4326)
st_helens <- set_bbox_side_length(st_helens, 8000)

with_progress(
  output_tiles <- get_tiles(st_helens,
                            services = c("elevation", "ortho"))
)

merged_tiles <- vapply(output_tiles, merge_rasters, character(1))
mapply(
  function(x, y) raster_to_raw_tiles(x, "st_helens", raw = y),
  merged_tiles,
  c(TRUE, FALSE)
)
```
This gets you a set of files in the format that Unity expects. You still need to import them by hand (for now...) -- see [the Unity vignette](https://docs.ropensci.org/terrainr/articles/unity_instructions.html) for more on that!

#### Image
I'm only allowed to upload one image -- [the original tweet](https://twitter.com/MikeMahoney218/status/1365684616087166976?s=20) has a few more.

![Screenshot from 2021-02-27 10-14-55|690x388](using-terrainr-to-retrieve-spatial-data-and-make-3d-landscape-visualizations.jpeg) 

#### Sector
Other


#### Field(s) of application 
ecology, geography



