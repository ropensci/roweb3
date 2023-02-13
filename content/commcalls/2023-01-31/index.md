---
title: "{targets} in Action"
dateStart: 2023-01-31T20:00:00 # UTC!!
dateEnd: 2023-01-31T21:00:00 # UTC!!
date: 2023-01-31T21:00:00 # UTC!! same as dateEnd
publishDate: 2023-01-06
description: Community Call covering {targets} troubleshooting and use cases.
author:
  - Will Landau
  - Eric Scott
  - Joel Nitta
organizer: Yanina Bellini Saibene
location: Community call (teleconference)
country: "\U0001F310"
attendees: All are welcome
slug: jan2023-targets
notes: https://docs.google.com/document/d/1iuIOIxuK30gPYlUmEDDPP__N6dZ9mFu6gsgL8-f2lQI/edit?usp=sharing
outputs:
- HTML
- Calendar 
vimeo:
 - id: '795053980'
resources:
  - url: https://cct-datascience.quarto.pub/harnessing-hpc-power-with-targets/
    name: Eric Scott's slides  
    details: Harnessing HPC power with {targets}
  - url: https://joelnitta.github.io/comm-call-bioinfo-targets/
    name: Joel Nitta's slides
    details: Using {targets} for bioinformatics pipelines
  - url: https://wlandau.github.io/targets-debug/
    name: Will Landau's slides
    details: Debugging {targets} pipelines.      
  - url: https://github.com/wlandau/targets-debug 
    name: Will Landau's code
    details: Live demo code example
  - url: https://github.com/joelnitta/targets_vcf_example
    name: Joel Nitta's code
    details:  Example code
  - url: https://www.joelnitta.com/posts/2021-11-16_r-bioinfo-flow/
    name: Joel Nitta's Blog post
    details:  Managing bioinformatics pipelines with R   
  - url: https://books.ropensci.org/targets/
    name: 'The {targets} R package user manual'
    details:
  - url: https://docs.ropensci.org/targets
    name: '{targets} package docs'
    details:
speakers:  
  - name: Will Landau
    bio: Will Landau is the author of rOpenSci's {targets} R package. He earned his PhD in Statistics from Iowa State University in 2016, and he now works at Eli Lilly and Company, where he develops methods and software for clinical statisticians.
    img: /img/community/will-landau.jpeg
  - name: Eric Scott
    bio:  Eric Scott is a Scientific Programmer & Educator at University of Arizona.  He has a background in chemical ecology and plant ecology and is a regular contributor to the {webchem} package.  He has now attempted to make it easy to set up {targets} to harness the power of HPC from the comfort of an RStudio window at three universities—and succeeded at two!      
    img: /img/community/eric-scott.jpg    
  - name: Joel Nitta 
    bio: Joel Nitta is a Project Research Associate at the University of Tokyo. He studies the evolution and ecology of ferns, and is passionate about reproducible data analysis using R.
    img: /img/community/joel-nitta.jpeg  
tags:
  - community call
  - events
  - targets
deets: |
    Meeting ID: 856 4128 3923 
    Passcode: 845032
zoomurl: https://numfocus-org.zoom.us/j/85641283923?pwd=dG9RR2RNRjUyVlBGejJYVFFhb2ZkZz09
---

The [{targets}](https://docs.ropensci.org/targets/) package is a pipeline tool for Statistics and data science in R. With {targets}, you can maintain a reproducible workflow without repeating yourself. {targets} learns how your pipeline fits together, skips costly runtime for tasks that are already up to date, runs only the necessary computation, supports implicit parallel computing, abstracts files as R objects, and shows tangible evidence that the results match the underlying code and data.

On this call Will, Eric and Joel will share their experience putting **{targets} into action**. Eric will share with us _Using {targets} with HPC_ and Joel will talk about _Using {targets} for bioinformatics pipelines_, then Will will demonstrate _Debugging {targets} pipelines_.


See below for speaker bios and resources.