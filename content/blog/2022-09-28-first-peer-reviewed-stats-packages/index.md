---
title: Our First Peer-Reviewed Statistical R Packages! 
author: 
  - Noam Ross
  - Mark Padgham
date: '2022-09-28T00:00:01-07:00'
slug: first-peer-reviewed-stats-packages
tags:
  - community
  - software-peer-review
  - editor
  - statistics
feature: true  
# description: 
tweet: "" 
---

rOpenSci is *very* excited to announce our first peer-reviewed statistical R
packages!

One of rOpenSci's core programs is software peer-review, where we use [best
practices from software engineering and academic peer-review to improve
scientific software](https://www.youtube.com/watch?v=o_WEhg6sSSQ). Through this, we aim to make scientific software more
robust, usable, and trustworthy, and build a supportive community of practitioners.

Historically, we have focused on R packages that manage
the [research data life
cycle](https://devguide.ropensci.org/policies.html#aims-and-scope). Now, thanks
to work over the past two years [supported by the Sloan
Foundation](/blog/2019/07/15/expanding-software-review/) we
also facilitate peer-review of packages that implement statistical algorithms. The first
statistical packages to pass peer review are:

<!-- Note, I excluded package authors here that were listed as data providers, thesis advisors, etc. Should I include them? Probably... -->

-   [**aorsf: Accelerated Oblique Random Survival
    Forests**](https://github.com/ropensci/aorsf) [![Gold Statistical Software Peer Review
    badge](https://badges.ropensci.org/532_status.svg)](https://github.com/ropensci/software-review/issues/532/),
    by Byron Jaeger, Nicholas Pajewski, and Sawyer Welden, reviewed by Lukas
    Burk, Marvin N. Wright, edited by Toby Dylan Hocking
-   [**melt: Multiple Empirical Likelihood
    Tests**](https://github.com/ropensci/melt) [![Silver Statistical Software Peer Review
   badge](https://badges.ropensci.org/550_status.svg)](https://github.com/ropensci/software-review/issues/550)
    by Eunseop Kim, reviewed by Alex Stringer and Pierre Chausse, edited by
    Paula Moraga
-   [**canaper: Categorical Analysis of Neo- And Paleo-Endemism in
    R**](https://github.com/ropensci/canaper) [![Silver Statistical Software Peer Review 
    badge](https://badges.ropensci.org/475_status.svg)](https://github.com/ropensci/software-review/issues/475),
    by Joel H. Nitta, reviewed by Luis Osorio and Klaus Schliep, edited by Toby
    Dylan Hocking

These packages are peer-reviewed by statisticians and developers to conform to a
set of [standards](https://stats-devguide.ropensci.org/standards.html) we've developed
with community input. These cover areas such as documentation, testing, algorithm
design and interoperability.  As part of the review process, authors have also
[annotated their source code](https://ropensci-review-tools.github.io/srr/) to
document how and where they comply with these standards.  

Evaluating and reviewing statistical packages is a complex and difficult task
for editors and reviewers.To help them we've also built
[automated infrastructure](/commcalls/dec2021-automation/) for checking submissions for compliance and producing metrics
and diagnostics that help authors and reviewers navigate the review. 

An enormous thank-you to the authors, editors, and reviewers who volunteered
their time and helped piloted this new system! Also to our [statistical advisory
board](https://stats-devguide.ropensci.org/) and all the community members that
have provided input on our standards and processes.

We're currently accepting packages in Bayesian statistics, exploratory data analysis, machine-learning, regression, supervised learning, spatial and time-series statistics, dimensionality reduction, clustering, and unsupervised learning. We will be expanding our standards to cover other areas such as network analysis in the the near future. 

If you are interested in participating in statistical software peer review at rOpenSci? Here are some ways to get involved:

 - Read about our process and standards (and suggest changes!) in the [rOpenSci Statistical Software Development Guide!]
 - Watch or listen to some of our recent [community Cclls](https://ropensci.org/commcalls/)
 - [Submit your own package for review or make a pre-submission inquiry](https://github.com/ropensci/software-review/issues/new/choose)
 - [Volunteer to be a peer-reviewer](https://airtable.com/shrnfDI2S9uuyxtDw)
 - During the next call for applications, apply to our [Community Champions program](https://ropensci.org/champions/) to get support and training in package development and review.


