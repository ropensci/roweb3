---
title: "rOpenSci Dev Guide 0.9.0: Multilingual Now! And Better"
author:
  - Maëlle Salmon
  - Mark Padgham
  - Noam Ross
date: '2024-03-11'
slug: devguide-0.9.0
tags:
  - Software Peer Review
  - dev guide
  - multilingual
description: "Updates in version 0.9.0 of the online book 'rOpenSci Packages: Development, Maintenance, and Peer Review'"
twitterImg: img/blog-images/2019-05-16-dev-guide-update/cover.png
output: 
twitterAlt: cover of rOpenSci dev guide, showing a package production line with small humans discussing, examining and promoting packages
---

rOpenSci Software Peer Review's guidance is gathered in an [online book](https://devguide.ropensci.org/booknews) that keeps improving!
This blog post summarises what's new in our Dev Guide 0.9.0, with all changes listed in the [changelog](https://devguide.ropensci.org/booknews.html).

## Now available in Spanish!

Our guide is now bilingual (English and [Spanish](https://devguide.ropensci.org/es/index.es.html)), thanks to work by [Yanina Bellini Saibene](/author/yanina-bellini-saibene/), [Elio Campitelli](/author/elio-campitelli/) and [Pao Corrales](/author/pao-corrales/), and thanks to [support of the Chan Zuckerberg Initiative, NumFOCUS, and the R Consortium](/blog/2023/01/12/multilingual-publishing-en/).
[Read the guide in Spanish](https://devguide.ropensci.org/es/index.es.html).

You can find out more about our multilingual publishing project in the materials and recording from a recent [community call](/commcalls/nov2023-multilingual/).
Useful tools produced by the project include our [translation guide](https://translationguide.ropensci.org/), the [babelquarto package](https://docs.ropensci.org/babelquarto/) to render multilingual Quarto books or websites, and the [babeldown package](https://docs.ropensci.org/babeldown/) to create and update translations using the DeepL API.

Our guide is now also getting translated to [Portuguese](https://ropensci.org/blog/2023/10/20/news-october-2023/#help-us-translate-our-dev-guide-to-portuguese) thanks to volunteers.
We are very grateful for their work!

## Policy updates

We have updated [Aims and Scope](https://devguide.ropensci.org/softwarereview_policies#package-categories) to include translation packages, remove experimental text-processing categories, and provide clarifications around API wrappers.

In our [guide for authors](https://devguide.ropensci.org/softwarereview_author), we now correctly refer to the lifecycle stage "Stable" as the one at which a package can be submitted, thanks to a contribution by GitHub user [bart1](https://github.com/bart1).

## rOpenSci Package maintainer cheatsheet

We have created a [cheatsheet for maintainers of rOpenSci packages](https://devguide.ropensci.org/maintenance_cheatsheet) about how to ask for help on different topics.

## Improvements to the packaging guide

The package guide chapter received several improvements.

We've updated our [advice around roxygen2](https://devguide.ropensci.org/pkg_building#roxygen-2-use), mainly linking to the [roxygen2 website](https://roxygen2.r-lib.org/). 
The advice also includes an explanation of how to document an argument's default, thanks to [Hugo Gruson](https://github.com/bisaloo).
We have also improved our wording to emphasise that using roxygen2 still means manual efforts (thanks to [Vincent van Hees](https://github.com/vincentvanhees)).

We have added [tips for packages wrapping web APIs](https://devguide.ropensci.org/pkg_building#packages-wrapping-web-resources-api-clients), based on the blog post ["Why You Should (or Shouldn’t) Build an API Client"](/blog/2022/06/16/publicize-api-client-yes-no/).

Our instructions around [CITATION files](https://devguide.ropensci.org/pkg_building#citation-file) now reflect the newest CRAN policies.

Our [list of packages helping with testing](https://devguide.ropensci.org/pkg_building#testing) now includes shinytest2, which we anticipate will ultimately supersede shinytest.


## Improvements to GitHub and CI guidance
 
Our collaboration chapter features more links to [resources about for instance PR reviews, and Git workflows](https://devguide.ropensci.org/maintenance_collaboration#git-workflow), thanks to [Mauro Lepore](https://github.com/maurolepore).
That same chapter now mentions [GitHub Discussions](https://devguide.ropensci.org/maintenance_collaboration#communication-with-users) as a way to communicate with users, and more details on [issue templates](https://devguide.ropensci.org/maintenance_collaboration#issue-templates).

[Edward Wallace](https://github.com/ewallace) added an explanation of [continuous integration (CI) in general](https://devguide.ropensci.org/pkg_ci#what-is-continuous-integration-ci) and of [codecov in particular](https://devguide.ropensci.org/pkg_ci#coverage), to our CI guide.

## Better documentation of the process

We now highlight the values of our system and the tone we strive to achieve in more places: at the top of the reviewer guide, in the template for review requests, and in the message our bot posts after editors [assign a reviewer](https://github.com/ropensci-org/buffy/pull/77/files).

> **rOpenSci’s community is our best asset. 
We aim for reviews to be open, non-adversarial, and focused on improving software quality. 
Be respectful and kind! 
See our reviewers guide and [code of conduct](https://ropensci.org/code-of-conduct/) for more.**

[Alexander Fischer](https://github.com/s3alfisc/) added an explanation of package submission via non-default branches to the [guide for authors](https://devguide.ropensci.org/softwarereview_author) and to the  [guide for reviewers](https://devguide.ropensci.org/softwarereview_reviewer#general-guidelines).

Our guide reviewers now clearly explains how to [volunteer as a reviewer, in general or for a particular submission](https://devguide.ropensci.org/softwarereview_reviewer#volunteering-as-a-reviewer).

## Conclusion

In this post we summarized the changes incorporated into our book [“rOpenSci Packages: Development, Maintenance, and Peer Review”](https://devguide.ropensci.org) over the last months.
We are thankful for all contributions that shaped this release. 
We are already working on the next version, including a translation to Portuguese thanks to community contributors!
