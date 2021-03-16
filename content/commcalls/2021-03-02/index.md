---
title: rOpenSci Statistical Software Testing and Peer Review
dateStart: 2021-03-02T17:00:00 # UTC!!
dateEnd: 2021-03-02T18:00:00 # UTC!!
date: 2021-03-02T18:00:00 # UTC!! same as dateEnd
publishDate: 2021-02-17
description: Introduction to rOpenSci statistical software peer review 
author:
  - Noam Ross
  - Mark Padgham
  - Anna Krystalli
  - Alex Hayes
  - John Sakaluk
organizer: Stefanie Butland
location: Community call (teleconference)
country: "\U0001F310"
attendees: All are welcome
slug: feb2021-statsreview
notes: https://docs.google.com/document/d/1o933nG1ZW2Qf8p7FdQxn8wOkk9qoBINL1fx3FlIFSJU/
outputs:
- HTML
- Calendar 
vimeo:
 - id: '518761488'
resources:
  - url: https://ropenscilabs.github.io/statistical-software-review-book/index.html
    name: rOpenSci Statistical Software Peer Review
    details: book
  - url: https://github.com/ropenscilabs/autotest
    name: 'autotest: automatic testing of R packages'
  - url: https://github.com/ropenscilabs/srr
    name: 'Software Review Roclets: The srr package'
  - url: https://discuss.ropensci.org/c/statistical-software-peer-review/28
    name: community forum
    details: for discussion of statistical software peer review
  - url: https://github.com/ropenscilabs/statistical-software-review/issues
    name: Open an issue
    details: if you're interested in submitting a package
  - url: https://www.pharmar.org/
    name: R Validation Hub
  - url: https://github.com/pharmaR/riskmetric
    name: riskmetric package
    details: from R Validation Hub    
speakers:  
  - name: Noam Ross
    bio: Noam Ross is Principal Scientist for Computational Research at [EcoHealth Alliance](https://www.ecohealthalliance.org/) and rOpenSci Software Review Lead. He co-leads the rOpenSci Statistical Software Testing and Peer Review project. Noam on [GitHub](https://github.com/noamross), [Twitter](https://twitter.com/noamross), [Website](https://www.noamross.net/)
    img: /img/team/noam_ross.png
  - name: Mark Padgham
    bio: Mark Padgham is a Software Research Scientist with rOpenSci. He co-leads the rOpenSci Statistical Software Testing and Peer Review project. Learn more about Mark in this [interview](https://ropensci.org/blog/2019/12/03/mark-padgham/). Mark on [GitHub](https://github.com/mpadge), [Twitter](https://twitter.com/bikesrdata), [Website](https://mpadge.github.io/)
    img: /img/team/mark-padgham.jpg
  - name: Anna Krystalli
    bio: Anna Krystalli is a Research Software Engineer at [University of Sheffield](https://rse.shef.ac.uk/) and Associate Editor for rOpenSci [Software Peer Review](/software-review/). Anna talked about ReproHacks in our Community Call on [Reproducible Research with R](/commcalls/2019-07-30/). She has a PhD in Marine Macroecology. Anna on [GitHub](https://github.com/annakrystalli), [Twitter](https://twitter.com/annakrystalli), [Website](https://annakrystalli.me/about/)
    img: /img/team/anna-krystalli.jpg
  - name: Alex Hayes
    bio: Alex Hayes is a PhD student in the [University of Wisconsin-Madison statistics program](https://stat.wisc.edu/), studying community detection in networks. He also maintains the [broom](https://broom.tidymodels.org/) package. Alex on [GitHub](https://github.com/alexpghayes), [Twitter](https://twitter.com/alexpghayes), [Website](https://www.alexpghayes.com/)
    img: alex-hayes.jpg
  - name: John Sakaluk
    bio: John Sakaluk is an Assistant Professor in the [Department of Psychology](https://www.psychology.uwo.ca/) at [Western University](https://www.uwo.ca/) (London, ON, Canada). He is interested in sexuality, romantic relationships, and psychometric modeling, and is the lead developer of the [dySEM](https://jsakaluk.github.io/dySEM/) package for R. John on [GitHub](https://github.com/jsakaluk), [Twitter](https://twitter.com/JohnSakaluk), [Website](https://www.psychology.uwo.ca/people/faculty/profiles/sakaluk.html)
    img: john-sakaluk.jpg
tags:
  - community call
  - events
  - Software Peer Review
  - statistics
  - reproducibility
  - statistical software
deets: |
    Meeting ID: 994 3486 3374
    
    Passcode: 572732
zoomurl: https://zoom.us/j/99434863374?pwd=SVNLcHBGdGdKZ1BoQ2xORzV0Ukhzdz09
---
This is the first in a series of Community Calls we'll host throughout the year on our [statistical software review project](https://ropenscilabs.github.io/statistical-software-review-book/index.html).

We at rOpenSci are in the process of expanding the scope of our software peer-review system to encompass explicitly statistical software. As part of this we have developed new tools to help prepare software for submission. One of these, the [autotest package](https://github.com/ropenscilabs/autotest), implements and automates rigorous testing of all function inputs, while another, the [srr package](https://github.com/ropenscilabs/srr), enables documentation of, and reporting on, how and where code meets our sets of category-specific standards. Developers of packages to be submitted to this newly expanded system will be expected to apply both of these tools prior to submission. 

This one-hour event will provide an introduction to the project and feature developers who have helped to test and refine the tools, and will feature a live walk-through of the processes of applying these tools to a package. 

Index of video:
- 0:00 Welcome and introductions, Stefanie Butland
- 3:48 Anna Krystalli gives Editor's perspective
- 7:00 Noam Ross introduces the project
- 12:24 Mark Padgham walks through running autotest and srr packages on a skeleton package example
- 23:14 Anna Krystalli explains what’s about to happen
- 24:08 John Sakaluk walks through using autotest on his package-in-development
- 30:48 Anna Krystalli
- 31:48 Alex Hayes walks through using the srr package preparing his package for review
- 38:43 Q & A moderated by Anna



