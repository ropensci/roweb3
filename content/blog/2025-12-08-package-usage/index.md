---
title: How to Assess Usage of your Package
author: 
- Maëlle Salmon
editor:
date: '2025-12-08'
slug: package-usage
description: Ways to evaluate use of your package, and their downsides.
output: hugodown::md_document
tags:
  - package development
  - tech notes
params:
  doi: "10.59350/9ff3a-21d94"
rmd_hash: 33a60c44fcb544cb

---

As a package maintainer, you might want to get some numbers or impressions on the usage of your package for various reasons: getting some confirmation that your work is useful, prioritizing work on some aspects of your software, helping justify a request for funding. Don't get your hopes high: there is no perfect solution nor measure. However, we will share some tips in this post.

## Downloads

You can get download data for your package on [CRAN](https://r-hub.github.io/cranlogs/) or [Bioconductor](https://www.bioconductor.org/packages/stats/). Even with some [correction efforts](https://blog.r-hub.io/2020/05/11/packagerank-intro/), these data are fraught as they for instance include downloads for checks on continuous integration.

## Reverse dependencies

If your package is not a high-level interface, maybe other packages import it. If many packages depend on your package, then your package is clearly crucial.

For instance here's a way to count the direct and indirect dependencies of the curl package on CRAN.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='o'>(</span><span class='nv'>direct</span> <span class='o'>&lt;-</span> <span class='nf'><a href='https://rdrr.io/r/base/length.html'>length</a></span><span class='o'>(</span></span>
<span>  <span class='nf'><a href='https://rdrr.io/r/base/unique.html'>unique</a></span><span class='o'>(</span></span>
<span>    <span class='nf'>pkgcache</span><span class='nf'>::</span><span class='nf'><a href='https://r-lib.github.io/pkgcache/reference/meta_cache_deps.html'>meta_cache_revdeps</a></span><span class='o'>(</span></span>
<span>      <span class='s'>"curl"</span>,</span>
<span>      recursive <span class='o'>=</span> <span class='kc'>FALSE</span>,</span>
<span>      dependencies <span class='o'>=</span> <span class='s'>"imports"</span></span>
<span>    <span class='o'>)</span><span class='o'>$</span><span class='nv'>package</span></span>
<span>  <span class='o'>)</span></span>
<span><span class='o'>)</span><span class='o'>)</span></span>
<span><span class='c'>#&gt; [1] 442</span></span>
<span></span><span><span class='o'>(</span><span class='nv'>indirect</span> <span class='o'>&lt;-</span> <span class='nf'><a href='https://rdrr.io/r/base/length.html'>length</a></span><span class='o'>(</span></span>
<span>  <span class='nf'><a href='https://rdrr.io/r/base/unique.html'>unique</a></span><span class='o'>(</span></span>
<span>    <span class='nf'>pkgcache</span><span class='nf'>::</span><span class='nf'><a href='https://r-lib.github.io/pkgcache/reference/meta_cache_deps.html'>meta_cache_revdeps</a></span><span class='o'>(</span></span>
<span>      <span class='s'>"curl"</span>,</span>
<span>      recursive <span class='o'>=</span> <span class='kc'>TRUE</span>,</span>
<span>      dependencies <span class='o'>=</span> <span class='s'>"imports"</span></span>
<span>    <span class='o'>)</span><span class='o'>$</span><span class='nv'>package</span></span>
<span>  <span class='o'>)</span></span>
<span><span class='o'>)</span><span class='o'>)</span></span>
<span><span class='c'>#&gt; [1] 4804</span></span>
<span></span></code></pre>

</div>

## Code mentions

Some code is published on GitHub. You can search for occurrences of, say, [`library(curl)`](https://jeroen.r-universe.dev/curl) using the URL `https://github.com/search?q=library(<libname>)&type=code`.

R-universe displays this information on each package's page as a badge counting "scripts" using a package. See [curl's page](https://jeroen.r-universe.dev/curl).

This information is obviously partial as not all code is published, not all code is published on GitHub, not all code loads packages this way, but such search syntax might help find examples of authentic usage to better understand how users interact with your package: you can look for individual functions, arguments used, etc.

## Citations

If your package is used in a scientific paper whose authors [cite packages](/blog/2021/11/16/how-to-cite-r-and-r-packages/), you might be able to retrieve usage though bibliometric search.

rOpenSci used to curate a database of citations.

R-universe displays some data on citations. See again [curl's page](https://jeroen.r-universe.dev/curl), with a badge linking to [ecosyste.ms](https://papers.ecosyste.ms/projects/cran/curl).

This is again partial information, that might however help underlining the usefulness of your software for scientific endeavours.

## Popularity measures: likes

GitHub stars and similar popularity measures do not necessarily correlate with usage, but they are surely at least a nice ego boost. Someone starring your repository, granted the account is [not a bot](https://the-guild.dev/blog/judging-open-source-by-github-stars), means someone "saw" your work which might already be valuable to you.

As you might note on [curl's page](https://jeroen.r-universe.dev/curl), R-universe also displays a badge showing the number of GitHub stars.

## Surveys

If you have a good idea of what the potential userbase of your package is, or a way to reach a good proportion of your users, maybe you could run a survey to ask about packages and functions most used, and features most dearly missed?

Someone mentioned this idea at the uRos ([Use of R in Official Statistics](https://r-project.ro/conference2025.html)) 2025 in their talk.[^1] For me, as an outsider to that community, it seemed like a perfect idea: National Institutes of Statistics have similar use cases for software and... they know how to run surveys!

## Contributions to the repository

If you develop your package in the open, users might contribute to it. The mere opening of an issue by an external person means they found and used your package! Furthermore, users themselves might tell you what doesn't work, what's missing, what they like about your package... and of course help you maintain the package. All the more reasons to [foster a community around your package](/commcalls/apr2021-pkg-community/).

Based on the same idea, if you wonder whether a function is used, you could try removing it or starting to remove it using proper [deprecation](https://devguide.ropensci.org/maintenance_evolution.html) and seeing if anyone complains. Likewise, and more dramatically, you might hear from users if your package gets archived on CRAN for instance.

At the organization level, you can use our new experimental [dashboard](/blog/2025/09/11/repometrics-call-help/) to get a bird eye view of repository activity.

## Use cases reports

At rOpenSci we collect [use cases of packages](/usecases). You could have a ticket dedicated to receiving [users testimonials, like in the quanteda repository](https://github.com/quanteda/quanteda/issues/461). The documentation of your package could point to the place where you would like to hear from users, be it to help you plan future developments, or to keep your motivation up!

The benefit is gathering examples of authentic usage, and also getting the motivation boost from knowing someone uses your tool.

## Telemetry

Actually measuring usage at the source is very rare in R packages, but something that for instance the duckplyr maintainers have tried to implement, to inform [development priorities](https://duckplyr.tidyverse.org/articles/telemetry.html). This behavior can be controlled and turned off by users. Informing users of the telemetry is crucial.

We can also wonder about the data collected by Copilot and friends, that you as a package maintainer have no access to.

## Conclusion

In this post, we gave a quick overview of some means to evaluate usage of your package. There is unfortunately no silver bullet, but definitely more to it than counting downloads.

[^1]: But I unfortunately do not remember who. :sob: If that's you please tell me and I'll update the post!

