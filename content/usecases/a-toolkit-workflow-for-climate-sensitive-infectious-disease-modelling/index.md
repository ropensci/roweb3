---
title: "A toolkit workflow for climate-sensitive infectious disease modelling"
reporter: "Raphael Saldanha"
date: 2023-10-05
resource: "[targets](https://docs.ropensci.org/targets), [tarchetypes](https://docs.ropensci.org/tarchetypes)"
original_url: "https://discuss.ropensci.org/t/a-toolkit-workflow-for-climate-sensitive-infectious-disease-modelling/3659"
language: [English]
---

Statistical modelling of Climate-Sensitive Infectious Disease (CSID) usually requires commons steps to harmonize and make compatible data from epidemiology and climate. Different teams do similar procedures in order to reach similar results for this purpose. But the actual coding of these steps involve lots of apparently small choices and details that, in the end, produce results very different and not directly comparable.

#### rOpenSci package or resource used*
targets, tarchetypes

#### What did you do? 
To approach this problem, I started to code some dedicated R packages and integrate its use using the [targets](https://docs.ropensci.org/targets/) and [tarchetypes](https://docs.ropensci.org/tarchetypes/).

The modeling of CSID requires that diseases cases data and climate data be in the similar structure, usually a table containing variables about place of occurrence of disease cases, date, and climate indicators at the same date and previous dates.

For this, I created a package to handle disease datasets, with functions to imputate important variables and aggregate the disease's individual cases into tables of counts. Those are apparently easy tasks, but the devil is in the details, like if the aggregating variables were imputated or not, and if the aggregating task result on time series of the same size, including weeks or months without cases. This package objective is to propose a standard procedure for this.

To handle the climate indicators, I created a package that converts gridded climate indicators data to zonal statistics at the same spatial scale as the disease data. The package contain functions that takes as input, climate indicators on raster format (from ERA5-Land for example) and a spatial boundaries map file that should be compatible with the disease data aggregation. The package produces tables with zonal statistics for the boundaries units, like the "average maximum temperature" at the spatial unit. This is a fairly common methodology, but with lots of small decisions involved on those steps, like making the layers projection compatible, produce raw or weighted zonal statistics, date units, etc. This package objective is also to propose a standard procedure for those steps.

To execute those tasks that use common features, the [targets](https://docs.ropensci.org/targets/) package is being very helpful. I managed to create a workflow that takes all the necessary inputs and creates in the end a dataset ready for statistical modeling. And some reports are also created during the execution, with the help from the [tarchetypes](https://docs.ropensci.org/tarchetypes/), providing information about the steps that are important to retain and communicate with the results.

The next steps are to create functions (and maybe a package) for modeling and integrate it into the workflow. 


#### URL or code snippet for your use case*

The workflow and the packages are at the very early stage of development.

https://github.com/rfsaldanha/csid_workflow
https://github.com/rfsaldanha/disdata
https://github.com/rfsaldanha/zonalclim

#### Sector
academic


#### Field(s) of application 
health geography, epidemiology, climatology


#### Twitter and Mastodon handles

You can reach me at Twitter (@rfsaldanhario) and at Fosstodon (@rfsaldanha@fosstodon.org)

