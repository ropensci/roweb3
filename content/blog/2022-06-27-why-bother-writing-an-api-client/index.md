---
title: Why Bother Writing (and Publicizing) an API Client
author:
  - Maëlle Salmon
  - Matthias Grenié
  - Hugo Gruson
date: '2022-06-27'
slug: publicize-api-client-yes-no
categories: []
tags:
  - api
  - API client
description: A very short summary of your post (~ 100 characters)
twitterImg: blog/2019/06/04/post-template/name-of-image.png
twitterAlt: Alternative description of the image
tweet: A post about blabla by @username!
output: hugodown::md_document
rmd_hash: 96480d22f0a80f5e

---

Do you need to write some code wrapping a web resource such as an API delivering data? Packaging it up might be useful to you or your team for the same reason as any code. Now, whether you really want to publicize the package and to guarantee its maintenance might be slightly trickier than for other packages, as the usefulness and status of your package will depend on the web API being up and running according to expectations. This creates a surface for failures that might be more or less scary depending on your trust in the upstream maintainers.

In this post, we will go over whether you should bother maintain a package wrapping a web API.

Not sure how to work the numbers below into the text:

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span class='o'>(</span><span class='nv'>direct</span> <span class='o'>&lt;-</span> <span class='nf'><a href='https://rdrr.io/r/base/length.html'>length</a></span><span class='o'>(</span>
  <span class='nf'><a href='https://rdrr.io/r/base/unique.html'>unique</a></span><span class='o'>(</span>
    <span class='nf'><a href='https://rdrr.io/r/base/unlist.html'>unlist</a></span><span class='o'>(</span>
      <span class='nf'>tools</span><span class='nf'>::</span><span class='nf'><a href='https://rdrr.io/r/tools/package_dependencies.html'>package_dependencies</a></span><span class='o'>(</span>
        <span class='nf'><a href='https://rdrr.io/r/base/c.html'>c</a></span><span class='o'>(</span><span class='s'>"httr2"</span>, <span class='s'>"httr"</span>, <span class='s'>"crul"</span>, <span class='s'>"curl"</span><span class='o'>)</span>, 
        recursive <span class='o'>=</span> <span class='kc'>FALSE</span>,
        reverse <span class='o'>=</span> <span class='kc'>TRUE</span>, 
        which <span class='o'>=</span> <span class='s'>"Imports"</span><span class='o'>)</span>
    <span class='o'>)</span>
  <span class='o'>)</span>
<span class='o'>)</span><span class='o'>)</span>
<span class='c'>#&gt; [1] 1082</span>

<span class='c'># Not curl as httr, httr2 and crul depend on it</span>
<span class='o'>(</span><span class='nv'>indirect</span> <span class='o'>&lt;-</span> <span class='nf'><a href='https://rdrr.io/r/base/length.html'>length</a></span><span class='o'>(</span>
  <span class='nf'><a href='https://rdrr.io/r/base/unique.html'>unique</a></span><span class='o'>(</span>
    <span class='nf'><a href='https://rdrr.io/r/base/unlist.html'>unlist</a></span><span class='o'>(</span>
      <span class='nf'>tools</span><span class='nf'>::</span><span class='nf'><a href='https://rdrr.io/r/tools/package_dependencies.html'>package_dependencies</a></span><span class='o'>(</span>
        <span class='nf'><a href='https://rdrr.io/r/base/c.html'>c</a></span><span class='o'>(</span><span class='s'>"httr2"</span>, <span class='s'>"httr"</span>, <span class='s'>"crul"</span><span class='o'>)</span>, 
        recursive <span class='o'>=</span> <span class='kc'>TRUE</span>,
        reverse <span class='o'>=</span> <span class='kc'>TRUE</span>, 
        which <span class='o'>=</span> <span class='s'>"Imports"</span><span class='o'>)</span>
    <span class='o'>)</span>
  <span class='o'>)</span>
<span class='o'>)</span><span class='o'>)</span>
<span class='c'>#&gt; [1] 1840</span></code></pre>

</div>

## Why would your API package be great for users?

Even if not doing extremely complex things under the hood, the mere existence of your package can hugely lower the barrier to API usage to some R users.

A possibly tricky aspect your package can simplify is **authentication**. Your package can both simplify it and promote [security best practices](https://devguide.ropensci.org/package-development-security-best-practices.html#pkgsecrets)! For instance, your package should not make an API key a function argument only as it would encourage writing the API key in scripts. Examples of packages simplifying authentication: [gh](https://gh.r-lib.org/), [rtweet](https://docs.ropensci.org/rtweet), [opencage](https://docs.ropensci.org/opencage) (whose docs encourage the use of the keyring package for storing credentials).

Beside authentication, aspects that your package can simplify are

-   **API response parsing**, for instance from deeply nested lists to near tibbles;
-   [**Input checking**](https://blog.r-hub.io/2022/03/10/input-checking/);
-   **Input entry** (for instance better defaults, using today's date, etc.);
-   **Getting data from several result pages**;
-   **Limiting request rate**;
-   etc.

Your package might be even more useful if it wraps not only one, but more web APIs, providing an unified interface to different data sources. Examples: [specieshindex](https://jessicatytam.github.io/specieshindex/), [spocc](https://docs.ropensci.org/spocc/).

An interesting pattern might be for your package to provide both high level and low level functions, where low level functions can support API calls that the high level functions do not cover (yet). The gh package only offers low level functions, that are used in for instance the incredibly useful PR helpers in usethis.

## How an API can hurt you :sweat_smile:

A web API might change: for instance its output could evolve, breaking your code.

Before writing an R package, you might want to assess whether the API is well maintained, and you might even want to contact API maintainers to get their blessing. It is also a way to see whether they are responsive. That is a step useful if the API is, say, a small scientific data source.

Now, even a big commercial API could bite you: pricing could change, features can get dropped, etc.

Getting informed in advance won't prevent bad surprises but should still help.

One thing to keep in mind is that no matter how many flags you plant in your documentation, users of the R package might file bug reports with your package instead of with the API maintainers.

For the case when an API is *flaky*, that is to say is often down, you might want to add warnings to your documentation and retries to your code (see for instance [`httr2::req_retry()`](https://httr2.r-lib.org/reference/req_retry.html)).

## Should you bother maintain an API package for everyone?

Assess potential usage before spending too much effort on your package. Of course usage might depend on your efforts: your package might make a data source more accessible to users who would feel less at ease writing httr2 code themselves; and your promotion efforts might make a wider audience tap into the API your package is wrapping.

Also, maybe you might want to still develop an API package as a way to learn general package development and maintenance skills and to display these skills of yours to a wider audience.

If you make your package public but are not sure whether you want to commit to maintain it longer term, make sure the docs clearly state the repo status or lifecycle.

## Could the API package creating be easier?

Could the package be developed automatically based on an OpenAPI (formely called Swagger) specifications? Maybe, but currently there is no established tool for that so you would first need to develop the R package creating R packages. :wink:

{{< tweet user="JonTheGeek" id="1516395969398595589" >}}

## Resources for API package developers

Now, if you are still motivated to maintain an API package for a small (your team?) or big (the world!) audience, we recommend:

-   The [R packages book by Hadley Wickham and Jenny Bryan](https://r-pkgs.org/) (the online version corresponds to the future second edition, not completely revised at the time of writing);
-   [httr2 "Wrapping APIs" vignette](https://httr2.r-lib.org/articles/wrapping-apis.html) (or httr vignettes, or curl docs, depending on what dependency you prefer);
-   [HTTP testing in R](https://books.ropensci.org/http-testing/) including a more general chapter on ["Graceful HTTP R packages"](https://books.ropensci.org/http-testing/graceful.html);
-   Reading all docs of the API you are using, potentially subscribing to its changelog;
-   Asking questions to friendly communities ([rOpenSci forum](http://discuss.ropensci.org/) or [semi-open slack workspace](https://contributing.ropensci.org/resources.html?q=slack#channels), [package development category of RStudio community forum](https://community.rstudio.com/c/package-development/11))

## Conclusion

If you need to write code wrapping an API, you can obviously always package it up and follow best practice. Now, whether to publicize and guarantee maintenance of the resulting tool is a conscious decision to make. You should also regularly re-assess your maintaining the package. Onboard contributors regularly to share the load and potentially leave completely at some point without the package getting orphaned. Good luck, we hope you get all [`200`](https://http.cat/200)'s!

