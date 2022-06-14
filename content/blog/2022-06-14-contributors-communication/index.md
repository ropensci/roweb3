---
title: Communication & Collaboration with Contributors in an Open-Source Organization
author:
  - Maëlle Salmon
  - Zhian N. Kamvar
date: '2022-06-14'
slug: communication-with-contributors-in-an-open-source-organization
tags:
  - community
description: How we interact with volunteer maintainers. 
tweet: "How we interact with volunteer maintainers. Post by @ma_salmon (@rOpenSci) and @ZKamvar (@thecarpentries)"
---

_Zhiam Kamvar is Lesson Infrastructure Technology Developer at [The Carpentries](https://carpentries.org/) (Software Carpentry, Data Carpentry & Library Carpentry), an open global community teaching the skills & perspectives to turn data into knowledge.[^tinkr]_
_Maëlle Salmon is a Research Software Engineer with rOpenSci._
_In this post they compare their experiences in the two distinct organizations The Carpentries and rOpenSci._

[^tinkr]: Zhian also maintains the rOpenSci [tinkr package](https://docs.ropensci.org/tinkr/) that was first introduced on this [blog](/blog/2018/10/01/tinkr/).

At rOpenSci, many [packages are maintained](/commcalls/2020-03-18/) by volunteer community members, and similarly at Carpentries [lessons are maintained](https://carpentries.org/maintainers/) by volunteer community members.
We're very thankful for the effort our volunteers put into that role and our organisations could literally not run without their work.
However, sometimes infrastructure changes are decided centrally. For example, [requiring two-factor authentication for all GitHub organization members at rOpenSci](/blog/2022/05/17/requiring-2fa-for-the-ropensci-github-organization/) or [overhauling the foundation of the lesson infrastructure at Carpentries](https://carpentries.org/blog/2022/05/workbench-beta/).
In this post, we shall share some insights from our experiences regarding how we, as staff members, best support our volunteers through these transformations.

## Making requirements explicit

When volunteers take on maintenance of something (be it an R package or an R lesson), it is helpful to make expectations explicit right away. 
These requirements can contain a list of tasks and expectations of time (to respond) and duration (of the responsibility).
At rOpenSci we have an [author guide](https://devguide.ropensci.org/authors-guide.html) for those who submit software to review, as well as a [package curation policy](https://devguide.ropensci.org/curationpolicy.html).
At The Carpentries, maintainers [undergo an onboarding training](https://carpentries.org/blog/2022/05/maintainer-application/) to establish guidelines for how to work with Pull Requests, and to ensure our lessons align with [The Carpentries’ core values](https://carpentries.org/values) and evidenced-based teaching practices. 
In 2022, The Carpentries established a [yearly check-in](https://github.com/carpentries/maintainer-RFCs/issues/19) to give maintainers a chance to step down if they have decided that they need a break from maintenance.[^ro]

[^ro]: This has inspired rOpenSci to think about planning a similar yearly survey.

## Using several channels of communication and being responsive

Unless there are very few people involved, messages need to be sent in several places, _with reminders_.
Not all at once, the idea is not to spam people! 
A mix of general communication channels (newsletter, mailing lists, Slack workspaces) together with more targeted communication ([ping in GitHub issues](https://github.com/datacarpentry/r-socialsci/issues/274#issuecomment-1126176378), emails[^gmailr]), can best help deliver information... but also opens the floor for questions and feedback _from_ maintainers (because at the end of the day, the most important part of the community is the community itself)!
Answering contributor questions in a timely manner is key to trust.

[^gmailr]: On a technical note, some communication can be partly automated, e.g. emails can be sent collectively using gmailr.

## Not rushing changes

Have you ever stumbled across a package dependency with a new release that [broke everything](https://github.com/dwinter/mmod/issues/2)?
Not rushing changes is probably a good idea in general, but especially so in organizations where much of the work is done by volunteers juggling other responsibilities. 
Even big tech organizations like GitHub [make changes slowly so that they don’t alienate their users](https://github.blog/2022-05-04-software-security-starts-with-the-developer-securing-developer-accounts-with-2fa/). 
We keep this in mind when defining timelines so that we can give people support before the change happens.

## Helping without taking over

It is important to us to do as much work on volunteers' behalf as possible.
For instance, when [monitoring](/blog/2022/01/31/package-build-failures/) the dashboard of R-universe builds of packages, failures are reported with as much information as possible, with clear suggestions of fixes (possibly even pull requests).
However, this has to be balanced with letting maintainers have ownership: for instance, we make as few direct code edits as possible.
In The Carpentries, helping without taking over means that we provide decision support for maintainers, which looks like working on pull requests during maintainer meetings, [providing clear context for contentious issues](https://github.com/swcarpentry/git-novice/issues/778#issuecomment-879242651), [aggregating issues that need help](https://carpentries.org/help-wanted-issues/) (rOpenSci [equivalent page](/help-wanted/)), and even [providing a high-level governance structure made up of volunteers](https://carpentries.org/blog/2021/09/curriculum-advisory-committee-application/) to address [broad topics in curricula](https://github.com/datacarpentry/r-raster-vector-geospatial/issues/363#issuecomment-1129233099). 

## Conclusion

In this post, we described how we as staff members interact with volunteer maintainers in our organizations.
Our key messages are: having clear requirements; communicating via several means, respectfully and timely; making changes not too quickly; doing as much work as possible while respecting ownership.
We recognize that there will still be hiccups in the way we drive changes, but we do our best to learn our lessons.
What is your own experience as staff or volunteer in open-source organizations?

