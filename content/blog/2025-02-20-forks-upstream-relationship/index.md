---
slug: "forks-upstream-relationship"
title: The Dynamic Relationship of Forks with their Upstream Repository
date: '2025-02-20'
author: 
- Hugo Gruson
- Stefanie Butland
- Ruby Krasnow 
editor: Steffi LaZerte
params:
  doi: 10.59350/5n1pv-3sg04
crossposts:
- name: Openscapes
  url: https://openscapes.org/blog/2025-02-20-forks-upstream-relationship
tags:
- community
- meetings
- open science
- maintenance
- open-source
- carpentries
- coworking
---

## Context setting

rOpenSci organizes [monthly co-working hours](/coworking/) on a variety of topics.
But the constant is the quality of the discussion that ensues and the renewed energy that comes from it.

The November coworking session welcomed Stefanie Butland from [Openscapes](https://www.openscapes.org/) as a co-host.
She shared Openscapes' approach of ["Forking as a worldview"](https://docs.google.com/presentation/d/1aL0TVFM7xxzTCJoE3tEArDE32wh59wkmBCy6Vcmwvy4/).
Forks in the open-source software world refer to copies of an existing open-source project that add their own changes on top of the original codebase.
Openscapes is extending this classic software development interpretation to an even more open philosophy of encouraging people to take anything that works to new places.
Things like the value of sharing, reusing, and remixing of *how we work*, in addition to the work itself.
Stefanie invited participants to share their experiences in forking to adapt or build on existing projects, and we came back to some practical challenges of forking.

This blog post summarizes and develops some of the insights that emerged during the subsequent discussion, 
where we focused on the specific case of forks of open-source codebases,
such as the ones you can find on GitHub.

## The different types of forks

We identified two different types of forks, which take place in different contexts,
and will have different relationships with their upstream repository in the long-run:

1. Forks can be used as a starting point for a new diverging project, rather than starting from scratch.
In this situation, the fork author does not intend to sync with the upstream repository after the initial fork.
This type of fork may therefore miss out on new features developed in upstream.
This type of fork will often happen when you copy a template for a personal website (an example shared by [Will Gearty](https://williamgearty.com/) in our discussions), 
or when you re-use an existing project of yours as a boilerplate to build your new project.

2. Forks can also be used to customize or tweak the original project, 
in a way that upstream cannot or doesn't have capacity to address.
In this type of forks, we usually try to not diverge too much from upstream to benefit from new features,
and we regularly sync with them.
A major downside is that syncing will often come with gnarly git conflicts.
An example of this is [various organizations forking the Carpentries workbench to customize the look and feel of their internal Carpentries-style training materials](https://hugogruson.fr/workbench-beyond-carpentries/).
People who work in Linux operating systems, such as Debian, may also recognize this is what happens when open-source projects are packaged by the operating system.
The [Debian package maintainers often tweak some settings or make minor code modifications to improve integration with the rest of the system](https://www.debian.org/doc/debian-policy/ch-source.html#changes-to-the-upstream-sources).

## Facilitating cross-pollination between forks and upstream

In this section, we focus on the second type of forks, 
where the fork author wants to stay in sync with the upstream repository.
We mentioned that conflicts were a major downside of this approach.

What are the strategies to minimize the conflicts? 
And why is it in the interest of everyone (not only the fork owners, but also upstream maintainers) to minimize them?

### Simplifying syncs and reducing git conflicts {#simplifying-syncs}

Going back to the example of organizations forking the Carpentries workbench,
Hugo has [forked the workbench](https://github.com/epiverse-trace/varnish/pull/7) to customize [Epiverse-TRACE lessons with their own branding](https://epiverse-trace.github.io/tutorials).
Indeed, the Carpentries workbench provides a fully free and open-source learning management system,
which has accessibility features and pedagogical best practices built-in.
It makes sense for external organizations, beyond the Carpentries themselves, to use the workbench as the infrastructure to build and host their training materials.

However, at the time of writing this post, the workbench doesn't allow users to customize the theme and adopt a branding different than the official Carpentries one.
The recommended way to do this is to fork the workbench and adjust the HTML templates to your needs.

However, the upstream repository regularly receives updates with bug fixes or new features that forks may want to benefit from.
This requires the fork to sync with upstream regularly.

For the Epiverse Carpentries fork, the few first months were painful because of the conflicts that arose when syncing with upstream.
But a couple of recent changes in upstream have greatly reduced the probability of conflicts.

In a nutshell, upstream can make it easier for forks to stay in sync by reducing the number of files that a fork needs to modify,
and by isolating these changes in specific locations.

In practice, this can for example be done by using configuration files and variables.
This serves the double purpose of being more [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself) 
and of separating changes a fork may want to implement from the core codebase a fork is unlikely to modify.

Although these changes need to take place in the upstream repository,
it doesn't necessarily mean that the upstream maintainers are responsible for making these changes.
Fork maintainers are both the beneficiaries and the best placed to identify required changes,
and should be encouraged to submit pull requests to upstream to make these changes.

In the example of the Carpentries workbench, [Hugo submitted a pull request to implement a Sass variable for defining the font](https://github.com/carpentries/varnish/pull/151), 
removing the need to change it in multiple locations.

On the fork's side, some other techniques can also make conflict resolution smoother.
A major location of conflicts are auto-generated changes or files.
In the workbench example, this is the concatenated and minified CSS files.
They tend to concentrate conflicts because they regroup changes from multiple files, 
and they are minified on a single line, which means git cannot distinguish what was changed.

But you can automate the conflict resolution for these cases.
The key is to [make automated changes in a separate commit](https://github.com/epiverse-trace/varnish/pull/7/commits/b7633fa9107e11d0a5147488b9c9c1c4855f6ff0).
When this commit conflicts, you can re-run the script that generates the file,
and commit the result, without having to think about what should be kept or not.

Alternatively, upstream can sometimes stop tracking auto-generated files from git,
and instead render them on the fly at build time.

In the context of R packages, common auto-generated files are `.Rd` documentation files,
which are often auto-generated from roxygen2 comments in `.R` files.
Isolating these changes [in a separate commit](https://github.com/ropensci/lightr/commit/4dcb21e72f6df71e2cc46d12244cde8dcc3e2635) can also facilitate conflict resolution.

### Integrating the fork changes back into upstream

The previous section highlighted how much work goes into maintaining a fork.
And while we shared techniques to alleviate some of this work, regular syncing is still required, and conflicts are still going to come up from time to time.
So, is it perhaps possible to integrate the features to upstream and avoid having to maintain a fork altogether?

Forks are sometimes intended from the start as short-lived.
They only exist until the PR to upstream is merged when the user cannot wait for the PR to be merged, especially if upstream is slow to review PRs.

But in other cases, forks start as a way to customize a project and accumulate new features, without necessarily the intention to contribute them back initially.
But it's possible for the fork maintainer to change their mind at any time and decide to contribute back.
In fact, this can be a very successful contribution scenario.
Forks can indeed be a great way to pilot new features, and to show the value of these features to upstream to motivate their integration.
It can also build confidence to show that you've been using this feature for a while without issues.

In the ecosystem of the Carpentries workbench forks, a good example is a contributor exploring python support in their own fork and [contributing it back to upstream](https://github.com/carpentries/sandpaper/pull/448).

Note that it is not always possible to integrate your changes as upstream may have a restricted scope, or limited resources for maintenance.

When contributing back, each pull request should focus on a single feature or bug fix, rather than pushing all changes the fork has accumulated.

### It takes two to tango

Getting forks to contribute back is only possible if they can stay in touch with upstream.
Indeed, forks that have diverged too much from upstream will have a hard time contributing back, and making nice palatable pull requests.
In other words, communication, and where possible, following the steps outlined in the ["Simplifying syncs and reducing git conflicts"](#simplifying-syncs) section above are key to ensuring forks can more easily stay in sync.

Conversely, forks benefit from contributing to upstream as it can reduce their maintenance burden.
They can either make it easier to sync by reducing the number of changes required to implement their customizations,
or they can even make their custom features part of the upstream repository.

This highlights the symbiotic relationship that can exist between forks and upstream repositories, when both parties are willing to make the effort.

## Conclusion

While sometimes presented as a fracture, forks are an integral part of the open-source ecosystem.
They offer a way to build on existing projects, to add extra features without increasing the maintenance burden of the upstream repository, and to pilot new features.
They can be hard to maintain, but it is also possible for the fork and upstream maintainers to work together to make the process smoother.

We would love to hear from you if you've forked or if you're considering forking a project. 
What were your motivations?
Do you plan trying to contribute back to upstream? 
What challenges have you faced? 
What techniques have you found useful to maintain your fork?

**Thank you to Daniel Morillo, John Ellis, Mark Padgham, Pablo Serrati, Richard Littauer, Sergio Cabrera, Will Gearty and Yanina Bellini Saibene for their insights during the coworking session and their comments during the production of this post.**
