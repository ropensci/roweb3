---
title: "rOpenSci Dev Guide 0.8.0: Updates"
author:
  - Mark Padgham
  - Laura DeCicco
  - Julia Gustavsen
  - Jeff Hollister
  - Anna Krystalli
  - Mauro Lepore
  - Karthik Ram
  - Emily Riederer
  - Noam Ross
  - Maëlle Salmon
  - Adam Sparks
  - Melina Vidoni
date: '2022-06-09'
slug: devguide-0.8.0
tags:
  - Software Peer Review
  - dev guide
  - automation
  - ropensci-review-bot
  - GitHub
package_version: 0.8.0
description: "Updates in version 0.8.0 of the online book 'rOpenSci Packages: Development, Maintenance, and Peer Review rOpenSci Packages: Development, Maintenance, and Peer Review'"
twitterImg: img/blog-images/2019-05-16-dev-guide-update/cover.png
output: 
twitterAlt: cover of rOpenSci dev guide, showing a package production line with small humans discussing, examining and promoting packages
---

rOpenSci Software Peer Review's guidance is gathered in an [online book](https://devguide.ropensci.org/) that keeps improving!
This blog post summarises what's new in our Dev Guide 0.8.0, with all changes listed in the [changelog](https://devguide.ropensci.org/booknews.html).

## Farewell Stefanie Butland

After many years of fabulous contributions to the rOpenSci community, Stefanie Butland [left the role of community manager](/blog/2022/01/14/msg-from-stefanie/) at the start of 2022. The Dev Guide included several references to Stefanie, particularly regarding preparing blog posts, as well as preparing Dev Guide releases. Her name has been removed and replaced with a generic "*Community Manager* title. We look forward to the next release, which should see this phrase once again replaced with the actual name of our new community manager.

## Expanded Aims and Scope

This version of the Dev Guide reflects the recent expansion of our peer-review system to include [statistical software](/stat-software-review/). The [*Aims and Scope* section](https://devguide.ropensci.org/policies.html#aims-and-scope) now explains that statistical software is also within scope, and links directly to the [*Statistical Software Dev Guide*](https://stats-devguide.ropensci.org).

## Updated Guide for Authors

One of the largest changes in the current release is in the [*Guide for Authors* chapter](https://devguide.ropensci.org/authors-guide.html). This used to be a largely unstructured collection of dot points reflecting our evolving "best practices". These points were collated and refined as our peer review system evolved over the years. The updated *Guide for Authors* chapter provides a more structured reference, divided into the four main sections of:

- Planning a submission or pre-submission enquiry (at what stage of the package lifecycle should it be submitted)
- Preparing for submission (practical steps)
- The submission process
- The review process

These changes should both make the chapter more informative for people planning to submit packages for review, and also clarify what authors can expect from our peer review process. Additional changes include informing authors of packages under review that they can now directly call `@ropensci-review-bot check package` at any time during review to trigger an automated package report.
We also now have explicit advice under *Planning a Submission* to ensure availability during the review process, and to consider the valuable time volunteered by package reviewers. In *The Review Process*, we also advise authors to immediately inform us if they are no longer able to respond to reviewers. These improvements to the *Authors Guide* should hopefully improve coordinated time management of all those involved in software reviews.

## Updated Editors' Guide

The [*Editors' Guide* Chapter](https://devguide.ropensci.org/editorguide.html) now includes an additional section on "Answering Reviewers' Questions", with links to a few previous reviews in which editors have worked with reviewers and package authors to implement major package changes prior to ultimate acceptance.

## More automation

Our [automation processes](/blog/2022/05/31/chatops-review-system-github/) continue to ease the burden on all those involved in our software peer review system. This version of the Dev Guide can happily jettison an entire "approval comment template" that reviewers used to have to copy-and-paste into an issue. That template is now automatically inserted by the `@ropensci-review-bot` as soon as a submission is approved. As described above, authors can now also call `check package` directly in a GitHub review thread. 

Our [*Continuous Integration Best Practices* chapter](https://devguide.ropensci.org/ci.html) now states that all packages are checked on submission by our own internal [`pkgcheck` system](https://docs.ropensci.org/pkgcheck), and that this system is also available as [a GitHub action](/blog/2022/02/01/pkgcheck-action/) which authors are encouraged to use prior to submission. That section now also includes a general description of GitHub actions.

While not exactly an automation enhancement, our review template now explicitly states that reviewers can download a local copy, and complete a review either as an Rmarkdown (`.Rmd`) or plain markdown (`.md`) document, and simply copy-and-paste into the GitHub issue to complete the review. We are indebted to [Hugo Gruson for that clarificiation](https://github.com/ropensci/dev_guide/pull/375).

### Automation also comes to the Dev Guide

In addition to the automation advances described above, this release of the Dev Guide has also been eased through automation, notably through collecting several scripts and helper functions in [a new R package, `devguider`](https://github.com/ropensci-org/devguider). One function, `prerelease_checklist()`, collects all current issues on the [Dev Guide GitHub repository](https://github.com/ropensci/dev_guide/issues) that are associated with the upcoming release, adds then to our [pre-release checklist](https://devguide.ropensci.org/bookreleaseissue.html), and opens a new GitHub issue with all of those items as a checklist used to guide the next release. This checklist also contains explicit instructions on using other functions from the `devguider` package.

## Guidance on contributing.md files

Having a contributing file is [compulsory for rOpenSci packages](https://devguide.ropensci.org/collaboration.html?q=contributing#contributing-guide), and is automatically checked by our automated package checks. We've updated our [recommendations for CONTRIBUTING.md files](https://devguide.ropensci.org/collaboration.html#contributing-guide) to suggest a number of explicit approaches, including the one-line `usethis::use_tidy_contributing()` function, and links to two more extensive examples of contributing guides. We now also recommend the inclusion of a lifecycle statement in package contributing guides, to give contributors an understanding of the likely future development of a package.

## Authorship of included code

In response to an [idea from Klaus Vigo](https://github.com/ropensci/dev_guide/issues/388), the [section of package authorship](https://devguide.ropensci.org/building.html#authorship) now has an additional section describing how to acknolwedge additional authors of external code included in a package.

## No more CRAN notes for "rev" role in package authorship

Standard rOpenSci practice is to [acknowledge package reviewers in your DESCRIPTION file](/blog/2018/03/16/thanking-reviewers-in-metadata/) by including their names with a `role = "rev"` identifier (subject to their approval). This used to raise notes in CRAN package checks on older versions of R. That is thankfully no longer the case, and we are happy to have finally been able to remove that statement. Everybody can now simply insert `role = "rev"` to acknowledge all reviewers, and all CRAN systems will happily recognise those statements.

## Updated package archiving practice

We have updated our guidance on package evolution to include a new section on [package archiving](https://devguide.ropensci.org/evolution.html#archivalguidance). This section reflects our updated policies that archived packages should move README.md to an alternative location, and reduce the main README.md to a minimal form explaining only that the package has been archived, and linking to the former README.md contents.

## Two-Factor Autentication now required

Our [*Package Security Best Practices*](https://devguide.ropensci.org/package-development-security-best-practices.html) now *recommend* the use of two-factor authentication (2FA) for GitHub, and clarify that 2FA is [mandatory for all rOpenSci organization members and outside collaborators](/blog/2022/05/16/requiring-2fa-for-the-ropensci-github-organization/).

## Other guidance updates

The [*Citation* guidelines](https://devguide.ropensci.org/building.html#citation-file) now suggest using [the `cffr` package](/blog/2021/11/23/cffr/) to create a "CITATION.cff" file.

The [*Further Guidance* on Package Development](https://devguide.ropensci.org/building.html#further-guidance) now includes a section on useful blogs.

The appendix on redirecting package documentation has been updated [thanks to Peter Desmet (#387)](https://github.com/ropensci/dev_guide/pull/387).

The [*Testing* section of the *Packaging Guide* chapter](https://devguide.ropensci.org/building.html#testing) has an expanded list of recommended packages, particularly those for testing and mocking responses from web resources. That section now also suggests reading the blog post, ["*Why good developers write bad unit tests*"](https://mtlynch.io/good-developers-bad-tests/), by Michael Lynch.

The [*Recommanded Scaffolding* section of the *Packaging Guide* chapter](https://devguide.ropensci.org/building.html#recommended-scaffolding) now includes explicit recommendation of spatial packages, and details of (soon-to-be) obsolete spatial packages. 

The section in that chapter on [`roxygen2` use in documentation](https://devguide.ropensci.org/building.html#roxygen2-use) also describes the `@seealso` and `@family` tags for grouping functions in package documentation sites.

The [section in the *Collaboration Guide* Chapter](https://devguide.ropensci.org/collaboration.html#gitflow) on "Working with collaborators" has been streamlined, with [additional links](https://github.com/ropensci/dev_guide/pull/374) on giving and receiving code reviews.
