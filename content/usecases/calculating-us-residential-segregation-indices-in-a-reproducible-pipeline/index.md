---
title: "Calculating US Residential Segregation Indices in A Reproducible Pipeline"
reporter: "Boyi Guo"
date: 2022-02-11
image: calculating-us-residential-segregation-indices-in-a-reproducible-pipeline.png
resource: "[targets](https://docs.ropensci.org/targets)"
original_url: "https://discuss.ropensci.org/t/calculating-us-residential-segregation-indices-in-a-reproducible-pipeline/2815"
language: English
---

We provide a simple and reproducible [R](https://www.r-project.org/) pipeline to investigate residential segregation (RS) using US census data. The pipeline contains two components:

1. pulling decennial US census data of Year 2000, 2010, 2020 via R package [tidycensus](https://walker-data.com/tidycensus/index.html)
2. calculating three residential segregation indices, including dissimilarity, isolation and interaction indices, at the preferred geographical level, e.g. county or census tract level

#### rOpenSci package or resource used*
[targets](https://docs.ropensci.org/targets/)

#### What did you do? 
We pull decennial US census data with [tidycensus](https://walker-data.com/tidycensus/index.html) and calculate three residential segregation indices.


#### URL or code snippet for your use case*
https://github.com/boyiguo1/Tutorial-Residential_Segregation_Score


#### Image
[![](calculating-us-residential-segregation-indices-in-a-reproducible-pipeline.png)](https://github.com/boyiguo1/Tutorial-Residential_Segregation_Score/blob/c76f0f6d9b7d022e82792b0f3c1ca1076c5e3a18/README_files/figure/2010_AL_Disml_tract.png) 

**Figure 1**: 2010 Alabama Dissimilarity Index at county level calculated with census tract level statistics


#### Field(s) of application 
_epidemiology, social sciences_



