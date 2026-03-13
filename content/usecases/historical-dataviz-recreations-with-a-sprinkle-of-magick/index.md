---
title: "Historical dataviz recreations with a sprinkle of magick"
reporter: "Matt Dray"
date: 2021-07-04
image: historical-dataviz-recreations-with-a-sprinkle-of-magick.gif
resource: "[magick](https://docs.ropensci.org/magick)"
original_url: "https://discuss.ropensci.org/t/historical-dataviz-recreations-with-a-sprinkle-of-magick/2538"
language: [English]
---

#### rOpenSci package or resource used*

[magick](https://docs.ropensci.org/magick)


#### What did you do? 

As part of [the #CottonViz challenge from the Royal Statistical Society](https://rss.org.uk/news-publication/news-publications/2021/section-group-reports/mary-eleanor-spear-dataviz-competition-for-childre/), I used {magick} to:

* create a gif that shows incrementally the steps I used to recreate [Mary Eleanor Spear](https://en.wikipedia.org/wiki/Mary_Eleanor_Spear)'s original data visualisation of US cotton supplies in the 1940s, made with manual methods
* mimic another of Spear's visualisations that uses 'colour on the negative', which she produced manually by 'coloring negative photostat copies of charts or maps'

Functions used: `image_read()`, `image_scale()`, `image_animate()`, `image_negate()`, `image_transparent()`, `image_background()` and `image_write()`.

#### URL or code snippet for your use case*

See the:

* [blog post](https://www.rostrum.blog/2021/06/08/recreate-spear/) about the recreation process
* [tweet](https://twitter.com/mattdray/status/1402278146976661504?s=20)  about the dataviz recreation, with the gif embedded
* [tweet](https://twitter.com/mattdray/status/1405127621004955654?s=20) about the 'colour on the negative' approach
* [GitHub repo](https://github.com/matt-dray/viz-recreation/tree/main/2021-06-08_cottonviz_spear) containing code to reproduce the images

#### Image

The animation below is a step-by-step animated gif of a recreation of a visualisation of US cotton stocks in the 1940s by Mary Eleanor Spear. First, labelled axes are created for a line plot on the left-hand side, then three labelled lines are added for consumption, stocks and exports of cotton. Hatched columns are then added to a bar plot on the right-hand side, followed by axes and labels. Finally, titles and captions are added and the original image is shown for comparison.

![](historical-dataviz-recreations-with-a-sprinkle-of-magick.gif)

The image below demonstrates the 'colour on the negative' approach. It shows two plots of cotton stocks, export and consumption in the USA in the 1940s: a line chart on the left, and a bar chart on the right. It's an inversion of the Mary Eleanor Spear's original image, resulting in a black background and with white elements becoming light blue.

![](https://raw.githubusercontent.com/matt-dray/viz-recreation/main/2021-06-08_cottonviz_spear/output/cottonviz-remix-neg.png)

#### Sector

Personal.

#### Field(s) of application 

History of statistics, data visualisation.


