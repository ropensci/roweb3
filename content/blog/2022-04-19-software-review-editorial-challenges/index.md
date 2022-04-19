---
title: Editorial Challenges and Solutions in Software Peer Review 
author:
  - Maëlle Salmon
  - Noam Ross
date: '2022-04-19'
slug: software-review-editorial-challenges
tags:
  - Software Peer Review
  - editors
package_version: 0.1.0
description: Challenges encountered by editors, and the measures we've taken to try to alleviate said problems.
---

rOpenSci [Software Peer Review](/software-review/) and [Statistical Software Peer Review](/stat-software-review/) rely on the volunteer work of reviewers, and editors.
Editors manage the day-to-day flow of submissions, recruit reviewers and guide the peer-review process from start to finish.  (Their role, like much of our process, is [codified in the rOpenSci Developer Guide](https://devguide.ropensci.org/editorguide.html)).   While many in our community have participated in the peer-review process, only a few have been involved as editors and guest editors. Here we thought we'd shed some light on some of challenges our editors face, and some of the solutions we have found over the years, to make this part our work more transparent.

## Scope decisions 

After a package is submitted, before it is assigned an editor and reviewers, the rotating Editor-in-Chief has to assess whether it is _in scope_ for the review process.  Traditionally, rOpenSci's [scope](https://devguide.ropensci.org/policies.html#aims-and-scope), has focused on packages that manage the research data lifecycle. This is both so that rOpenSci packages form a coherent set of tools, and also to limit us to packages which our editors and reviewers can review with relevant standards and expertise.  

Scope decisions can be tricky, and while there's no way around that complexity, we've found it has gotten easier by refining the [scope descriptions](https://devguide.ropensci.org/policies.html#aims-and-scope) over time as we have  more edge-cases.
Better phrasing and examples also help authors evaluating the possible scope of their package before a submission.  Now that our scope is [expanding to include statistical packages](https://stats-devguide.ropensci.org/overview.html#overview-categories), we expect to continue to refine these categories in the coming months and years.

When the scope of a package is ambiguous, the Editor-in-Chief leads a discussion on the editorial Slack channel with other editors to come to a consensus.
In these discussions, we acknowledge that some of us might have more expertise on some topics, and we sometimes even consult subject experts external to the board to gain more insights.

Note that we encourage package authors to submit a _pre-submission inquiry_ before a full submission, to clear any doubt about scope.

## Recruiting & replacing reviewers

Reviewing a package takes precious time out of reviewers' busy schedules.
We hope the experience is valuable for reviewers (and we try to make it easier with our [reviewer guide](https://devguide.ropensci.org/reviewerguide.html)) but we reckon that it's quite an undertaking, demanding about the same time as reviewing a scientific paper. 
To add to the difficulty of finding available reviewers, we have a list of [criteria for choosing reviewers](https://devguide.ropensci.org/editorguide.html#criteria-for-choosing-a-reviewer) to ensure diversity (in both skills and background), and to continuously build up a pool of experienced reviewers without overloading any of them.

Last year we launched a [new form for reviewer volunteering](/blog/2021/11/18/devguide-0.7.0/#a-new-form-for-volunteer-reviewing) that allow us to collect finer-grained data about technical and topical expertise, as well as an optional question "Do you consider yourself part of an underrepresented group in the fields of data science, programming, or in your primary field of work?".
We keep this information in database (managed with Airtable), along with each reviewer's history of reviews.  This database is a resource for editors as they look for reviewers with particular expertise, background, or availability.

When that is not enough, for instance after repeated refusals or nonresponses from potential reviewers, editors can ask for recommendations from other editors on our Slack channel. (Some of us are editors for traditional scientific journals, and wish we had such a useful chat with our co-editors there!)

One challenge in reaching out to reviewers is knowing when to move on after waiting for a response.  So we've added "If I don't hear from you within a week, I will assume you are unable to review at this time" to our [standard review request template](https://devguide.ropensci.org/reviewrequesttemplate.html). This puts everyone is on the same page and provides clarity to both editors and potential reviewers.

Lastly, when a reviewer drops out of the review process (or can no longer be contacted),
the handling editor either recruits a replacement, often a person to which they can ask for a short turnaround (say, another editor!), or the editor acts as a second reviewer.
The goal is to not delay the review process too much.

## Authors dropping out

It's a sadder state of affairs when package _authors_ stop responding, as the review process has to be stopped.
It's especially disappointing when it happens after reviews are in, as reviewers can feel their work is wasted.
In the end, there's nothing we can really do about this as it's out of the control of our editors and reviewers (and of authors).

However, to avoid simple problems with missed communications, we recommend that authors make sure they receive GitHub notifications as we try to keep communication transparent through GitHub and don't generally use email. 
To deal with larger problems regarding time and commitment, we've recently added sentences to (the development version of) the [author guide](https://devdevguide.netlify.app/authors-guide.html) and to the submission templates: "I expect to maintain this package for at least 2 years or to find a replacement."
This should prompt package authors to think about the package maintenance in the long term.
While this won't prevent all problems, we hope this will prompt package authors to think about the package maintenance in the long term before submitting their packages for review.

We also understand that while authors may have good intentions, life can twist unexpectedly. 
Therefore, another effort we make is to put holds on reviews (by applying holding labels) as needed. 
These holds are revisited every three months, up to one year.


## Editors (and reviewers) work overload 

Software review necessitates work by all: editors, reviewers, and obviously authors.

To reduce editorial work in particular, we've improved automation, which was the topic of a community call, ["Enhancing Software Peer Review with GitHub Automation"](/commcalls/dec2021-automation/). 
rOpenSci has worked with The Journal of Open Source Software to extend JOSS’s approach of chatops-driven publishing into a new GitHub chat-bot that manages our editorial process: assigning tasks, tagging issues, running tests on software submissions, returning reports to reviewers and editors, and logging reviews in an external (Airtable) database. All from the comfort of a GitHub issue comment!
For example, you could clone a repository locally, install dependencies, run checks, and manually post the   results... **or** you could simply type the following into a GitHub issue comment:

```
@ropensci-review-bot check package
```

Similarly, you can use the following to register a reviewer in the submission issue metadata as well as in our Airtable database.

```
@ropensci-review-bot add @maelle to reviewers
``` 

A huge part of limiting editors' workloads  is having enough editors!  We have been [expanding our editorial team](/tags/editors/), with the goal of only expecting editors to handle [about 4 submissions a year](https://devdevguide.netlify.app/editorguide.html#editors-responsabilities).  
As our submission volume grows, and editors rotate out (we ask for 2-year commitments with option to renew), we recruit new editors largely out of our pool of reviewers.
We invite experienced reviewers to guest-edit and ask if they want to stay on if everything works out.  
Our [editor guide](https://devguide.ropensci.org/editorguide.html) facilitates onboarding... and onboarding new editors leads to feedback on and therefore improvements to, that guide.
If you want to try editing [start by volunteering as a reviewer](/software-reviewer)!

## Conclusion

Here we've summarized some common problems for our editorial boards. 
We've found it's very important to automate processes but also for editors to be able to communicate with each other directly in order to find solutions, as well as to commiserate with and encourage each other.
As software review continues, we will surely run into new challenges to tackle.
We hope our experiences are useful for other editors and that they may help inform other editorial boards.

