---
title: Communication & Collaboration with Contributors in an Open-Source Organization
author:
  - Maëlle Salmon
  - Zhian Kamvar
date: '2022-06-13'
slug: communication-with-contributors-in-an-open-source-organization
categories: []
tags:
  - community
description: How we interact with volunteer maintainers
---

At rOpenSci, many [packages are maintained](/commcalls/2020-03-18/) by volunteer community members, like Carpentries [lessons are maintained](https://carpentries.org/maintainers/)  by volunteer community members.
We're very thankful for the effort they put into that role and our organisations could literally not run without their work.
Sometimes, some infrastructure changes are decided centrally: [requiring two-factor authentication for all GitHub organization members](/blog/2022/05/17/requiring-2fa-for-the-ropensci-github-organization/) or [overhauling the foundation of the lesson infrastructure](https://carpentries.org/blog/2022/05/workbench-beta/).
How do we, as staff members, best support these transformations?
In this post, we shall share some insights from our experiences.

## Making requirements explicit

At the time when someone takes on maintenance of something, it is helpful to make requirements explicit. 
These requirements can contain a list of tasks and expectations of time (to respond) and duration (of the responsibility).
At rOpenSci we have an [author guide](https://devguide.ropensci.org/authors-guide.html) for those who submit software to review, as well as a [package curation policy](https://devguide.ropensci.org/curationpolicy.html).
At the Carpentries, maintainers [undergo an onboarding training](https://carpentries.org/blog/2022/05/maintainer-application/) to establish guidelines for how to work with Pull Requests to ensure our lessons align with [The Carpentries’ core values](https://carpentries.org/values) and evidenced-based teaching practices. 
In 2022, The Carpentries a established a [yearly check-in](https://github.com/carpentries/maintainer-RFCs/issues/19) to give maintainers a chance to step down if they have decided that they need a break from maintenance. 

## Using several channels of communication, being responsive

Unless there are very few people involved, messages need to be sent in several places, _with reminders_.
Not at once, the idea is not to spam people! 
A mix of general communication channels (newsletter, mailing lists, Slack workspaces) together with more targeted communication ([ping in GitHub issues](https://github.com/datacarpentry/r-socialsci/issues/274#issuecomment-1126176378), emails), can best help deliver information... but also open the floor for questions and feedback _from_ maintainers (because at the end of the day, the most important part of the community is the community itself)!
Answering contributor questions in a timely manner is key to trust.

On a technical note, some communication can be partly automated, e.g. emails can be sent using gmailr.

## Not rushing changes

Have you ever stumbled across a package dependency with a new release that [broke everything](https://github.com/dwinter/mmod/issues/2)?
Not rushing changes is probably a good idea in general, but especially so in organizations where much work is done by volunteers juggling other responsibilities. 
Even big tech organizations like GitHub [make changes slowly so that they don’t alienate their users](https://github.blog/2022-05-04-software-security-starts-with-the-developer-securing-developer-accounts-with-2fa/). 
We keep this in mind when defining timelines so that we can give people support before the change happens.

## Helping without taking over

It is important to us to do as much work on volunteers' behalf as possible.
For instance, when [monitoring](/blog/2022/01/31/package-build-failures/) the dashboard of R-universe builds of packages, failures are reported with as much information as possible, with clear suggestions of fixes (possibly even pull requests).
However, this has to be balanced with letting maintainers have ownership: for instance, we make as few direct code edits as possible.

## Conclusion

In this post, we described how we as staff members interact with volunteer maintainers in our organizations.
Our key messages are: having clear requirements; communicating via several means, respectfully and timely; making changes not too quickly; doing as much work as possible while respecting ownership.
We recognize that there will still be hiccups in the way we drive changes, but we do our best to learn our lessons.
What is your own experience as staff or volunteer in open-source organizations?

