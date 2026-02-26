---
title: "Combining with Population Density Rasters with OSM data in R with {sf}, {osmextract} and {ggplot2}"
reporter: "Aditya Dahiya"
date: 2025-03-01
resource: "[osmextract](https://docs.ropensci.org/osmextract)"
original_url: "https://discuss.ropensci.org/t/combining-with-population-density-rasters-with-osm-data-in-r-with-sf-osmextract-and-ggplot2/4182"
language: [English]
---


#### rOpenSci package or resource used*

osmextract

#### What did you do? 


![osm_packages_5|375x500](upload://7IwCFDWyp9RGYTqd5SWeIIEOPov.jpeg)

### Combining with Population Density Raster Dataset with OSM maps

The population raster data is sourced from *Global High-Resolution Annual Population Grids (2000-2023), v1* by **Ciesin, Center for International Earth Science Information Network, Columbia University** [(CIESIN, 2024)](https://zenodo.org/records/11179644). This dataset provides high-resolution population estimates globally, integrating census and administrative data with geospatial modeling to refine population distributions. The data, maintained by **NASA’s Socioeconomic Data and Applications Center (SEDAC)**, is valuable for demographic analysis, urban planning, and environmental studies. The full dataset and documentation are available on [Zenodo](https://zenodo.org/records/11179644).

The **Haryana population density map** is generated using high-resolution raster data from the *Global High-Resolution Annual Population Grids (2000-2023)* dataset. The `{terra}` package is used to handle raster operations, where the **`rast()`** function reads the population density raster, followed by **`crop()`** and **`mask()`** to limit the data to the Haryana state boundary. To ensure effective visualization, values below or equal to zero are replaced with `0.01` for smooth log transformation. The road network is overlaid using `{sf}`, with **`geom_sf()`** displaying highways extracted using `{osmextract}`. The population raster is plotted using **`geom_spatraster()`** from `{ggplot2}` and styled with a **log-transformed color scale** via `{paletteer}` to highlight variations in density.

### Comparing with some districts
The **inset district maps** focus on seven key districts, emphasizing transit-oriented development along highways. The **`plot_district()`** function extracts population density data for a given district by using **`crop()`** and **`mask()`** from `{terra}`. To enhance clarity, districts with multiple polygons (such as Faridabad) are filtered using **`st_cast("POLYGON")`**. The district’s road network is extracted with **`st_intersection()`**, ensuring only relevant highways are displayed. `{patchwork}` is used to arrange the Haryana map alongside its inset districts with a custom layout via **`plot_layout()`**, effectively demonstrating the correlation between population density and road infrastructure.

```
# 2022 year Global Population Density 30 sec arc resolution
# url <- "https://zenodo.org/records/11179644/files/GlobPOP_Count_30arc_2022_I32.tiff?download=1"
# 
output_file <- "GlobPOP_Count_30arc_2022_I32.tiff"
# download.file(url, output_file, mode = "wb")

haryana_pop_rast <- rast(output_file) |> 
  terra::crop(haryana_boundary) |> 
  terra::mask(haryana_boundary)

# Ensure all negative and zero values are replaced with 0.01
# (For easy plotting with log transformation scale)
haryana_pop_rast[haryana_pop_rast <= 0] <- 0.01

g <- ggplot() +
  
  # Population Density Raster
  geom_spatraster(data = haryana_pop_rast) +
  paletteer::scale_fill_paletteer_c(
    "grDevices::YlOrBr",
    direction = -1,
    na.value = "transparent",
    transform = "log",
    limits = c(10, 1e5),
    oob = scales::squish,
    breaks = c(0, 10, 100, 1000, 1e4),
    labels = scales::label_number(big.mark = ",")
  ) +

  # Road Network
  geom_sf(
    data = df1 |> filter(highway %in% c(wid1, wid2)),
    linewidth = 0.3,
    alpha = 0.9
  ) +

  geom_sf(
    data = haryana_boundary,
    linewidth = 1.2,
    colour = "black", 
    fill = NA
  ) +
  labs(
    # title = "Population Density vs. Road Network (Haryana)",
    # subtitle = "Bulk data download using {osmextract}, geocomputation\nwith {sf} and plotting with {ggplot2}",
    # caption = plot_caption,
    fill = "Population Density\n(Persons per sq. km.)"
  ) +
  theme_minimal(
    base_family = "body_font",
    base_size = 40
  ) +
  theme(
    legend.position = "inside",
    legend.position.inside = c(0.02,0.05),
    legend.justification = c(0,0),
    legend.direction = "vertical",
    text = element_text(
      colour = "grey30",
      lineheight = 0.3,
      hjust = 0.5
    ),
    plot.title = element_text(
      margin = margin(10,0,0,0, "pt"),
      hjust = 0.5,
      size = 90
    ),
    plot.subtitle = element_text(
      margin = margin(10,0,0,0, "pt"),
      hjust = 0.5,
      size = 70,
      lineheight = 0.3
    ),
    plot.caption = element_textbox(
      hjust = 0.5,
      halign = 0.5
    ),
    panel.grid = element_line(
      colour = "grey80",
      linewidth = 0.1
    ),
    legend.title.position = "top",
    legend.margin = margin(0,0,0,0, "pt"),
    legend.box.margin = margin(0,0,0,0, "pt"),
    legend.text = element_text(
      margin = margin(0,0,0,2, "pt"),
      size = 60
    ),
    legend.title = element_text(
      margin = margin(0,0,5,0, "pt"),
      size = 60
    ),
    legend.background = element_rect(
      fill = "transparent",
      colour = "transparent"
    ),
    legend.key.height = unit(40, "pt")
  )

ggsave(
  plot = g,
  filename = here::here(
    "geocomputation", "images",
    "osm_packages_4.png"
  ),
  height = 3800,
  width = 2800,
  units = "px",
  bg = "white"
)```


#### URL or code snippet for your use case*

https://aditya-dahiya.github.io/visage/geocomputation/osm_packages.html#combining-with-population-density-raster-dataset

