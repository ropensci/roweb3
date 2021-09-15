---
title: The Story Behind rspatialdata
author:
  - Dilinie Seimon
  - Varsha Ujjinni Vijay Kumar
date: '2021-09-14'
slug: rspatialdata
categories: []
tags:
  - spatial
  - geospatial
  - tutorial
  - community
description: Using rOpenSci packages to create cool maps
output:
  html_document:
    keep_md: yes
---


As two postgrad students on summer vacation but no travel plans (during this global pandemic of course), we took up an internship at King Abdullah University of Science and Technology (KAUST) last summer and ended up collaborating on a really cool project with [Paula Moraga](https://www.paulamoraga.com/)! Did we mention that we worked in Saudi Arabia, while living in Australia? All is well when we have the internet.

We also ended up [presenting our project at useR! 2021](https://www.youtube.com/watch?v=nLikORFBKgk), and winning an award for the most outstanding lightning talk! So, keep reading to see how we got there!

Although there is so much data being collected in multiple disciplines and made openly available, not many know how to retrieve and utilize these resources. Spatial and spatio-temporal data are two of the most commonly collected data types and also used in research across a wide range of domains.

With the R programming language becoming increasingly popular among academics, researchers, and scientists, and spatial data being easier to interpret when visualized, Paula thought it was a great idea to create a repository of data sources and simple tutorials on how to retrieve and visualize spatial data using R.

This idea then became [rspatialdata](https://rspatialdata.github.io/) - a collection of data sources and tutorials on downloading and visualising spatial data using R.

rspatialdata consists of a non-exhaustive list of R-packages which have been developed as clients for different spatio-temporal databases and APIs. It also consists of tutorials on how to use these R packages, understand the different types of spatial data objects available and create visualizations using them. After doing a lot of research, we managed to pick out a few R-packages which we were confident to give out up-to-date data from reliable sources.

Coincidentally, most of what we picked out happened to be rOpenSci packages! We were amazed at how rich and easy to use most of these packages were. So here is our experience using those packages and some things we really enjoyed doing!


## Downloading boundaries of countries using [rnaturalearth](https://cran.r-project.org/web/packages/rnaturalearth/README.html)

The rnaturalearth package facilitates communication with [Natural earth](http://www.naturalearthdata.com/) map data. It allows us to easily download and visualise boundaries of countries and boundaries of states within countries as well.

We used rnaturalearth to download the boundaries of countries in many of our tutorials - including our tutorials on [elevation](https://rspatialdata.github.io/elevation.html), [rainfall](https://rspatialdata.github.io/rainfall.html) and [humidity](https://rspatialdata.github.io/humidity.html).


## Visualizing hospitals in Lagos, Nigeria using [osmdata](https://cran.r-project.org/web/packages/osmdata/index.html)

osmdata is an R package for downloading spatial data from [OpenStreetMap (OSM)](https://www.openstreetmap.org/) - a very cool open source project. We were amazed at the huge variety of spatial features available to us! We were allowed to download spatial data about almost anything from amenities such as colleges, cinemas, hospitals and banks, to different types of highways and streets such as motorways, residential streets and service lanes.

We used the osmdata package to download and visualize hospitals in Lagos, Nigeria. Then we also downloaded spatial data for different types of highways, streets and waterways in Lagos, and created the following map entirely using data retrieved through osmdata!


{{< figure src = "hospitals-lagos-nigeria.jpg" width = "600" alt = "Hospitals in Lagos" class = "center" link = "https://rspatialdata.github.io/osm.html">}}

Have a read through our [Open Street Map data tutorial](https://rspatialdata.github.io/osm.html) for a complete tutorial on how to install the osmdata package, find what spatial features are available, learn how to download these features and also create some cool maps (including an interactive one)!


## Visualizing vegetation in Mongolia and land cover in Zimbabwe using [MODIStsp](https://cran.r-project.org/web/packages/MODIStsp/index.html)

MODIS(Moderate Resolution Imaging Spectroradiometer) is an instrument aboard the NASA Terra and Aqua satellites, which orbits the entire Earth every 1-2 days, acquiring data at different spatial resolutions. The data acquired by MODIS describes features of the land, oceans and the atmosphere.

MODIStsp - an acronym for ‘MODIS Time Series Processing’, is an R package for downloading and pre-processing time series raster data from MODIS [data products](https://modis.gsfc.nasa.gov/data/dataprod/).

We used the [MODIS Vegetation Index Products (NDVI and EVI)](https://modis.gsfc.nasa.gov/data/dataprod/mod13.php), to visualize the Normalized Difference Vegetation Index in Mongolia.

{{< figure src = "vegetation-mongolia.jpg" width = "600" alt = "Vegetation in Mongolia"  class = "center" link = "https://rspatialdata.github.io/vegetation.html">}}

We also used the [MODIS Land Cover Type Products](https://modis.gsfc.nasa.gov/data/dataprod/mod12.php) to visualize the land cover classification in Zimbabwe.

{{< figure src = "land-cover-zimbabwe.jpg" width = "600" alt = "Land Cover in Zimbabwe" class = "center" link = "https://rspatialdata.github.io/land_cover.html">}}

Using the MODIStsp package made it so much easier to find what data products were available and also directly download and save this data using R. Our [Vegetation](https://rspatialdata.github.io/vegetation.html) and [Land Cover](https://rspatialdata.github.io/land_cover.html) tutorials simply explain how we used the MODIStsp R package to download data and create cool maps.


## Visualizing rainfall in Gansu, China and relative humidity in Western Australia using [nasapower](https://cran.r-project.org/web/packages/nasapower/index.html)

nasapower is a client for the 'NASA' 'POWER' global meteorology, surface solar energy and climatology data 'API', and aims to make it quick and easy to download climatology data for analysis, visualization , modeling and many other purposes.

We used the nasapower package to retrieve rainfall and humidity data, and it was such a simple task. We simply mentioned the duration of data we needed along with the geographical location, and the package took care of all the hard work.

We downloaded relative humidity and rainfall data using the nasapower package and then visualized the relative humidity in Western Australia and the rainfall in Gansu, China.

{{< figure src = "relative-humidity-western-australia.jpg" width = "600" alt = "Relative Humidity in Western Australia" class = "center" link = "https://rspatialdata.github.io/humidity.html" >}}

{{< figure src = "rainfall-gansu-china.jpg" width = "600" alt = "Rainfall in Gansu, China" class = "center" link = "https://rspatialdata.github.io/rainfall.html" >}}

Take a look at our [rainfall](https://rspatialdata.github.io/rainfall.html) and [humidity](https://rspatialdata.github.io/humidity.html) tutorials for a complete guide on how to use the nasapower package to download data and how to create cool visualizations using the data.

## Retrieving Demographic and Health Survey data using [rdhs](https://cran.r-project.org/web/packages/rdhs/index.html)

The rdhs package is an API client for the Demographic and Health Survey (DHS) Data - which is a collection of population, health, HIV and nutrition data from more than 400 surveys in over 90 countries. This data is considered to be sensitive and hence requires one to set up an account with DHS and request permission to access the data.

Although this may look like a tedious process, the rdhs package makes it very smooth by allowing us to test out the functions of the package using model data. So one could even start on the analysis while waiting for data access rights!

Read through our tutorial on [Demographic and Health Survey(DHS)](https://rspatialdata.github.io/dhs-data.html) for more details on how to use the rdhs package.




> Our goal for rspatialdata was not to be a comprehensive list of R packages or tutorials, but to be a starting point for anyone to find and download spatial data related to different domains, and visualize different types of spatial data objects using different approaches. So give it a go and let us know how you did!

