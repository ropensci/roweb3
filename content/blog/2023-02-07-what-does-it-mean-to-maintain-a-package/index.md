---
title: What Does It Mean to Maintain a Package?
author:
  - Maëlle Salmon
date: '2023-02-07'
slug: what-does-it-mean-to-maintain-a-package
categories:
  - blog
tags:
  - package
  - maintenance
package_version: 0.1.0
description: An attempt to define what package maintenance entails, with a few tips.
---

Part of what we aim to do at rOpenSci is nurture a community of package maintainers who help each other.
In addition to support during package maintenance, we also want to support maintainers who wish to move on. Situations can change, and there may come a time when a maintainer is looking to pass maintenance on to another. If a maintainer finds themself in this situation and would like to transfer maintainership, we help by [advertising](/blog/2022/10/17/maintain-or-co-maintain-an-ropensci-package/), and also help the new maintainer(s) with advice, generally à la "look around to see if anything needs fixing, then do routine maintenance".
But what is routine maintenance? This post is an attempt to define what package maintenance entails, with a few tips.

## Package maintenance as ownership

As a package maintainer (or maintainer team), 

+ you are responsible for the scope of the package: Want to add a feature? Your call!
+ you are in charge of planning work on the codebase: Think of improvements and organize them into milestones.
+ you are in control of code quality: Want to spend more time on this pull request? Or will you accept and accrue a bit of [technical debt](https://en.wikipedia.org/wiki/Technical_debt)? Again, your call!

However you do not own only these technical and productivity aspects.
In our past community call about [Maintaining an R Package](/commcalls/2020-03-18/), Erin Grand defined maintaining a package as "ownership around package community".
What a great way to recognize the _people_ creating and using a piece of software!
As a package maintainer, one of your roles is to support and encourage a thriving community of users and contributors... Also the topic of a former community call: [Set Up Your Package to Foster a Community](/commcalls/apr2021-pkg-community/).

## Package maintenance as responsiveness

Now, unfortunately, you do not own the whole agenda of package maintenance. :sweat_smile:
Unless your package has no visible users, your maintenance work will likely some sort of user support and issue triage.
You might also get requests from the maintainers of dependencies of your package, or from the repository you publish your package with (CRAN, Bioconductor).

User support in particular can be a source of joy, seeing your package used, helping people get through hurdles, problem solving.
However, all these external demands can be exhausting and even stressful.
How can we prevent this?
Well, unfortunately, this is a common situation. However, while there is no magical solution, here are things that might help.

* Maintaining the package as a team can help share the load, and can also provide a back channel to let off some steam. If you're feeling like you could use some hands-on support, consider inviting some co-maintainers to the project.
* If you want support, but not necessarily the hands-on type, consider chatting with other maintainers. You can discuss specific bugs or coding problems, or general tips for community management or engagement. You can even just share some woes and get sympathy 😁. rOpenSci has a #package-maintenance channel in its [semi-open slack](https://contributing.ropensci.org/resources.html#channels), which all rOpenSci package maintainers should have access to.
* You don't need to address all issues as soon as they pop up (apart from CRAN's strict deadlines, that is). You can plan periods of activity and inactivity in your repository, potentially indicating this clearly in a pinned issue or in the documentation. The targets manual explains [out of office periods](https://books.ropensci.org/targets/help.html#out-of-office) but out of office could also very well be your package's more usual state, with activity in bursts. Your package, your choice!
* You can adjust your contributing guidelines over time. There is no shame in asking a user to provide a reprex versus spending hours guessing the meaning of their issue text. Through contributing guidelines and gentle explanations, you can shift general questions about your package to a place where it's easier for you, for instance GitHub Discussions as opposed to Issues.
* Make sure you catch notifications (is your right email address listed, do you watch your own repository?). You don't need to read or act on them immediately but it's nice to not lose them.
* You can choose where your package is published. If the rules of a publication repository are a source of too much pain compared to the ease of distribution, you can choose to leave it.
* You might also try to find funding for your work. See for instance the [R Consortium call for proposals](https://www.r-consortium.org/all-projects/call-for-proposals) (twice a year).

## Package maintenance as housekeeping

Beside exciting feature requests, package maintenance often warrants more "routine" work.

You might want to try to keep up to date with package development best practice (and external guidelines :sweat_smile:) through package development channels.
Remember [rOpenSci newsletter](/news) has a Package Development Corner. :wink:
Following questions on, say, the [rOpenSci forum](https://discuss.ropensci.org/) or Posit community forum [Package Development category](https://community.rstudio.com/c/package-development/11) can be a form of news monitoring and deliberate practice.
With such reading/following, you might reach a new understanding of a testing method, you might discover a dependency is best switched for another, etc.

Now, when and how do you improve your package?
You might try and repay some technical debt each time you plan some work on a feature.
You might imitate the [tidyverse spring cleaning](/blog/2022/03/18/ropensci-news-digest-march-2022/#get-inspired-by-the-tidyverse-spring-cleaning), both the idea of it and the actual items listed in the public checklist, like updating continuous integration setups.
If such work does not sound fun, again doing it as a team might help, or you might join an [rOpenSci co-working event](/events) to give yourself a dedicated time for working on regular package maintenance in a fun environment.

## Conclusion

In this post we tried giving an overview of what maintaining a package entails: ownership of the scope, code and community; self-controlled responsiveness to external requests; regular housekeeping.
All of this can be a lot of work, and needs to be balanced against the rewards one gets as a package developer (depending on your situation these might entail: personal satisfaction of creating an useful tool; joy of collaborating with others; income; developing coding experience; demonstrating your skills; getting recognition for your work).

If the balance feels off, consider your needs. It might be time to try and recruit co-maintainers or join a community of other developers, or even to find a new maintainer or retire the package.
For rOpenSci packages, we can help by advertising your package's need for help, so feel free to contact us.
Last but not least, we at rOpenSci would like to thank all package maintainers, past, present and future! The work you do, have done, or will do, is valuable and awesome, and we really appreciate it 🙏🏼 !

We are always trying to think about ways to support package maintainers. Please feel free to add a comment below with any suggestions you might have.
