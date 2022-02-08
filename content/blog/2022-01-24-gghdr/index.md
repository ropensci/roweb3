---
title: "A Journey to gghdr"
author: Sayani Gupta
date: '2022-01-25'
package_version: 0.1.0
description: "gghdr: An R package for graphing highest density regions in ggplot2"
twitterImg: blog/2022-01-24-gghdr/opengraph.png
tags:
  - data visualization
  - graphical summaries
  - highest density region
  - hdrcde
  - R
  - packages
  - ozunconf
  - community
output:
  html_document:
    keep_md: yes
---



> They may forget what you said, but they will never forget how you made them feel.
> 
> <footer>Carl W. Buehner</footer>

This was how being a newcomer to [rOpenSci OzUnconf 2019](https://ozunconf19.ropensci.org/) felt. It was incredible to be a part of such a diverse, welcoming and inclusive environment. I thought it would be fun to blog about how it all began, and the twists and turns we experienced along the way as we developed the `gghdr` package. The package provides tools for plotting [highest density regions](https://www.jstor.org/stable/2684423?seq=1) with `ggplot2` and was inspired by the package [hdrcde](https://cran.r-project.org/web/packages/hdrcde/index.html) developed by [Rob J Hyndman](https://robjhyndman.com/). The highest density region approach of summarizing a distribution is useful for analyzing multimodal distributions and can be composed of numerous disjoint subsets. For example, the histogram of the mpg data (a) shows that cars with 6 cylinders (`cyl`) are bimodally distributed, which is reflected in the highest density region (HDR) plot (c) but not in the standard boxplot (b). Hence, we see that HDRs are useful in displaying multimodality in the distribution. 

{{<figure src="mpgBox1-1.png" >}}


The other authors of this package include 
[Mitchell O'Hara-Wild]([https://github.com/mitchelloharawild) [Stephen Pearce](https://github.com/sparce), [Ryo Nakagawara](https://github.com/Ryo-N7), [Darya Vanichkina](https://github.com/dvanic), [Emi Tanaka](https://emitanaka.org/), [Thomas Fung](https://github.com/thomas-fung) and [Rob J Hyndman](https://github.com/robjhyndman/).

# Initiation

<!-- Initially, the aim was to visualize _Highest Density Regions_ (HDR) in one and two dimensions under the [ggplot2](https://ggplot2.tidyverse.org/) framework.  -->

Since Rob's paper describing highest density regions was written almost 25 years ago and the package came 15 years ago, the need to reexamine it through the ggplot2 lenses had been lurking around for a while. While I read the paper and attempted using `hdrcde`, it did feel less powerful not being able to use `ggplot2` and the flexibilities that come along with it. Rob himself suggested it would be great to have a `ggplot` framework. I tried it but didn't get a chance to put it all together. There was even a point where [Mitch O'Hara-Wild](https://blog.mitchelloharawild.com/) was threatening me that he would get this done overnight if I didn’t (and I bet he would have had he not been raising chickens and bees)! But one fine day, he suggested that the rOpensci ozunconf could be the right place to do this together. I thought this was a brilliant idea as I had read about [Nick Tierney's](author/nicholas-tierney/) [experience](blog/2017/10/31/ozunconf2017/) earlier and was thrilled to be a part of it. 

This event is quite different from other conferences in the sense that it is mostly invite-only, where past attendees can recommend new ones. Mitch was a participant at [OzUnconf 2018](https://ozunconf18.ropensci.org/#about), so he could invite me to work on this project with him at ozunconf 2019. Soon I had applied and we were accepted. Thanks go to the organizers of the ozunconf for the opportunity and excellent management of what has turned out to be a highly stimulating experience. 

# Planning and execution

Shortly after we were accepted, Mitch posted the idea on the [rOpenSci Github issues page](https://github.com/ropensci/ozunconf19/issues). Posting an issue like this is a great place to start a discussion on a rough idea or to learn more or comment on any idea that you find exciting. We brainstormed for a couple of days on how [`hdrcde`](https://github.com/robjhyndman/hdrcde) worked and what potential functions and features we would like to have or improve in the new package. The discussion led to a workflow which pretty much looked like this: 


{{<figure src="board.jpg" >}}

Doing a bit of brainstorming on the project ahead of time helped us to set the expectations, and communicate them to potential team members. Although it is worth mentioning that projects don't need to be fully fleshed out ahead of time - the ozunconf organisers strongly encourage working on projects that you thought of even on that very day.

Fast-forward to the first day of the conference! The participants had already suggested ideas (there were many brilliant ones - have a read [here](https://github.com/ropensci/ozunconf19/issues)) and then voting started for the projects people were excited to be associated with. Little did we know that time there would be more enthusiasts who would be as eager to contribute to this project and learn about ggplot2 internals (very aptly put by Mitch while advertising the project. Smart move mate)! Oh, and what a fun and collaborative team to work with! See how they won’t stop coding:

{{< tweet "1205008586130149376">}}

<!-- [https://twitter.com/mitchoharawild/status/1205008586130149376] (Thanks to Steph who spent a lot of effort in making this gif) -->

At the end of the two days, we had established the following:

1. `geom_hdr_boxplot()` to replace `hdr.boxplot()` to calculate HDR boxplots in one dimension.

<div class = "row">
<div class = "col-md-6">

__Before:__
```r 
library(hdrcde)
hdr.boxplot(faithful$eruptions) 
```
{{<figure src="hdrcde-boxplot-1.png" >}}

</div>
<div class = "col-md-6">
__After:__
```r 
library(gghdr)
library(ggplot2)
ggplot(faithful, aes(y = eruptions)) +
  geom_hdr_boxplot() 
```
{{<figure src="gghdr-boxplot-1.png" >}}
</div>
</div>

2. The interval bars in `hdr.den()` to be replaced with a rug plot to display HDRs of 1d marginal distributions in `geom_hdr_rug()`. `geom_density()` could then be added to the resultant plot to get plots equivalent to `hdr.den()`.
 
<div class = "row">
<div class = "col-md-6">
__Before:__
```r 
library(hdrcde)
hdr.den(faithful$eruptions,
        col = c("skyblue", "slateblue2", "slateblue4"))
```
{{<figure src="hdrcde-den-1.png" >}}

```
#> $hdr
#>         [,1]     [,2]     [,3]     [,4]
#> 99% 1.324216 2.819329 3.151614 5.281784
#> 95% 1.500812 2.520699 3.499998 5.091398
#> 50% 1.923250 2.024370 3.943461 4.771442
#> 
#> $mode
#> [1] 4.38201
#> 
#> $falpha
#>         1%         5%        50% 
#> 0.06726014 0.15285676 0.36177154
```
</div>
<div class = "col-md-6">
__After:__
```r 
library(gghdr)
library(ggplot2)
library(dplyr)
hdrc_bw <- hdrcde::hdrbw(faithful$eruptions, mean(c(0.5, 0.95, 0.99)))
faithful %>% 
  ggplot(aes(x = eruptions)) +
  geom_density(n= 1001, bw = hdrc_bw) +
  geom_hdr_rug(fill=  "blue") + 
  xlim(c(0.6833018, 6.0166982))
```
{{<figure src="gghdr-den-1.png" >}}
</div>
</div>

Also, the display of 1d marginal distributions for both variables could be a useful feature to have.

```r 
ggplot(faithful, aes(y = eruptions, x = waiting)) + 
  geom_hdr_rug(sides = "trbl", fill = "blue") + 
  geom_point()
```
{{<figure src="unnamed-chunk-1-1.png" >}}

3. `hdr_bin()` to replace `hdrscatterplot()`. This would not be an independent geom, but rather a function to add in the aesthetic color with each color representing an HDR with a specified coverage.

<div class = "row">
<div class = "col-md-6">
__Before:__
```r 
hdrscatterplot(faithful$waiting,
               faithful$eruptions)
```
{{<figure src="hdrcde-scatterplot-1.png" >}}
</div>
<div class = "col-md-6">
__After:__
```r 
ggplot(data = faithful, 
       aes(x = waiting, y = eruptions)) +
  geom_point(aes(colour = hdr_bin(x = waiting,
                                  y = eruptions)))
```
{{<figure src="gghdr-scatterplot-1.png" >}}
</div>
</div>


4. `geom_hdr_boxplot()` with both `x` and `y` variables to replace `hdr.cde()` which is used in HDRs for a conditional density estimate.

<div class = "row">
<div class = "col-md-6">
__Before:__
```r 
faithful.cde <- cde(faithful$eruptions, faithful$waiting)
plot(faithful.cde, plot.fn = "hdr",
     xlab = "eruptions", ylab = "waiting")
```
{{<figure src="hdrcde-cde-1.png" >}}
</div>
<div class = "col-md-6">
__After:__
```r 
ggplot(faithful, aes(x = eruptions, y = waiting)) + 
    geom_hdr_boxplot(fill="steelblue") + 
    theme_minimal()
```
{{<figure src="gghdr-cde-1.png" >}}
</div>
</div>

5. We also deliberated on names of potential functions at the brainstorming stage which led to the idea of a [package design collaboration corner](https://github.com/ropensci/ozunconf19/issues/19). 

6. Documentation, testing and illustrative followed along the way to make it CRAN ready.


# Bottlenecks along the way

Now where there's a will, there's a way. Except that soon we could say where there is a merge, there is a conflict.  While most times we use [GitHub](https://github.com/) for code-sharing, publishing software and collaborating with our future self, this was the time to show how we collaborate with others. It took almost 2 hours with both GitKraken and Mitch helping us to deal with the merge conflicts!

{{<figure src="conflict-tree.png" >}}


<!-- - Extending ggplot2 (https://cran.r-project.org/web/packages/ggplot2/vignettes/extending-ggplot2.html). __(Writing about the scale problem that was faced.)__ -->


# Where to from here?

We still have one thing to do (replace the `hdr.boxplot.2d()` with `geom_hdr_boxplot.2d()`, which would calculate and plot HDRs in two dimensions), but are happy to announce that with some embellishments and review, the current version is on CRAN. Kudos team!! You can learn about our package `gghdr` at [the package website](https://Sayani07.github.io/gghdr/), and the [Github repo](https://Sayani07.github.io/gghdr/).

{{<figure src="team.jpg" >}}

