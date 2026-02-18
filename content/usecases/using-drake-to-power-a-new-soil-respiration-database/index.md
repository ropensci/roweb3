---
title: "Using drake to power a new soil respiration database"
reporter: "Ben Bond Lamberty"
date: 2019-05-04
image: using-drake-to-power-a-new-soil-respiration-database.png
resource: "[drake](https://docs.ropensci.org/drake)"
original_url: "https://discuss.ropensci.org/t/using-drake-to-power-a-new-soil-respiration-database/1692"
language: English
---

#### Package or resource used*
[drake](https://github.com/ropensci/drake)

#### URL or code snippet for your use case*
https://github.com/bpbond/cosore/blob/6b96bf9afbc3cb8e995c4b1e65b7c6af78bdc82f/README.md

#### Image
![26%20PM|346x499](using-drake-to-power-a-new-soil-respiration-database.png) 

#### Sector
Academic

#### Field(s) of application 
Earth sciences, climate change, ecology

#### What did you do? 
Earth system scientists increasingly use online data repositories to store, synthesize, and perform meta-analyses of e.g. forest growth, plant characteristics, and land-atmosphere energy fluxes (see for example [Ameriflux](https://ameriflux.lbl.gov)). No such database exists for _continuous soil respiration_, the land-to-atmosphere CO2 flux measured continuously by automated systems around the world, however. This is the gap my nascent `cosore` package aims to fill. `drake` provides the infrastructure for tracking out-of-date soil respiration datasets contributed by authors; efficiently rebuilding them into a single, standardized form; and verifying reproducibility. 


