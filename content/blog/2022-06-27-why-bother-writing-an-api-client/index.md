---
title: Why You Should (or Shouldn't) Build an API Client
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
description: Should you write and maintain an R package accessing a web API? Here are our tips for deciding, and for doing it if you go for it.
twitterImg: blog/2019/06/04/post-template/name-of-image.png
twitterAlt: Alternative description of the image
tweet: Why You Should (or Shouldn't) Build an API Client, a post by @ma_salmon, @LeNematode, @grusonh
output: hugodown::md_document
rmd_hash: 41bd5cdbccdcb304

---

These days web Application Programming Interfaces (APIs) are everywhere (scientific data sources, your system for Customer relationship management, cat facts API...). Do you need to write some R code wrapping a web resource such as an API? Packaging it up might be useful to you or your team for the same reason as any code. Now, whether you really want to publicize the package and to guarantee its maintenance might be slightly trickier than for other packages, as the usefulness and status of your package will depend on the web API being up and running according to expectations. This creates a surface for failures that might be more or less scary depending on your trust in the upstream maintainers.

In this post, we will go over whether you should bother maintain a package wrapping a web API.

## Why would your API package delight users?

In a world where we have great R packages to interact with internet resources (httr, httr2, curl, etc.), one might wonder if it's worth writing an API package rather than using these packages directly:

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span class='nf'>httr2</span><span class='nf'>::</span><span class='nf'><a href='https://httr2.r-lib.org/reference/request.html'>request</a></span><span class='o'>(</span><span class='s'>"https://cat-fact.herokuapp.com/facts"</span><span class='o'>)</span> |&gt; 
  <span class='nf'>httr2</span><span class='nf'>::</span><span class='nf'><a href='https://httr2.r-lib.org/reference/req_perform.html'>req_perform</a></span><span class='o'>(</span><span class='o'>)</span> |&gt; 
  <span class='nf'>httr2</span><span class='nf'>::</span><span class='nf'><a href='https://httr2.r-lib.org/reference/resp_body_raw.html'>resp_body_json</a></span><span class='o'>(</span><span class='o'>)</span> |&gt; 
  <span class='nf'>purrr</span><span class='nf'>::</span><span class='nf'><a href='https://purrr.tidyverse.org/reference/map.html'>map_chr</a></span><span class='o'>(</span><span class='s'>"text"</span><span class='o'>)</span>
<span class='c'>#&gt; [1] "Cats make about 100 different sounds. Dogs make only about 10."                                        </span>
<span class='c'>#&gt; [2] "Domestic cats spend about 70 percent of the day sleeping and 15 percent of the day grooming."          </span>
<span class='c'>#&gt; [3] "I don't know anything about cats."                                                                     </span>
<span class='c'>#&gt; [4] "The technical term for a cat’s hairball is a bezoar."                                                  </span>
<span class='c'>#&gt; [5] "Cats are the most popular pet in the United States: There are 88 million pet cats and 74 million dogs."</span></code></pre>

</div>

However, even if not doing extremely complex things under the hood, the mere existence of your package can hugely lower the barrier to API usage to some R users.

Having to read package docs rather than web API docs can for instance lower the efforts needed.

Other aspects that your package can simplify are:

-   **Authentication** (see below).
-   **API response parsing**, for instance from deeply nested lists to near tibbles (see [rcrossref](https://docs.ropensci.org/rcrossref)). When the data are complex, it may save some user time to use a well-designed package;
-   [**Input checking**](https://blog.r-hub.io/2022/03/10/input-checking/) (as done in [qualtRics](https://github.com/ropensci/qualtRics/blob/7d1e80ca20cb3d07cf7cfce3b0154b86c2113689/R/utils.R#L109) and [nasapower](https://github.com/ropensci/nasapower/blob/beb9e2907b6d100615a0cc2396b120f785c69813/R/get_power.R#L224));
-   **Input entry** (for instance better defaults, using today's date, etc.);
-   **Getting data from several result pages** (example: in gh, automatically implemented in the [`gh::gh()`](https://gh.r-lib.org/reference/gh.html) function but done under the hood by [`gh::gh_next()`](https://gh.r-lib.org/reference/gh_next.html));
-   **Limiting request rate** (as done in [rtweet](https://docs.ropensci.org/rtweet/reference/rate_limit.html) and [gh](https://github.com/r-lib/gh/blob/1820a99bcfb292683a1a7fdfb71bd36f8d45d6e5/R/gh_rate_limit.R));
-   **Sending a good user-agent** to signal yourself to the API ([gh](https://github.com/r-lib/gh/blob/1820a99bcfb292683a1a7fdfb71bd36f8d45d6e5/R/gh_request.R#L7) (`User-Agent: "https://github.com/r-lib/gh"`), [rmangal](https://github.com/ropensci/rmangal/blob/8f786a83824c8b5142e1485fa5fac5993227360e/R/zzz.R#L18): `User-Agent: "rmangal"`);
-   **Managing API errors** as R errors can be easier to interpret than HTTP errors for the unfamiliar users ([qualtRics](https://github.com/ropensci/qualtRics/blob/7d1e80ca20cb3d07cf7cfce3b0154b86c2113689/R/utils.R#L10), [rnassqs](https://github.com/ropensci/rnassqs/blob/80564dbc076981ad9f1fd51ccf6a513fe55967b7/R/request.R#L297-L301));
-   etc.

A particularly tricky aspect your package can simplify is **authentication**. Authentication is the fact that certain APIs ask the users to identify themselves before accessing them. This can come in several flavors: using provided API keys, using OAuth, or using HTTP authentication (see <https://rapidapi.com/blog/api-glossary/api-authentication> for examples). Your package can both simplify it and promote [security best practices](https://devguide.ropensci.org/package-development-security-best-practices.html#pkgsecrets)! For instance, your package should not make an API key a function argument only as it would encourage writing the API key in scripts. Examples of packages simplifying authentication: [gh](https://gh.r-lib.org/), [rtweet](https://docs.ropensci.org/rtweet), [opencage](https://docs.ropensci.org/opencage) (whose docs encourage the use of the keyring package for storing credentials).

Your package might be even more useful if it wraps not only one, but more web APIs, providing an unified interface to different data sources. Examples: [specieshindex](https://jessicatytam.github.io/specieshindex/), [spocc](https://docs.ropensci.org/spocc/), and [taxize](https://docs.ropensci.org/taxize).

The [gh](https://gh.r-lib.org/) package only offers low level functions, that are used in for instance the incredibly useful [PR helpers in usethis](https://usethis.r-lib.org/articles/pr-functions.html). The [zbank](https://docs.ropensci.org/zbank/) package offers a low-level API that gives back the unparsed answer as a nested list with complete information, it also offers a high-level API that sends back parsed data.frames.

## Finding the right complexity/flexibility balance

One of the most difficult aspect with API R packages (or any R package really, but even more so here) is to strike the right balance on the complexity/flexibility trade-off. In an attempt to simplify things, you might end up:

-   obscuring errors returned by the API. This typically happens when you indiscriminately catch all HTTP errors (e.g., by using [`httr::http_error()`](https://httr.r-lib.org/reference/http_error.html)) and return a generic error message while each HTTP code has a precise meaning about what went wrong.
-   validating the inputs in an overly strict way, and thereby preventing the user from sending potentially valid requests.
-   returning a truncated output. This could arise when you insist on returning a clean, rectangular data where the API returns deeply nested data. It might be tempting to drop some information you don't deem useful but that users might be interested in (e.g., <https://github.com/ropensci-archive/rromeo/issues/48>).

Alternatively, in an attempt to preserve the API flexibility and to make sure you offer all options to the user, you might end up creating a package that is as complex, if not more complex than direct calls to the API.

An interesting pattern might be for your package to provide both high-level and low-level functions, where low level functions can support API calls that the high level functions do not cover (or not yet). Expert users could then use the lower-level functions to access more detailed features of the API with more flexibility, while less experienced users would be interested in using higher-level functions that have simpler outputs.. Similarly, some packages, such as rtweet (via the `parse` argument), offer the option of getting either the raw output or the output parsed into rectangular data.

## How an API can hurt you :sweat_smile:

A web API might change: for instance its output could evolve, breaking your code.

Before writing an R package, you might want to assess whether the API is well maintained, and you might even want to contact API maintainers to get their blessing. Alternatively, they might advise you to wait a couple of months as major breaking changes are in the pipeline. It is also a way to see whether they are responsive (and maybe get moral support for your package). That is a step useful if the API is, say, a small scientific data source (two of us, who built [rromeo](https://github.com/ropensci-archive/rromeo) discovered the day the package was approved by rOpenSci that the API released a brand new version, with no common functions from the previous version).

Now, even a big commercial API (à la Twitter, wrapped by [rtweet](https://docs.ropensci.org/rtweet)) could bite you: pricing could change, features can get dropped, etc. Beside, commercial APIs do not necessarily offer great rates for client developers, so your involvement might depend on what subscription you have for other reasons (now, if you lose your subscription by for instance changing jobs, you might no longer be interested in maintaining a package anyway).

Getting informed in advance won't prevent bad surprises but should still help. Keeping informed (via a changelog, a newsletter, regular manual checks, tests with real requests) might also help seeing changes early. In **theory**, adding a custom [user-agent](https://en.wikipedia.org/wiki/User_agent)--a small string that goes to the server to signal yourself when you're making a query--with contact details (link to your package development repository) might allow API maintainers to contact you if your package is causing issues or if it's interacting with (soon to be) deprecated endpoints.

One thing to keep in mind is that no matter how many flags you plant in your documentation, users of the R package might file bug reports with your package instead of with the API maintainers. It can help if you for example implement a once per session reminder of the link to the API and its citation to clear up the confusion.

For the case when an API is *flaky*, that is to say is often down, you might want to add warnings to your documentation and retries to your code (see for instance [`httr2::req_retry()`](https://httr2.r-lib.org/reference/req_retry.html)).

## Should you bother maintain an API package for everyone?

Assess potential usage before spending too much effort on your package. Of course usage might depend on your efforts: your package might make a data source more accessible to users who would feel less at ease writing httr2 code themselves; and your promotion efforts might make a wider audience tap into the API your package is wrapping.

Also, maybe you might want to still develop an API package as a way to learn general package development and maintenance skills and to display these skills of yours to a wider audience.

If you make your package public but are not sure whether you want to commit to maintain it longer term, make sure the docs clearly state the repo status or lifecycle.

## Could the API package creating be easier?

Could the package be developed automatically based on an OpenAPI (formely called Swagger) specifications? Maybe, but currently there is no established tool for that so you would first need to develop the R package creating R packages. :wink:

{{< tweet user="JonTheGeek" id="1516395969398595589" >}}

Worth exploring are:

-   [Swagger Codegen](https://github.com/swagger-api/swagger-codegen/) that seems to offer R functionalities;
-   [crumpets](https://github.com/hrbrmstr/crumpets/) that was scaffolded using R.

Now, of course not all APIs have an OpenAPI specification.

More generally you might find the R-hub blog post ["Code generation in R packages"](https://blog.r-hub.io/2020/02/10/code-generation) relevant.

## Resources for API package developers

Now, if you are still motivated to maintain an API package for a small (your team?) or big (the world!) audience, we recommend:

-   The [R packages book by Hadley Wickham and Jenny Bryan](https://r-pkgs.org/) (the online version corresponds to the future second edition, not completely revised at the time of writing);
-   [rOpenSci dev guide](https://devguide.ropensci.org/);
-   [httr2 "Wrapping APIs" vignette](https://httr2.r-lib.org/articles/wrapping-apis.html) (or httr vignettes, or curl docs, depending on what dependency you prefer);
-   ["The ins and outs of interacting with web APIs"](/blog/2014/04/14/webapis/) on this blog;
-   [HTTP testing in R](https://books.ropensci.org/http-testing/) including a more general chapter on ["Graceful HTTP R packages"](https://books.ropensci.org/http-testing/graceful.html);
-   Reading all docs of the API you are using, potentially subscribing to its changelog;
-   Asking questions to friendly communities ([rOpenSci forum](http://discuss.ropensci.org/) or [semi-open slack workspace](https://contributing.ropensci.org/resources.html?q=slack#channels), [package development category of RStudio community forum](https://community.rstudio.com/c/package-development/11))

## Conclusion

If you need to write code wrapping an API, you can obviously always package it up and follow best practices. Now, whether to publicize and guarantee maintenance of the resulting tool is a conscious decision to make. You should also regularly re-assess your maintaining the package. Onboard contributors regularly to share the load and potentially leave completely at some point without the package getting orphaned. Good luck, we hope you get all [`200`](https://http.cat/200)'s! Feel free to POST about your own experiences below.

