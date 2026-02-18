---
title: "Scrape an image from DeepZoom with R and magick, recomposing a single image from multiple tiles"
reporter: "André Ourednik"
date: 2020-06-08
resource: "[magick](https://docs.ropensci.org/magick)"
original_url: "https://discuss.ropensci.org/t/scrape-an-image-from-deepzoom-with-r-and-magick-recomposing-a-single-image-from-multiple-tiles/2123"
language: English
---


#### rOpenSci package or resource used*
magick

#### What did you do? 

[DeepZoom](https://en.wikipedia.org/wiki/Deep_Zoom) allows webmasters to display high resolution images in an online viewer. It mostly discourages downlading the original high resolution images to your local drive. Magick combined with rvest can be used to get these images nevertheless with the help of R.

Full code for doing so is presented on [my blog on mapping and data mining](https://ourednik.info/maps/2020/05/26/scrape-an-image-from-deepzoom-with-r-and-magick-recomposing-a-single-image-from-multiple-tiles/)

In the core of the code, I use the [magick R package](https://cran.r-project.org/web/packages/magick/vignettes/intro.html) to recompose the whole image from the tiles. This in two embedded for-loops. The recomposing magic happens in the line

```
thisimageline <- image_append(c(thisimageline, newimage), stack=TRUE)
```

Where `stack=TRUE` means that you append image tiles vertically. This gives you a column of images of 1-image width. In the encompassing loop, you append columns horizonataly until you have the full width of the original image:

```
thisimage <- image_append(c(thisimage, thisimageline))
```

