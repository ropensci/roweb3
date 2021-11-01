---
title: "Enhancing Software Peer Review with GitHub Automation"
dateStart: 2021-12-07T17:00:00 # UTC!!
dateEnd: 2021-12-07T18:00:00 # UTC!!
date: 2021-12-07T18:00:00 # UTC!! same as dateEnd
publishDate: 2021-11-02
# description: Community Call on 
author:
  - Arfon Smith
  - Karthik Ram
  - Maëlle Salmon
  - Noam Ross
organizer: Stefanie Butland
location: Community call (teleconference)
country: "\U0001F310"
attendees: All are welcome
slug: dec2021-automation
# notes: https://docs.google.com/document/d/1o933nG1ZW2Qf8p7FdQxn8wOkk9qoBINL1fx3FlIFSJU/
outputs:
- HTML
- Calendar 
# vimeo:
# - id: '518761488'
resources:
  - url: /software-review/
    name: rOpenSci Software Peer Review
    details: 
  - url: https://joss.theoj.org/
    name: Journal of Open Source Software
    details: 
  - url: https://buffy-ropensci.readthedocs.io/en/latest/
    name: Buffy
    details: is a service to provide a bot helping scientific journals manage submission reviews. Automates common editorial tasks like those needed by JOSS or rOpenSci.
  - url: https://github.com/ropensci-review-tools
    name: 'ropensci-review-tools on GitHub'
    details: Tools for automation of software review at rOpenSci
speakers:
  - name: Karthik Ram
    bio: Karthik Ram is a Senior Research Scientist with the Berkeley Institute for Data Science, Director and Co-founder of rOpenSci, and Editor for rOpenSci Software Peer Review. He has a PhD in Ecology and Evolution. Karthik on [GitHub](https://github.com/karthik), [Twitter](https://twitter.com/\_inundata), [Website](http://karthik.io/), [rOpenSci](/author/karthik-ram/)
    img: /img/team/karthik-ram.png     
  - name: Arfon Smith
    bio: Arfon Smith is a Staff Product Manager for Data at [GitHub](https://github.com/) and Editor-in-chief of the [Journal of Open Source Software](https://joss.theoj.org/), a developer friendly, open access journal for research software packages. He has a PhD in Astrochemistry. Arfon on [GitHub](https://github.com/arfon), [Twitter](https://twitter.com/arfon), [Website](https://www.arfon.org/)
    img: /img/community/arfon-smith.jpg
  - name: Maëlle Salmon
    bio: "Maëlle Salmon is a R(esearch) Software Engineer, part-time with rOpenSci where she, among other things, maintains the guide [rOpenSci Packages: Development, Maintenance, and Peer Review](https://devguide.ropensci.org/). She also created the [R-hub blog](https://blog.r-hub.io) and co-wrote the book [HTTP testing in R](https://books.ropensci.org/http-testing) with [Scott Chamberlain](/author/scott-chamberlain). She lives in Nancy, France. Maëlle has a PhD in Statistics. Maëlle on [GitHub](https://github.com/maelle), [Twitter](https://twitter.com/ma_salmon), [Website](https://masalmon.eu/), [rOpenSci](/author/maëlle-salmon/)."
    img: /img/team/maelle_salmon.jpg
  - name: Noam Ross
    bio: Noam Ross is Principal Scientist for Computational Research at [EcoHealth Alliance](https://www.ecohealthalliance.org/) and rOpenSci Software Review Lead. He co-leads the rOpenSci Statistical Software Testing and Peer Review project. Noam has a PhD in Ecology. Noam on [GitHub](https://github.com/noamross), [Twitter](https://twitter.com/noamross), [Website](https://www.noamross.net/)
    img: /img/team/noam_ross.png
tags:
  - community call
  - events
  - Software Peer Review
  - reproducibility
  - automation
  - reviewbot
  - pkgcheck
  - github
deets: |
    Meeting ID: 939 9725 9411
    
    Passcode: 615476
zoomurl: https://zoom.us/j/93997259411?pwd=Qmp5RHZlVHc0NGI1NVdnZTMvZkVkdz09
---

Software peer-review involves coordinating and tracking many moving parts: software submissions, testing and diagnostics, assignment of editors and reviewers, and logging the progression of submissions through revisions and acceptance.

On this call we will discuss how rOpenSci has worked with The [Journal of Open Source Software](https://joss.theoj.org/) to extend JOSS’s approach of [chatops-driven publishing](https://www.arfon.org/chatops-driven-publishing) into a new GitHub chat-bot that manages our editorial process: assigning tasks, tagging issues, running tests on software submissions, and returning reports to reviewers and editors, all from the comfort of a GitHub issue comment. Chat-ops automation has been critical to JOSS’s success, and shows huge promise for automating even more tedious tasks like frequent software checks and compliance with best practices.

We will show how our new review bot improves the author and editor experience, demonstrate how other teams can use and customize the bot, and discuss how this approach can be extended to tackle other automation, code review, and reproducibility challenges.
