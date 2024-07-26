---
slug: git-tricks
title: Git Tricks to Work with Large Repos
author:
  - Mauro Lepore
date: '2024-08-20'
tags:
  - tech-notes
  - git
  - github
description: '`git clone` isn't always the right tool. Consider a sparse checkout and shallow pull.'
---

Did others who are not authors of the post make significant contributions to the
package or its inspiration?

Recently [Yanina Bellini
Saibene](https://ropensci.org/author/yanina-bellini-saibene/) reminded us to
update our Slack profile:

> Friendly reminder: Let's increase the value of our rOpenSci Slack community.
Please add details to your profile, e.g., your photo, your favorite social media
handle, what you do, your pronouns, and how to pronounce your name.

After doing that I went on to updating my profile photos on the rOpenSci
website, which ended up teaching me a few git tricks I would like to share here.
Thanks [Maëlle Salmon](https://ropensci.org/author/ma%C3%ABlle-salmon/) for the
encouragement.

## Cloning as usual

```bash
git clone https://github.com/ropensci/roweb3.git
```

When I tried to clone the source code of rOpenSci's website I realized the repo
was large and it would take me several minutes, so I stopped the process and
researched how to just pull the latest version of the specific files I needed.

## Pulling the latest version of specific files

```bash
# if not using `gh` (https://cli.github.com/), fork ropensci/roweb3 from GitHub
gh repo fork ropensci/roweb3

git init roweb3
cd roweb3
git remote add origin git@github.com/maurolepore/roweb3.git
git config core.sparseCheckout true
echo "themes/ropensci/static/img/team/mauro*" >> .git/info/sparse-checkout
git pull --depth=1 origin main
```

I improved the process by first finding the specific files I needed on GitHub's
"Go to file" box, then:

* Trick 1: Configured a sparse checkout matching just those files.
* Trick 2: Pulled with `--depth 1` to get only their latest version.

The result was just what I needed to modify:

```bash
➜  roweb3 git:(main) tree
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
so I did clone it all and explored disk usage with `du`:

```bash
➜  git du --human-readable --max-depth=1 roweb3
220M    roweb3/themes
56K     roweb3/archetypes
164K    roweb3/data
374M    roweb3/.git
20K     roweb3/static
12K     roweb3/.github
40K     roweb3/scripts
161M    roweb3/content
16K     roweb3/layouts
8.0K    roweb3/public
754M    roweb3
```

Indeed this is much larger than the source code I typically handle. But now I
know a few more Git tricks.

## Conclusion

> If all you have is a hammer, everything looks like a nail. — Abraham Maslow

Sometimes `git clone` is not the right tool for the job. A sparse checkout and a
shallow pull can help you get just what you need.

What are your favorite Git tricks?
