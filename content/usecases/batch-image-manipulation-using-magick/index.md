---
title: "Batch image manipulation using magick"
reporter: "Rory Spanton"
date: 2019-11-26
resource: "[magick](https://docs.ropensci.org/magick)"
original_url: "https://discuss.ropensci.org/t/batch-image-manipulation-using-magick/1889"
language: English
---

#### rOpenSci package or resource used*
[magick](https://docs.ropensci.org/magick/)


#### URL or code snippet for your use case*
[https://github.com/roryspanton/batch-magick](https://github.com/roryspanton/batch-magick)


#### Sector
Any


#### Field(s) of application 
Cognitive psychology - or anything else with images!


#### What did you do? 
I used magick in conjunction with functions from purrr (tidyverse) to manipulate and convert multiple images concisely and efficiently. This simple framework allows the user to read any number of images in magick supported formats, perform the same magick manipulations on all of them, and export them as different file types (if desired), with neat file names. This automates the potentially long and tedious process of performing the same manipulation on large sets of images. 

I developed this case specifically for cognitive psychology experiments that use large numbers of images to test a participant's memory. Each image must confirm to the same dimensions for experimental control, hence the need for automation of the editing process. However, this case could easily be altered or extended for many other purposes.


