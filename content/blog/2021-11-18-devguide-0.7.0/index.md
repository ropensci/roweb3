---
title: rOpenSci Dev Guide 0.6.0: Updates
author:
  - Maëlle Salmon
  - Laura DeCicco
  - Julia Gustavsen
  - Jeff Hollister
  - Anna Krystalli
  - Mauro Lepore
  - Karthik Ram
  - Emily Riederer
  - Noam Ross
  - Adam Sparks
  - Melina Vidoni
date: '2021-11-18'
slug: devguide-0.7.0
tags:
  - Software Peer Review
  - dev guide
package_version: 0.1.0
description: "Updates in version 0.7.0 of the online book 'rOpenSci Packages: Development, Maintenance, and Peer Review rOpenSci Packages: Development, Maintenance, and Peer Review'"
twitterImg: img/blog-images/2019-05-16-dev-guide-update/cover.png
output: 
twitterAlt: cover of rOpenSci dev guide, showing a package production line with small humans discussing, examining and promoting packages
---

rOpenSci Software Peer Review's guidance is gathered in [an online book](https://devdevguide.netlify.app/) and keeps improving!
To find out what's new in our dev guide 0.7.0, you can [read the changelog](https://devdevguide.netlify.app/booknews.html), 
or this blog post for more digested information.

## @ropensci-review-bot help: less TODOs, more simple commands!

A big change brought in this release is the retirement of some of our multiple TODOs for editors in favor of simple bot commands such as `@ropensci-review-bot check package`. 
Our [editor guide](https://devdevguide.netlify.app/editorguide.html) is now simpler! 

For context, rOpenSci has worked with The [Journal of Open Source Software](https://joss.theoj.org/) to extend JOSS’s approach of [chatops-driven publishing](https://www.arfon.org/chatops-driven-publishing) into a new GitHub chat-bot that manages our editorial process: assigning tasks, tagging issues, running tests on software submissions, and returning reports to reviewers and editors, logging reviews in an external (Airtable) database, all from the comfort of a GitHub issue comment. 
Chat-ops automation has been critical to JOSS’s success, and shows huge promise for automating even more tedious tasks like frequent software checks and compliance with best practices.

If you are curious about this topic, do not miss our next [community call: Enhancing Software Peer Review with GitHub Automation](/dec2021-automation/)

## Still some work for editors 😉

## Mention relevant rOpenSci projects

We've sprinkled the dev guide with mentions of rOpenSci projects relevant to software review participants:

* We've linked to Statistical Software Peer Review from the [software review introduction](https://devdevguide.netlify.app/softwarereviewintro.html) and from the [very first page of the book](https://devdevguide.netlify.app/index.html),

* We present the pkgcheck package created and maintained by Mark Padgham in the author guide as using it enables authors to ensure their package is ready for submission.

* In the packaging guide, we now give precise examples of tools for installation instructions: the r-lib remotes and pak packages but also R-universe!

* 2021-11-04, add editors' responsabilities including  Editor etiquette for commenting on packages on which you aren't handling/reviewing (@jhollist, #354). 

* 2021-11-04, give precise examples of tools for installation instructions (remotes, pak, R-universe).


* 2021-10-07, add guidance for editorial management (recruiting, inviting, onboarding, offboarding editors).

* 2021-09-14, add a requirement that there is at least one _HTML_ vignette.

* 2021-09-03, add some recommendations around git. (@annakrystalli, #341)

* 2021-07-14, clarify the categories data extraction and munging by adding examples. (@noamross, #337)

* 2021-05-20, add guidance around setting up your package to foster a community, inspired by the recent rOpenSci community call. (with help from `@Bisaloo`, #289, #308)

* 2021-04-27, no longer ask reviewers to ask covr as it'll be done by automatic tools, but ask them to pay attention to tests skipped.

* 2021-04-02, add citation guidance.

* 2021-04-02, stop asking reviewers to run goodpractice as this is part of editorial checks.

* 2021-03-23, launched a new form for reviewer volunteering.

* 2021-02-24, add guidance around the use of `@ropensci-review-bot`.

## Conclusion

In this post we summarized the changes incorporated into our book ["rOpenSci Packages: Development, Maintenance, and Peer Review"](https://devdevguide.netlify.app/) over the last months. 
We are thankful for all contributions that shaped this release. 
We are already working on the next version, such as pondering [whether to make the review template an R Markdown file](https://github.com/ropensci/dev_guide/issues/340) and [whether to make a distinct chapter out of contributing guide standards](https://github.com/ropensci/dev_guide/issues/334)