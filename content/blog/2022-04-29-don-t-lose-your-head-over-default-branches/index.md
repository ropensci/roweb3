---
title: Don't Lose your HEAD over Default Branches
author:
  - Maëlle Salmon
date: '2022-04-29'
slug: don-t-lose-your-head-over-default-branches
categories: []
tags:
  - git
  - gert
  - GitHub
  - tech notes
description: Use "HEAD" instead of the default branch name in links to files on GitHub, as it will work for any default branch name.
output: hugodown::md_document
rmd_hash: e6c65ab1562c60d2

---

Read on for a little trick to always get the default branch...

While git has no "default" branch, online code platforms such as GitHub need to define a default for the branch that someone sees when they look at code online. While the community standard for the default branch is now becoming main instead of master[^1], and while the switch for any repo is rather [easy](https://www.hanselman.com/blog/easily-rename-your-git-default-branch-from-master-to-main) and is [well supported by usethis](https://www.tidyverse.org/blog/2021/10/renaming-default-branch/), for a while (forever) there will still be repos with different default branches in the wild.[^2] Especially as nothing prevents you from using any other name for the default branch (although this could trip up collaborators).[^3]

So, what to deal with the existence of different possible default branches?

-   [usethis tooling regarding default branches](https://www.tidyverse.org/blog/2021/10/renaming-default-branch/) including [`usethis::git_default_branch()`](https://usethis.r-lib.org/reference/git-default-branch.html), is very handy.
-   You can also use gert directly, e.g. [`gert::git_remote_ls()`](https://docs.ropensci.org/gert/reference/git_fetch.html) will help show you remote references. The symref for ref contains the default branch name.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span class='nf'>gert</span><span class='nf'>::</span><span class='nf'><a href='https://docs.ropensci.org/gert/reference/git_fetch.html'>git_remote_ls</a></span><span class='o'>(</span><span class='o'>)</span> |&gt;
  <span class='nf'><a href='https://rdrr.io/r/utils/head.html'>head</a></span><span class='o'>(</span><span class='o'>)</span> <span class='c'># another useful thing named head</span>
<span class='c'>#&gt;                           ref          symref</span>
<span class='c'>#&gt; 1                        HEAD refs/heads/main</span>
<span class='c'>#&gt; 2        refs/heads/1password            &lt;NA&gt;</span>
<span class='c'>#&gt; 3              refs/heads/2fa            &lt;NA&gt;</span>
<span class='c'>#&gt; 4            refs/heads/email            &lt;NA&gt;</span>
<span class='c'>#&gt; 5 refs/heads/fix_author_links            &lt;NA&gt;</span>
<span class='c'>#&gt; 6        refs/heads/footnotes            &lt;NA&gt;</span>
<span class='c'>#&gt;                                        oid</span>
<span class='c'>#&gt; 1 2ef29132be682883d1c12a957c38e1fa6599898f</span>
<span class='c'>#&gt; 2 e4f3ef36c453dd2ede5a091c7d3f5f32c609caca</span>
<span class='c'>#&gt; 3 7461f15e81651d5bbf6dcab078801cfa35e2f039</span>
<span class='c'>#&gt; 4 6f8c849ef325dc597e819bffbd8829afa05ae414</span>
<span class='c'>#&gt; 5 2f328db8fc6ce94caa50ddde7a0b021178818d8f</span>
<span class='c'>#&gt; 6 f552c2dcac79228e929e65975c52484f5655577c</span></code></pre>

</div>

[`gert::git_remote_info()`](https://docs.ropensci.org/gert/reference/git_remote.html) shows the head for a given remote:

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span class='nf'>gert</span><span class='nf'>::</span><span class='nf'><a href='https://docs.ropensci.org/gert/reference/git_remote.html'>git_remote_info</a></span><span class='o'>(</span><span class='s'>"origin"</span><span class='o'>)</span>
<span class='c'>#&gt; $name</span>
<span class='c'>#&gt; [1] "origin"</span>
<span class='c'>#&gt; </span>
<span class='c'>#&gt; $url</span>
<span class='c'>#&gt; [1] "git@github.com:ropensci/roweb3.git"</span>
<span class='c'>#&gt; </span>
<span class='c'>#&gt; $push_url</span>
<span class='c'>#&gt; NULL</span>
<span class='c'>#&gt; </span>
<span class='c'>#&gt; $head</span>
<span class='c'>#&gt; [1] "refs/remotes/origin/main"</span>
<span class='c'>#&gt; </span>
<span class='c'>#&gt; $fetch</span>
<span class='c'>#&gt; [1] "+refs/heads/*:refs/remotes/origin/*"</span>
<span class='c'>#&gt; </span>
<span class='c'>#&gt; $push</span>
<span class='c'>#&gt; character(0)</span></code></pre>

</div>

-   When linking to a file, or trying to download the same path from a gaggle of repositories, think of the HEAD reference! I.e. instead of linking to a file via `https://github.com/<owner>/<repo>/tree/<default-branch>/<path>` where you need to know what the default branch is, you can link to `https://github.com/<owner>/<repo>/tree/HEAD/<path>` that will always point to the latest version of the path in the default branch. Similarly, for raw content (to download), you can use links à la `https://github.com/<owner>/<repo>/raw/HEAD/<path>`.

In conclusion, master or main? Hit the nail on the HEAD. :wink:

[^1]: For more context on Terminology, Power and Oppressive Language see for instance <https://tools.ietf.org/id/draft-knodel-terminology-00.html>

[^2]: Actually, this post was the occasion to change the default branch for the source of this website!

[^3]: Some repos only have a branch called `gh-pages` (e.g. everything under <https://github.com/ropensci-docs>), in which case that is the default branch.

