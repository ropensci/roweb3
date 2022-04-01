---
title: Editorial Challenges in Software Peer Review (and Solutions)
author:
  - Maëlle Salmon
date: '2022-04-14'
slug: software-review-editorial-challenges
tags:
  - Software Peer Review
  - editors
package_version: 0.1.0
description: Challenges encountered by editors, and the measures we've taken to try to alleviate said problems.
---

rOpenSci [Software Peer Review](/software-review/) and [Statistical Software Peer-Review](/stat-software-review/) rely on the volunteer work of reviewers, and editors.
In this post we shall describe challenges encountered by editors, and the measures we've taken to alleviate said problems.

## Scope decisions 

Even before a package enters the software review process, the editor in chief has to assess whether it is in scope, aided by other editors.
Scope decisions can be tricky, and while there's no way around that complexity, we've found it helpful to improve the [scope descriptions](https://devguide.ropensci.org/policies.html#aims-and-scope) over time.
Better phrasing and examples also help authors evaluating the possible scope of their package before a submission.

Editors have asynchronous discussions lead by the rotating editor in chief. 
In these discussions, we acknowledge that some of us might have more expertise on some topics, and we sometimes even consult subject matters external to the board to gain more insights.

Note that we encourage package authors to submit a _pre-submission inquiry_ before a full submission, to clear any doubt about scope.

## Recruiting reviewers

Reviewing a package takes precious time out of reviewers' busy schedules.
We hope the experience is also valuable for reviewers but we reckon that it's quite an undertaking, about the same time as reviewing a scientific paper.

To add to the complexity of finding available reviewers, we have a list of [criteria for choosing reviewers](https://devguide.ropensci.org/editorguide.html#criteria-for-choosing-a-reviewer) to ensure diversity of reviewers (of skills, of people).

Last year we launched a [new form for reviewer volunteering](/blog/2021/11/18/devguide-0.7.0/#a-new-form-for-volunteer-reviewing) that allow us to collect finer-grained data about technical and topical expertise, as well as a binary optional question "Do you consider yourself part of an underrepresented group in the fields of data science, programming, or in your primary field of work?".
The collected data, coupled with Airtable filters, helps identifying potential reviewers.

When that is not enough, for instance after a few refusals or absences of answers, editors can ask for personal recommendations in our private editors channel.

One last element that's been helpful is the sentence "If I don't hear from you within a week, I will assume you are unable to review at this time." in our [review request template](https://devguide.ropensci.org/reviewrequesttemplate.html), so everyone is on the same page as to how long to wait.

## Handling reviewers' dropping out 

Our solution: sometimes recruiting a replacement, sometimes acting as a second reviewer.

## Authors' dropping out

Our solution: adding some phrasing to the guide & submission templates. Also the holding label.

## Editors (and reviewers) work overload 

Our solution: Automation; recruiting more editors.
New

## Conclusion

In this post we summarized common problems for our two editorial boards. 
As software review continue, we will surely have to tackle new challenges.
We hope our experience can inform other editorial boards.

