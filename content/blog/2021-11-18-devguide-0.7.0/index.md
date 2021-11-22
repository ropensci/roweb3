---
title: "rOpenSci Dev Guide 0.7.0: Updates"
author:
  - Maëlle Salmon
  - Laura DeCicco
  - Julia Gustavsen
  - Jeff Hollister
  - Anna Krystalli
  - Mauro Lepore
  - Karthik Ram
  - Emily Riederer
  - Noam Ross
  - Adam Sparks
  - Melina Vidoni
date: '2021-11-18'
slug: devguide-0.7.0
tags:
  - Software Peer Review
  - dev guide
package_version: 0.1.0
description: "Updates in version 0.7.0 of the online book 'rOpenSci Packages: Development, Maintenance, and Peer Review rOpenSci Packages: Development, Maintenance, and Peer Review'"
twitterImg: img/blog-images/2019-05-16-dev-guide-update/cover.png
output: 
twitterAlt: cover of rOpenSci dev guide, showing a package production line with small humans discussing, examining and promoting packages
---

rOpenSci Software Peer Review's guidance is gathered in [an online book](https://devguide.ropensci.org/) and keeps improving!
To find out what's new in our dev guide 0.7.0, you can [read the changelog](https://devguide.ropensci.org/booknews.html), 
or this blog post for more digested information.

## @ropensci-review-bot help: less TODOs, more simple commands!

A big change brought in this release is the retirement of some of our multiple TODOs for editors in favor of simple bot commands such as `@ropensci-review-bot check package`. 
Our [editor guide](https://devguide.ropensci.org/editorguide.html) is now simpler! 

For context, rOpenSci has worked with The [Journal of Open Source Software](https://joss.theoj.org/) to extend JOSS’s approach of [chatops-driven publishing](https://www.arfon.org/chatops-driven-publishing) into a new GitHub chat-bot, that manages our editorial process: assigning tasks, tagging issues, running tests on software submissions, and returning reports to reviewers and editors, logging reviews in an external (Airtable) database, all from the comfort of a GitHub issue comment. 
Chat-ops automation has been critical to JOSS’s success, and shows huge promise for automating even more tedious tasks like frequent software checks and compliance with best practices.

If you are curious about this topic, do not miss our next [community call: Enhancing Software Peer Review with GitHub Automation](/dec2021-automation/)!
As usual resources and a close-captioned recording will be posted afterwards.

## Still some work for editors 😉

Fear not, software peer review volunteer [editors](https://ropensci.org/software-review/) still participate a lot in the process.
We've formalized [editor responsabilities](https://devguide.ropensci.org/editorguide.html#editors-responsabilities), in particular outlining editor etiquette around submissions handled by other editors.

> You do not have to keep track of other submissions, but if you do notice an issue with a package that is being handled by another editor, feel free to raise that issue directly with the other editor, or post the concern to editors-only channel on slack. 

Thanks to the new statistical software peer-review editor [Toby Dylan Hocking](https://github.com/tdhock) we've made it explicit that editors have to look for __two__ reviewers.

Another element we've formalized a bit more is the list of human checks to be [made by editors](https://devguide.ropensci.org/editortemplate.html).

We've also added a whole chapter dedicated to [editorial management](https://devguide.ropensci.org/editorialmanagement.html) with guidance for inviting, onboarding and offboarding editors.
Recruiting new editors and maintaining a sufficient and well-balanced editorial board is a responsibility of the [Software Review Lead](https://ropensci.org/about/#team) ([Noam Ross](https://www.noamross.net/) at this point in software review history 😀), with support and advice from the editorial board.

As with the rest of the Dev Guide, we hope this section helps make our own processes more transparent, and is of use to other organizations managing peer review.

## A new form for volunteer reviewing!

In an effort to gather more relevant data about potential reviewers, we've improved our [form for volunteering](https://airtable.com/shrnfDI2S9uuyxtDw).
It has more detailed questions about technical knowledge and domain expertise.

Thanks a lot to all who either updated their data or filled the form for the first time, we are very thankful for your willingness to participate to Software Peer Review!

To go with the new useful data we've updated the guidance for editors to [look for reviewers](https://devguide.ropensci.org/editorguide.html#how-to-look-for-reviewers).

If you want your info removed from the database, please send an email to `privacy@ropensci.org`.

## Mention relevant rOpenSci projects

We've sprinkled the dev guide with mentions of rOpenSci projects relevant to software review participants:

* We've linked to Statistical Software Peer Review from the [software review introduction](https://devguide.ropensci.org/softwarereviewintro.html) and from the [very first page of the book](https://devguide.ropensci.org/index.html),

* We present the [pkgcheck](https://docs.ropensci.org/pkgcheck/) package created and maintained by Mark Padgham in the author guide as using it enables authors to ensure their package is ready for submission.

* In the packaging guide, we now give precise examples of [tools for installation instructions](https://devguide.ropensci.org/building.html#readme): the r-lib remotes and pak packages but also [R-universe](/r-universe/)!

## Setting up your package to foster a community

Following our community call ["Set Up Your Package to Foster a Community"](/commcalls/apr2021-pkg-community/) that has been [summarized by  Sina Rüeger](/blog/2021/04/28/commcall-pkg-community/), we've added guidance to our [collaboration guide](https://devguide.ropensci.org/collaboration.html).

## Updates to reviewer guidance

The work on pkgcheck and [automation](/commcalls/dec2021-automation/) means we were able to remove some elements from reviewers' guidance: 

* We no longer ask reviewers to run covr but we ask them to pay attentions to skipped tests.

* We no longer ask reviewers to run goodpractice as goodpractice is run by the pkgcheck package whose checks are triggered on the cloud by the bot.

We are thrilled to remove some workload from reviewers as we are aware that reviewing a package is a lot of work. 
Thanks to all reviewers for their incredible contributions to Software Peer Review!

## Miscellaneous guidance updates

The requirement to have a vignette is now more precise, there has to be at least one _HTML_ vignette. 
That requirement is part of pkgcheck checks.

Thanks to an idea of editor [Anna Krystalli](https://github.com/annakrystalli), the dev guide now includes an explicit [subsection about version control](https://devguide.ropensci.org/building.html#version-control), and pkgcheck's checks include looking for "scrap files" such as `.DS_Store` files, that should be `.gitignore`'d.

We've added some more guidance on [making packages easier to cite](https://devguide.ropensci.org/building.html#version-control) following our [blog post on the same topic](/blog/2021/02/16/package-citation/).

## Policy update: scope clarification for data extraction and munging

We've clarified the definition of the [categories](https://devguide.ropensci.org/policies.html#package-categories) "data extraction" and "data munging" by adding examples.

## Conclusion

In this post we summarized the changes incorporated into our book ["rOpenSci Packages: Development, Maintenance, and Peer Review"](https://devguide.ropensci.org/) over the last months. 
We are thankful for all contributions that shaped this release. 
We are already working on the next version, such as pondering [whether to make the review template an R Markdown file](https://github.com/ropensci/dev_guide/issues/340) and [whether to make a distinct chapter out of contributing guide standards](https://github.com/ropensci/dev_guide/issues/334)
