---
slug: git-tricks
title: Git Tricks for Working with Large Repositories
author:
  - Mauro Lepore
editor:
  - Steffi LaZerte
date: "2024-08-06"
tags:
  - tech-notes
  - git
  - github
  - how-to
description: "`git clone` isn't always the right tool."
---

Recently [Yanina Bellini Saibene](/author/yanina-bellini-saibene/) reminded us
to update our Slack profile:

> Friendly reminder: Let's increase the value of our rOpenSci Slack community.
Please add details to your profile, e.g., your photo, your favorite social media
handle, what you do, your pronouns, and how to pronounce your name.

After doing that I went on to updating my profile photos on the rOpenSci
website, which ended up teaching me a few git tricks I would like to share here.
Thanks [Maëlle Salmon](/author/ma%C3%ABlle-salmon/) for the encouragement, and
[Steffi LaZerte](/author/steffi-lazerte/) for reviewing this post.

## Cloning as usual

When I tried to clone the source code of rOpenSci's website I realized the repo
was large and it would take me several minutes.

```bash
git clone https://github.com/ropensci/roweb3.git
```

I decided to stop the process and researched how to just pull the latest version
of the specific files I needed.

## Pulling the latest version of specific files

First I forked the rOpenSci website repository (`roweb3`). I used the
[`gh`](https://cli.github.com/) CLI from the terminal, but also I could have
forked it manually from Github. 

```bash
# if not using `gh`, fork ropensci/roweb3 from GitHub
gh repo fork ropensci/roweb3
```

Then I created a local empty `roweb3` directory and linked it to the fork.

```bash
git init roweb3
cd roweb3
git remote add origin git@github.com:maurolepore/roweb3.git
```

Now for the tricks! I avoided having to download the whole repository by first
finding the specific files I needed on GitHub's "Go to file" box, then:

* Trick 1: Configured a 
[sparse checkout](https://git-scm.com/docs/git-sparse-checkout) matching just
those files.

```bash
git config core.sparseCheckout true
echo "themes/ropensci/static/img/team/mauro*" >> .git/info/sparse-checkout
```

* Trick 2: Pulled with 
[`--depth 1`](https://git-scm.com/docs/git-pull#Documentation/git-pull.txt---depthltdepthgt) 
to get only the latest version of those files.

```bash
git pull --depth=1 origin main
```

I explored the result with 
[`tree`](https://manpages.ubuntu.com/manpages/bionic/man1/tree.1.html) and it
was just what I needed to modify:

```bash
tree
.
└── themes
    └── ropensci
        └── static
            └── img
                └── team
                    ├── mauro-lepore.jpg
                    └── mauro-lepore-mentor.jpg
```

## But how large is it?

While those tricks were useful, I was still curious about the size of the repo,
so I did clone it all and explored disk usage with
[`du`](https://manpages.ubuntu.com/manpages/bionic/man1/du.1.html):

```bash
du --human-readable --max-depth=1 .
219M    ./themes
164K    ./.Rproj.user
56K     ./archetypes
628K    ./resources
168K    ./data
376M    ./.git
20K     ./static
12K     ./.github
40K     ./scripts
161M    ./content
24K     ./layouts
475M    ./public
1.3G    .
```

Indeed this is much larger than the source code I typically handle. But now I
know a few more Git tricks (and even more about blogging on rOpenSci :-) ).

## Conclusion

> If all you have is a hammer, everything looks like a nail. — Abraham Maslow

Sometimes `git clone` is not the right tool for the job. A sparse checkout and a
shallow pull can help you get just what you need.

If you enjoy learning from videos you may [search "git" on my YouTube
channel](https://www.youtube.com/leporemauro/search?query=git) or explore the
playlists
[git](https://www.youtube.com/playlist?list=PLvgdJdJDL-AOHkwiaMvYhPKVjiD9vzZIo),
[git-from-the-terminal](https://www.youtube.com/playlist?list=PLvgdJdJDL-AMyv06bsXoXkGmxmaV9U6Ts),
and
[git-con-la-terminal](https://www.youtube.com/playlist?list=PLvgdJdJDL-APwLSt89PJgI72UGVNUjOKl)
(in Spanish).

What are your favorite Git tricks? How about blogging about them?
