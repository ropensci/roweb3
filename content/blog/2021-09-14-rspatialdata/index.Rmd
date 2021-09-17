---
title: The Story Behind rspatialdata
author:
  - Dilinie Seimon
  - Varsha Ujjinni Vijay Kumar
date: '2021-09-14'
slug: rspatialdata
categories: []
tags:
  - rnaturalearth
  - osmdata
  - MODIStsp
  - nasapower
  - rdhs
  - open-data
  - spatial
  - geospatial
  - tutorial
  - community
description: "rspatialdata: tutorials for working with spatial data using R, featuring many rOpenSci packages!"
twitterImg: blog/2021/09/14/rspatialdata/rspatialdata-home.jpg
twitterAlt: "Screenshot of rspatialdata homepage featuring multicoloured tiles each outlining a different type of spatial data"
output:
  html_document:
    keep_md: yes
---


As two postgrad students on summer vacation but with no travel plans (during this global pandemic of course), we took up an internship at King Abdullah University of Science and Technology (KAUST) last summer and ended up collaborating on a really cool project with [Paula Moraga](https://www.paulamoraga.com/)! Did we mention that we worked in Saudi Arabia, while living in Australia? All is well when we have the internet.

We also ended up [presenting our project at useR! 2021](https://www.youtube.com/watch?v=nLikORFBKgk), and winning an award for the most outstanding lightning talk! So, keep reading to see how we got there!

Although there is so much data being collected in multiple disciplines and made openly available, not many know how to retrieve and utilize these resources. Spatial and spatio-temporal data are two of the most commonly collected data types and also used in research across a wide range of domains.

With the R programming language becoming increasingly popular among academics, researchers, and scientists, and because spatial data is easier to interpret when visualized, Paula thought it would be a great idea to create a repository of data sources and simple tutorials on how to retrieve and visualize spatial data using R.

This idea then became [rspatialdata](https://rspatialdata.github.io/) - a collection of data sources and tutorials on downloading and visualising spatial data using R.

{{< figure src = "rspatialdata-home.jpg" width = "600" alt = "Screenshot of rspatialdata homepage featuring multicoloured tiles each outlining a different type of spatial data" class = "center" link = "https://rspatialdata.github.io/">}}

rspatialdata consists of a non-exhaustive list of R-packages which have been developed as clients for different spatio-temporal databases and APIs. It also consists of tutorials on how to use these R packages, understand the different types of spatial data objects available and create visualizations using them. After doing a lot of research, we managed to pick out a few R-packages which we were confident gave up-to-date data from reliable sources.

Coincidentally, much of what we picked out happened to be rOpenSci packages! We were amazed at how rich and easy to use most of these packages were. So here is our experience using those packages and some things we really enjoyed doing!


## Downloading boundaries of countries using [rnaturalearth](https://docs.ropensci.org/rnaturalearth)

The rnaturalearth package (by [Andy South](https://github.com/andysouth)) facilitates communication with [Natural earth](http://www.naturalearthdata.com/) map data. It allows us to easily download and visualize boundaries of countries and boundaries of states within countries as well.

We used rnaturalearth to download the boundaries of countries in many of our tutorials - including our tutorials on [elevation](https://rspatialdata.github.io/elevation.html), [rainfall](https://rspatialdata.github.io/rainfall.html) and [humidity](https://rspatialdata.github.io/humidity.html).


## Visualizing hospitals in Lagos, Nigeria using [osmdata](https://docs.ropensci.org/osmdata/)

osmdata (by [Mark Padgham](/author/mark-padgham/)) is an R package for downloading spatial data from [OpenStreetMap (OSM)](https://www.openstreetmap.org/) - a very cool open source project. We were amazed at the huge variety of spatial features available to us! We were able to download spatial data about almost anything from amenities such as colleges, cinemas, hospitals and banks, to different types of highways and streets such as motorways, residential streets and service lanes.

We used the osmdata package to download and visualize hospitals in Lagos, Nigeria. Then we also downloaded spatial data for different types of highways, streets and waterways in Lagos, and created the following map entirely using data retrieved through osmdata!


{{< figure src = "hospitals-lagos-nigeria.jpg" width = "600" alt = "A black and white map of Logos, Nigeria, showing highways in orange, smaller streets in grey, rivers in light blue, and navy blue shapes outlining hospital locations" class = "center" link = "https://rspatialdata.github.io/osm.html">}}

Have a read through our [Open Street Map data tutorial](https://rspatialdata.github.io/osm.html) for a complete tutorial on how to install the osmdata package, find what spatial features are available, learn how to download these features and also create some cool maps (including an interactive one)!


## Visualizing vegetation in Mongolia and land cover in Zimbabwe using [MODIStsp](https://docs.ropensci.org/MODIStsp/)

[MODIS (Moderate Resolution Imaging Spectroradiometer)](https://modis.gsfc.nasa.gov/) is an instrument aboard the NASA Terra and Aqua satellites, which orbits the entire Earth every 1-2 days, acquiring data at different spatial resolutions. The data acquired by MODIS describes features of the land, oceans and the atmosphere.

MODIStsp - an acronym for ‘MODIS Time Series Processing’ (by [Lorenzo Busetto](https://github.com/lbusett) and [Luigi Ranghetti](https://github.com/ranghetti)), is an R package for downloading and pre-processing time series raster data from MODIS [data products](https://modis.gsfc.nasa.gov/data/dataprod/).

We used the [MODIS Vegetation Index Products (NDVI and EVI)](https://modis.gsfc.nasa.gov/data/dataprod/mod13.php), to visualize the Normalized Difference Vegetation Index in Mongolia.

{{< figure src = "vegetation-mongolia.jpg" width = "600" alt = "A map of Mongolia coloured by the Normalized Difference Vegetation Index(NDVI). The map shows the North of Mongolia to have a higher NDVI(coloured in yellow) compared to the South(coloured in dark blue)"  class = "center" link = "https://rspatialdata.github.io/vegetation.html">}}

We also used the [MODIS Land Cover Type Products](https://modis.gsfc.nasa.gov/data/dataprod/mod12.php) to visualize the land cover classification in Zimbabwe.

{{< figure src = "land-cover-zimbabwe.jpg" width = "600" alt = "A map of Zimbabwe with its area colored by the corresponding land cover type - such as grasslands, croplands, barren etc." class = "center" link = "https://rspatialdata.github.io/land_cover.html">}}

Using the MODIStsp package made it so much easier to find what data products were available and also directly download and save this data using R. Our [Vegetation](https://rspatialdata.github.io/vegetation.html) and [Land Cover](https://rspatialdata.github.io/land_cover.html) tutorials explain how we used the MODIStsp R package to download data and create cool maps.


## Visualizing rainfall in Gansu, China and relative humidity in Western Australia using [nasapower](https://docs.ropensci.org/nasapower/)

nasapower (by [Adam Sparks](/author/adam-sparks/)) is a client for the '[NASA POWER](https://power.larc.nasa.gov/)' global meteorology, surface solar energy and climatology data API, and aims to make it quick and easy to download climatology data for analysis, visualization, modeling and many other purposes.

We used the nasapower package to retrieve rainfall and humidity data, and it was such a simple task. We only had to submit the duration of data we needed along with the geographical location, and the package took care of all the hard work.

We downloaded relative humidity and rainfall data using the nasapower package and then visualized the relative humidity in Western Australia and the rainfall in Gansu, China.

{{< figure src = "relative-humidity-western-australia.jpg" width = "600" alt = "An outline map of Australia and its states. The area of Western Australia is coloured by its relative humidity, with the coastal regions colored in yellow showing higher relative humidity, and the central region of Australia colored in dark blue showing much lower relative humidity." class = "center" link = "https://rspatialdata.github.io/humidity.html" >}}

{{< figure src = "rainfall-gansu-china.jpg" width = "600" alt = "An outline map of China and its states. The area of Gansu is coloured by its rainfall level, and shows a gradient from dark blue(low rainfall) to yellow(high rainfall) from North to South." class = "center" link = "https://rspatialdata.github.io/rainfall.html" >}}

Take a look at our [rainfall](https://rspatialdata.github.io/rainfall.html) and [humidity](https://rspatialdata.github.io/humidity.html) tutorials for a complete guide on how to use the nasapower package to download data and how to create cool visualizations using the data.


## Retrieving demographic and health survey data using [rdhs](https://docs.ropensci.org/rdhs/)

The rdhs package (by [OJ Watson](/author/oj-watson/) and [Jeff Eaton](https://github.com/jeffeaton)) is an API client for [Demographic and Health Surveys (DHS)](https://www.dhsprogram.com/) data - which is a collection of population, health, HIV and nutrition data from more than 400 surveys in over 90 countries. This data is considered to be sensitive and hence requires one to set up an account with DHS and request permission to access the data.

Although this may look like a tedious process, the rdhs package makes it very smooth by allowing us to test out the functions of the package using model data. So one could even start on the analysis while waiting for data access rights!

Read through our tutorial on [Demographic and Health Surveys (DHS)](https://rspatialdata.github.io/dhs-data.html) for more details on how to use the rdhs package.




> Our goal for rspatialdata was not to be a comprehensive list of R packages or tutorials, but to be a starting point for anyone to find and download spatial data related to different domains, and visualize different types of spatial data objects using different approaches. So give it a go and let us know how you did!

