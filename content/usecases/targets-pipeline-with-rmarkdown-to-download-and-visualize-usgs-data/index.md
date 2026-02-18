---
title: "targets pipeline with RMarkdown to download and visualize USGS data"
reporter: "Lindsay Platt"
date: 2021-07-26
image: targets-pipeline-with-rmarkdown-to-download-and-visualize-usgs-data.png
resource: "[targets](https://docs.ropensci.org/targets)"
original_url: "https://discuss.ropensci.org/t/targets-pipeline-with-rmarkdown-to-download-and-visualize-usgs-data/2559"
language: English
---

#### rOpenSci package or resource used*
[targets](https://docs.ropensci.org/targets)

#### What did you do? 
I was looking for a simple way to share code for a unique figure of cartogram bar charts related to the frequency of "ice" flags in public U.S. Geological Survey (USGS) streamgage data. 

I could have written a regular script but I needed the code to download a lot of data for all 50 U.S. states. These downloads can sometimes timeout and trigger you to have to start again. Due to this concern, I decided to use `targets` to build a pipeline that could handle skipping downloads that were already successful if I needed to start again. 

A regular `targets` setup using the `_targets.R` file to write and orchestrate your code would certainly work; however, I noticed that a section related to using `targets` and R Markdown was recently added to the [User Manual](https://books.ropensci.org/targets/markdown.html) and I wanted to give that a try. This was my first time using `targets` with R Markdown, but it wasn't hard to figure out. I love that in the end, it is just one button click (or maybe a few if there is a network failure during the downloads) to build the full pipeline and show the results. I am excited for using this more in the future.

#### URL or code snippet for your use case*
You can find the R Markdown file at https://github.com/USGS-VIZLAB/blitz-FY21Q3/blob/835a05bf725d53ace5bf9884435b53402b97ec6e/ice_flags/ice_pipeline.Rmd. The Rmd file produces the basic cartogram behind the visualization featured in [this Tweet](https://twitter.com/USGS_DataSci/status/1413579318010122242). We added the text later using InkScape to save on time since this was a very small, constrained project. 

*Note that this Rmd will download 9 months of daily data for all 50 U.S. states by default, which takes awhile. Read the text in the Rmd to see how to adjust for a shorter time period or fewer states if you are interested in testing this but can't wait a few hours for the data!*


#### Image
![iceflag_dreamsicle_viz_lplatt_twitter_postcrit|690x345, 100%](targets-pipeline-with-rmarkdown-to-download-and-visualize-usgs-data.png)

#### Sector
government

#### Field(s) of application 
hydrology


