---
title: Code hosting options beyond GitHub
author: 
- Mark Padgham
editor:
date: '2025-10-17'
slug: beyond-github
description: How to manage and mirror code repositories across different platforms.
output: hugodown::md_document
tags:
  - tech notes
params:
  doi: ""
---

rOpenSci peer-review has to date been exclusively conducted [on GitHub](https://github.com/ropensci/software-review/issues?q=sort%3Aupdated-desc%20is%3Aissue%20state%3Aclosed).
We are not planning on moving away from this system any time soon, but are nonetheless aware that many people prefer alternative platforms.
rOpenSci also has an organization presence on [gitlab.com/ropensci](https://gitlab.com/ropensci) and [codeberg.org/ropensci](https://codeberg.org/ropensci).
This post describes how rOpenSci community members can use these alternative platforms.

## Code (still) needs a single home

All platforms described here are based on [git](https://git-scm.com/), which is a _centralized_ version control system (in contrast to decentralized version control systems such as [darcs](https://darcs.net/) or [pijul](https://pijul.org/)).
This means that managing code with git generally requires identifying a single, main version to which changes can be _pushed_, or from which changes can be _pulled_.
There is thus a single connection between code on your local machine and this single main version.

Code can of course be hosted anywhere, and we aim here to show how easy it is to mirror a repository on an arbitrary number of platforms.
Hosting code in multiple locations creates multiple connections between local and remote versions.
This can easily create conflicts in git.
To keeps things simple, this post will therefore presume that every repository maintains a single home, with all other platforms mirroring changes from that site via `git push` only.

## Mirroring to other platforms

### Mirroring on codeberg

The easiest platform on which to mirror your code is currently [Codeberg](https://codeberg.org), which has inbuilt options to mirror repositories directly from a large number of other platforms, including GitHub.
[Codeberg](https://codeberg.org) can also mirror all issues and pull requests, although the contributors will no longer be hyperlinked (see an [example here](https://codeberg.org/ropensci/osmdata/issues/388)).
To mirror a repo on Codeberg, click the large "+" button on the top right of the main menu bar, and select "New migration", like this:

![](codeberg-new-migration.png)

That will then open up the following grid of options from where you want to mirror your repository:

{{< figure src = "codeberg-migration-options.png" alt = "Codeberg new migration button." class = "pull-left" caption = "Codeberg new repository migration button.">}}

![](codeberg-migration-options.png)

To migrate from GitHub, click the symbol to open a migration to fill in some details, where you can also paste a GitHub token into "access token", and mirror almost all other aspects, including issues, pull requests, and releases.
Note that the migration process may take 10 minutes or more.
You'll also need to update your local `git` configuration to add the new remote destination, as described in the following sub-section.

### Mirroring elsewhere

No other platforms currently offer the one-click mirror functionality of Codeberg.
To mirror in all other cases, you'll need to:
1. Create a new repository on the desired platform.
2. Set a `git remote` URL to the new destination.
3. `git push` to new remote.

The [git remote web page](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes) provides more detail on working with remotes.

## Managing one repository across multiple platforms

With due apologies for repeittion, git is a centralised version control system, and is thus not the best system for managing multiple remote sources.
The best way to manage one git repository across multiple platforms is to use one main source to which you `push`, and from where you may `pull`.
All other remote origins should be considered `push` mirrors only, and never `pull`.
In the rare case that conflicts from other sources arise, you may need to `git push --force` to _other_ remotes (or the [safer version of `git push --force-with-lease`](https://git-scm.com/docs/git-push#Documentation/git-push.txt---force-with-leaserefnameexpect)).
You should never `git push --force` to your main source.

For each additional remote source, you'll need to add a remote URL with [`git remote add`](https://git-scm.com/docs/git-remote).
In a standard set up, this will still require you to explicitly `git push` to each individual remote.
The pure git way of managing multiple remote sources is to take advantage of `git remote set-url --add` to add additional URLs to a single remote identifier.
Consistent with advice throughout this post, it is not recommended to update your _main_ remote URL with `set-url --add`.
A better option would be to initially create a remote like `git remote add other https://codeberg.org/ropensci/my-package`.
You can then extend that with each additional remote URL with `set-url --add`.
Running `git push other <branch>` will then push that branch to all remote URLs specified in `other`.

More arcane alternatives include my own [arcane git push bash script](https://github.com/mpadge/dotfiles/blob/main/system/gitpush.bash) which recreates the now obsolete push-by-password functionality of GitHub, while also pushing to all other listed remote sources.

## rOpenSci repos on Codeberg and GitLab

We don't yet have any automated tooling for authors to rOpenSci packages to mirror repositories on other platforms.
If you are an author of an rOpenSci package, and would like to set up mirrors on either [Codeberg/ropensci](https://codeberg.org/ropensci) or [GitLab/ropensci](https://gitlab.com/ropensci), you'll have to ask us to do the initial set up.
The best way is to ping us - one or all of [@maelle](https://github.com/maelle), [@adamhsparks](https://github.com/adamhsparks), or [@mpadge](https://github.com/mpadge) - directly from a GitHub issue in your repository, and we'll start the process.

## Using a main source other than GitHub

Authors of rOpenSci packages may also use platforms other than GitHub as the main source for their repository code.
As with mirroring, Codeberg is currently the best platform to use instead of GitHub, because it has inbuilt abilities to push code to any other locations.
Once you've set up an rOpenSci repository on Codeberg, you can go to the settings, where one of the first options under "Repository" is "Mirror settings".
Here you can configure any other locations as push mirrors.
From that point on, you should only ever `git push` directly to Codeberg, and every push there will be mirrored by Codeberg to all other specified locations, potentially including GitHub.

rOpenSci infrastructure, including r-universe, will remain built on GitHub repository sources for the time being, so you'll need to keep a GitHub mirror of your code regardless of where your main source lives.
This also means that many links, including all from the main [rOpenSci website](https://ropensci.org), and [r-universe](https://r-universe.dev), will be to the GitHub version of your packages.
If you opt to use an alternative location, you'll need to update your package documentation to clearly direct users to your desired platform.
