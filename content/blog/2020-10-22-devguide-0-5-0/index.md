---
title: 'rOpenSci Dev Guide 0.5.0: Updates'
author:
  - Maëlle Salmon
  - Brooke Anderson
  - Laura DeCicco
  - Julia Gustavsen
  - Anna Krystalli
  - Mauro Lepore
  - Karthik Ram
  - Noam Ross
  - Melina Vidoni
date: '2020-10-22'
slug: devguide-0.5.0
tags:
  - Software Peer Review
  - dev guide
package_version: 0.1.0
description: "Updates in version 0.5.0 of the online book 'rOpenSci Packages: Development, Maintenance, and Peer Review
rOpenSci Packages: Development, Maintenance, and Peer Review'"
twitterImg: img/blog-images/2019-05-16-dev-guide-update/cover.png
---

rOpenSci Software Peer Review's guidance has been compiled in [an online book](https://devguide.ropensci.org/) for more than one year now. We've just released its fifth version. 
To find out what's new in our dev guide 0.5.0, you can [read the changelog](https://devguide.ropensci.org/booknews.html), 
or this blog post for more digested information.

> We have resumed activity after a break due to the COVID-19 crisis, but have been handling deadlines and timing giving a lot of grace to all people involved: We're all doing our best and are trying to be accommodating with schedules this challenging year.

## A curation policy for rOpenSci packages

* 2020-09-22, add package curation policy (`@noamross`, #263)

## Guidance for package docs

* 2020-09-11, add more guidance and requirements for docs at submission (`@annakrystalli`, #261)

* 2020-09-14, add more guidance on describing data source in DESCRIPTION (`@mpadge`, #260)

* 2020-09-11, improve the redirect guidance (`@jeroen`, `@mcguinlu`, #269)

* 2020-10-08, add help about link checking (`@sckott`, #281)

* 2020-10-05, add links to licence resources (`@annakrystalli`, #279)

## Updates to our process

* 2020-10-08, update JOSS instructions (`@karthik`, #276)
* 2020-09-11, make reviewer approval a separate template (`@bisaloo`, #264)

## Guidance for testing

The updates feature two small but useful changes to our testing guidance.

Then, the chapter about package evolution (your reference if you are thinking about deprecating functions!) now includes guidance about testing deprecated functions. 
Thanks [Scott Chamberlain](/author/scott-chamberlain) for the contribution, and thanks to [Jindra Lacko](https://www.jla-data.net/) and [John Blischak](https://jdblischak.com/) for [their discussion on RStudio community forum](https://community.rstudio.com/t/unit-testing-of-a-deprecated-function/42837/) that inspired this addition.

First of all, we updated our [continuous integration guidance](https://devguide.ropensci.org/ci.html#whichci) by making GitHub Actions come first, as it seems to be gaining popularity. Thanks to [Luke McGuinness](https://github.com/mcguinlu) for initiating the discussion and to [Hugo Gruson](https://github.com/bisaloo) for sharing his insights.

## A reference to rOpenSci other best guide :wink:

Our guide featured a quite light chapter about [Contributing to rOpenSci](https://devguide.ropensci.org/contributingguide.html).
Now that rOpenSci Community Manager Stefanie Butland and Community Assistant Steffi LaZerte have written a whole guide about this topic, the chapter has been transformed into a teaser for it!

{{< tweet 1298636325487345669 >}}

It is the opportunity for us to congratulate Stefanie and Steffi on the contributing guide, and to encourage you to read it.
Here's to many more versions. :grin:

## Conclusion

In this post we summarized the changes incorporated into our book ["rOpenSci Packages: Development, Maintenance, and Peer Review"](https://devguide.ropensci.org/) over the last six months. 
We are grateful for all contributions that made this release possible. 
We are already working on updates for our next version, such as improving guidance for [encouraging package citations](https://github.com/ropensci/dev_guide/issues/115). 
Check out the [the issue tracker](https://github.com/ropensci/dev_guide/issues/) if you'd like to contribute.
