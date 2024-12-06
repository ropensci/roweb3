---
slug: "forks-upstream-relationship"
title: The dynamic relationship of forks with their upstream repository
---

## Context setting

rOpenSci organizes [monthly co-working hours](https://ropensci.org/coworking/) on a variety of topics.
But the constant is the quality of the discussion that ensues and the renewed energy that comes from it.

The November coworking session welcomed Stefanie Butland from [openscapes](https://www.openscapes.org/) as a co-host.
She shared openscape's approach of ["Forking as a worldview"](https://rladiesrome.org/talks/2024/meetup/11182024/index.html)
and invited participants to share their experience using forks to build on existing projects.

This blog post summarizes some of the insights that emerged during the subsequent discussion.

## The different types of forks

We identified two different types of forks, which take place in different contexts,
and will have different relationships with their upstream repository in the long-run:

1. Forks can be used as a starting point for a new diverging project, rather than starting from scratch.
In this situation, the fork author does not intent to sync with the upstream repository after the initial fork.
This type of fork may therefore miss out on new features developed in upstream.
This type of fork will often happen when you copy template for a personal website (example shared by Will Gearty), 
or when you re-use an existing project of yours as a boilerplate to build your new project.

2. Forks can also be used to custom or tweak the original project, 
in a way that upstream cannot or doesn't want to address.
In this type of forks, we usually try to not diverge too much from upstream to benefit from new features,
and we regularly sync with them.
A major downside is that syncing will often come with gnarly git conflicts.
An example of this is various organizations forking the Carpentries workbench to customize the look and feel or their internal Carpentries-style training materials.
This is also what typically happens when open-source projects are packaged in Operating System distributions, such as Debian.
The Debian package maintainers often tweak some settings or make minor code modifications to improve integration with the rest of the system.

## Facilitating the cross-pollination between forks and upstream

In this section, we focus on the second type of forks, 
where the fork author wants to stay in sync with the upstream repository.
We mentioned that conflicts were a major downside of this approach.

What are the strategies to minimize the conflicts? 
And why is it in the interest of everyone (the fork owners, but also upstream maintainers) to minimize them?

### Steps for upstream to simplify forking and syncing

Going back to the example of organizations forking the Carpentries workbench,
Hugo has forked for the workbench to customize Epiverse-TRACE lessons with their own branding.
But the upstream repository regularly receives updates with bug fixes or new features.

For example, after forking the workbench, 
I have progressively contributed changes that limit the amount of changes required in my fork,
thus limiting the potential for conflicts.
Some strategies are:
- using configuration files and variables
- automating file generation from source as a post-processing step
- (add a note about overwriting conficts in auto-generated files by re-rendering them)

### Contributing back to upstream

Maintaining a fork a hard work.
Is it possible to integrate it to upstream and avoid having to do it?

Forks can be a good way to pilot new features or approaches.

- Not always possible as upstream may have a restricted scope, or limited resources for maintenance
- Sometimes, forks are expected to have a limited timespan. 
They only exist until the PR is merged.
But sometimes, the user cannot wait for the PR to be merged,
especially if upstream is slow to review PRs.
- Make PRs palatable
- Anything else?

### It takes two to tango

Getting forks to contribute back is only possible is they can stay in touch with upstream.
Upstream should definitely follow section 1 if they want to benefit from section 2.

## Conclusion
