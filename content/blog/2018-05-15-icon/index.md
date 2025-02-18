---
slug: icon
title: 'icon: web icons for rmarkdown'
author: Mitchell O'Hara-Wild
date: '2018-05-15'
output: ~
topicid: 1173
tags:
  - icon
  - web
  - R Markdown
  - knitr
  - unconf
  - ozunconf
  - ozunconf17
  - tech notes
params:
  doi: "10.59350/h091a-jq185"
---

### Icons in R 

{{< imgtxt src="YTJIhij.png" height="150px" width="150px" >}}

The [icon](https://github.com/ropenscilabs/icon) package provides a convenient interface for adding icons from popular web fonts to R Markdown documents. The project began at [rOpenSci OzUnconf 2017](https://ozunconf17.ropensci.org/), and was developed by [Mitchell O'Hara-Wild](https://github.com/mitchelloharawild), [Earo Wang](https://github.com/earowang) and [Timothy Hyndman](https://github.com/timothyhyndman). The package currently supports icons from [Font Awesome](https://fontawesome.com/), [Academicons](https://jpswalsh.github.io/academicons/), and [ionicons](https://ionicons.com/).

{{< /imgtxt >}}

Icons can be added to your R Markdown documents using short prefixes which identify the font's library.

* fa: Font Awesome
* ai: Academicons
* ii: ionicons

For example, `` `r  icon::fa("rocket")` `` can be used to add the [rocket icon](https://fontawesome.com/icons/rocket) from Font Awesome. This interface is convenient if you are familiar with the icon you want, or if you are dynamically selecting your icon.

The package also provides a second interface which allows for tab completion of font names. To include the rocket icon above, you could instead use `` `r  icon::fa_rocket()` ``. This is a useful interface for if you are unfamiliar with the available icons or their names.

Each icon function also provides support for modifying the attributes of the icon such as size, colour, rotation, and animation. We can make the rocket icon spin using `` `r  icon::fa_rocket(animate = "spin")` ``.

### R in icons
The long-awaited [R Project icon](https://cran.r-project.org/logo.html) has been added to the Font Awesome library in version 5.0.11. This addition comes nearly four years since the icon's [first request](https://github.com/FortAwesome/Font-Awesome/issues/3862) after being brought into the spotlight of [#rstats](https://twitter.com/hashtag/rstats) with [LockeData](https://twitter.com/LockeData)'s tweet.


> Hey, the #rstats logo is #40 on the fontawesome brand board - go give it some 👍 so we can get it higher!https://t.co/jdEcVMJyip— Locke Data - April 20, 2018


Finally, it is possible to use an R package to include the R icon in your R Markdown documents!

`` `r  fa_rocket(colour = "#1FA67A")` `` + `` `r  fa_r_project(colour = "#384CB7")` `` = `` `r  fa_heart(colour = "red")` ``

{{< figure src="WImIaGx.png" >}}

### Future development
There are plans to submit the icon package to CRAN, however there are a few things we would like to work on first. The top development priority is transitioning from web-font icons to svg icons. This should drastically reduce the load times of documents using icons, and allow the user to import their own icon libraries. Before release, we would also like to add further support for manipulating icons with modifier functions, and resolve an R Markdown issue relating to [using icons within headers](https://github.com/ropenscilabs/icon/issues/7).

You can install and try out the latest version of the `icon` package today via:
```
devtools::install_github("ropenscilabs/icon")
```
