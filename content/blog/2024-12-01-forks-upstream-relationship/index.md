---
slug: "forks-upstream-relationship"
title: The dynamic relationship of forks with their upstream repository
date: '2024-12-08'
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

The November coworking session welcomed Stefanie Butland from [openscapes](https://www.openscapes.org/) as a co-host.
She shared Openscapes' approach of ["Forking as a worldview"](https://docs.google.com/presentation/d/1aL0TVFM7xxzTCJoE3tEArDE32wh59wkmBCy6Vcmwvy4/) extending the classic software development interpretation to an even more open philosophy of encouraging people to take anything that works to new places. Things like the value of sharing, reusing, and remixing of *how we work*, in addition to the work itself.
Stefanie invited participants to share their experiences in forking to adapt or build on existing projects, and we came back to some practical challenges of forking.

This blog post summarizes some of the insights that emerged during the subsequent discussion.

## The different types of forks

We identified two different types of forks, which take place in different contexts,
and will have different relationships with their upstream repository in the long-run:

1. Forks can be used as a starting point for a new diverging project, rather than starting from scratch.
In this situation, the fork author does not intend to sync with the upstream repository after the initial fork.
This type of fork may therefore miss out on new features developed in upstream.
This type of fork will often happen when you copy a template for a personal website (an example shared by Will Gearty in our discussions), 
or when you re-use an existing project of yours as a boilerplate to build your new project.

2. Forks can also be used to customize or tweak the original project, 
in a way that upstream cannot or doesn't want to address.
In this type of forks, we usually try to not diverge too much from upstream to benefit from new features,
and we regularly sync with them.
A major downside is that syncing will often come with gnarly git conflicts.
An example of this is various organizations forking the Carpentries workbench to customize the look and feel of their internal Carpentries-style training materials.
This is also what typically happens when open-source projects are packaged in Operating System distributions, such as Debian.
The Debian package maintainers often tweak some settings or make minor code modifications to improve integration with the rest of the system.

## Facilitating cross-pollination between forks and upstream

In this section, we focus on the second type of forks, 
where the fork author wants to stay in sync with the upstream repository.
We mentioned that conflicts were a major downside of this approach.

What are the strategies to minimize the conflicts? 
And why is it in the interest of everyone (not only the fork owners, but also upstream maintainers) to minimize them?

### Simplifying syncs and reducing git conflicts {#simplifying-syncs}

Going back to the example of organizations forking the Carpentries workbench,
Hugo has [forked for the workbench to customize Epiverse-TRACE lessons with their own branding](https://github.com/epiverse-trace/varnish/pull/7).
But the upstream repository regularly receives updates with bug fixes or new features.

The few first months were painful because of the conflicts that arose when syncing with upstream.
But a couple of changes in upstream have greatly reduced the probability of conflicts.

In a nutshell, upstream can make it easier for forks to stay in sync by reducing the number of files that a fork needs to modify,
and by isolating these changes in specific locations.

In practice, this can for example be done by using configuration files and variables.
This serves the double purpose of being more DRY and of separating changes.
In the example of the Carpentries workbench, [a pull request added a Sass variable to change the font](https://github.com/carpentries/varnish/pull/151), 
removing the need to change it in multiple locations.

From the fork owner perspective, some other techniques can also make conflict resolution smoother.
A major location of conflicts are auto-generated changes or files.
In the workbench example, this is the concatenated and minified CSS files.
They tend to concentrate conflicts because they regroup changes from multiple files, 
and they are minified on a single line, which means git cannot distinguish what was changed.

But you can automate the conflict resolution for these cases.
The key is to make automated changes in a separate commit.
When this commit conflicts, you can re-run the script that generates the file,
and commit the result, without having to think about what should be kept or not.

Alternatively, upstream can sometimes stop tracking auto-generated files from git,
and instead render them on the fly at build time.

### Contributing back to upstream

The previous sections highlighted how much work goes into maintaining a fork.
So, is it perhaps possible to integrate the features to upstream and avoid having to maintain a fork?

Forks can be a good way to pilot new features or approaches.
Note that this is not always possible as upstream may have a restricted scope, or limited resources for maintenance.

Forks are sometimes intended from the start as short-lived.
They only exist until the PR to upstream is merged when the user cannot wait for the PR to be merged, especially if upstream is slow to review PRs.
In this case, the fork is already contributing back to upstream.

But in other cases, can forks that started as a way to customize a project and start accumulating new features contribute back to upstream?
Forks can indeed be a great way to pilot new features, and to show the value of these features to upstream.

When contributing back, each pull request should focus on a single feature or bug fix, rather than pushing all changes the fork has accumulated.
It can also build confidence to show that you've been using this feature for a while without issues.

### It takes two to tango

Getting forks to contribute back is only possible if they can stay in touch with upstream.
Indeed, forks that have diverged too much from upstream will have a hard time contributing back, and making nice palatable pull requests.
In other words, communication, and where possible, following the steps outlined in the ["Simplifying syncs and reducing git conflicts"](#simplifying-syncs) section are key to ensuring forks can more easily stay in sync.

This highlights the symbiotic relationship that can exist between forks and upstream repositories, when both parties are willing to make the effort.

## Conclusion

While sometimes presented as a fracture, forks are an integral part of the open-source ecosystem.
They offer a way to build on existing projects, to add extra features without increasing the maintenance burden of the upstream repository, to pilot new features.
They can be hard to maintain, but it is also possible for the fork and upstream maintainers to work together to make the process smoother.
