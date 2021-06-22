---
title: How We Curate Our Monthly Newsletter
author:
  - Maëlle Salmon
date: '2021-06-24'
slug: news-meta
categories: []
tags:
  - tech notes
  - RMarkdown
package_version: 0.1.0
description: Our workflow for preparing and sending our monthly newsletter, partly automatically.
tweet: How @rOpenSci Team Curates Its Monthly Newsletter
output:
  html_document:
    keep_md: yes
---

How to keep up with rOpenSci? 
We agree that we're doing so much good work that it's hard. 😉
More seriously, we've been curating and sharing a news digest with our community for years because we believe it to be useful.
Over time its structure and infrastructure have evolved.
In this post we'll share how we currently prepare content for the newsletter and send it to subscribers' mailboxes, as automatically as possible.

## Short history of our newsletter

rOpenSci has had a newsletter [since 2014](https://news.ropensci.org/update-2014-12-15/)![^commcalls]
For the longest time the newsletter has been living at a Jekyll website at a [subdomain](https://news.ropensci.org); whose entries were also sent as email to subscribers.
It was published mostly once every two weeks.[^once]
The preparation of each post was helped with a [Makefile](https://github.com/ropensci/biweekly), and some manual manipulation and prose writing.

Later, the newsletter got complemented by posts on our main blog called ["two months in two minutes"](/blog/2020/12/18/news-dec2020/) that were digests of the digests.[^digest]

For a few months now we have settled on:

* A monthly post on our main blog, tagged with the "newsletter" tag;
* That is also sent as an email to our newsletter subscribers.

## Newsletter content

Find the [June newsletter](/blog/2021/06/21/ropensci-news-digest-june-2021/).
The newsletter structure is (🏭 for automatically generated content, ✍️ for manually curated sections):

* ✍️rOpenSci HQ with announcement about events, new projects, etc.
* 🏭 Software with new packages and package updates.
* 🏭 Software Peer Review with a snapshot of current or recent submissions.
* 🏭 On the blog with short summaries of latest blog posts.
* 🏭 Citations of our tools.
* 🏭 Use cases of our tools.
* ✍️Call for maintainers when packages need a new CEO.
* ✍️Package development corner with tips for package developers.

## Tech stack and tips

### Newsletters as blog posts

Having the newsletter available as entries online somewhere is very handy for linking to them from e.g. Twitter.
Furthermore, we really like our website (redesigned last summer ✨) so it felt logical to have the newsletter live in it, especially as it meant one could hop from the newsletter to other website pages much more easily.
Having the newsletter issues as _blog posts_ was the most natural way to integrate them here, but we've also:

* Created a [newsletter page](/news/) that features its sign-up form, and previous newsletter-tagged posts;
* Added a direct link to the newsletter page via an email icon on the [newsletter tag page](/tags/newsletter), which makes it even easier to find how to subscribe.

### Newsletters as R Markdown parameterized reports

Now, how do we go from "information out there" to a formatted blog post? 
We use an R Markdown document that needs the date of the latest newsletter as parameter.
That document is stored as an [Hugo archetype](https://github.com/ropensci/roweb3/tree/master/archetypes/newsletter) so we can create a newsletter via the [blogdown New Post addin in RStudio](/blog/2020/04/23/rmd-learnings/#hugo-archetypes-and-blogdown-new-post-addin).
It's filled with [chunks producing text](https://bookdown.org/yihui/rmarkdown-cookbook/verbatim-code-chunks.html).

Compared to the previous way we created newsletters, our new method relies more heavily on data accessed directly from GitHub:

* New packages are packages that were not in [rOpenSci registry](https://github.com/ropensci/roregistry) at the time of the last newsletter. To find rOpenSci registry at the time of the last newsletter, we query GitHub commits.
* The citations data that [we curate](/blog/2021/02/16/package-citation/#how-ropensci-tracks-package-usage) is also stored on GitHub and we use similar history logic to identify "new" citations. 
* Names of reviewers of new packages come from [`DESCRIPTION`](/blog/2018/03/16/thanking-reviewers-in-metadata/) when they're listed there, otherwise we manually add a snippet of code to the R Markdown document to add their names to the package presentation.
* Package updates are GitHub releases in the repositories of packages listed in the rOpenSci registry. While this adds some more work to maintainers (as opposed to e.g. "only" releasing their package on CRAN), it's a [one small workflow step that can be helped by usethis](https://github.com/ropensci/skimr/issues/653#issuecomment-800475302). We were already recommending the use of GitHub releases in [our dev guide](https://devguide.ropensci.org/releasing.html). 
* Software review processes are summarized according to the issue labels. While these used to be applied by editors, we've been using our review bot more and more so that the label data has become better.

The use cases data comes from our forum via Discourse API whose [client discgolf](https://github.com/sckott/discgolf) is maintained by rOpenSci [Scott Chamberlain](/author/scott-chamberlain).
The same JSON data feeds our [use cases page](/use-cases).

A random tip is that we use [`english::english()`](https://cran.r-project.org/web/packages/english/index.html) to transcribe numbers to English.
E.g. `as.character(english::english(2021))` gives "two thousand and twenty-one".
An alternative (that we had not heard of when creating the R Markdown document) is [xfun::numbers_to_words()](https://twitter.com/rfunctionaday/status/1392722522651639808).

We still have some progress to make e.g. instead of using a `DESCRIPTION` file to store dependencies, we should probably switch to using [`renv`](https://rstudio.github.io/renv/articles/renv.html).
Let's see, we may wait for something to break before making the change!

### Newsletter as products crafted with human care

The newsletter has a few manually curated sections.
To populate this, we use information from the website (comm calls), our reading (was an interesting answer or question sent to the R-package-devel mailing list?), etc.
To not forget ideas or to bring them to the attention of the newsletter curator we store them as issues in a GitHub repository.

Furthermore, the manually curated sections are reviewed by at least one other person.
The posts don't get a [full blown review](https://blogguide.ropensci.org/) but this helps strengthen them.

### Newsletters as emails: hello Sendgrid, bye MailChimp!

We used to send our newsletter via MailChimp, however we've been hearing [problematic things about the company itself](https://www.businessinsider.fr/us/inside-mailchimp-mass-exodus-women-people-color-ben-chestnut-2021-3) so asked around for recommendations (thanks a ton to everyone who chimed in!) and settled on SendGrid.
SendGrid offers both _email_ and _marketing_ services.
We were already using email services for the [CRAN checks API](https://blog.r-hub.io/2019/06/10/cran-checks-api/) and our forum.
We now also use SendGrid marketing services, for sending our newsletter.[^transfer]

How do we go about that?
We extract the HTML corresponding to the post from our [full content RSS feed](/rbloggers/index.xml) (set up for R Bloggers).
We use that feed as all relative links (except for images) have been made absolute at that point.
We copy-paste it into a text editor and make a few tweaks:

* make the images src an absolute link,
* remove all heading anchors, 
* add a [no tracking attribute to links](https://community.auth0.com/t/howto-disable-sendgrids-click-tracking-feature-in-an-auth0-email-template/22958) as the global SendGrid account option didn't work for that.[^tracking]

These tweaks are listed in our [newsletter checklist](https://github.com/ropensci/roweb3#newsletter) but we might transform them to code using xml2 soon-ish. 

We then copy this HTML as a code block in SendGrid visual editor.
Regarding the email appearance, we added some blocks (e.g. the unsubscribe one at the bottom), tweaked a few styling rules (e.g. the color of text, background, links, to match our website).
To send a new newsletter we _duplicate_ a previous one. 
Folks more experienced with SendGrid might create a "template" for that, presumably.

We make sure the subject and preheader (what MailChimp calls preview, the email bit recipients might see near the subject in their inbox) are updated, then send a few test emails, and then [more or less nervously](http://veekaybee.github.io/2021/06/20/the-ritual-of-the-deploy/) send the newsletter to its more than 2,000 subscribers.

Voilà, at that point all that remains is tweeting about the newsletter, and hoping it gets read at least a bit.

Note that SendGrid sign-up forms offer much less flexibility than MailChimp similar features, so we had to add an iframe to our website to incorporate sign-up, where we used to have a more integrated form whose JS code pinged a dedicated MailChimp URL.

## Conclusion

In this post we presented our workflow for curating and sending our monthly newsletter.
Our newsletter is published as a monthly post on our blog, and sent as an email to subscribers via SendGrid.
We prepare its content with a mix of automatically generated and manually curated sections, followed by a review for the latter.
The automatic generation of some content depends on upstream manual and automatic work for gathering data (e.g. our packages registry, citations monitoring, encouraging users to report use cases).
We hope the newsletter helps our community stay informed of our work.
If you have any suggestion for our newsletter, don't hesitate to leave a comment below!
And to subscribe, head over to [the newsletter page](/news)!

[^commcalls]: Reading that first issue is amusing as it announces the beginning of comm calls, that are now a [well established part of rOpenSci activities](/commcalls) and [have a very polished flow](/blog/2021/02/02/ropensci-community-calls/).
[^once]: That is why it was called rOpenSci biweekly, although not everyone agrees on what frequency _biweekly_ means (twice a week or once every two weeks?).
[^digest]: The newsletter section about blog posts [mentioned these digests](https://news.ropensci.org/2019-06-24/#on-the-blog).
[^transfer]: Transferring contacts merely means exporting _subscribed_ contacts out of MailChimp and then importing them into SendGrid. As we assume most people unsubscribe from a very recent newsletter, we should not miss unsubscribe events.
[^tracking]: We do track opens, via a 1px square image, which you can [turn off](https://www.theverge.com/22288190/email-pixel-trackers-how-to-stop-images-automatic-download) by not letting your email service load external images by default.
