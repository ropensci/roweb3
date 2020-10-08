---
title: 'rOpenSci Dev Guide 0.5.0: Updates'
author:
  - Maëlle Salmon
  - Brooke Anderson
  - Laura DeCicco
  - Julia Gustavsen
  - Anna Krystalli
  - Mauro Lepore
  - Karthik Ram
  - Noam Ross
  - Melina Vidoni
date: '2020-10-22'
slug: devguide-0.5.0
tags:
  - Software Peer Review
  - dev guide
package_version: 0.1.0
description: "Updates in version 0.5.0 of the online book 'rOpenSci Packages: Development, Maintenance, and Peer Review
rOpenSci Packages: Development, Maintenance, and Peer Review'"
twitterImg: img/blog-images/2019-05-16-dev-guide-update/cover.png
---

rOpenSci Software Peer Review's guidance has been compiled in [an online book](https://devguide.ropensci.org/) for more than one year now. We've just released its fifth version. 
To find out what's new in our dev guide 0.5.0, you can [read the changelog](https://devguide.ropensci.org/booknews.html), 
or this blog post for more digested information.

> We have resumed activity after a break due to the COVID-19 crisis, but have been handling deadlines and timing giving a lot of grace to all people involved: We're all doing our best and are trying to be accommodating with schedules this challenging year.

## A curation policy for rOpenSci packages

The most exciting update to our guide is probably the addition of a chapter featuring [rOpenSci package curation policy](https://devguide.ropensci.org/curationpolicy.html).

_This chapter summarizes a proposed curation policy for rOpenSci’s ongoing maintenance of packages developed as part of rOpenSci activities and/or under the rOpenSci GitHub organization. This curation policy aims to support these goals:_

* _Ensure packages provided by rOpenSci are up-to-date and high quality._

* _Provide clarity as to the development status and and review status of any software in rOpenSci repositories._

* _Manage maintenance effort for rOpenSci staff, package authors, and volunteer contributors._

* _Provide a mechanism to gracefully sunset packages while maintaining peer-review badging._

Noam Ross lead the work drafting the policy, and rOpenSci staff is busy cleaning up repositories and their metadata.

## Guidance for package docs

Our requests and tips around package documentation got also some care thanks to suggestions by editor Anna Krystalli, and by [Mark Padgham](https://github.com/mpadge), [Luke McGuinness](https://github.com/mcguinlu).

The [documentation section](https://devguide.ropensci.org/building.html#documentation) of the packaging guide got structured, for clarity, into a general section where we now underline the need for excellent documentation at submission; a section about roxygen2 use; and a section about URLs in package documentation to explain how to check and correct those before CRAN submissions.

We added a request to better describe the data source of a package in `DESCRIPTION`, in particular linking to the user-facing website of a data source as opposed to just the API docs.

We have made our advice around setting up [redirections](https://devguide.ropensci.org/redirect.html) from a former pkgdown website to the [centrally built](https://ropensci.org/technotes/2019/06/07/ropensci-docs/) one after approval.
It is even more crucial now that we encourage setting up a pkgdown website before submission in our [author guide](https://devguide.ropensci.org/guide-for-authors.html): _"For any submission or pre-submission inquiry the README of your package should provide enough information about your package (goals, usage, similar packages) for the editors to assess its scope without having to install the package. Even better, set up a pkgdown website for allowing more detailed assessment of functionality online."_

Lastly, we added a small section about [licences](https://devguide.ropensci.org/building.html#licence) to the packaging guide to make the lists of accepted licenses easier to find; and to link to the useful [new chapter about licences in the R packages book by Hadley Wickham and Jenny Bryan](https://r-pkgs.org/license.html).


## Updates to our process

The [author guide](https://devguide.ropensci.org/guide-for-authors.html) now contains clearer instructions about submissions to the [Journal of Open-Source Software](https://joss.theoj.org/) (JOSS) to underline that because of the different scope definitions of our system and of JOSS, a publication in JOSS is not guaranteed.

_Do not submit it to JOSS consideration until after the rOpenSci review process is over: if your package is deemed in scope by JOSS editors, only the accompanying short paper would be reviewed, (not the software that will have been extended reviewed by rOpenSci by that time). **Not all rOpenSci packages will meet the criteria for JOSS**._

Regarding our own process, we have split reviewer approval from the review template thanks to a suggestion by [Hugo Gruson](https://github.com/bisaloo).
Before that, at the end of the process the editor would ask the reviewers to check the box in the review template.
This involved a lot of scrolling up in some cases, and did not create notifications since there was sometimes no new comment by the reviewer.
Furthermore, this allows us to ask the reviewer to update their estimate of the time they spent reviewing the package in total, including the time responding to the author response.

## Guidance for testing

The updates feature two small but useful changes to our testing guidance.

First, we updated our [continuous integration guidance](https://devguide.ropensci.org/ci.html#whichci) by making GitHub Actions come first, as it seems to be gaining popularity. Thanks to [Luke McGuinness](https://github.com/mcguinlu) for initiating the [discussion](https://github.com/ropensci/dev_guide/issues/269) right after having a package reviewed and to [Hugo Gruson](https://github.com/bisaloo) for sharing his insights.
Authors (and reviewers), your fresh perspective on guidance and processes is most welcome!

Then, the chapter about package evolution (your reference if you are thinking about deprecating functions!) now includes guidance about testing deprecated functions. 
Thanks [Scott Chamberlain](/author/scott-chamberlain) for the contribution, and thanks to [Jindra Lacko](https://www.jla-data.net/) and [John Blischak](https://jdblischak.com/) for [their discussion on RStudio community forum](https://community.rstudio.com/t/unit-testing-of-a-deprecated-function/42837/) that inspired this addition.


## A reference to rOpenSci other best guide :wink:

Our guide featured a quite light chapter about [Contributing to rOpenSci](https://devguide.ropensci.org/contributingguide.html).
Now that rOpenSci Community Manager Stefanie Butland and Community Assistant Steffi LaZerte have written a whole guide about this topic, the chapter has been transformed into a teaser for it!

{{< tweet 1298636325487345669 >}}

It is the opportunity for us to congratulate Stefanie and Steffi on the contributing guide, and to encourage you to read it.
Here's to many more versions. :grin:

## Conclusion

In this post we summarized the changes incorporated into our book ["rOpenSci Packages: Development, Maintenance, and Peer Review"](https://devguide.ropensci.org/) over the last six months. 
We are grateful for all contributions that made this release possible. 
We are already working on updates for our next version, such as improving guidance for [encouraging package citations](https://github.com/ropensci/dev_guide/issues/115). 
Check out the [the issue tracker](https://github.com/ropensci/dev_guide/issues/) if you'd like to contribute.
