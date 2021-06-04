---
slug: "world-ocean-day"
title: Celebrating World Ocean Day rOpenSci Style
# Delete the package_version line below if your post is not about a package
package_version: 0.1.0
author:
  - Steffi LaZerte
# Set the date below to the publication date of your post
date: 2021-06-08
# Minimal tags for a post about a community-contributed package 
# that has passed software peer review are listed below
# Consult the Technical Guidelines for information on choosing tags
tags:
  - Software Peer Review
  - packages
  - R
  - community
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
My background in biology (and animal behaviour) and my enthusiasm for nature and the outdoors definitely help feel the value of protecting important ecosystems,
but the idea that we have one ocean and it connects us all is something I find particularly meaningful. 
I find this especially so now when many of us feel isolated and emotionally exhausted. 

So in honour of World Ocean Day, let's take a look at some important ocean metrics using open data and open softare via rOpenSci packages!

Last September the Arctic sea ice had the 2nd-lowest extent in a 40-year record[^1]. 
This isn't good 😿 for the Arctic ecosystem and has impacts not only on wildlife but on humans as well[^2]. 

Let's see if we can't explore this phenomenon ourselves using open data and open source packages part of the [rOpenSci collections](https://ropensci.org/packages).

Specifically, I want to look at sea ice extent and map it.
We'll use two rOpenSci packages:
- [rnoaa](https://docs.ropensci.org/rnoaa) package to access NOAA data on sea ice coverage
- [rnaturalearth](https://docs.ropensci.org/rnaturalearth) package to get coastal outlines for context

We'll also use sf for handling spatial data, dplyr for data manipulation, and ggplot2 for plotting. 
And finally, because I can be lazy, we'll use purrr for easy-to-use apply functions.

```r 
library(rnoaa)
library(rnaturalearth)

library(sf)
library(ggplot2)
library(dplyr)
library(purrr)
```

Let's get some ice data! 
We'll use the `sea_ice()` function to grab data on ice extent for every 5 years from 1980 to 2020 (`year = seq(1980, 2020, 5)`), in September (`month = "Sep"`), and for the Arctic (North) (`pole = "N"`).
```r 
ice <- sea_ice(year = seq(1980, 2020, 5), month = "Sep", pole = "N")
```

```
Regions defined for each Polygons
Regions defined for each Polygons
Regions defined for each Polygons
Regions defined for each Polygons
Regions defined for each Polygons
Regions defined for each Polygons
Regions defined for each Polygons
Regions defined for each Polygons
Regions defined for each Polygons
```

```r 
map(ice[1:2], head) # Just to look at the head of the first two years worth of data
```

```
[[1]]
     long     lat order  hole piece id group
1  125000 2100000     1 FALSE     1  0   0.1
2  150000 2100000     2 FALSE     1  0   0.1
3  150000 2075000     3 FALSE     1  0   0.1
4  125000 2075000     4 FALSE     1  0   0.1
5  125000 2100000     5 FALSE     1  0   0.1
6 -175000 2025000     1 FALSE     1  1   1.1

[[2]]
     long     lat order  hole piece id group
1  125000 2100000     1 FALSE     1  0   0.1
2  150000 2100000     2 FALSE     1  0   0.1
3  150000 2075000     3 FALSE     1  0   0.1
4  125000 2075000     4 FALSE     1  0   0.1
5  125000 2100000     5 FALSE     1  0   0.1
6 -175000 2025000     1 FALSE     1  1   1.1
```

This results in a list of fortified data frames which you could plot using `geom_polygon()`. 
But I want to get the projection right, so let's bind the rows together (adding year as a parameter) and convert to an sf object. 

We'll use the EPSG (projection) of 3411 which is for "NSIDC Sea Ice Polar Stereographic North", and is used by NOAA for Sea Ice[^3].

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

This results in a collection of points, so we'll want to summarize the data into multipoints by year and group, and then cast into polygons.

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

preservee16cf16979074f7f


Let's take a peak at what we've got

```r 
ggplot() +
  theme_minimal() +
  geom_sf(data = ice_sf, aes(fill = year), colour = NA)
```
{{<figure src="unnamed-chunk-5-1.png" >}}

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
{{<figure src="unnamed-chunk-7-1.png" >}}

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
{{<figure src="unnamed-chunk-9-1.png" >}}

From here, it's very apparent how much the ice extent in September has changed over the years.
There's been a fair amount of reduction especially along Russia's (top and top right) and Alaska's (left) coasts, and among Canada's Arctic Archipelago (bottom left). 

This isn't great news, and it's not new news, but as World Ocean Day is about calls to action, specifically for proecting [30% protection of the oceans by 2030](https://worldoceanday.org/take-action/conservation-action-focus/), it's always worth the reminder. 


## Leopard seals
One of my favourite videos is a [TED Talk by Paul Nicklen: Animal tales from icy wonderlands](https://www.ted.com/talks/paul_nicklen_animal_tales_from_icy_wonderlands?utm_campaign=tedspread&utm_medium=referral&utm_source=tedcomshare). It's a fantastic view of life in the polar oceans and an amazing story of a photographer and a leopard seal. 

So in honour of this wonderful story, let's take a different approach and look at leopard seals! 

preserve9ea86c17bb133267

Andrew Shiva / Wikipedia / CC BY-SA 4.0

```r 
library(robis)
library(stringr)
library(lubridate)

seals <- occurrence(scientificname = "Hydrurga leptonyx")
seals
```

```
# A tibble: 1,952 x 127
   country  date_year scientificNameID      year  scientificName individualCount
   <chr>        <int> <chr>                 <chr> <chr>          <chr>          
 1 Austral…      1988 http://www.marinespe… 1988  Hydrurga lept… 2              
 2 <NA>          2020 urn:lsid:marinespeci… <NA>  Hydrurga lept… <NA>           
 3 <NA>            NA urn:lsid:marinespeci… <NA>  Hydrurga lept… 1              
 4 Austral…      1987 urn:lsid:marinespeci… 1987  Hydrurga lept… 1.0            
 5 Antarct…      1985 http://www.marinespe… 1985  Hydrurga lept… 1              
 6 Austral…      1987 http://www.marinespe… 1987  Hydrurga lept… 1              
 7 <NA>          2016 urn:lsid:marinespeci… <NA>  Hydrurga lept… <NA>           
 8 <NA>          2018 urn:lsid:marinespeci… <NA>  Hydrurga lept… <NA>           
 9 Austral…      1976 urn:lsid:marinespeci… <NA>  Hydrurga lept… 1              
10 Austral…      1978 urn:lsid:marinespeci… <NA>  Hydrurga lept… 1              
# … with 1,942 more rows, and 121 more variables: dropped <lgl>, aphiaID <int>,
#   decimalLatitude <dbl>, subclassid <int>, phylumid <int>, familyid <int>,
#   catalogNumber <chr>, occurrenceStatus <chr>, basisOfRecord <chr>,
#   superclass <chr>, fieldNotes <chr>, modified <chr>,
#   maximumDepthInMeters <int>, id <chr>, day <chr>, order <chr>,
#   superclassid <int>, infraorderid <int>, dataset_id <chr>, locality <chr>,
#   decimalLongitude <dbl>, collectionCode <chr>, date_end <dbl>,
#   speciesid <int>, occurrenceID <chr>, suborderid <int>, date_start <dbl>,
#   month <chr>, genus <chr>, bibliographicCitation <chr>, eventDate <chr>,
#   scientificNameAuthorship <chr>, coordinateUncertaintyInMeters <chr>,
#   absence <lgl>, genusid <int>, originalScientificName <chr>, marine <lgl>,
#   minimumDepthInMeters <int>, subphylumid <int>, institutionCode <chr>,
#   date_mid <dbl>, class <chr>, informationWithheld <chr>, suborder <chr>,
#   infraorder <chr>, orderid <int>, sex <chr>, kingdom <chr>, waterBody <chr>,
#   specificEpithet <chr>, recordedBy <chr>, classid <int>, phylum <chr>,
#   species <chr>, subphylum <chr>, subclass <chr>, family <chr>,
#   kingdomid <int>, node_id <chr>, flags <chr>, sss <dbl>,
#   shoredistance <int>, sst <dbl>, bathymetry <dbl>,
#   associatedReferences <chr>, type <chr>, taxonRemarks <chr>,
#   recordNumber <chr>, georeferencedDate <chr>, verbatimEventDate <chr>,
#   license <chr>, organismID <chr>, dateIdentified <chr>,
#   ownerInstitutionCode <chr>, taxonRank <chr>, vernacularName <chr>,
#   eventTime <chr>, nomenclaturalCode <chr>, footprintWKT <chr>,
#   datasetName <chr>, geodeticDatum <chr>, taxonomicStatus <chr>,
#   coordinatePrecision <chr>, datasetID <chr>, organismQuantity <chr>,
#   organismQuantityType <chr>, dynamicProperties <chr>,
#   occurrenceRemarks <chr>, depth <dbl>, lifeStage <chr>,
#   taxonConceptID <chr>, language <chr>, eventID <chr>, rightsHolder <chr>,
#   organismScope <chr>, organismName <chr>, samplingProtocol <chr>,
#   locationRemarks <chr>, identifiedBy <chr>, verbatimCoordinates <chr>, …
```

```r 
seals_sf <- seals %>%
  select(eventDate, datasetName, individualCount, decimalLongitude, decimalLatitude) %>%
  filter(decimalLatitude < -55, !is.na(eventDate)) %>%
  mutate(year = as.numeric(str_extract(eventDate, "[0-9]{4}"))) %>%
  st_as_sf(coords = c("decimalLongitude", "decimalLatitude"), crs = 4326) %>%
  st_transform(3412)
```


```r 
antarctic <- ne_countries(returnclass = "sf") %>%
  st_transform(3412) %>%
  st_make_valid() %>%
  st_crop(st_bbox(seals_sf))
```

```
Warning: attribute variables are assumed to be spatially constant throughout all
geometries
```

```r 
ggplot() +
  geom_sf(data = antarctic, fill = "grey") +
  geom_sf(data = seals_sf, aes(colour = year)) +
  geom_sf_text(data = filter(seals_sf, year < 1950), aes(label= year), hjust = 1.1) +
  scale_colour_viridis_c(end = 0.85)
```
{{<figure src="unnamed-chunk-12-1.png" >}}

Wow! There are some really old observations here, let's see where they're coming from
```r 
filter(seals_sf, year < 1950) %>%
  select(year, datasetName) %>%
  st_drop_geometry() %>%
  arrange(year)
```

```
# A tibble: 8 x 2
   year datasetName                                                          
  <dbl> <chr>                                                                
1  1898 Royal Belgian Institute of Natural Sciences Mammalia collection      
2  1910 British Antarctic (Terra Nova) Expedition Zoology                    
3  1913 <NA>                                                                 
4  1913 <NA>                                                                 
5  1931 <NA>                                                                 
6  1931 <NA>                                                                 
7  1940 Biological records from the U.S Antarctic Service Expedition, 1939-41
8  1940 Biological records from the U.S Antarctic Service Expedition, 1939-41
```

What about the more recent observations?
```r 
filter(seals_sf, year > 2000) %>%
  pull(datasetName) %>%
  unique()
```

```
[1] "Happywhale - Leopard seal in Southern Ocean"      
[2] NA                                                 
[3] "Happywhale - Leopard seal in South Atlantic Ocean"
```

Happywhale? I'd never head of this before, but 

## Interested in learning more about these awesome packages?

- robis blog
- etc.
- etc.

## Have your own use cases?
We'd love to share them!
Go to forum ...
we tweet....


[^1]: Arctic Report Card: Update for 2020 <https://arctic.noaa.gov/Report-Card/Report-Card-2020/ArtMID/7975/ArticleID/891/Sea-Ice>
[^2]: Six ways loss of Arctic ice impacts everyone <https://www.worldwildlife.org/pages/six-ways-loss-of-arctic-ice-impacts-everyone>
[^3]: See the "User Guide" at the Sea Ice data page <https://nsidc.org/data/g02135>
