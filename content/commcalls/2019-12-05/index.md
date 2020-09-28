---
title: Last Night, Testing Saved my Life
dateStart: 2019-12-05T10:00:00
dateEnd: 2019-12-05T11:00:00
date: 2019-12-05T11:00:00
publishDate: 2019-12-04
featured: true
author:
  - Steffi LaZerte
  - Rich FitzJohn
organizer: Stefanie Butland
location: Community call (teleconference)
country: "\U0001F310"
attendees: All are welcome
blog: /blog/2019/11/12/commcall-dec2019/
notes: https://docs.google.com/document/d/1TLj44dNbJHeANcgV4f0JZF1-0j76EsxlxDjGBWb5rzc/
vimeo:
  - id: '378010209'
resources:
  - url: /pdfs/2019-11-05_testing_steffi-lazerte.pdf
    name: Steffi LaZerte slides
    details: an intro to testing
  - url: /pdfs/2019-12-05_testing_rich-fitzjohn.pdf
    name: Rich FitzJohn slides
  - url: https://discuss.ropensci.org/t/community-call-on-testing-dec-5-2019-tell-us-what-you-wish-your-past-self-knew/1877
    name: Public forum discussion
  - url: https://devguide.ropensci.org/building.html#testing
    name: Chapter 1.10 Testing, in the rOpenSci software development guide
  - url: https://r-pkgs.org/tests.html
    name: Chapter 10 Tests, in R Packages, by Hadley Wickham and Jenny Bryan
  - url: /blog/2018/03/13/ode-to-testing/
    name: An Ode to Testing, my first review, by Charles T. Gray
  - url: https://itsalocke.com/blog/packages-for-testing-your-r-package/
    name: Packages for Testing your R Package, by Maëlle Salmon on the Locke Data
      blog
  - url: https://blog.r-hub.io/2019/10/29/mocking/
    name: Mocking is catching, on the R-hub blog
  - url: https://ropensci.org/technotes/2019/12/11/http-testing/
    name: HTTP testing in R - overview of tools and new features, by Scott Chamberlain
      for rOpenSci
  - url: http://www.tdda.info
    name: Test-Driven Data Analysis blog, recommended by Noam Ross  
speakers:
  - name: Steffi LaZerte
    bio: Steffi LaZerte is a consulting R programmer and teacher, and Adjunct Professor at Brandon University in Manitoba. She is the author of the rOpenSci-reviewed weathercan package. She has a PhD in Behavioral Ecology and recently received the Society of Canadian Ornithologists Early Career Research Award. Steffi’s research career has involved exploring seasonal changes in chipmunk activity patterns, effects of anthropogenic noise on communication in birds, and the development of R packages for behavioral ecology. See more on GitHub, Twitter, Their Website, and rOpenSci.
    img: steffi-lazerte.jpg
  - name: Rich FitzJohn
    bio: Rich FitzJohn is a research software engineer in the RESIDE group at the Department of Infectious Disease Epidemiology and MRC Centre for Global Infectious Disease Analysis in London UK. His focuses are infrastructure and tools that generalize problems common to research groups across the department. He is interested in reproducible research and in helping researchers get more science done per line of code that they write. Rich has a PhD in zoology. His research career involved modeling coexistence in tropical forests, diversification over macro-evolutionary timescales and the potential for gene flow from genetically-modified crops. Rich is part of rOpenSci’s Leadership team. See more on GitHub, Twitter, Their Website, and rOpenSci.
    img: rich_fitzjohn.jpg
slug: informative-slug
tags:
  - community call
  - events
  - mocking
  - R
  - reproducibility
  - reproducible-research
  - testing
  - testthat
  - vcr
  - webmockr
description: Learn more about software testing in this 1-hour call!
outputs: 
- HTML
- Calendar 
deets: Zoom meeting ID 297 967 525. [Join Meeting](#). [Find your local number](#).
zoomurl: zoom.blabla
---

 To the uninitiated, software testing may seem variously boring, daunting or bogged down in obscure terminology. However, it has the potential to be enormously useful for people developing software at any level of expertise, and can often be put into practice with relatively little effort.

Our 1-hour Call will include two speakers and at least 20 minutes for Q & A.

As someone with a background in science, not software engineering, Steffi LaZerte will share her experiences using automated testing in R to ensure that packages do what they're supposed to do, on all the operating systems they're supposed to do it on, and that they handle weird stuff gracefully.

Rich FitzJohn will talk about how to make testing much more useful than a chore that one does just because it is “best practice”, focussing on how testing has been useful in his work - refactoring code bases, preventing regressions, and improving how code is written in the first place. He will discuss how testing can help at the heart of processes, particularly in collaborative work, and how automating your testing leaves you with more time and energy to focus on your software, and describe strategies for testing as systems grow more complex, such as using mocking to simulate components. 
