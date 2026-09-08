---
slug: "birthday-post-sunny"
title: Happy Birthday rOpenSci — My Journey from First-Time Developer to Current Opportunities

author:
  - Author Sunny (Yi-Chin) Tseng
date: 2020-03-10

# Minimal tags for a post about a community-contributed package 
# that has passed software peer review are listed below
# Consult the Technical Guidelines for information on choosing tags
tags:
  - packages
  - R
  - community
# The summary below will be used by e.g. Mastodon preview cards
description: "A very short summary of your post (~ 100 characters)"

# the text below is for populating the "share on Mastodon" button
# if deleted, the title of the post will be used
social: "A post about blabla by @username@server.extension!"
# this field is for the storing the name(s) of the editor(s) of your post
# you can leave it empty until you know who'll review your PR
editor:
---


## What? People would fund me and mentor me building my own R package?

My first time hearing about rOpenSci was, interestingly, at a bird conference. At an ornithological conference in 2024, I was chatting with my bird friend / colleague Steffi LaZerte, who highly recommended that I apply for the rOpenSci Championship program given my strong interest in developing R packages. I mentioned my concerns and hesitation about whether I am “qualified” to make an R package, which at that time sounded like what professional developers do. She simply asked, “Can you write functions in R?” “Yes, I do.” “Then you are good to go! R packages are simply putting functions together in an organized way!” So here we go, I took the motivation and sent out my application for the 2025 rOpenSci cohort. A few months later, I was selected as one of the 20 participants around the world; I remember the strong excitement when I received the confirmation letter from rOpenSci. I was probably even more excited than when I got my PhD admission!

## bbsTaiwan R package – a combination of my dreams

I have been an avid R user for a long time, and I am particularly fascinated by the open science nature that comes with it. My proposed package, “bbsTaiwan”, aims to solve a common issue with an open-source dataset, the Breeding Bird Survey (BBS) data of Taiwan. While the BBS dataset is publicly available online and stored in Global Biodiversity Information Facility, it is structured in a specific machine-readable format that requires a certain amount of data wrangling to make it usable for downstream modeling and ecological inference. bbsTaiwan is a data package as well as a wrangling toolbox, and it can be particularly useful for undergraduate and graduate students, as well as researchers who need BBS data for their dissertations. Most importantly, I see it as a crucial way to contribute my skills back to my beloved homeland - Taiwan. I want to use this package to show my care and love for the land.

## The mentor and the learning

I was very lucky to have Eunseop Kim as my mentor during the championship program. He was extremely patient, supportive, and understanding. Eunseop has a background in statistics and is very fluent in package development. He provided me with a lot of freedom on the project and emphasized that he would be there to support and help if I had any questions along my journey. I sought suggestions from him frequently in terms of package design, usability, resources, and references. He not only taught me how to make R packages, but he also showed me the importance and power of being a supportive mentor. Being able to study references on how other people developed their packages improved my own philosophy of making packages as well.  One rule that still sticks with me until today is “be kind.” Be kind to your users, be kind to your collaborators, and be kind to your colleagues. If we can put extra thought and effort into thinking from other people’s perspectives (what users might like to see and what makes a package easy to use), then it will be a tool that people genuinely enjoy using.

## rOpenSci program as a path to future opportunities

The rOpenSci Championship program not only opened my door to R package development, but it also provided me with invaluable opportunities. I was selected as an “Opportunity Scholar” for posit::conf(2025), where I connected with fellow programmers and was inspired further by the possibilities of this programming language. I also received support from NSERC and the R Consortium to create my second R package, birdnetTools, in collaboration with the Cornell Lab of Ornithology. It was a dream come true!! None of this would have been possible if I hadn't participated in the rOpenSci Championship program two years ago. My story with rOpenSci will continue. 
Thank you to the community at rOpenSci. Thank you for bringing excitement, fun, and care to this world.


## Section heading in sentence case

Citation of the primary literature[^1]. 

Citation of a website[^2]. 

Citation of an R package[^3].

### Subsection heading

We recommend the use of [Hugo shortcodes](https://gohugo.io/content-management/shortcodes/) to include images,, videos, gists, etc.

**Add an image** by using a Hugo shortcode. The image is saved under `/content/blog/YYYY-MM-DD-slug/name-of-image.png`.

{{< figure src = "name-of-image.png" width = "400" alt = "this is the alternative text" >}}

Consult the Technical Guidelines for tips on changing image size, alignment, and for advice on alternative text.

**Add citation or footnote** text by using the format below 

[^1]: Sciaini, M., Fritsch, M., Scherer, C., & Simpkins, C. E. (2018). NLMR and landscapetools: An integrated environment for simulating and modifying neutral landscape models in R. Methods in Ecology and Evolution, 9(11), 2240-2248. <https://doi.org/10.1111/2041-210X.13076>
[^2]: Elin Waring, Michael Quinn, Amelia McNamara, Eduardo Arino de la Rubia, Hao Zhu and Shannon Ellis (2019). skimr: Compact and Flexible Summaries of Data. R package version 1.0.7. https://CRAN.R-project.org/package=skimr
[^3]: Hugo static site generator. https://gohugo.io/
