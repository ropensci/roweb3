---
title: How We Curate Our Monthly Newsletter
author:
  - Maëlle Salmon
date: '2021-06-28'
slug: news-meta
categories: []
tags:
  - tech notes
  - RMarkdown
package_version: 0.1.0
description: A very short summary of your post (~ 100 characters)
tweet: A post about blabla by @username!
output:
  html_document:
    keep_md: yes
---

How to keep up with rOpenSci? 
We agree that we're doing so much good work that it's hard. 😉
More seriously, we've been curating and sharing a news digest with our community for years because we believe it to be most useful.
Over time its structure and infrastructure have evolved.
In this post we'll share how we currently prepare content for the newsletter and send it to subscribers' mailboxes, as automatically as possible.

## Short history of our newsletter

rOpenSci has had a newsletter [since 2014](https://news.ropensci.org/update-2014-12-15/)![^commcalls]
For the longest time the newsletter has been living at a Jekyll website at a subdomain, news dot ropensci dot org; whose entries were also sent as email to subscribers.
It was published mostly once every two weeks.[^once]
The preparation of each post was helped with a Makefile, and some manual manipulation and prose writing.

Later, the newsletter got complemented by posts on our main blog called "two months in two minutes" that were digests of the digests.[^digest]

For a few months now we have settled on
* A monthly post on our main blog, tagged with the "newsletter" tag;
* That is also sent as an email to our newsletter subscribers.

## Tech stack and tips

### Newsletters as blog posts

Having the newsletter available as entries online somewhere is very handy for linking to them from e.g. Twitter.
Furthermore, we really like our website (redesigned last summer ✨) so it felt natural to have the newsletter live in it, especially as it meant one could hop from the newsletter to other website pages much more easily.
Having the newsletter issues as _blog posts_ was the most natural way to integrate them here, but we've also:

* Created a [newsletter page](/news/) that features its sign-up form, and previous news-tagged posts;
* On the [newsletter tag page](/tags/newsletter), we've added a direct link to the newsletter page via an email icon, which makes it even easier to find how to subscribe.

### Newsletters as R Markdown parameterized reports

Now, how do we go from "information out there" to formatted blog post? 
We use an R Markdown document that needs the date of the latest newsletter as parameter.
That document is stored as an Hugo archetype so we can create a newsletter via the blogdown New Post addin.
It's fulled of chunks producing text.

Compared to previous logic, we rely more heavily on data stored on or directly from GitHub:

* New packages are packages that were not in rOpenSci registry at the time of the last newsletter. To find rOpenSci registry at the time of the last newsletter, we query GitHub commits.
* Package updates are GitHub releases in the repositories of packages listed in the rOpenSci registry. Whilst this adds some more work to maintainers (as opposed to e.g. "only" releasing their package on CRAN), it's a [one small workflow step that can be helped by usethis](https://github.com/ropensci/skimr/issues/653#issuecomment-800475302). 
* Software review processes are summarized according to the issue labels. Whilst these used to be applied by editors, we've been using our review bot more and more so that the label data has become better.


### Newsletters as emails: hello Sendgrid, bye MailChimp!


[^commcalls]: Reading that first issue is amusing as it announces the beginning of comm calls, that are now a [well established part of rOpenSci activities](/commcalls) and [have a very polished flow](/blog/2021/02/02/ropensci-community-calls/).
[^once]: That is why it was called rOpenSci biweekly, although not everyone agrees on what frequency _biweekly_ means (twice a week or once every two weeks?).
[^digest]: The newsletter section about blog posts [mentioned these digests](https://news.ropensci.org/2019-06-24/#on-the-blog).
