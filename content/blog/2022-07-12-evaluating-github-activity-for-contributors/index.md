---
title: Evaluating GitHub Activity for Contributors
author:
  - Maëlle Salmon
date: '2022-07-12'
slug: evaluating-github-activity-for-contributors
categories: []
tags:
  - GitHub
  - contributors
description: How to evaluate the activity of a GitHub repository as an user or potential contributors 
---

Say you have a bug report or feature request to make to a package. 
How can you use information on GitHub to manage your expectations (will there be a quick fix) and actions (should you go ahead and fork the repository)?
In this post, we shall go over sources of information and explain how they can be used.
In the end, there is no magical recipe, except perhaps graciousness, as software is made by humans.

## (Custom) watch the repository

If you are very invested in the fate of an R package, it might make sense to [custom watch](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github/setting-up-notifications/configuring-notifications#configuring-your-watch-settings-for-an-individual-repository=) it on GitHub: you can for instance to choose to be notified of all issues and PRs or only of releases.

Watching activity in the repository will make you aware of ongoing development, of development rythms, of workflows and of the tone in that repository (if the tone is not friendly, run!). 

Now it won't help you if right now you are looking at a repository you were not watching before, but it's good to know for next time.

## Look at latest code activity

On the GitHub repository homepage you can find the time since the latest commit on the default branch.
In the branches page, see for instance <https://github.com/ropensci/readODS/branches>, you might see there's code activity in another branch.
In the releases tab, see for instance <https://github.com/ropensci/magick/releases> you can see how old the latest released version is.

### How it helps

If there's current code activity, your contributions might be tackled more quickly.
If you see the code activity is bursty (the developers focus on it for a period of time, release a new version, then ignore notifications for a while), you might guess you will have to be patient.

## Look at planning and user support activity

Sort issues and PRs by recently updated (the default when using the browser extension [RefinedGitHub](https://github.com/refined-github/refined-github)). Are repository members active answering issues?

Look at milestones, see for instance <https://github.com/ropensci/dev_guide/milestones>: what's the content of the different milestones?
Are they expected dates of release?

### How it helps

If the planning is transparent and current (it's hard to curate milestones), you might get an idea of where your contribution will fit.

. Time since last commit on the default branch, latest release (both available on R-universe package page), but also active branches. It might help you see that development in the repository is "bursty", 

## Look at authors activity

Identify main contributors. DESCRIPTION file not that informative as it can contain historic contributors. Look at the graph of contributions to see who are the current / recent active contributors. Head over to their GitHub profile: have they been working on other things, do they have a status (parent leave, vacation), is there a mismatch between the repo organization and the contributor's job (if they changed jobs, maybe they dropped the repository of interest). (does this sound like sleuthing??)

## What about looking checks/tests to see how many failing for how long?
Also 
Look at the CRAN status if the package was ever on CRAN.