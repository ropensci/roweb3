---
title: 'Editorial Automation: Why & How to Set Up Chat-Ops for your Own Review System on GitHub'
author:
  - Maëlle Salmon
date: '2022-06-02'
slug: chatops-review-system-github
categories: []
tags:
  - tech notes
description: Could the editorial bot generator buffy fit your needs? How to know, how to set it up.
twitterImg: blog/2022/06/02/chatops-review-system-github/diagram.png
twitterAlt: Diagram representing automation for rOpenSci software peer review. On the left, a GitHub issue thread with emojis as avatars, and wobbly lines as text. Under the GitHub issue thread, a legend indicating who among the emojis is Author /Editor / Reviewer / ropensci-review-bot. At the center of the diagram is an Heroku app using the buffy Ruby tool, that receives information from GitHub via webhooks. The app digests messages received and depending on the command pings an external service represented on the right (with a plumber logo); fills the Airtable-based software review database; manages ropensci GitHub organization via GitHub API; posts back or labels in the GitHub issue thread.
---

At rOpenSci Software Peer-Review, processes have been enhanced with :sparkles: automation :sparkles:. 
For instance, for checking compliance of a software package with some criteria, instead of cloning a git repository locally, installing its dependencies, running the checks, and manually posting the results… we can simply type the following **command** into a GitHub issue comment:

```
@ropensci-review-bot check package
```

Similarly, we can use the following command to register a reviewer in the submission issue metadata (filling YAML data) as well as in our Airtable database.

```
@ropensci-review-bot add @maelle to reviewers
```

Inspiring?
In this post we shall explain how to assess whether adopting the editorial bot generator buffy, like we did, is the right fit for your system.
We will detail steps involved in setting buffy up for your own needs.

## What is an editorial bot generator?

The editorial bot generator buffy is the tool that supports the aforementioned commands.
It is a **Ruby codebase** that one can 

* **configure** and **extend**, 
* then **deploy** on for instance Heroku where it is on all the time, 
* and hook into **GitHub issues** via, well, **webhooks**. 🪝

Every time a new issue is opened, every time an issue comment is created, their contents are sent to the deployed app.
If it corresponds to the **regular expression** of a **registered command**, something happens: a check is launched somewhere, a database is updated, information is copied back to the GitHub issue, etc.

The "visible" bot is the **GitHub account used as bot face**: commands are addressed to it, and a "Personal" Access Token of its is used to post GitHub issue comments.

The initial set of possible commands and actions is the list of buffy **responders**.
One can add responders by writing buffy code following documented instructions.
Note that one of the responders allows to launch a GitHub Action Workflow which can circumvent absence of Ruby knowledge on a team -- although a pure Ruby responder would be faster.
You can also send a call to any API, so if you can build an external API, you can really implement many things.

## The editorial bot generator buffy is for you if...

* You run a submission process (of papers, software, conference abstracts) that is handled in GitHub issue threads (or could be moved there)?
* Your process involves tedious steps (editing issue comments, switching issue labels, copy-pasting URLs into an external database, running automatic checking tools) that can be automated via scripts possibly interacting with web APIs?
* You can recognize interesting responders in [buffy docs](https://buffy.readthedocs.io/en/latest/) or you have Ruby talent on your team or contractor contacts, who could [write custom responders](https://buffy.readthedocs.io/en/latest/custom_responder.html) for you?
* You have time and resources to spend at least a few days setting it up and communicating the change of processes to your users?
* You have, little but longer term, time to maintain the installation e.g. responding to Heroku security updates or updating your buffy codebase with upstream changes?

## How to set up the editorial bot generator buffy for your system

We shall first show how buffy usage works, afterwards we shall go into details of how to get there.
The following diagram represents the whole automation toolset we use for rOpenSci software peer-review.

{{< figure src="diagram.png" alt="Diagram representing automation for rOpenSci software peer review. On the left, a GitHub issue thread with emojis as avatars, and wobbly lines as text. Under the GitHub issue thread, a legend indicating who among the emojis is Author /Editor / Reviewer / ropensci-review-bot. At the center of the diagram is an Heroku app using the buffy Ruby tool, that receives information from GitHub via webhooks. The app digests messages received and depending on the command pings an external service represented on the right (with a plumber logo); fills the Airtable-based software review database; manages ropensci GitHub organization via GitHub API; posts back or labels in the GitHub issue thread.">}}

We can observe, on the left, a GitHub issue thread corresponding to a submission. The submission has 
- a title, 
- a body that was created based on a GitHub issue template, 
- labels indicating the progress of the submission from editorial checks to final decision, 
- an assignee who is the editor, 
- various commenters who are the author, the editor, reviewers, the bot account.

Every time an issue is created or updated with a new comment, information about that event is sent to the central app via a webhook.
There on Heroku, if the comment corresponds to a registered command, actions are made accordingly.
Possible actions include filling an Airtable base via Airtable API, launching an external software check on a [plumber API](https://www.rplumber.io/), inviting the author to the ropensci GitHub organization, posting a comment back into the GitHub issue thread with some results or confirmation.