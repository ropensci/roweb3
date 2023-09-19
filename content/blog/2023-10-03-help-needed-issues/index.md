---
title: 'Attract contributors with "help wanted" issues'
author:
  - Maëlle Salmon
  - Yanina Bellini Saibene
date: '2023-10-03'
slug: help-wanted
featured: true 
tags:
  - community
  - packages
  - welcome
  - maintenance
  - contributors
description: Tips on how to create and advertise help-wanted issues.
---

Maintaining a package can be a lonesome activity, which sometimes poses a problem if you prefer team work or if you encounter a very thorny-for-you problem.
Beside belonging to a supportive community of maintainers (like rOpenSci :wink:), for collaborative help and commiseration you can try to build a community of contributors around your package!
In this post, we'll explore one tool helping you towards that goal: "help wanted" issues, with which your repository could attract and retain new developers! We'll discuss what "help wanted" issues are, four steps for soliciting external help, and remind you that this can be a beneficial process, even if you don't end up attracting help.

_Note that this post uses GitHub-specific terminology like issues and labels. If you use GitLab or another git platform, there's probably an equivalent._ :slightly_smiling_face:

## What are "help wanted" issues?

"Help wanted" issues are issues for which you'd accept or need external contributions.
They are labelled with the community standard "help wanted" label ([example](https://github.com/ropensci/osmextract/issues/286); optionally with an emoji, if you ran [`usethis::use_tidy_github_labels()`](https://usethis.r-lib.org/reference/use_github_labels.html)).

For some of them, if they're not too involved, or if they're a good onboarding ramp to your codebase, you can also use the ["good first issue" label](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/encouraging-helpful-contributions-to-your-project-with-labels).

Next we'll cover four steps for soliciting external help.

## Step 1. Select "help wanted" topics

### Topics you *really* need help on: development hurdles

Sometimes a hurdle you are unsure how to handle looms ahead on the road to your next development milestone.
At this stage you can either
- ask for help in an usual channel (for example, rOpenSci Slack's package-maintenance channel if you're in that [workspace](https://contributing.ropensci.org/resources.html#channels); [rOpenSci discussion forum](/blog/2022/01/11/ropensci-forum/); [Posit community forum](https://community.rstudio.com/));
- open an issue in an upstream dependency if that's where the actual problem is;
- open an issue in your repository describing your problem.

For instance, when working on the tinkr package, Maëlle opened a [very specific issue](https://github.com/ropensci/tinkr/issues/9) that did end up getting miraculous outside help.

You can also add the "help wanted" label to a bug report or feature request someone else opened in your package!
With a bit of luck, the issue creator themselves will be able to participate 🎉 .

### Topics you could use help on: delegating or willingness to grow your team

Now sometimes there are some upkeep or enhancement ideas you have for your package for which you don't have time right now, or which are not urgent.
For instance, [updating the testing infrastructure to testthat third edition](https://github.com/ropensci/geojsonio/issues/183), or [adding terra support to a spatial package](https://github.com/ropensci/landscapetools/issues/33).
By listing them in your issue tracker, 

- you show curious users that they're on your mind, 
- you can organize your own work,
- and you can receive external help, especially if you explicitly solicit help with the "help wanted" label.

## Step 2. Polish your issue and contributing guide

Once you have a topic in mind, make the issue title and text as clear as possible.
Even if you are the one fixing the issue in the end, future-you will be happy you didn't jot down an undecipherable comment.
Link to resources as needed, and make sure to include context.
Approach writing an issue in your own repo the same way you would in a repo that isn't yours: challenge description, desired outcome, trade-offs, etc.

Beyond efforts in the individual issue, it's crucial to have a [contributing guide](https://devguide.ropensci.org/collaboration.html#contributing-guide) underlining anything that is good to know about contributing to your package: tooling used, style and design preferences.[^ctb]
Do not duplicate external resources, point to them instead.
Try to be a bit flexible so you don't overload or scare off contributors by having requirements which are too strict: you can probably finish off PRs yourself, or teach them little by little. 

[^ctb]: You might find https://contributing.streamlit.app/ helpful, but another way to improve your contributing guide is to keep amending it based on your experience with new contributors.

## Step 3. Broadcast your need for help

First of all, for rOpenSci packages "help wanted" issues are broadcast to the community via the [website](/help-wanted) and social media posts!

You can also share it within your own networks: rOpenSci slack workspace, your social media, a local R User Group communication channel, etc.

You can also consider leveraging hack-a-thon events like [Hacktoberfest](https://hacktoberfest.com/) for instance (if you add the ["hacktoberfest" topic to your repository](https://hacktoberfest.com/participation/)), but with really large events like this you can't necessarily count on someone discovering your tiny issue in that sea of issues.

## Thank contributors

If someone answers in the issue or open a PR, try to be somewhat responsive.
Check your settings allow you to be notified of issue comments and PRs, you might need to [watch](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github/managing-subscriptions-for-activity-on-github/viewing-your-subscriptions) your repository.

Acknowledge contributions [generously](https://devguide.ropensci.org/collaboration.html?q=generous#attributions).

## Don't despair

Even if you wrote an excellent issue, it might just not get picked up.
In that case, alternatives or complements might be to broadcast it again, ask for general tips to your fellow maintainers, try and get funding (therefore time, either yours or an external contractor's?) for your maintenance efforts.
See for instance the [R Consortium's two yearly calls for proposals](https://www.r-consortium.org/all-projects/call-for-proposals#Rstats).

Even if no one tackles the issue in the end, it might be good to have thought about the possible resolution, which can help you solve your problem. 
Also, a well-documented issue is a way to document your decisions about your software transparently and can help future users and contributors understand the reasons for your choices.

## Conclusion

Opening "help wanted" issues can be a way to grow your package contributors' community.
They might be a better door to contribution than less specific issues with a laundry list of needed tasks, as they're less overwhelming.
Contributors might fix one "help wanted" issue and then leave, or go ahead and solve more of them.

As a contributor, always comment in an issue before tackling it, to ensure it's still up-to-date, and that no one else is preparing a duplicate PR right now!
How vexing would that be to work for nothing.

For further thoughts on how to foster a community around your package, you might enjoy the recording and materials on our past [community call on the topic](/commcalls/apr2021-pkg-community/).