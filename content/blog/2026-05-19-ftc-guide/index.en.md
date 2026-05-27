---
slug: "ftc-guide"
title: "A New Guide: Organizing Events for First-time Contributors"
author:
  - Steffi LaZerte
  - Yanina Bellini Saibene
# Set the date below to the publication date of your post
date: 2026-07-02
# Minimal tags for a post about a community-contributed package 
# that has passed software peer review are listed below
# Consult the Technical Guidelines for information on choosing tags
tags:
  - packages
  - R
  - community
  - welcome
  - contributions
  - beginner
  - how-to
# The summary below will be used by e.g. Mastodon preview cards
description: "We introduce our Guide book for organizing events to support first-time contributors to FOSS"

editor:
  - Maëlle Salmon
params:
  doi: "10.59350/w9z54-fv077"
---

> Making your first contribution to open source can be both empowering and yet very intimidating.
> 
> -- [rOpenSci FTC Guide](https://ftc-guide.ropensci.org/)

Last year we were grateful to receive funding from NumFOCUS[^3] to organize a series of events designed to reduce barriers restricting First-Time Contributors to Free and Open Source Software (FOSS).
There are many barriers[^1] to first time contributions, but making these contributions can be an empowering experience.
To help reduce some of these barriers we hosted two types of events: **mini-translathons** and **mini-hackathons**.

[^3]: [NumFocus](https://numfocus.org/) is rOpenSci's fiscal sponsor.

A **mini-translathon** is a short, live, coworking session, focused on translation and localization contributions.
Participants review and improve translations of documentation, websites, or other resources.
They also work with guidance from mentors and editors, often collaborating in language-specific groups.
The goal is to make content accessible in multiple languages while helping newcomers learn [translation workflows and tools](/multilingual-publishing/).

<!--- cSpell: language en,pt --->

We paired our mini-translathon with a Portuguese Community Call ([*A comunidade R fala português*](/commcalls/translation-portuguese/)[^2]) which preceded the [mini-translathon](https://latinr.org/en/cronograma/translaton/translaton-en.html) at LatinR 2024.

[^2]: "The R community speaks Portuguese"

{{< figure src = "Translathon-LatinR-3.png" alt = "Screenshot of the Zoom call for the translathon, showing participants and a screenshare of the pull-request translation process." caption = "Demonstrating the PR process during the translathon">}}

Similarly, a **mini-hackathon** is a short (typically ~2-hour), live, online coworking session designed to help people make their first contributions to open-source software.
Participants work on small, well-prepared tasks such as fixing bugs, improving code, or updating documentation.
Maintainers and mentors are available in real time to guide them, answer questions, and support the contribution process.
The focus is on learning by doing in a collaborative and supportive environment.

Again, we paired our mini-hackathons with an English Community Call ([From Novice to Contributor: Making and Supporting First-Time Contributions to FOSS](/commcalls/first-time-contributor/)) which was then followed by the two [mini-hackathons](/events/coworking-2025-02/) to support contributors to coding projects.

{{< figure src = "Yani-JuanCruz-miniHackathon.jpg" alt = "Photo of two participants of the mini-hackathon participating on their computers from the same location." caption = "Yani and Juan Cruz participate in the mini-hackathon together">}}

Part of the grant we received also allowed us to write up our processes and findings as a **guide book** "[From User to Contributor: Organizing Events for First-Time Contributors](https://ftc-guide.ropensci.org/)", which we are excited to share with you!

{{< figure src = "ftc_guide.png" alt = "Screenshot of the introduction to the FTC Guide showing the Table of Contents including 'Preface', 'Pilot', 'Events Overview', 'Community Calls', 'Mini-translathons', 'Mini-hackathons', and 'Appendices'" >}}

In our guide we start by discussing [why supporting first time contributors is important](https://ftc-guide.ropensci.org/).
We describe our [pilot events](https://ftc-guide.ropensci.org/pilot.html), how they went, feedback we received, and ideas for future improvement.
The main chapters of the guide then cover how to run these events in greater detail.
This includes [Timelines](https://ftc-guide.ropensci.org/event-overview.html), [Community Calls](https://ftc-guide.ropensci.org/commcall.html), [Mini-translathons](https://ftc-guide.ropensci.org/translathon.html), and [Mini-hackathons](https://ftc-guide.ropensci.org/hackathon.html), all from the perspective of supporting first time contributors.
In the [Appendices](https://ftc-guide.ropensci.org/resources.html) we include communication examples and templates.

We hope that this guide can be useful to other communities beyond rOpenSci.
If you use this guide to create your own events to support first time contributors, we hope [you'll let us know](/usecases/)!

Thanks to NumFOCUS for the Small Development Grant to support this work.
  
<!--- cSpell: ignore CSCW --->

[^1]: Steinmacher et al. identified 13 social barriers. 
Igor Steinmacher, Tayana Conte, Marco Aurélio Gerosa, and David Redmiles. 2015.
Social Barriers Faced by Newcomers Placing Their First Contribution in Open Source Software Projects. In Proceedings of the 18th ACM Conference on Computer Supported Cooperative Work & Social Computing (CSCW '15). Association for Computing Machinery, New York, NY, USA, 1379–1392. <https://doi.org/10.1145/2675133.2675215↩︎>
