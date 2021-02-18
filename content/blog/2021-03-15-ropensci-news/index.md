---
slug: ropensci-news
title: Latest rOpenSci News Digest
author:
  - The rOpenSci Team
date: '2021-03-15'
tags:
  - newsletter
description: keywords bla
output:
  html_document:
    keep_md: yes
---



## rOpenSci HQ

TO BE CURATED BY HAND

## Software :package:


```r
tidy_package <- function(entry) {
  tibble::tibble(
    package = entry$name,
    description = entry$description,
    details = entry$details,
    on_cran = entry$on_cran,
    on_bioc = entry$on_bioc,
    onboarding = entry$onboarding,
    url = entry$url,
    maintainer = entry$maintainer # use desc for more info
    
  )
}

registry <- "https://raw.githubusercontent.com/ropensci/roregistry/gh-pages/registry.json" %>%
  jsonlite::read_json() %>%
  purrr::pluck("packages") %>%
  purrr::map_df(tidy_package)
  
commits <- gh::gh(
  "GET /repos/{owner}/{repo}/commits",
  owner = "ropensci",
  repo = "roregistry",
  since = sprintf(
    "%s-%s-%sT00:00:00Z",
    lubridate::year(last_newsletter),
    stringr::str_pad(lubridate::month(last_newsletter), 2, "0", side = "left"),
    stringr::str_pad(lubridate::day(last_newsletter), 2, "0", side = "left")
  ),
  until = sprintf(
    "%s-%s-%sT00:00:00Z",
    lubridate::year(last_newsletter),
    stringr::str_pad(lubridate::month(last_newsletter), 2, "0", side = "left"),
    stringr::str_pad(lubridate::day(last_newsletter) + 1, 2, "0", side = "left")
  )
)

empty <- TRUE
i <- length(commits)
while (empty == TRUE) {
  old <- "https://raw.githubusercontent.com/ropensci/roregistry/%s/packages.json" %>%
    sprintf(commits[[i]]$sha) %>%
    jsonlite::read_json() %>%
    purrr::map_df(function(x) tibble::tibble(package = x$package, url = x$url, branch = x$branch))
  i <- i - 1
  if (nrow(old) > 100) {
    empty <- FALSE
  }
}

new <- registry[!registry$package %in% old$package,]
new
```

```
## # A tibble: 8 x 8
##   package  description   details   on_cran on_bioc onboarding  url    maintainer
##   <chr>    <chr>         <chr>     <lgl>   <lgl>   <chr>       <chr>  <chr>     
## 1 osmextr… Download and… "Find, d… TRUE    FALSE   "https://g… https… Andrea Gi…
## 2 pendulum Time Classes  "Time cl… FALSE   FALSE   ""          https… Scott Cha…
## 3 pixelcl… Classifies I… "Contain… FALSE   FALSE   ""          https… Carlos Re…
## 4 tarchet… Archetypes f… "Functio… TRUE    FALSE   "https://g… https… William M…
## 5 targets  Dynamic Func… "As a pi… TRUE    FALSE   "https://g… https… William M…
## 6 arreste… Arrested Dev… "Here to… FALSE   FALSE   ""          https… Lucy D'Ag…
## 7 monkeyl… Accesses the… "Allows … FALSE   FALSE   "https://g… https… Maëlle Sa…
## 8 srr      'rOpenSci' R… "Compani… FALSE   FALSE   ""          https… Mark Padg…
```

### New packages

### New versions

## Software Peer Review

## On the blog

## Citations

## Package development corner

## Use cases

## From the forum

## Call For maintainers

## Last words

Thanks for reading! If you want to want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or other things like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
