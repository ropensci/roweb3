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
