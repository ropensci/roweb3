---
title: What Does It Mean to Maintain a Package
author:
  - Maëlle Salmon
date: '2023-02-07'
slug: what-does-it-mean-to-maintain-a-package
categories:
  - blog
tags:
  - package maintenance
package_version: 0.1.0
description: An attempt at defining what package maintenance entails, with a few tips.
---

Part of what we do at rOpenSci is nurturing a community of package maintainers who help each other.
Often we also advertise packages to take over, with some advice à la "look around to see what needs fixing, then do routine maintenance".
But what is routine maintenance? This post is an attempt at defining what package maintenance entails, with a few tips.

## Package maintenance as ownership

As a package maintainer (or maintainer team), 

+ you are responsible for the scope of the package: adding this feature? Your call!
+ you are in charge of planning work on the codebase: thinking of improvements and organizing them into milestones.
+ you are in control of code quality: spending more time on this pull request or accepting to accrue a bit of technical debt? Again, your call!

However you do not only own these technical and productivity aspects.
In our past community call about [Maintaining an R Package](/commcalls/2020-03-18/), Erin Grand defined maintaining a package as "ownership around package community".
What a great way to underline the _people_ creating and using a piece of software!
One of your roles is supporting a thriving community of users and contributors... Also the topic of a former community call: [Set Up Your Package to Foster a Community](/commcalls/apr2021-pkg-community/).

## Package maintenance as responsiveness

Now, you do not own the whole agenda of package maintenance. :sweat_smile:
Unless your package has no visible user, your package maintenance work probably includes some sort of user support and issue triage.
You might also get requests from the maintainers of dependencies of your package, or from the repository you publish your package with (CRAN, Bioconductor).

User support in particular can be a source of joy, seeing your package used, helping people get through hurdles, problem solving.
However, all these external demands can be quite soul sucking.
How to prevent that?
We have no magical wand, but here are things that might help.

* Maintaining the package as a team can help share the load, but also provide a back channel to let off some steam.
* Without having a package maintenance team, you can chat with other maintainers. rOpenSci has a #package-maintenance channel in its [semi-open slack](https://contributing.ropensci.org/resources.html#channels).
* You don't need to answer issues as soon as they come (apart from CRAN's strict deadlines, that is). You can plan periods of activity and inactivity in your repository, potentially indicating this clearly in a pinned issue or in the documentation. The targets manual explains [out of office periods](https://books.ropensci.org/targets/help.html#out-of-office) but out of office could also very well be your package's more usual state, with activity in bursts. Your package, your choice!
* You can improve your contributing guidelines over time. There is no shame in asking an user to provide a reprex versus spending hours guessing the meaning of their issue text. Through contributing guidelines and gentle explaining, you can try to get the Q&A about your package in the place where it's easier for you, for instance GitHub discussions as opposed to issues.
* Make sure you catch notifications (is your right email address listed, do you watch your own repository). You don't need to read or act on them immediately but it's nice to not lose them.
* You choose where your package is published. If the rules of a publication repository are a source of too much pain compared to the ease of distribution, you can choose to leave it.

## Package maintenance as housekeeping

Beside exciting feature requests, package maintenance warrants more "routine" work.

You might want to try to keep up to date with package development best practice (and external guidelines :sweat_smile:) through package development channels.
Remember [rOpenSci newsletter](/news) has a Package Development Corner. :wink:
Following questions on, say, the [rOpenSci](https://discuss.ropensci.org/) forum or [Posit community forum Package Development category](https://community.rstudio.com/c/package-development/11) can be a form of news monitoring and deliberate practice.
With such reading/following, you might reach a new understanding of a testing method, you might discover a dependency is best switched for another, etc.

Now, when and how do you improve your package?
You might try and repay some technical debt each time you plan some work on a feature.
You might imitate the [tidyverse spring cleaning](/blog/2022/03/18/ropensci-news-digest-march-2022/#get-inspired-by-the-tidyverse-spring-cleaning), both the idea of it and the actual items listed in the public checklist, like updating continuous integration setups.
If such work does not sound fun, again doing it as a team might help, or you might join an [rOpenSci co-working event](/events) to force yourself to work on regular package maintenance.

## Conclusion

In this post we tried giving an overview of what maintaining a package entails: ownership of the scope, code and community; self-controlled responsiveness to external requests; regular housekeeping.
All of this can be a lot of work, to be balanced against the rewards one gets as a package developer (depending on your case, in no particular order: personal satisfaction of creating an useful tool? joy of collaborating with others? money? experience? recognition?).

If the balance feels off, it might be time to try and recruit co-maintainers or join a community of other developers; or more drastically to find a new maintainer or retire the package.
For rOpenSci packages, we can help by advertising your package's need for help, so feel free to contact us.
You might also try to find some _funding_ for your work if that makes a difference, see for instance the [R Consortium call for proposals (twice a year)](https://www.r-consortium.org/all-projects/call-for-proposals).
Last but not least, we at rOpenSci actively think about ways to support package maintainers, so feel free to add a comment below with suggestions.
