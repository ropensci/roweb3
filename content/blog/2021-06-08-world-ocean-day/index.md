---
slug: "world-ocean-day"
title: Celebrating World Ocean Day rOpenSci Style
author:
  - Steffi LaZerte
date: 2021-06-08
tags:
  - packages
  - rnoaa
  - rnaturalearth
  - robis
  - climate-change
  - ocean
  - southern-ocean
  - conservation
# The summary below will be used by e.g. Twitter cards
description: "A very short summary of your post (~ 100 characters)"
# If you have no preferred image for Twitter cards,
# delete the twitterImg and twitterAlt lines below 
# - Replace "blog" with "technotes" as needed
# - Note no "/" symbol before "blog" here
# - Note "/" between year/month/day
twitterImg: blog/2019/06/04/post-template/name-of-image.png
twitterAlt: "Alternative description of the image"
# the text below is for populating the "share on Twitter" button
# if deleted, the title of the post will be used
tweet: "A post about blabla by @username!"
# 'output' is necessary to obtain index.md
# Do not commit index.html
output: 
  html_document:
    keep_md: true
---



**Happy [World Ocean Day](https://worldoceanday.org/)!**

[World Ocean Day](https://worldoceanday.org/) is a day of celebration and action to protect our shared ocean. 

While I already appreciate the importance of protecting sensitive ecosystems, including the ocean[^1], I found the idea of World Ocean Day especially touching.

> On World Ocean Day, people around our blue planet celebrate and honor our one shared ocean, that connects us all.
>
> -- About World Ocean Day - <https://worldoceanday.org/about/>

This year has been hard, and like many, I often feel isolated and emotionally exhausted.
The idea that we have only one ocean and it connects us is a lovely way to remember that as isolated as we may feel we're all here on this planet together.

So in honour of World Ocean Day, let's take a look at some important ocean metrics using open data and open software via rOpenSci packages!

## Sea ice

One of the biggest challenges for protection our ocean is climate change[^2].
Last September the Arctic sea ice had the 2nd-lowest extent in a 40-year record[^3]. 
This isn't good for the Arctic ecosystem and has impacts not only on wildlife but on humans as well [^4]. 😿

Let's see if we can't explore ice extent ourselves using open data and open source packages part of the [rOpenSci package collections](https://ropensci.org/packages).

Here, we'll use two rOpenSci packages
- [rnoaa](https://docs.ropensci.org/rnoaa) to access NOAA data on sea ice coverage
- and [rnaturalearth](https://docs.ropensci.org/rnaturalearth) to get coastal outlines for context

(Both these packages can do so much more, so check out the docs if you're curious)

We'll also use sf for working with spatial data, dplyr for data manipulation, and ggplot2 for plotting. 

```r 
library(rnoaa)
library(rnaturalearth)

library(sf)
library(ggplot2)
library(dplyr)
```

Let's get some ice data! 
We'll use the `sea_ice()` function to grab data on ice extent for every 5 years from 1980 to 2020 (`year = seq(1980, 2020, 5)`), in September (`month = "Sep"`), and for the Arctic (North) (`pole = "N"`).

```r 
ice <- sea_ice(year = seq(1980, 2020, 5), month = "Sep", pole = "N")
```

`ice` is a list, which each list item corresponding to a year.
Let's take a brief look at what we've got, by scanning the `head()` of the first two years worth of data. 
```r 
head(ice[[1]])
```

```
     long     lat order  hole piece id group
1  125000 2100000     1 FALSE     1  0   0.1
2  150000 2100000     2 FALSE     1  0   0.1
3  150000 2075000     3 FALSE     1  0   0.1
4  125000 2075000     4 FALSE     1  0   0.1
5  125000 2100000     5 FALSE     1  0   0.1
6 -175000 2025000     1 FALSE     1  1   1.1
```

```r 
head(ice[[2]])
```

```
     long     lat order  hole piece id group
1  125000 2100000     1 FALSE     1  0   0.1
2  150000 2100000     2 FALSE     1  0   0.1
3  150000 2075000     3 FALSE     1  0   0.1
4  125000 2075000     4 FALSE     1  0   0.1
5  125000 2100000     5 FALSE     1  0   0.1
6 -175000 2025000     1 FALSE     1  1   1.1
```

Each year is a 'fortified' data frame which you could plot using `geom_polygon()`. 
But I want to get the projection right, so let's bind the rows together (adding year as a parameter) and convert to an sf object. 
We'll transform to EPSG 3411 which refers to the NSIDC Sea Ice Polar Stereographic North projection commonly used to map the Arctic.

```r 
ice_sf <- ice %>%
  bind_rows(.id = "year") %>%
  mutate(year = factor(year, labels = seq(1980, 2020, 5))) %>%
  st_as_sf(coords = c("long", "lat"), crs = 3411)
ice_sf
```

```
Simple feature collection with 13639 features and 6 fields
Geometry type: POINT
Dimension:     XY
Bounding box:  xmin: -2550000 ymin: -3250000 xmax: 2350000 ymax: 4950000
Projected CRS: NSIDC Sea Ice Polar Stereographic North
First 10 features:
   year order  hole piece id group                geometry
1  1980     1 FALSE     1  0   0.1  POINT (125000 2100000)
2  1980     2 FALSE     1  0   0.1  POINT (150000 2100000)
3  1980     3 FALSE     1  0   0.1  POINT (150000 2075000)
4  1980     4 FALSE     1  0   0.1  POINT (125000 2075000)
5  1980     5 FALSE     1  0   0.1  POINT (125000 2100000)
6  1980     1 FALSE     1  1   1.1 POINT (-175000 2025000)
7  1980     2 FALSE     1  1   1.1 POINT (-150000 2025000)
8  1980     3 FALSE     1  1   1.1   POINT (-150000 2e+06)
9  1980     4 FALSE     1  1   1.1   POINT (-175000 2e+06)
10 1980     5 FALSE     1  1   1.1 POINT (-175000 2025000)
```

This results in a collection of points, so we'll want to `summarize()` the data into multipoints by year and group, and then `st_cast()` into polygons.

```r 
ice_sf <- ice_sf %>%
  group_by(year, group) %>%
  summarize(do_union = FALSE, .groups = "drop") %>%
  st_cast(to = "POLYGON")
ice_sf
```

```
Simple feature collection with 1013 features and 2 fields
Geometry type: POLYGON
Dimension:     XY
Bounding box:  xmin: -2550000 ymin: -3250000 xmax: 2350000 ymax: 4950000
Projected CRS: NSIDC Sea Ice Polar Stereographic North
# A tibble: 1,013 x 3
   year  group                                                          geometry
   <fct> <fct>                                                     <POLYGON [m]>
 1 1980  0.1   ((125000 2100000, 150000 2100000, 150000 2075000, 125000 2075000…
 2 1980  1.1   ((-175000 2025000, -150000 2025000, -150000 2e+06, -175000 2e+06…
 3 1980  2.1   ((-1350000 1900000, -1250000 1900000, -1250000 1875000, -1275000…
 4 1980  3.1   ((-1250000 1875000, -1225000 1875000, -1225000 1850000, -1250000…
 5 1980  4.1   ((-1200000 1875000, -1175000 1875000, -1175000 1850000, -1200000…
 6 1980  5.1   ((425000 1800000, 450000 1800000, 450000 1775000, 425000 1775000…
 7 1980  6.1   ((-350000 1675000, -325000 1675000, -325000 1650000, -350000 165…
 8 1980  7.1   ((-2e+06 1650000, -1975000 1650000, -1975000 1600000, -2e+06 160…
 9 1980  8.1   ((750000 1625000, 875000 1625000, 875000 1600000, 850000 1600000…
10 1980  9.1   ((-2075000 1525000, -2050000 1525000, -2050000 1500000, -2075000…
# … with 1,003 more rows
```

Here it's important to use `do_union = FALSE` because we don't want the order of the points to change (otherwise when we plot we'll get [@accidental__aRt](https://twitter.com/accidental__aRt)!)

preservef6d502d4e11fcf65


Let's take a peak at what we've got

```r 
ggplot() +
  theme_minimal() +
  geom_sf(data = ice_sf, aes(fill = year), colour = NA)
```
{{<figure src="unnamed-chunk-6-1.png" >}}

Oooo very nice! But a couple of points could be improved

- It's a bit hard to understand the context because there's no land
- Some points up around ~45 degrees North look *highly* improbable for sea ice
- I think we can do better than ggplot2 default colours 😁

First we'll crop out that questionable data. 
We can see the extent of the data with `st_bbox()`.

```r 
st_bbox(ice_sf)
```

```
    xmin     ymin     xmax     ymax 
-2550000 -3250000  2350000  4950000 
```

It seems like that high ymax value is probably the culprit.
In the figure above, the y extents (circular axes) look roughly symmetrical.
So, let's do a rough crop and see where it gets us.
Note that I'm also using `st_make_valid()` to fix a bit of ring self-intersection that pops up as an error otherwise.

```r 
ice_sf <- ice_sf %>%
  st_make_valid() %>%
  st_crop(xmin = -2550000, ymin = -3250000, xmax = 2350000, ymax = 3500000)
```

```
Warning: attribute variables are assumed to be spatially constant throughout all
geometries
```

```r 
ggplot() +
  theme_minimal() +
  geom_sf(data = ice_sf, aes(fill = year), colour = NA)
```
{{<figure src="unnamed-chunk-8-1.png" >}}

Much better! There are definitely more precise and sophisticated ways of filtering or cropping spatial data, but this will do for now.

Next, let's get the coastline spatial data using rnaturalearth's function `ne_coastlines()`.
We'll get medium quality, return it as `sf`, then transform and crop to match the projection and extent of our ice data.

```r 
coast <- ne_coastline(scale = "medium", returnclass = "sf") %>%
  st_transform(crs = st_crs(ice_sf)) %>%
  st_crop(st_bbox(ice_sf))
```

```
Warning: attribute variables are assumed to be spatially constant throughout all
geometries
```

Now let's take another stab at mapping, using the coastline data as well as viridis scales.
```r 
ggplot() +
  theme_minimal() +
  geom_sf(data = ice_sf, aes(fill = year), colour = NA) +
  geom_sf(data = coast) +
  scale_fill_viridis_d(option = "inferno", begin = 0.1, end = 0.9)
```
{{<figure src="unnamed-chunk-10-1.png" >}}

From here, it's very apparent how much the ice extent in September has changed over the years.
There's been a fair amount of reduction especially along Russia's (top and top right) and Alaska's (left) coasts, and among Canada's Arctic Archipelago (bottom left). 

This isn't great news, and it's not new news, but as World Ocean Day is about calls to action, specifically for proecting [30% protection of the planet's land and ocean by 2030](https://worldoceanday.org/take-action/conservation-action-focus/), it's always worth the reminder that conservation is important. 


## Leopard seals
One of my favourite videos is a [TED Talk by Paul Nicklen: Animal tales from icy wonderlands](https://www.ted.com/talks/paul_nicklen_animal_tales_from_icy_wonderlands?utm_campaign=tedspread&utm_medium=referral&utm_source=tedcomshare). 
It's a fantastic view of life in the polar oceans and an amazing story of a photographer and a leopard seal. 

So in honour of that wonderful story, let's do another exploration of the ocean, but this time by looking at leopard seals in Antartica! 

preservede34533c46db6fdf


In addition to rnaturalearth, sf, dplyr, and ggplot2 which we loaded above, we'll also use stringr for extracting parts of text strings and the rOpenSci package, [robis](https://docs.ropensci.org/robis), for accessing marine observations from the [Ocean Biodiversity Information System](https://obis.org/).


```r 
library(robis)
```

```
Registered S3 method overwritten by 'httr':
  method           from  
  print.cache_info hoardr
```

```r 
library(stringr)
```

A quick internet search tells me that the scientific name of leopard seals is *Hydrurga leptonyx*, so let's get some observations!

We'll use `occurrence()` from robis, then will `select()` columns for dates, dataset names and coordinates,
and will `filter()` to coordinates closer to the pole which aren't missing a date.

```r 
seals <- occurrence(scientificname = "Hydrurga leptonyx") %>%
  select(eventDate, datasetName, decimalLongitude, decimalLatitude) %>%
  filter(decimalLatitude < -55, !is.na(eventDate)) %>%
  mutate(year = as.numeric(str_extract(eventDate, "[0-9]{4}")))
```

```
Retrieved 1952 records of approximately 1952 (100%)
```

```r 
seals
```

```
# A tibble: 776 x 5
   eventDate      datasetName             decimalLongitude decimalLatitude  year
   <chr>          <chr>                              <dbl>           <dbl> <dbl>
 1 2020-02-02T13… Happywhale - Leopard s…            -63.7           -65.0  2020
 2 1985-10-14 04… <NA>                                62.8           -63.0  1985
 3 2016-12-25T02… Happywhale - Leopard s…            -62.6           -64.7  2016
 4 2018-01-29T10… Happywhale - Leopard s…            -54.6           -63.4  2018
 5 1986-11-21 07… <NA>                               102.            -62.5  1986
 6 2020-02-18T15… Happywhale - Leopard s…            -64.1           -65.1  2020
 7 2014-02-19T11… Happywhale - Leopard s…            -63.5           -64.8  2014
 8 1985-12-16 02… <NA>                                49.0           -63.6  1985
 9 1997-12-16 05… <NA>                                86.2           -64.3  1997
10 2018-02-11T10… Happywhale - Leopard s…            -59.0           -62.2  2018
# … with 766 more rows
```

As before, we'll turn this into spatial data by using the `decimalLongitude` and `decimalLatitude` columns as our coordinates.
Because we're dealing with Lon/Lat (GPS data), we'll use the EPSG 4326 which refers to the [World Geodetic System](https://en.wikipedia.org/wiki/World_Geodetic_System) (WGS84).
We'll end by transforming to a projection more appropriate for the Antarctic, EPSG 3412.

```r 
seals_sf <- seals %>%
  st_as_sf(coords = c("decimalLongitude", "decimalLatitude"), crs = 4326) %>%
  st_transform(3412)
```

Let's get a land mass to plot our points on, for context.

```r 
antarctic <- ne_countries(returnclass = "sf") %>%
  st_transform(3412) %>%
  st_make_valid() %>%        # To avoid intersection errors
  st_crop(st_bbox(seals_sf)) # Crop to our data
```

```
Warning: attribute variables are assumed to be spatially constant throughout all
geometries
```

Finally, let's take a look!
```r 
ggplot() +
  geom_sf(data = antarctic, fill = "grey") +
  geom_sf(data = seals_sf, aes(colour = year)) +
  geom_sf_text(data = filter(seals_sf, year < 1950), aes(label= year), hjust = 1.1) +
  scale_colour_viridis_c(end = 0.85)
```
{{<figure src="unnamed-chunk-15-1.png" >}}

So cool to see how far back observations have been made

## Interested in learning more about these awesome packages?

**[rnoaa](https://docs.ropensci.org/rnoaa)**

- [2014-03-13 rOpenSci blog "rnoaa - Access to NOAA National Climatic Data Center data"](https://ropensci.org/blog/2014/03/13/rnoaa/)
- [2018-12-04 rOpenSci blog "rnoaa: new data sources and NCDC units"](https://ropensci.org/blog/2018/12/04/rnoaa-update/)
- [Use cases](https://discuss.ropensci.org/search?q=rnoaa%20category%3A10)

**[rnaturalearth](https://docs.ropensci.org/rnaturalearth) **

- [Use cases](https://discuss.ropensci.org/search?q=rnaturalearth%20category%3A10)

**[robis](https://docs.ropensci.org/robis)**

- [2017-01-25 rOpenSci blog "Extracting and Enriching Ocean Biogeographic Information System (OBIS) Data with R](https://ropensci.org/blog/2017/01/25/obis/)

## Have your own use cases?
We'd love to share them!
Consider adding your use cases (description and code snippet or link to code/post) to the rOpenSci [public forum](https://discuss.ropensci.org/c/usecases/).

There's a template to help & we'll tweet any posted to share uses of rOpenSci packages.

> Take care and remember to **celebrate [World Ocean Day](https://worldoceanday.org/)!**

[^1]: Why should we care about the ocean <https://oceanservice.noaa.gov/facts/why-care-about-ocean.html>
[^2]: The Ocean and Climate Change <https://www.iucn.org/resources/issues-briefs/ocean-and-climate-change>
[^3]: Arctic Report Card: Update for 2020 <https://arctic.noaa.gov/Report-Card/Report-Card-2020/ArtMID/7975/ArticleID/891/Sea-Ice>
[^4]: Six ways loss of Arctic ice impacts everyone <https://www.worldwildlife.org/pages/six-ways-loss-of-arctic-ice-impacts-everyone>
