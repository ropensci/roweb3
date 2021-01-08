---
slug: fulltext-story
title: 'fulltext: Behind the Scenes'
date: '2020-11-17'
author: Scott Chamberlain
description: Behind the scenes of getting article full text.
tags:
  - literature
  - textmining
  - fulltext
  - packages
output:
  html_document:
    keep_md: yes
---

[fulltext][] is a package I maintain for text-mining the scholarly literature ([package docs][ftdocs]). You can search for articles, fetch article metadata and abstracts, and fetch full text of some articles. Text-mining the scholarly literature is a research tool used across disciplines. Full text of articles (entire article, not just the abstract) is the gold standard in text-mining in most cases.

Over the past years the fulltext package has evolved under the hood in its approach to attempting to get full text articles for its users. The following is a walk through of the various iterations that fulltext has gone through for fetching full text of articles. I think it serves as a good demonstration of the complexity and frustration baked into the publishing industry, as well as the trade-offs of various approaches to solving problems and getting things done.

## Crossref has the data

The first part of the journey was years ago. We started off using the [Crossref API][crapi] to get links to full text versions of articles. This worked in many cases, allowing us to directly download full text versions of articles for fulltext users. 

However, metadata is populated by publishers that are Crossref members, and the "links" metadata is optional (i.e. links to full text articles). Furthermore, the "links" metadata may be completely out of date. Given the opportunity to not add links, many publishers do not, and many publishers do not update links once deposited. This leads to many missing links and to errors in existing ones.

## Some bad links: a new approach

Given the problems with Crossref links to full text, I decided to work on another solution. I decided to make a web API of my own. [The API][ftdoiapi] was available at ftdoi.org, and all it did was accept a DOI for an article, then look up the Crossref publisher member ID, then use rules I maintained for figuring out full text links to articles per publisher or journal, and return links to full text. 

This solution worked pretty well, and had the added benefit that I could look at the API logs to see which publishers or DOIs users were most interested in - then I could work on making new mappings for those publishers/journals.

However, essentially the only ftdoi.org API users were people using the fulltext package in R. That is, there were very few additional users beyond those using the fulltext package to consider for the API - which begs the question: is the API worth maintaining given the cost (paying for a cloud server) and time (maintainting the code for the API and the server running the API)?

In addition, because of the ftdoi.org API, fulltext users were waiting for an extra http request that could fail or be slow if their internet connection was bad/slow or if I had a problem on the server for the ftdoi.org API. That is, if what the ftdoi.org API was doing could be done locally, an http request could be avoided.

## Simplify and barriers

I decided to retire the ftdoi.org API and do the mapping (DOI to Crossref member to full text link) inside of R. The first attempt at this was to implement the mapping in a separate package: [ftdoi][ftdoipkg]. I was about to submit to CRAN but then remembered that new package submissions to CRAN can take a very, very long time, with no upper limit. Given that I wanted to wrap up the change away from the web API to the R side rather quickly, I decided to pivot away from a separate package. Instead of a separate package, I simply moved the code I had in ftdoi to fulltext package. Then submitted a new version of fulltext to CRAN - and done.

Submitting a separate package really was the right decision from a software perspective as it was a distinct set of code with a solid use case. However, given the unknown and possibly very long acceptance time on CRAN, folding the code into a package where I only had to submit a new version made more sense. Luckily new versions to CRAN are partly automated, so things go more smoothly and quickly. I definitely regret bloating the codebase of the fulltext package, but from a "getting things done" perspective it just made more sense.

## Onward

Moving forward there will be improvements in fetching full text of articles in the fulltext package as we make mappings on a publisher and/or journal basis. Unfortunately these improvements require new versions of fulltext to get to CRAN. When we used the ftdoi.org API users could benefit from new journal/publisher mappings as soon as the API was updated, which is very fast - but the addition of new mappings will take longer now assuming users only install CRAN versions.

Last, and somewhat unrelated to the discussion above, the Crossref "click-through" text and data mining (TDM) service is going away at the end of this year. If you use this service, pay attention to [ropensci/fulltext#224](https://github.com/ropensci/fulltext/issues/224).


[fulltext]: https://github.com/ropensci/fulltext/
[ftdocs]: https://docs.ropensci.org/fulltext/
[crapi]: https://github.com/CrossRef/rest-api-doc
[ftdoiapi]: https://github.com/sckott/pubpatternsapi
[ftdoipkg]: https://github.com/sckott/ftdoi
