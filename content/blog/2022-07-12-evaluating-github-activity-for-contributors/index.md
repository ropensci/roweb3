---
title: Evaluating GitHub Activity for Contributors
author:
  - Maëlle Salmon
date: '2022-07-12'
slug: evaluating-github-activity-for-contributors
tags:
  - GitHub
  - contributors
  - tech notes
description: How to evaluate the activity of a GitHub repository as an user or potential contributors 
---

Say you have a bug report or feature request to make to a package. 
How can you use information on GitHub to manage your expectations (will there be a quick fix) and actions (should you go ahead and fork the repository)?
In this post, we shall go over sources of information and explain how they can be used.
In the end, there is no magical recipe, except perhaps graciousness, as software is made by humans. :wink:

## (Custom) watch the repository

If you are very invested in the fate of an R package, it might make sense to [custom watch](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github/setting-up-notifications/configuring-notifications#configuring-your-watch-settings-for-an-individual-repository=) it on GitHub: you can for instance to choose to be notified of all issues and PRs or only of releases.

Note that if you just watch a repository you are publicly listed as watcher, but to the best of my knowledge custom watchers are not publicly listed.

### How it helps

Watching activity in the repository will make you aware of 
- ongoing development, 
- development rhythms (for instance "cyclic but with quick fixes for crucial bugs""), 
- workflows (are PRs welcome or do maintainers prefer to confirm interest in an issue first),
- the tone in that repository (if the tone is not friendly, run!). 

Now it won't help you if right now you are looking at a repository you were not watching before, but it's good to know for next time.

## Read the contributing guide

If the repository has a [contributing guide](/blog/2021/04/28/commcall-pkg-community/) (file `CONTRIBUTING.md` or `.github/CONTRIBUTING.md`) and it seems to have been at list a little bit customized compared to a standard model, pay attention to it. :smile_cat:

If the docs have any mention of development lifecycle (a badge, some text), also take it into account.

### How it helps

It's direct information from maintainers on what they expect from contributions, so it can only be useful to be aware of it!

## Look at latest code activity

On the GitHub repository homepage you can find the time since the latest commit on the default branch.
In the branches page, see for instance <https://github.com/ropensci/readODS/branches>, you might see there's code activity in another branch.
In the releases tab, see for instance <https://github.com/ropensci/magick/releases> you can see how old the latest released version is, and whether there's a regularity in releases.

### How it helps

If there's current code activity, your contributions might be tackled more quickly.
If you see the code activity is bursty (the developers focus on it for a period of time, release a new version, then ignore notifications for a while), you might guess you will have to be patient.

## Look at planning and user support activity

Sort issues and PRs by recently updated (the default when using the browser extension [RefinedGitHub](https://github.com/refined-github/refined-github)). Are repository members active answering issues?

Look at milestones, see for instance <https://github.com/ropensci/dev_guide/milestones>: what's the content of the different milestones?
Are there expected dates of release?

### How it helps

If issues get a fast first human response, lucky you, you can politely ask whatever you wanted to ask and hope for a rather quick answer.
If the planning is transparent and current (it's hard to curate milestones :sweat_smile:), you might get an idea of where your contribution will fit.

## Look at authors activity

Identify main contributors:
- The DESCRIPTION file might not be that informative as it can contain historic contributors. 
- Look at the graph of contributions, see for instance <https://github.com/ropensci/dev_guide/graphs/contributors>, to see who are the current / recent active contributors. 
- Also notice who responded to the latest issues and PRs.

Head over to their GitHub profile, and even their [R-universe profile](https://r-universe.dev/maintainers/): have they been working on other things, do they have a status (parental leave, vacation), is there a mismatch between the repo organization and the contributor's job.

### How it helps

Sometimes there might be something obvious: if the maintainer changed jobs, maybe they dropped the repository of interest.
However, more importantly, it helps a bit to be aware of the public activity of contributors but **you never know what a person is going through, so be gracious and patient**.

## Look at repository checks

Head over the page of continuous integration status for the repositories, for instance it might be the Actions tab.
Look at the CRAN status if the package was ever on CRAN.

### How it helps

Failing checks that are not tackled might indicate the repository is not actively worked on.

## Conclusion

In this post we summarized some sources of information you as potential contributor can use to assess whether and how much a repository is active, to calibrate your expectations and offers of contributions.
If a repository looks particularly abandoned, you might perhaps email authors to ask whether future work is planned and if not, whether you might take it over.
Be considerate in all your [interactions with code maintainers](https://jacobtomlinson.dev/posts/2022/dont-be-that-open-source-user-dont-be-me/).

If you are the _maintainer_ of an rOpenSci package and need some punctual help or longer term maintenance support, please get in touch with us at `info@ropensci.org`. 
We can for instance add a call for co-maintainers in our monthly newsletter.