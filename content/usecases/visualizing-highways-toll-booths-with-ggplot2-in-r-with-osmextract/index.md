---
title: "Visualizing Highways, Toll Booths with {ggplot2} in R with {osmextract}"
reporter: "Aditya Dahiya"
date: 2025-03-01
image: visualizing-highways-toll-booths-with-ggplot2-in-r-with-osmextract.jpeg
resource: "[osmextract](https://docs.ropensci.org/osmextract)"
original_url: "https://discuss.ropensci.org/t/visualizing-highways-toll-booths-with-ggplot2-in-r-with-osmextract/4181"
language: [English]
---


#### rOpenSci package or resource used*

osmextract

#### What did you do? 

![osm_packages_6|400x500](visualizing-highways-toll-booths-with-ggplot2-in-r-with-osmextract.jpeg)


This code chunk demonstrates the process of downloading geospatial data for the state of Haryana in India and performing some basic preprocessing. First, it uses the `osmextract` package to download points, lines, and polygon data from OpenStreetMap for Haryana using the `oe_get()` function. Then, the code fetches the district-wise boundary map for Haryana using the `geodata::gadm()` function to retrieve administrative boundaries, which are converted into simple features (`sf`) objects using the `sf` package. Lastly, the overall state boundary map for Haryana is retrieved similarly and cleaned up.

It processes spatial data of Haryana’s roads and toll booths using the **sf** package. Roads are categorized by type and filtered using `mutate(case_when())`, ensuring only relevant highways are retained. The dataset is then clipped to Haryana’s boundary with `st_intersection()`. A subset of toll booths is manually filtered to remove duplicates.
Then, the code determines the district-wise distribution of toll booths and computes the total highway length in each district using [`sf`](https://r-spatial.github.io/sf/) and [`dplyr`](https://dplyr.tidyverse.org/). The `st_intersects()` function finds which district each toll booth falls into, creating a mapping vector. The total highway length per district is calculated using `st_intersection()` and `st_length()`, then converted to kilometers. Finally, the data is combined using `left_join()`, missing values are handled with `replace_na()`, and toll density (km per toll) is computed and arranged in descending order.
Finally, it visualizes Haryana’s road network, district boundaries, and toll booth distribution using [`ggplot2`](https://ggplot2.tidyverse.org/) and [`sf`](https://r-spatial.github.io/sf/). `geom_sf()` is used to plot district borders, highways, and toll booths, while highway width is controlled with `scale_alpha_manual()` and `scale_linewidth_manual()`. A bar chart displays district-wise highway length per toll booth using `geom_col()`, with additional annotations for toll count and highway length. The two plots are combined using [`patchwork`](https://patchwork.data-imaginist.com/).

[Link](https://aditya-dahiya.github.io/visage/geocomputation/osm_packages.html#fig-toll) to final graphic.
[Link](https://aditya-dahiya.github.io/visage/geocomputation/osm_packages.html#explore-toll-booths-and-highways-from-haryana-using-osmextract) to complete code.
[Link](https://x.com/AdityaDahiyaIAS/status/1892493238575018183) to Twitter (X) post.


#### URL or code snippet for your use case*

https://aditya-dahiya.github.io/visage/geocomputation/osm_packages.html#explore-toll-booths-and-highways-from-haryana-using-osmextract

