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

At rOpenSci Software Peer-Reviewed, processes have been enhanced with :sparkles: automation :sparkles:. 
For instance, for checking compliance of a package with some criteria, instead of cloning the repository locally, installing its dependencies, running the checks, and manually posting the results… we can simply type the following _command_ into a GitHub issue comment:

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

## What is your editorial bot generator?

buffy is the magic that supports the aforementioned commands.
It is a Ruby codebase that one can configure and tweak, then deploy on say Heroku, and hook into GitHub issues via, well, web_hooks_.
Every time a new issue is opened, every time a comment is created, their contents are sent to the deployed app.
If it corresponds to the regular expression of a registered command, something happens: a check is launched somewhere, a database is updated, information is copied back to the GitHub issue, etc.

## The editorial bot generator buffy is for you if...

* You run a submission process (of papers, softwares, conference abstracts) handled in GitHub issue threads?
* Your process involves tedious steps (editing issue comments, copy-pasting URLs into an external database, running automatic checking tools) that can be automated via scripts interacting with web APIs?
* You can recognize interesting responders in [buffy docs](https://buffy.readthedocs.io/en/latest/) or you have Ruby talent on your payroll that could [write custom responders](https://buffy.readthedocs.io/en/latest/custom_responder.html) for you?