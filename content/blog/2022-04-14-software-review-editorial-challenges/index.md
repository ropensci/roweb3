---
title: Editorial Challenges and Solutions in Software Peer Review 
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

rOpenSci [Software Peer Review](/software-review/) and [Statistical Software Peer Review](/stat-software-review/) rely on the volunteer work of reviewers, and editors.
Editors manage the day-to-day flow of submissions, recruit reviewers and guide the peer-review process from start to finish.  (Their role, like much of our processs, is [codified in the rOepnSci Developer Guide](https://devguide.ropensci.org/editorguide.html)).   While many in our community have participated in the peer-review process, only a few have been involved as editors and guest editors. Here we thought we'd shed some light on some of challenges our editors face, and some of the solutions we have found over the years, to make this part our work more transparent.

## Scope decisions 

After a package is submitted, before it is assigned an editor and reviewers, process, the rotating Editor-in-Chief has to assess whether it is _in scope_ for the review process.  rOpenSci's [scope](https://devguide.ropensci.org/policies.html#aims-and-scope), traditionally has focused on packages that manage the research data lifecycle. This is both so that rOpenSci packages form a coherent set of tools, and also limit us to packages that our editors and reviewers can review with relevant standards and expertise.  

Scope decisions can be tricky, and while there's no way around that complexity, we've found it has gotten easier by refining the [scope descriptions](https://devguide.ropensci.org/policies.html#aims-and-scope) over time as we have  more edge-cases.
Better phrasing and examples also help authors evaluating the possible scope of their package before a submission.  Now that our scope is [expanding to include statistical packages](https://stats-devguide.ropensci.org/overview.html#overview-categories), we expect to continue to refine these categories in the coming months and years.

When the scope of a package is ambiguous, the Editor-in-Chief leads a discussion on the editorial Slack channel with other editors to come to a consensus.
In these discussions, we acknowledge that some of us might have more expertise on some topics, and we sometimes even consult subject matters external to the board to gain more insights.

Note that we encourage package authors to submit a _pre-submission inquiry_ before a full submission, to clear any doubt about scope.

## Recruiting reviewers

Reviewing a package takes precious time out of reviewers' busy schedules.
We hope the experience is also valuable for reviewers but we reckon that it's quite an undertaking, demanding about the same time as reviewing a scientific paper. 
To add to the difficulty of finding available reviewers, we have a list of [criteria for choosing reviewers](https://devguide.ropensci.org/editorguide.html#criteria-for-choosing-a-reviewer) to ensure diversity (in both skills and background), and to continuously build up a pool of experienced reviewers without overloading any of them.

Last year we launched a [new form for reviewer volunteering](/blog/2021/11/18/devguide-0.7.0/#a-new-form-for-volunteer-reviewing) that allow us to collect finer-grained data about technical and topical expertise, as well as a binary optional question "Do you consider yourself part of an underrepresented group in the fields of data science, programming, or in your primary field of work?".
We keep this information in database (managed with AirTable), along with each reviewer's history of reviews.  This database is a resource for editors as they look for reviewers with particular expertise, background, or availability.

When that is not enough, for instance after a repeated refusals or nonresponses from potential reviewers, editors can ask for recommendations from other editors on our Slack channel. (Some of us are editors for traditional scientific journals, and wish we had such a useful chat with our co-editors there!)

One challenge in reaching out to reviewers is knowing when to move on after waiting for a response.  So we've added "If I don't hear from you within a week, I will assume you are unable to review at this time." to our [standard review request template](https://devguide.ropensci.org/reviewrequesttemplate.html). This puts everyone is on the same page and provides clarity to editors and potential reviewers.

## Reviewers' dropping out 

When a reviewer drops out of the review process (or can no longer be contacted),
the handling editor either recruits a replacement, often a person to which they can ask for a short turnaround (say, another editor!), or the editor acts as a second reviewer.
The goal is to not delay the review process too much.

## Authors' dropping out

It's a sadder state of affairs when package _authors_ stop responding, as the review process has to be stopped.
It's especially disappointing when it happens after reviews are in, as reviewers can feel their work is wasted.
Nothing can really prevent such a case, that can be out of anyone's control.

However, we've recently added sentences to (the development version of) the [author guide](https://devdevguide.netlify.app/authors-guide.html) and to the submission templates: "I expect to maintain this package for at least 2 years or to find a replacement."
This should prompt package authors to think about the package maintenance in the long term.
While this won't prevent all problems, this can't hurt.

Another effort we make is applying holding labels when that's needed, and revisiting them every three months, up to one year.
We also recommend authors make sure they receive their GitHub notifications as generally no communication is sent directly over email.

## Editors (and reviewers) work overload 

Software review necessitates work by all: editors, reviewers, and obviously authors.

To reduce editorial work in particular, we've improved automation, which was the topic of a community call, ["Enhancing Software Peer Review with GitHub Automation"](/commcalls/dec2021-automation/): many tedious aspects, including exhaustive automatic checks of package quality, are now handled by a bot!

A huge part of limiting work editor load is having enough editors!  We have been [expanding our editorial team](/tags/editors/), with the goal of only expecting editors to handle [about 4 submissions a year](https://devdevguide.netlify.app/editorguide.html#editors-responsabilities).  
As our submissing volume grows, and editors rotate out (we ask for 2-year commitments with option to renew), we recruit new editors largely out of our pool of reviewers. 
We invite experienced reviewers to guest-edit and asking if they want to stay on if their reviewers work well.  
If you want to try editing [start by volunteering as a reviewer](/software-reviewer)!

## Conclusion

In this post we summarized common problems for our two editorial boards. 
We've found automation, but also the existence of a communication channel between editors for solution finding as well as commiserating or encouraging, very important.
As software review continues, we will surely have to tackle new challenges.
We hope our experience can inform other editorial boards.

