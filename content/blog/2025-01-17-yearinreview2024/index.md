---
slug: "year-in-review-2024"
title: rOpenSci 2024 Highlights
author:
  - The rOpenSci Team
date: 2025-01-17
tags:
  - community
# The summary below will be used by e.g. Mastodon preview cards
description: "A summary of the highlights of the rOpenSci community in 2024 and some news for 2025."
social: "A summary of the highlights of the rOpenSci community in 2024 and some news for 2025."
# this field is for the storing the name(s) of the editor(s) of your post
# you can leave it empty until you know who'll review your PR
editor:
  - Steffi LaZerte

---

In 2024, we remained committed to open science and open source software. 
We continued to build a welcoming and 
inclusive community, through innovation and collaboration. 

Here are the highlights of the year:

## R-Universe 

R-Universe, rOpenSci's platform for finding and publishing R packages,
saw major advancements in 2024, 
making it an increasingly useful and trusted resource for the wider R community.

Some of the highlights of our work have included a big rewrite of the [web frontend](https://r-universe.dev) 
and search engine to serve faster, beautiful, informative webpages, and 
search through tens of thousands [packages](https://r-universe.dev/packages),
[articles](https://r-universe.dev/articles) and [datasets](https://r-universe.dev/datasets). 
On the build side we added support for new tools like Rust and Quarto,
and improved the process of building binaries for WebAssembly and Apple Silicon.

Moreover, we received a [Google Season of Docs grant](/blog/2024/04/12/gsod-announcement/), aimed at centralizing the
documentation. The project focused on consolidating numerous tech notes and READMEs 
into a unified and easily navigable [Quarto website](https://docs.r-universe.dev), 
highlighting best practices and guiding users to maximize the platform's features.

These enhancements have resulted in even more users and projects joining R-Universe.
We saw more than a doubling of traffic, and R-Universe has become the distribution
platform of choice for anchor community projects like
[Stan](https://discourse.mc-stan.org/t/announcement-stan-r-packages-repo-deprecated-moving-to-r-universe/35341),
[DuckDB](https://duckdb.org/docs/installation/index.html?version=main&environment=r),
and [Polars](https://pola-rs.github.io/r-polars/vignettes/install.html),
and we've seen the creation of new community initiatives that build on R-Universe,
like [R-Multiverse](https://r-multiverse.org/)!

For 2025, we have once again been awarded support by the R-Consortium, now
being [named a top-level consortium project](/blog/2024/12/03/r-universe-r-consortium-tlp/)! 
With this long-term support, we will be investing even more in making R-Universe
a platform that supports building large-scale, collaborative repositories that
experiment with new models for release, reproducibility, and governance.

## Software Peer Review

In 2024, rOpenSci’s software peer review program continued to grow, 
showcasing our community's commitment to improving software quality and 
validating R packages for a variety of applications. 

We’ve had **17** packages successfully complete software peer review with the help of about **33** reviewers 
and **11** editors, with [three](/authors/emi-tanaka) new [editors](/blog/2024/07/03/editors2024/). We also did the [first bilingual review](https://github.com/ropensci/software-review/issues/620) in English and Spanish. 

We also streamlined the review process and provided transparency through regular updates
on the number of submissions, approvals, 
and the status of packages under review. These updates were shared through newsletters, 
our Slack and our open GitHub organization.
We built a new [dashboard](https://dashboard.ropensci.org/) to monitor the health and responsiveness of our system for authors, reviewers, and editors.
Peer review remains a cornerstone of how we maintain quality and reproducibility in R software development
and how we build community.

In the year ahead, we are going to keep pushing our tooling to make review more
efficient and helpful, and we have plans to do more to make our
software peer-review process a tool that other organizations can use to curate
their own software ecosystems and build collaborations and community.

## Multilingual Resources

In 2024, we worked hard to expanded our multilingual resources. We finished translating
our core resource, the ["rOpenSci Packages: Development, Maintenance, and Peer Review" 
into Spanish](/blog/2024/03/11/devguide-0.9.0/). This has been the central project
around which we developed our multilingual toolkit, including packages like
[babeldown](https://docs.ropensci.org/babeldown/),
[babelquarto](https://docs.ropensci.org/babelquarto/), that facilitate LLM-supported
translation workflows, and
our [rOpenSci Localization and Translation Guidelines](/blog/2024/12/17/localization-guide/) 
which we published in Spanish and English to assist our community as well as other groups in translating and localizing open science resources. 

We have had a series of great community events on multilingual publishing, 
like our [first Portuguese Community Call](/commcalls/translation-portuguese/) and
[our first Traslathon](https://github.com/orgs/ropensci/projects/7), which reinforced the 
importance of breaking language barriers in open science. 

What's happening with translation in 2025? [Portuguese translations of the development guide are underway](https://github.com/orgs/ropensci/projects/7), 
supported by dedicated community volunteers. It’s been inspiring to see the enthusiasm from contributors 
and volunteers driving this effort forward, and we will be giving it an extra push with additional support of our
new [CZI-funded Latin America program](/blog/2024/10/10/czi-latam-grant/). We are also
in the midst of Spanish-language revisions of our website and Champions programs materials.

## Champions Program

We had an inspiring 2024 with the [second cohort of our Champions Program](/blog/2024/02/15/champions-program-champions-2024/). 
These leaders have tackled projects that span disciplines and geographies, 
driving open science and open data initiatives with creativity and 
local impact.

Package development is the type of project most chosen by this group, 
but other champions have taken on the challenge of becoming reviewer in our software peer-review community.

Multilingualism plays an important role in the Champions Program, 
as part of their outreach activity, this year we have events and workshops
in [Turkish](/events/rsr-learn-and-use/), 
[Spanish](https://www.youtube.com/watch?v=YYfyBrQhMQc), 
[Portuguese](https://www.eventbrite.cl/e/traducao-hackathon-traslaton-ropensci-tickets-1045507530167),
Chinese and, of course, English.

In 2025, we will run our first cohort of Champions with a fully Spanish-language
curriculum, under the [support of our new Latin America focus program, funded by CZI](/blog/2024/10/10/czi-latam-grant/).
We are also excited to be working on new models and partnerships for the Champions
to make the program more sustainable and self-supporting, and to be following up
with our first Champions to better understand our long-term impact.

## Community Engagement

We have 219 contributors and 49 of those people made their first code contribution to rOpenSci during 2024! 
Others shared new [use cases](/usecases/) to help package authors see how their work is 
being used and help other users imagine how they can apply it.

Our blog had featured many different voices and experiences during 2024.
We have a total of 35 community authors, of which 18 are first time community authors!
Counting our staff, 42 authors wrote 54 blog posts, 63% of which were written by community authors
and 13% were multilingual.

We also celebrated our vibrant package ecosystem with the [“A Package a Day”](https://hachyderm.io/@rOpenSci/tagged/APackageADay) 
campaign on Mastodon and [Weekly Package Digests](https://www.linkedin.com/feed/hashtag/?keywords=packageweeklydigest&highlightedUpdateUrns=urn%3Ali%3Aactivity%3A7170464303186108416) in LinkedIn. 
These efforts showcased the incredible diversity of our over 
300 federated open-source packages.

Community Calls and virtual social coworking and office hours 
brought together people from at least 20 countries to learn,
get their own work done 
and to join in some spirited scavenger hunts! 

Many others have continued to [read our newsletter](/news/), 
cite our software, 
[ask or answer questions](https://discuss.ropensci.org), 
open issues to report bugs or request features, 
weigh in on standards and best practices, 
invite us [to talk about our work](/talks-papers/), 
or mentioned us in a presentation, a post, or social media.

We will continue to support our community's amazing contributions and plan to offer even more opportunities to get involved in 2025. We started with a [Community Call](/commcalls/first-time-contributor/) 
and will continue with a series of [mini-hackathons](/coworking/) 
during our co-working sessions to support first-time contributors 
to open source projects.
These events will provide opportunities for 
knowledge-sharing, networking and up-skilling in a
safe and friendly space encompasing the collaborative spirit of rOpenSci.

We are also looking forward to collaborations with partners
and other communities, like Epiverse, RECON, data.org, LatinR, PyOpenSci, 
OpenScapes and other Open-Source Program offices. Watch this space for new projects and events!

## Leadership

In 2024 we [bade farewell to Karthik Ram, our co-founder and Executive Director of 13 years](/blog/2024/03/29/from-the-founding-director-my-farewell-to-ropensci/) and welcomed
Noam Ross, formerly our leader for peer-review, [into the role](/blog/2024/03/29/hello-from-our-new-executive-director/).

## Thanks to our Community

An enormous thank you to all our **authors, maintainers, reviewers, editors, mentors, Champions,
package contributors, commenters, bloggers, translators, bug-reporters, documentation-copy-editors,
package-publishers, issue-filers, and event-attendees** for giving rOpenSci an amazing 2024.  rOpenSci _is_ our community.
We are grateful for it all and look forward to what we will do together in 2025!
