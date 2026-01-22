---
title: "Closing The Loop with Our 2025 Wrap-up"
author: 
- The rOpenSci Team
date: '2026-01-22'
slug: yearinreview2025
description: a post where we reflect on a year of shared learning and collaboration. Take a look at our wrap-up and our plans for 2026.
tags:
  - community
params:
  doi: "10.59350/64nwh-acr21"
---

At the beginning of 2025, we outlined our goals for the year, our [2024 Highlights](/blog/2025/01/22/year-in-review-2024/). As the year started, our work took place in a far more challenging global context than many of us anticipated. Across many countries, science and research faced funding cuts, layoffs, and attacks on diversity, equity, accessibility, and inclusion. These conditions reshaped timelines and capacities for institutions and for the people doing the work, but also reinforced why community-driven, open, and care-centered spaces matter.

This post looks back at what we said we would do and how that work played out in practice throughout 2025. We also share our plans for 2026. 

## Software peer review: steady growth and shared responsibility

Throughout 2025, [software peer review](/software-review/) remained a core activity at rOpenSci, with _24_ submissions peer-reviewed and approved. We had a continuous flow of package submissions, approvals, and ongoing reviews, reflecting both the demand for high-quality research software and the commitment of our editors and reviewers.

New packages joined rOpenSci in the fields of environmental and climate data, geospatial analysis, linguistics, and statistics, among others. Existing packages received more than _7000_ commits from _239_ unique users, with _62_ of them contributing for the first time to rOpenSci! Package maintainers released new versions, performed ongoing maintenance and responded to user inquiries and issues.

Building on last year's commitments, we further improved the efficiency and usefulness of our software peer review system, and explored its potential as a model for other communities.

We enhanced the review process by [improving dashboards](https://dashboard.ropensci.org), [updating guides](https://devguide.ropensci.org), and refining [pkgcheck](https://docs.ropensci.org/pkgcheck/) and its GitHub Action, making participation easier for authors and reviewers. 

Leadership transitions within the program editorial team helped distribute responsibility and ensure continuity, while ongoing community participation demonstrated that peer review remains a collective effort.

Increasing submissions mean we hope to add more editors to our board in 2026. We will also expand our automation processes, and formulate policies on the use of AI/LLMs in developing and maintaining rOpenSci packages.

{{< figure src = "editorial_team.png" alt = "Pictures of 17 people that are part of the software peer review editorial team" >}}

## Strengthening shared infrastructure: R-Universe

A major milestone in the R-Universe trajectory was its [designation as a Top-Level Project by the R Consortium](/blog/2024/12/03/r-universe-r-consortium-tlp/) in late 2024. This status provides guaranteed funding and institutional support for at least three more years and reflects R-Universe’s role as critical infrastructure in the R community. Alongside this, Jeroen Ooms, the R-Universe project lead, gained a seat on the consortium’s Infrastructure Steering Committee, reinforcing R-Universe’s influence on broader R ecosystem development.

Documentation has been a key focus area as R-Universe has matured. In early 2025, the R-Universe team launched a [centralized documentation website](https://docs.r-universe.dev) hosted as a Quarto book, funded in part by Google Season of Docs. This resource consolidates dispersed tutorials, READMEs, and technical notes into a more navigable structure covering browsing, installation, publishing, and infrastructure topics. The goal was not only to improve clarity for new users but also to make contributions to the documentation itself easier for the community.  

A refreshed web frontend has improved user experience and maintainability. This redesign streamlined the interface, improved performance, and made it easier for contributors to propose improvements, addressing long-standing usability challenges through the incremental additions of features over time. We are continuing to rewrite and consolidate other pieces of the infrastructure such as the [build workflows](/blog/2026/01/03/r-universe-workflows/) to make it easier to understand the R-Universe build process, and enable the community to hack workflows and actions to contribute improvements.

Finally a key focus in 2025 that continues in 2026 is expanding collaboration with other organizations managing sizable R package ecosystems. A notable emerging initiative is [R-Multiverse](/commcalls/r-multiverse/), which explores large-scale collaborative package repositories built on R-Universe’s infrastructure. R-Multiverse aims to support curated collections with developmental and production branches, customizable checks, and manual governance steps—features critical to institutional collaboration and stable release practices. In addition, we are helping the [BioConductor](https://bioc.r-universe.dev/builds) project modernize their infrastructure and gradually offload some of their build maintenance to us. These illustrate R-Universe's evolving role not just as a repository, but as an interactive ecosystem management tool.

## Multilingual work as infrastructure, not an add-on

In 2024, we framed multilingualism as foundational to open science, not supplementary. We committed to expanding translations, improving workflows, and supporting communities working in languages other than English.

In 2025, following our 2024 commitment, we completed the [Portuguese translations of the rOpenSci Dev Guide](/blog/2025/11/25/translation-devguide-pt/) and continued Spanish revisions of key content, blogs, program materials, and training.

We translated 32,794 words into Portuguese for the Dev Guide and published 14 blog posts on our website, bringing the total to 16 blog posts in Portuguese. In Spanish, we have 62 blog posts and all main website pages are fully translated. Additionally, we host blog content in other languages, including 8 posts in French and 1 in Turkish.

Beyond translation itself, we continued to treat multilingual publishing as infrastructure: refining AI-assisted workflows through the [babeldown](https://docs.ropensci.org/babeldown/) package; facilitating multilingual Quarto projects through the now [peer-reviewed](https://github.com/ropensci/software-review/issues/720) [babelquarto](https://docs.ropensci.org/babelquarto/) package; enabling our website to support [multilingual content](/blog/2025/04/28/news-april-2025/#more-languages-more-access-discover-ropensci-in-spanish); [documenting processes](/blog/2024/12/17/localization-guide/) and [sharing lessons](/blog/2025/06/23/translation-faq/) so that other open science communities can adapt and reuse this work. 

We also hosted [community calls](/es/commcalls/), [co-working sessions](/coworking), and mini-hackathons in Spanish and Portuguese, offering our content and programming to Spanish- and Lusophone-speaking community members.  
These events and resources reinforce rOpenSci’s commitment to multilingual participation and to meeting communities where they are.  

In 2026, we will continue working on English and Spanish content generation and expand Portuguese content and processes, piloting a fully Portuguese software peer review and translating Champions Program Training material into Portuguese.  

We will continue our collaborations with other organizations and groups that translate and localize R content and offer not only content but also other aspects of our programs in languages other than English.

## The Champions Program with Latin American Focus

One of our clearest goals for 2025 was to run the first fully Spanish-language cohort of the rOpenSci Champions Program, with a focus on Latin America.

The 2025 cohort launched with an [improved Spanish curriculum](https://champions-program.ropensci.org/resources/resources.html), [Spanish-language community calls](/es/commcalls/champions-latino-2025/), outreach activities, and mentoring. To accomplish this, we translated all training materials and the infrastructure and artifacts necessary to run a successful cohort into Spanish. The program emphasized sustainable research software as a pillar of open science in the region, while strengthening peer networks among Champions, mentors, and alumni.  

Alongside [the new cohort](/blog/2025/07/03/champions-2025/), we also evaluated the [second cohort](/blog/2024/02/15/champions-program-champions-2024/) to improve the program and better understand its impact. We conducted anonymous surveys and 1:1 interviews with Champions and mentors and used their feedback to improve the program.

The analysis of the survey and interview information shows high satisfaction among participants, both mentors and Champions. All participants agreed that the program prepared Champions to develop their own R packages, improve the quality of their packages, and participate in the software peer review. They also  expressed a desire to remain connected with rOpenSci, including participating in the Champions Program again in the future as mentors. 

All Champions interviewed reported positive professional outcomes after participating in the program, ranging from employment opportunities, internships, grants, and conference scholarships to presentations at international and local events, generating interest in their project and the program. 

Participants also provided constructive feedback on challenges they experienced, including staying in touch with other participants, defining the scope of the project, and time zones. In response, we made adjustments to the program to try to address these challenges for the 2025-2026 cohort. 

In 2026, we will [have a second cohort in Spanish](/blog/2026/01/12/programchamps2026/) and will take steps toward longer-term sustainability for the program: testing new formats, strengthening partnerships, and beginning follow-up work with earlier cohorts to better understand the program's long-term impact.

{{< figure src = "countriesApplications.png" alt = "World map showing applications levels by country, with a color gradient from dark purple (1) to yellow (30). North America, parts of South America, and Australia show higher values in yellow-green, while parts of Asia, and Africa appear in darker purple tones indicating lower values." >}}

## Community participation and pathways into open source

Throughout 2025, our blog, newsletters, and social media outreach continued to amplify community voices. These highlighted not only software releases but also the people, practices, and contexts behind them, reinforcing our focus on community participation.

During 2025, we published 49 posts on the rOpenSci blog. These included 41 blog posts and 8 technotes, with 18 posts authored or co-authored by community members, reflecting the continued openness of the blog to contributions beyond the staff team and the great participation of our community. Also, 60 authors contributed to the blog, 39 of them writing for rOpenSci for the first time, an encouraging sign of ongoing renewal and engagement!

Our content was published in four languages: 13 posts were available in more than one language, and 16 posts were published in at least one non-English language, helping us reach a broader and more diverse audience.

We organized _3_ community calls and _13_ co-working sessions with _21_ unique presenters and more than _200_ attendees, with topics ranging from technical skills such as testing, version control, and package development to broader conversations about accessibility, contribution pathways, and getting to know other communities and organizations.

One of the goals for 2025 was to create more opportunities for people to engage with rOpenSci, especially first-time contributors.

In 2025, this took shape through [mini-hackathons](/blog/2025/01/24/coworking-hackathons/) designed to lower barriers to participation. These events combined practical contribution opportunities with mentoring and social connection, reinforcing the idea that open source work is collaborative and learned through doing. [We wrote a guide to share our lessons learned organizing this type of event](https://ftc-guide.ropensci.org). Hosting multiple events with this goal throughout the year helped emphasize that open source participation is not a one-off event, but an ongoing practice that grows with continued support.

We also attended and supported several other conferences and events throughout the year, including keynotes at [useR!2025](https://ropensci.org/events/user-2025/) and [uRos2025](https://ropensci.org/events/uros2025/), among several [talk and workshops](https://ropensci.org/talks-papers/) from our staff and community members. These events provided opportunities to connect with community members in person, share our work, and learn from others in the open science ecosystem.

In 2026, we plan to continue organizing community calls in multiple spoken languages, co-working sessions, and mini-hackathons. If you want to collaborate in any of these spaces, please get in touch with us.  We also hope to see you in some of the R, open science, and open source conferences around the world: follow our [events page](/events) and our [newsletter](/news) to learn which ones we will attend!

We made progress on developing a prototype dashboard that aims to help organizations maintain complex systems of interdependent software components. Our initial [prototype organizational dashboard](https://ropensci-review-tools.github.io/repometrics-demo/) provides insights into code contributors, their repositories, and maintenance status and needs.
We are in conversation with several groups about adopting and adapting the dashboard to highlight the importance of communities in creating and maintaining software.

{{< figure src = "conferences.png" alt = "rOpenSci Staff and Community members presenting at several international conferences" >}}

## Strengthening ties with open science partners

In 2025, we continued to build and strengthen partnerships with organizations that share our commitment to open science, open source, and community-driven development.

We used our co-working sessions to connect rOpenSci members with like-minded communities, holding joint events with the [Data Science Learning Community](/events/coworking-2025-06/) and [The Carpentries](/events/coworking-2025-12/). We also organized a [discussion and networking event for and with current and former U.S. federal government data scientists](/events/datasci-careers-feds/) with [OpenScapes](https://openscapes.org/).

rOpenSci staff served on the [R Consortium Infrastructure Steering Committee](https://r-consortium.org/about/governance.html#infrastructure-steering-committee), [R-Ladies](https://rladies.org/about-us/global-team/) global leadership, [R-Multiverse](https://r-multiverse.org/team.html) administration, [CSIDNet Collaborative Committee](https://csidnet.org), [The Carpentries](the carpentries board of directors) Board of Directors, as well as the UseR! [2025](https://user2025.r-project.org/about/organizers), [2026](https://user2026.r-project.org) and [LatinR](https://latinr.org/sobre/equipo/) organizing committees. 

Together with a [coalition of open science organizations, we held a convening](/blog/2025/09/15/collaboration-communities/) to map out gaps in ecosystem sustainability and to start a long-term process of developing shared support approaches. Finally, as mentioned above, we are working with BioConductor to make R-Universe a larger part of their core infrastructure.

{{< figure src = "communities.jpg" alt = "pyOpenSci, rOpenSci, OLS, The Carpentries and PreReview Executive Directors and Community Managers" >}}

## What we learned 

Looking back over 2025, we focused on being true to our core community values and delivering on commitments made the year before. Where plans evolved, they did so in response to capacity, collaboration, and community feedback.

Closing the loop between intention and action is an accountability and a learning practice. It helps us see which investments compound over time, which structures enable others to lead, and where care and sustainability matter most.

As we look ahead, we do so grounded in what 2025 demonstrated: that open science is built through steady, collective work, with Diversity, Equity, Inclusion, and Accessibility at the center. We believe that sharing what we plan to do has a greater impact if we return to show what we actually did, all the while staying true to the principles that hold this community together.
