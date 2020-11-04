---
slug: "fulltext-story"
title: "fulltext: behind the scenes"
date: 2020-11-10
author:
  - Scott Chamberlain
description: Behind the scenes of getting article full text.
tags:
  - literature
  - textmining
  - fulltext
  - R
output: 
  html_document:
    keep_md: true
---

[fulltext][] is a package I maintain for text-mining the scholarly literature ([package docs][ftdocs]). You can search for articles, fetch article metadata and abstracts, and fetch full text of some articles. Text-mining the scholarly literature is a research tool used ascross disciplines, and full text of articles is the gold standard in most cases. 

Over the past years the fulltext package has evolved under the hood in its approach to attempting to get full text articles for its users. The following is a walk through of the various iterations that fulltext has gone through for fetching full text of articles. I think it serves as a good demonstration of the complexity and frustration baked into the publishing industry, as well as the trade-offs of various approaches to solving problems and getting things done.

## Crossref has the data

The first part of the journey was years ago. We started off using the [Crossref API][crapi] to get links to full text versions of articles. This worked in many cases, allowing us to directly download full text versions of articles for `fulltext` users. 

However, metadata is populated by publishers that are Crossref members, and the links metadata is optional. Furthermore, the links metadata may be completely out of date with whatever current links bring you to the full text of an article. Given the opportunity to not add links to full text, many publishers accepted that challenge and did not deposit links; and many publishers did not update links once deposited, leading to errors with many full text links.

## Some bad links: a new approach

Given the problems with Crossref links to full text, I decided to work on another solution. I decided to make a web API of my own. [The API][ftdoiapi] was available at `ftdoi.org`, and all it did was accept a DOI for an article, then look up the Crossref publisher member ID, then use rules I matained for figuring out full text links to articles per publisher or journal, and return links to full text. 

This solution worked pretty well, and had the added benefit that I could look at the API logs to see what publishers or DOIs users were most interested in getting links for - then I could work on making new mappings for those publishers/journals.

However, essentially the only API users were R users. This meant that fulltext users were waiting for an extra http request that could fail or be slow if their internet connection is bad/slow or if I had a problem on the server for the API.

## Simplify and barriers

I decided to retire the ftdoi.org API and do the mapping (DOI to Crossref member to full text link) inside of R. The first attempt at this was to implement the mapping in a separate package: [ftdoi][ftdoipkg]. I was about to submit to CRAN but then realized that new package submissions to CRAN can take a very, very long time, with no upper limit. Given that I wanted to wrap up the change away from the web API to the R side rather quickyly, I decided to pivot away from a separate package. Instead of a separate package, I simply moved the code I had in ftdoi to fulltext package. Then submitted a new version and done.

Submitting a separate package really was the right decision from a software perspective as it was a ditinct set of code with a solid use case. However, given the unknown and possibly very long acceptance time on CRAN, folding the code into a package where I only had to submit a new version made more sense. Luckily new versions to CRAN are partly automated, so things go more smoothly and quickly. I definitely regret bloating the codebase of the fulltext package, but from a "getting things done" perspective it just made more sense.




[fulltext]: https://github.com/ropensci/fulltext/
[ftdocs]: https://docs.ropensci.org/fulltext/
[crapi]: https://github.com/CrossRef/rest-api-doc
[ftdoiapi]: https://github.com/sckott/pubpatternsapi
[ftdoipkg]: https://github.com/sckott/ftdoi
