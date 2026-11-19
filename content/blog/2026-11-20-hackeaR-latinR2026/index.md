---
slug: "hackeaR-LatinR2026"
title: Hacking Two Hours of Contributions to R
author:
  - Yanina Bellini Saibene
date: 2026-11-20
tags:
  - packages
  - R
  - community
description: "What we did during HackeaR, a LatinR event where we got together to make contributions to our favorite programming language"
editor:
  - Steffi LaZerte
params:
  doi: "10.59350/v78cb-9a438"
---

[LatinR](https://latinr.org) is a conference on the use of R in Research and Development that brings together the Latin American community using our favorite programming language. In 2026 it took place from November 11 to 13 in Medellín, Colombia, together with the Universidad de Antioquia.

On Friday, November 13, **[HackeaR](https://latinr.org/cronograma/hackear/)** took place: a two-hour meetup of small-group work where experienced people supported those taking their first steps contributing to open projects. In this post we summarize what we worked on and how.


## What is HackeaR

This event combines the experience of rOpenSci's [mini hackathons and mini translathons](https://ftc-guide.ropensci.org) with the R Dev Days/Sprints of the [R Contributor](https://contributor.r-project.org/events/r-dev-days/) group.
The idea is that anyone, whether a beginner or an experienced person, can make a real contribution to the R ecosystem.

The focus was on contributions that help both base R and the R packages that make up our ecosystem. Several of these packages and projects are rOpenSci programs. Possible contributions included analyzing and working on _issues_ and _pull requests_ listed on the [hackathon board](https://github.com/orgs/r-devel/projects/14/views/1), improving documentation, and reviewing translations of rOpenSci materials.

Twenty-seven people attended the event; some stayed for the full two hours, while others came and went between the other conference sessions. 

<div class="row">
<div class="col-md-6">

{{< figure src="working_groups.jpeg" alt="Participants selecting issues and pull requests to work on during the event, sitting in the room and working on their laptops" caption="Participants selecting issues and pull requests to work on during the event" >}}

</div>
<div class="col-md-6">

{{< figure src="working_groups_2.jpeg" alt="More participants selecting issues and pull requests to work on during the event, sitting in the room and working on their laptops" caption="Hackathon participants working on their computers during the event" >}}

</div>
</div>


## The work proposals

To help people decide where to start, we prepared a GitHub project in advance with 25 tasks from different repositories, grouped into three categories: best practices, documentation, and translation.

### Best practices (9)

- **Accessibility:** Diana Garcia added alt text to the images in [unheadr](https://github.com/luisDVA/unheadr/issues/6) [through a pull request](https://github.com/luisDVA/unheadr/pull/13) that was accepted and closed this issue! 🎉
Riva Quiroga and Jesica Formoso worked on a color contrast problem below the WCAG AA minimum in the [r-devel guide](https://github.com/r-devel/rdevguide/issues/274).

- **Base R on different platforms:** Jeroen Ooms has two pull requests in progress in r-svn, one to [fix Alpine on ARM64 and add continuous integration](https://github.com/r-devel/r-svn/pull/476) and another to [fix the C stack limit on Linux and FreeBSD](https://github.com/r-devel/r-svn/pull/478).

- **stplanr:** the [failing actions issue](https://github.com/ropensci/stplanr/issues/567) was closed 🎉 and four remain pending, ranging from renaming `rnet_merge` to an `sf` method for `line_midpoint` and a vignette on route networks.

### Documentation (6)

- The "Lost braces" issue, proposed by Kurt Hornik (R Core), consists of [sending pull requests to CRAN packages](https://github.com/r-devel/r-dev-day/issues/110) that show the _NOTE_ about _"Lost braces"_ in the Rd files check. During HackeaR, Yanina Bellini Saibene opened a [pull request for the standardize package](https://github.com/CDEager/standardize/pull/4) that fixes this NOTE, and Ella Kaye, Heather Turner, and Francisco Cardozo worked on other packages for the same _issue_. Luis Verde explained how to resolve the NOTE, because he had already worked on this topic at previous events. The most frequent cases are a missing backslash before a macro (such as `code{...}`), braces used for set notation that need to be escaped, and `\itemize` used where `\describe` should be. Progress is tracked in the [track-lost-braces](https://github.com/r-devel/track-lost-braces) repository.

- Still available are a review of the [weathercan](https://github.com/ropensci/weathercan) vignettes, improvements to the documentation for publishing packages on [R-Universe](https://r-universe.dev), and three minor fixes in [unheadr](https://github.com/luisDVA/unheadr) (a typo in the roxygen documentation, a vignette with a deprecated argument, and an example in the README).

### Translation (10)

- **rOpenSci materials:** there are open pull requests with translations of the Git course into [Spanish](https://github.com/ropensci-training/curriculum/pull/116) and Portuguese. [Francisco Cardozo and Catalina Cañizares took on the Spanish one during the hackathon](https://github.com/ropensci-training/curriculum/pull/136), and it is in progress; the Portuguese ones are awaiting review.

- **R messages:** the issue about translating R messages remains open for anyone who wants to join. In Spanish, everything has already been completed, but there is still work to do in Portuguese.

- **rdlocal:** Elio Campitelli's package for making translation easier had a user testing session with Paola Corrales, Evelia Coss Navarrete, Mauricio Gómez Ardila, and Oscar De Leon. They worked on two vignettes, one for people who translate and another for people who use the package. Issues remain open about overwriting modules and about including authorship in the DESCRIPTION file of the translation modules.

- Other participants, such as Gustavo Bruges and Audrey, reviewed the list of rOpenSci ["Help Wanted" issues](/help-wanted/) and offered their help translating vignettes.

<div class="row">
<div class="col-md-6">

{{< figure src="learning_togethers.jpeg" alt="A mentor and a participant reviewing an assignment together during the event" caption="Learning and working together during the event" >}}

</div>
<div class="col-md-6">

{{< figure src="hybrid.jpeg" alt="Three people are sitting in the room, and one of them is holding a laptop, with two people participating online" caption="The hybrid nature of the event, which allows us to work with people from all over the world." >}}

</div>
</div>

## What we take away

In just two hours, the board showed how varied contributing can be: from alt text or a typo in a README to working together with a package's authors to improve and implement it.

It also showed that translation and documentation are very valuable entry points, that the support of experienced mentors (such as Luis's explanation of "Lost braces") makes it possible for newcomers to contribute right away, and that working in Spanish and Portuguese is a central part of what we do at LatinR.

There are still open _issues_ and _pull requests_, and that is good news: if you're left wanting more, you can keep contributing whenever you like. Check out the board and the rOpenSci Help Wanted list. You can also join the R Contributors Zulip and the LatinR Slack, and subscribe to the rOpenSci newsletter to find out about upcoming events like this one.

At the end of the event, we raffled a Platzi scholarship among the participants, and Audrey was the one who received the prize. Congratulations! 🎉

Sharing a moment with new and familiar people, working on something we enjoy, learning, and helping the people who develop packages are among the most interesting activities you can do at these events.

Thank you to everyone who participated!

{{< figure src="hackear_participants.jpeg" alt="A group of 10 people is sitting on stage, smiling, and the Zoom screen shows four other participants connected online." class="center" caption="Some of the HackeaR participants at LatinR 2026, both in person and online" >}}