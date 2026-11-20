---
slug: "mark-building-machinery-software-review"
title: "Mark Padgham: Building the Machinery of Software Peer Review"
author:
  - The rOpenSci Team
editor:
  - Mark Padgham
date: "2026-10-21"
tags:
  - staff
  - statistical-software
  - Software peer review
description: Mark Padgham is leaving rOpenSci at the end of October, and we want to take this moment to recognize his impact and say thank you for helping to shape rOpenSci.
doi: "10.59350/hbr59-wee08"
---

Mark Padgham is leaving rOpenSci at the end of October, and we want to take this moment to recognize his impact and say thank you for helping to shape rOpenSci.

[Mark joined rOpenSci as a staff member in December 2019](http://ropensci.or/blog/2019/12/03/mark-padgham/) to help us expand software peer review to statistical topics.
However, Mark's impact on rOpenSci has gone far beyond this one project.
Mark has not only shaped how rOpenSci reviews statistical software, but has also built much of the tooling that supports the peer review processes, and R packages which not only support but also strengthen our community.
If you have submitted a package to rOpenSci, reviewed or edited one, you have almost certainly used something Mark made!

## Making a Mark

Mark's most visible contribution is to statistical software peer review.
Reviewing a package that implements statistical methods is a different job from reviewing a package that accesses an API.
Mark tackled the task of translating what "good" means in a statistical package and how a reviewer can assess it.
He recruited a new set of editors with the expertise to tackel this work and turned insights into a concrete set of statistical software standards and the guide that accompanies them ([rOpenSci Statistical Software Testing and Peer Review Community Call](/commcalls/feb2021-statsreview/)).
Mark also built the machinery to go with this new type of review: [pkgstats](https://docs.ropensci.org/pkgstats/) gathers information about a package's structure, helps authors and editors see what a submission contains and how it is organised; [srr](https://docs.ropensci.org/srr/) allows package authors to document their adherence to statistical software standards.

The result of all this work was [our first peer-reviewed statistical packages](/blog/2022/11/30/first-peer-reviewed-stats-packages/), published in November 2022, and to date we've had over 26 statistical packages go through this review!
Anyone who has gone through statistical software review has benefited from the groundwork Mark laid.

## The engine of software review

Peer review at rOpenSci is a human process, but it runs on a lot of automation, and a good part of that automation is Mark's work.

Mark built and maintained [pkgcheck](https://docs.ropensci.org/pkgcheck/), which runs automated checks on submitted packages, and the [GitHub Action](https://ropensci.org/blog/2022/02/01/pkgcheck-action/) that allows anyone to run the same checks on their own repository.
pkgcheck uses [goodpractice](https://docs.ropensci.org/goodpractice/), another package maintained by Mark, that [recently rolled out a host of updates and extension](https://ropensci.org/blog/2026/06/01/goodpractice/).
Mark maintained [Buffy](/blog/2022/05/31/chatops-review-system-github/), the bot behind our chat review system on GitHub, which lets editors assign reviewers, track deadlines and move submissions along with simple comments, and many other pieces of infrastructure that make the whole system work.

## Review is a human process

In early 2025, [Mark became our new Software Review Lead](/blog/2025/02/27/news-february-2025/#mark-padgham-is-now-software-review-lead).
In this role he was in charge of editorial management, curating the current editorial board and planning its future.
Mark helped guide peer-review through new challenges, such as how review should handle AI-assisted contributions, resulting in [rOpenSci's first AI policy](/blog/2026/02/26/ropensci-ai-policy/); or how to deal with large software submissions, resulting in our first *group* peer review.

## Tools for everyone

Mark's care for rOpenSci goes beyond software.
He researched alternatives to GitHub, sharing the results in [Beyond GitHub](/blog/2025/12/17/beyond-github/), a thoughtful look at what it would mean for a community like ours to depend less on a single platform.

He has also served on our [Code of Conduct committee](/code-of-conduct/), work that helps ensure rOpenSci remains a welcoming and safe community.

Mark also builds tools that help the wider R community.
The [allcontributors](https://ropensci.org/blog/2024/11/26/allcontributors/) package, inspired by the allcontributors project, makes it easy to recognise everyone who contributes to a project, not just those who write code.
His work on [repometrics](/blog/2025/09/11/repometrics-call-help/) explores how to understand the health and activity of software repositories, and his work on [deposits](/blog/2024/09/17/deposits-in-the-wild/) looks at how research data and software can be deposited in trusted repositories.

## Thank you, Mark

Mark's work has shaped how we review software, support contributors, and build a more reliable and sustainable open science ecosystem.
Thank you, Mark, for building so much of the infrastructure and process that we rely on, and for leaving it in a much better shape than you found it.

If you have benefited from Mark's work, reach out to [Mark](/author/mark-padgham) and let him know!
You can keep following his work through his website and social media.
