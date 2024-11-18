---
slug: allcontributors
title: Acknowledge your contributors with the allcontributors package
author:
  - Mark Padgham
editor:
  - <editor here>
date: "2024-11-20"
tags:
  - tech-notes
  - github
  - how-to
  - metadata
description: "The allcontributors package helps acknolwedge software contributions"
---

Acknowledging contributions is an [important
part](https://devguide.ropensci.org/maintenance_collaboration.html#attributions)
of developing and maintaining open source software.
The [allcontributors.org website](https://allcontributors.org/) includes

> a bot to automate the tedious stuff for adding project contributors, so you
> can focus on your project instead of managing your ReadMe.

One strong motivation for [allcontributors.org](https://allcontributors.org) is to "Recognize all contributors, including those that don't push code."
This system is great, it is very widely used, and we encourage anybody to please use it!
It is nevertheless not the only way to acknowledge contributions to your software.
rOpenSci also has its own [allcontributors R package](https://docs.ropensci.org/allcontributors/) which offers a different yet easy workflow to automate the process of acknowledging contributors.

## Disadvantages of the allcontributors.org system

As stated: The [allcontributors.org](https://allcontributors.org) is great! It relies on a GitHub bot, so that you can acknowledge contributors and their contributions in your git commit comments.
Usage of the bot is described in [the documentation](https://allcontributors.org/docs/en/bot/usage).
Acknowledgement comments generally follow the format:

```bash
@all-contributors please add @<username> for <contributions>
```
where "\<contributions\>" can be one of a large variety of [contribution types](https://allcontributors.org/docs/en/emoji-key), such as "code", "doc", or any one of 33 currently recognized contribution types.

### What happens if I forget to acknowledge a contribution?

As stated: The [allcontributors.org](https://allcontributors.org) system requires you to remember and actively acknowledge each contribution.
The documentation encourages you to add a commit message with an acknowledgement as soon as possible after the contribution itself.
If you forget, obviously you can add the comment at some later time, but it will then be more difficult to connect that statement of acknowledgement with the original contribution itself.
If you forget entirely, then that contribution will never be acknowledged.
It is up to the software maintainers to actively remember and actively acknowledge contributions, a task which can [sometimes be quite a burden](https://ropensci.org/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/)!

### How are allcontributors.org contributions acknowledged?

The [allcontributors.org](https://allcontributors.org) system is extremely flexible, and easily allows for acknowledgement of contributions which may not even be visible in the git commit log directly.
This ability to acknowledge contributions beyond those recorded in logs also means that the only source of contributions are the commit comments to the bot.
Acknowledgements on your README file thus end up packed together in a single "Contributors" section, with no ability to distinguish types of contributions.
See, for example, the section on the very popular [p5.js repository](https://github.com/processing/p5.js?tab=readme-ov-file#contributors), which occupies the vast majority of the entire README.
Contributors are acknowledged by GitHub handle only, and so each contributor links directly to their GitHub profile, with no way of directly linking to the contributions they may have made.

## The allcontributors R package

Those two disadvantages motivated us to develop our own way to acknowledge all contributors: The [allcontributors R package](https://docs.ropensci.org/allcontributors/).
Having stated the disadvantages of the [allcontributors.org](https://allcontributors.org) system, it is only fair that we start with by explicitly acknowledging the disadvantages of our own system.

### Disadvantage: Contributions are only acknowledged from git and GitHub

Unlike the truly general [allcontributors.org](https://allcontributors.org) system, rOpenSci's [allcontributors R package](https://docs.ropensci.org/allcontributors/) can only acknowledge contributions that are recorded in the git log of a repository, or via GitHub interactions.
This effectively reduces the 33 different kinds of contributions in the former system down to a much smaller subset, excluding the kinds of contributions not likely to appear in actual commits or issue comments, such as planning, finances, or general organisational tasks.

If you think acknowledging these kinds of contributions may be important for your project, then please use the original [allcontributors.org](https://allcontributors.org) system, rather than our package.

### Advantage: You never need to worry about forgetting to acknowledge contributions

The [allcontributors package](https://docs.ropensci.org/allcontributors/) has only one main function which you'll likely ever need, [`add_contributors()`](https://docs.ropensci.org/allcontributors/reference/add_contributors.html). This function includes a large number of parameters, all of which are set to sensible default values that should work for most projects.
Simply running [`add_contributors()`](https://docs.ropensci.org/allcontributors/reference/add_contributors.html) in the root directory of your repository will automatically add or update your lists of contributors.
An even simpler option is to run the function regularly via a GitHub workflow, so you'll never need to worry about forgetting to update your allcontributors lists.
The [allcontributors package](https://docs.ropensci.org/allcontributors/) includes a demonstration [workflow file](https://github.com/ropensci/allcontributors/blob/main/.github/workflows/allcontributors.yml), which you can simply copy into your own repository.
From the first commit of that file, your allcontributors list will be automatically updated on every push, as well as at regular intervals as defined at the top of that file.
Regardless of how you update your lists, no matter how long after the contribution this function is called, contributions will always be acknowledged, and ... 

### Advantage: Contributors are linked directly to their contributions

By restricting acknowledgement to git and GitHub, the [allcontributors package](https://docs.ropensci.org/allcontributors/) can link each acknowledged contributor directly to a GitHub link of their contributions.
See, for example, the [README of this package](https://github.com/ropensci/allcontributors/?tab=readme-ov-file#contributors), where clicking on the image of any contributor leads to their profile, while clicking on their handles below the images leads to their actual contributions.

### Advantage: You can organise your contributions the way you like

The array of parameters accepted by [the `add_contributors()` function`](https://docs.ropensci.org/allcontributors/reference/add_contributors.html) helps to arrange your allcontributors section any way you like.
Restricting the package to contributions directly from git and GitHub requires the sources of contributions to be grouped into code, issue authors, and issue comments.
The ways contributions from these three sources are arranged in your README can be customized almost any way you like, as described in [the function documentation](https://docs.ropensci.org/allcontributors/reference/add_contributors.html), and demonstrated in [the main package vignette](https://docs.ropensci.org/allcontributors/articles/allcontributors.html).

## Go forth and acknowledge!

We encourage everybody developing packages both within rOpenSci and beyond to acknowledge contributions wherever and whenever possible.
If you care about acknowledging contributions of any type whatsoever, whether directly to your code or beyond it, then please use [allcontributors.org](https://allcontributors.org) and the `@all-contributors` bot.

If, however, you prefer a system that doesn't require you to always remember your acknowledgements in commit comments, and which gives you more flexibility in how contributions appear in your README, then please use our [allcontributors R package](https://docs.ropensci.org/allcontributors/).
For even greater ease, you can copy [our GitHub workflow file](https://github.com/ropensci/allcontributors/blob/main/.github/workflows/allcontributors.yml) to automatically update your contributors lists.
If you use the [`usethis::use_release_issue()` function](https://usethis.r-lib.org/reference/use_release_issue.html), you can also add a small helper function to add an item there to remind you to update your allcontributors lists prior to release.
See the [allcontributors README](https://docs.ropensci.org/allcontributors/) for more detail.
