---
slug: allcontributors
title: Give Thanks with the allcontributors Package
author:
  - Mark Padgham
editor:
  - Steffi LaZerte
  - Maëlle Salmon
date: "2024-11-26"
tags:
  - tech-notes
  - github
  - how-to
  - metadata
description: "The allcontributors package helps to given thanks to software contributions"
---

Thanksgiving is celebrated in [many parts of the world](https://en.wikipedia.org/wiki/Thanksgiving).
The USA, rOpenSci's official location, celebrates Thanksgiving this Thursday, 28th November.
Giving thanks to contributors is also an [important part of open-source software development](https://devguide.ropensci.org/maintenance_collaboration.html#attributions).
Many open-source software projects use the [allcontributors.org system](https://allcontributors.org/) to acknowledge contributions, which includes

> a bot to automate the tedious stuff for adding project contributors, so you
> can focus on your project instead of managing your ReadMe.

One strong motivation for [allcontributors.org](https://allcontributors.org) is to "Recognize all contributors, including those that don't push code."
Usage of the bot is described in [the documentation](https://allcontributors.org/docs/en/bot/usage).
Acknowledgement happens through commit comments, which generally follow the format:

```bash
@all-contributors please add @<username> for <contributions>
```

where "\<contributions\>" can be one of a large variety of [contribution types](https://allcontributors.org/docs/en/emoji-key), such as "code", "doc", or any one of 33 currently recognized contribution types.

This system is great, it is widely used, and we encourage everybody to please use it!
It nevertheless has two disadvantages:

1. it requires you to remember to acknowledge contributions through commit comments, with an encouragement to comment as close as possible to the time of the contribution.
  If you forget, you can comment at some later time, but it will then be more difficult to connect that acknowledgement with the contribution.
  If you forget entirely, the contribution will never be acknowledged.
  It is up to the software maintainers to actively remember to acknowledge contributions, a task which can [sometimes be quite a burden](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/)!
2. Acknowledgements are packed together in a single "Contributors" section, with little ability to customize the appearance, and no ability to link contributors to their actual contributions.

## The allcontributors R package

These two disadvantages motivated us to develop our own way to acknowledge all contributors: The [allcontributors R package](https://docs.ropensci.org/allcontributors/).
The package enables all contributions to be acknowledged without you having to actively remember to do so, and also allows flexible customization of how your contributors appear.
It can even be run as a [GitHub workflow](https://github.com/ropensci/allcontributors/blob/main/.github/workflows/allcontributors.yml) so your contributors will always be acknowledged without you ever having to remember to do so at all.

Before describing how it works, and why we think you should use it, it is important to note that, unlike the truly general [allcontributors.org](https://allcontributors.org) system, rOpenSci's [allcontributors R package](https://docs.ropensci.org/allcontributors/) can only acknowledge contributions that are recorded in the git log of a repository, or via GitHub interactions.
This effectively reduces the 33 different kinds of contributions in the former system down to a much smaller subset, excluding the kinds of contributions not likely to appear in actual commits or issue comments, such as planning, finances, or general organisational tasks.

If you think acknowledging these kinds of contributions may be important for your project, then please use the original [allcontributors.org](https://allcontributors.org) system, rather than our package.
We are nevertheless convinced that our package offers important advantages including:

### You never need to worry about forgetting to acknowledge contributions

The [allcontributors package](https://docs.ropensci.org/allcontributors/) has only one main function which you'll likely ever need, [`add_contributors()`](https://docs.ropensci.org/allcontributors/reference/add_contributors.html). This function includes a large number of parameters, all of which are set to sensible default values that should work for most projects.
Simply running [`add_contributors()`](https://docs.ropensci.org/allcontributors/reference/add_contributors.html) in the root directory of your repository will automatically add or update your lists of contributors.
An even simpler option is to run the function regularly via a [GitHub workflow](https://github.com/ropensci/allcontributors/blob/main/.github/workflows/allcontributors.yml), so you'll never need to worry about forgetting to update your allcontributors lists.
The [allcontributors package](https://docs.ropensci.org/allcontributors/) includes a demonstration [workflow file](https://github.com/ropensci/allcontributors/blob/main/.github/workflows/allcontributors.yml), which you can simply copy into your own repository.
From the first commit of that file, your allcontributors list will be automatically updated on every push, as well as at regular intervals as defined at the top of that file.
Regardless of how you update your lists, and no matter how long after the contribution this function is called, contributions will always be acknowledged.

### Contributors are linked directly to their contributions

By restricting acknowledgement to git and GitHub, the [allcontributors package](https://docs.ropensci.org/allcontributors/) can link each acknowledged contributor directly to a GitHub link of their contributions.
See, for example, the [README of this package](https://github.com/ropensci/allcontributors/?tab=readme-ov-file#contributors), where clicking on the image of any contributor leads to their profile, while clicking on their handles below the images leads to their actual contributions. (The [allcontributors.org](https://allcontributors.org) system, in contrasts, only provides links to contributors GitHub profiles, but not to their actual contributions.)

### You can organise your contributions the way you like

The array of parameters accepted by [the `add_contributors()` function`](https://docs.ropensci.org/allcontributors/reference/add_contributors.html) helps to arrange your allcontributors section any way, and anywhere, you like.
Because the package is restricted to contributions from git and GitHub, the sources of contributions are grouped into code, issue authors, and issue comments.
The ways contributions from these three sources are arranged in your README (or wherever else you might choose) can nevertheless be customized almost any way you like, as described in [the function documentation](https://docs.ropensci.org/allcontributors/reference/add_contributors.html), and demonstrated in [the main package vignette](https://docs.ropensci.org/allcontributors/articles/allcontributors.html).

## Go forth and give thanks!

In the spirit of Thanksgiving, we encourage all developers of packages both within rOpenSci and beyond to acknowledge contributions wherever and whenever possible.
If you care about acknowledging contributions of any type whatsoever, whether directly to your code or beyond it, then please use [allcontributors.org](https://allcontributors.org) and the `@all-contributors` bot.

If instead you prefer a system that can simply automate-away the inconvenience of having to remember your acknowledgements in commit comments, which gives you more flexibility in how contributions appear, and which links contributors directly to their actual contributions, then please use our [allcontributors R package](https://docs.ropensci.org/allcontributors/).
For even greater ease, you can copy [our GitHub workflow file](https://github.com/ropensci/allcontributors/blob/main/.github/workflows/allcontributors.yml) to automatically update your contributors lists.
If you manage package releases with the [`usethis::use_release_issue()` function](https://usethis.r-lib.org/reference/use_release_issue.html), you can also add a small helper function to include an item there to remind you to update your allcontributors lists prior to release.
See the [allcontributors README](https://docs.ropensci.org/allcontributors/) for more detail.
