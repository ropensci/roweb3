---
slug: "forks-upstream-relationship"
title: The dynamic relationship of forks with their upstream repository
---

## Context setting

- rOpenSci comm call with openscapes
- openscapes slogan and approach of "forking everything". 
See with Stef if we just link out to a more detailed resource or if she wants to give a short overview here

## The different types of forks

- Forks as a starting point for a new diverging project.
No intention to sync with upstream in the future. 
This means we may miss out on new features developed in upstream.
Example: a template for a personal website. Will Gearty shared the example of his hugo website.

- Forks as a customization of the original project, 
in a way that upstream cannot or doesn't want to address.
We usually try to stay close to upstream to benefit from new features,
and we regularly sync with them.
Problem: gnarly git conflicts.
Example: forks of the Carpentries workbench

## Facilitating the cross-pollination between forks and upstream

### Steps for upstream to simplify forking and syncing

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
