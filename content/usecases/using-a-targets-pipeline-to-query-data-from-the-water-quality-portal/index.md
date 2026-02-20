---
title: "Using a targets pipeline to query data from the Water Quality Portal"
reporter: "Julie"
date: 2022-10-03
resource: "targetsdataRetrieval"
original_url: "https://discuss.ropensci.org/t/using-a-targets-pipeline-to-query-data-from-the-water-quality-portal/3140"
language: [English]
---

#### rOpenSci package or resource used
[targets](https://docs.ropensci.org/targets/)
[dataRetrieval](https://waterdata.usgs.gov/blog/dataretrieval/)

#### What did you do? 

We developed a reproducible pipeline to query data from the [Water Quality Portal (WQP)](https://www.waterqualitydata.us/) based upon a user-specified area of interest. This template provides a framework for others to inventory, query, and then clean data from WQP.

Querying and cleaning data from the WQP based on an area of interest is a common data access pattern across many projects from USGS, so we developed a template repository that other users could fork and integrate into their project-specific workflows. The blog post goes into further detail about the "ins and outs" of this access pattern - focusing on the first two phases of the pipeline (`01_inventory` and `02_download`) because these phases tend to be consistent across projects. In the GitHub repo we also include a few example cleaning functions that users can review and use to guide their own data cleaning methodologies.


#### URL or code snippet for your use case
Blog:  [Large Data Pulls from Water Quality Portal - A Pipeline-Based Approach](https://waterdata.usgs.gov/blog/wqp-large-pull-targets/)

GitHub Repo: [Link](https://github.com/USGS-R/ds-pipelines-targets-example-wqp/)

#### Field(s) of application 
water quality, hydrology, ecology


