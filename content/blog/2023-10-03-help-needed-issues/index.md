---
title: Attract (and retain) new contributors with help-wanted issues
author:
  - Maëlle Salmon
date: '2023-10-03'
slug: help-wanted
categories: []
featured: true 
tags:
  - community
  - packages
  - welcome
  - maintenance
description: Tips on how to create and advertise help-wanted issues.
---

Maintaining a package can be a lonesome activity, which sometimes poses a problem if you'd prefer team work or if you encounter a very thorny for you problem.
Beside belonging to a supportive community of maintainers, like rOpenSci :wink:, for collaborative help and commiseration, you can try to build a community of contributors around your package!
In this post, we'll underline one tool helping you towards that goal: help-wanted issues, with which your repository could attract, and retain, new developers!

## What are help wanted issues?

Help wanted issues are issues for which you'd accept or need external contributions.
They are labelled with the community standard "help wanted" issue.

For some of them, if they're not too involved, or a good onboarding ramp to your codebase, you can also use the ["good first issue" label](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/encouraging-helpful-contributions-to-your-project-with-labels).

## Select (or unwillingly incur) help-wanted topics

### The topics you don't choose: development hurdles

You don't get to choose all the help wanted issue: sometimes a hurdle very clearly appear on the road to your next development milestone.
At this stage you can either
- ask for help in an usual channel (rOpenSci Slack's package-maintenance channel if you're in that workspace; Posit community forum...);
- open an issue in an upstream dependency if that's where the actual problem is;
- open an issue in your repository describing your problem.

For instance, when working on tinkr Maëlle opened a [very specific issue](https://github.com/ropensci/tinkr/issues/9) that did end up getting miraculous outside help.

### The topics you choose: delegating out of necessity or willingness to grow your team

Now sometimes there are some upkeep or enhancement ideas you have for your package for which you don't have time right now, or that are not urgent.
For instance, [updating the testing infrastructure to testthat third edition](https://github.com/ropensci/geojsonio/issues/183), or [adding terra support to a spatial package](https://github.com/ropensci/landscapetools/issues/33).

## Polish your issue and contributing guide

Once you have a topic in mind, make the issue title and text as clear as possible.
Even if you are the one fixing the issue in the end, future you will be happy you didn't jot down an undecipherable comment.
Link to resources as needed.

Beyond efforts in the individual issue, it's crucial to have a contributing guide underlining anything that is good to know about contributing to your package.
Do not duplicate external resources, point to them instead.
Do not overload the contributor by having too strict requirements: you can probably finish off PRs yourself.

## Broadcast your need for help

First of all, help-wanted issues of rOpenSci packages are broadcasted to the community via a [dedicated page on the website](/help-wanted), and social media posts!

Then you could also share it within your own networks: rOpenSci slack workspace, your Mastodon account, a local R User Group communication channel, etc.

## Don't despair

Even if you wrote an excellent issue, it might just not get picked up.
In that case, alternatives or complements might be to broadcast it again, ask for general tips to your fellow maintainers, try and get funding (therefore time, either yours or an external contractor's?) for your maintenance efforts.

## Conclusion