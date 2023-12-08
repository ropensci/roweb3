---
slug: "champions-program-2023-experience"
title: '2023 rOpensci Champions Program: My Experience'
author:
- Bilikisu Wunmi Olatunji
date: '2023-12-11'
tags:
- community
- champions program
description: 
---

Being a part of the rOpenSci Champion's program has been a transformative experience, pushing me to explore the world of R package development and contribute to the world of open science. While my initial project proposal took a different route, the unexpected journey led me to create a valuable tool that I am proud to call my own -- the htmlwidget, ChartkickR. In this blog post, I'll take you through my adventure as a rOpenSci champion and how ChartkickR became the unexpected gem of my experience.

When I embarked on my rOpenSci champion journey, my original project proposal aimed to ease the use of geospatial data for Microplanning in public health. Little did I know that the path ahead would be filled with twists and turns, ultimately leading me to ChartkickR. As the saying goes, sometimes the best discoveries happen when you least expect them.


As I went through several training sessions and mentoring meetings, I stumbled upon an opportunity to create something truly unique -- a htmlwidget that would simplify the process of creating interactive and visually appealing charts in R. [By definition, an htmlwidget is a framework for creating HTML widgets that render in various contexts including the R console, 'R Markdown' documents, and 'Shiny' web applications](https://cran.r-project.org/web/packages/htmlwidgets/index.html). This idea took root and blossomed into what is now ChartkickR.


[ChartkickR](https://github.com/BWOlatunji/chartkickR), at its core, is an htmlwidget that seamlessly integrates with the Chartkick JavaScript library. It provides R users with a straightforward interface to generate beautiful and interactive charts using R code. From line charts to pie charts, ChartkickR empowers users to visualize their data effortlessly using a single line of code.

## Examples of ChartkickR code


### Scatter plot

```r

p_data <- palmerpenguins::penguins |> 
  select(bill_length_mm,bill_depth_mm)

chartkickR::chartkickR(data = p_data,x=bill_length_mm,y=bill_depth_mm,
                      type = "ScatterChart")

```

{{< figure src = "scatter-plot.png" width = "600" alt = "Scatter Plot example" class = "center">}}


### Pie chart

```r

palmerpenguins::penguins |> 
    count(species) |> 
    set_names(c("species", "count")) |> 
    chartkickR::chartkickR(type = "PieChart", x=species, y= count,
                          colors = list("#4f86f7", "#fc5a8d","yellow"))

```

{{< figure src = "bar-plot.png" width = "600" alt = "Bar Plot example" class = "center">}}


### Multiple Series Bar

```r

bar_series_data <- penguins |> 
  group_by(year) |> 
  count(species)

chartkickR(data=bar_series_data, x=year, y=n, 
          group=species, type = "BarChart",curve = TRUE)
```


{{< figure src = "serie-plot.png" width = "600" alt = "Multiple Series Bar Plot example" class = "center">}}


## Developing a new package as rOpenSci Champion


Developing [ChartkickR ](https://github.com/BWOlatunji/chartkickR)was not without its challenges. I encountered hurdles in the coding process, faced moments of doubt, and navigated through the complexities of integrating R with JavaScript. However, each challenge was met with perseverance, and every triumph brought a sense of accomplishment that fueled my passion for the project. I would like to appreciate the support of [John Coene](https://www.linkedin.com/in/johncoene/) and the guidance from my mentor, [Christina Maimone.](https://ropensci.org/author/christina-maimone/)


One of the most rewarding aspects of the rOpenSci champion program was the collaboration with a diverse and supportive community led by Yanina Bellini Saibene. Through discussions, feedback, and shared insights, [ChartkickR](https://github.com/BWOlatunji/chartkickR) evolved into a tool that not only met my initial vision but also exceeded it with the input of fellow rOpenSci champions and mentors.


The [rOpenSci champion program](/champions/) extends beyond coding; it's a holistic experience that fosters personal and professional growth. From honing technical skills to friendliness within the open-source community, the program equipped me with invaluable tools that will undoubtedly shape my future endeavors.


In that sense, I already organized two events with my local R User Groups - [Abuja RUG](https://www.meetup.com/abuja-r-user-group-meetup/events/294198946/) and [R-Ladies Abuja](https://www.meetup.com/rladies-abuja/events/294198849/) Chapter - showcasing what I learned about building htmlwidget in R. Looking into the future, I will continue to improve on my project and share it with the rOpensci community.


My journey as a rOpenSci champion has been a rollercoaster of discovery, and ChartkickR stands as a reward. I am grateful for this opportunity given to me by rOpensci, the support of the rOpenSci community, the guidance of my mentor, and the opportunities for growth that this program has provided. As I look back on this experience, I am not only proud of the htmlwidget I created but also of the person I've become throughout this incredible journey.
