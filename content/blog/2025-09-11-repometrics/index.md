---
title: Help Us Design a New Git(Hub) Organizational Dashboard
author: 
- Mark Padgham
date: '2025-09-11'
slug: repometrics-call-help
preface: |
  We at rOpenSci are developing an organizational dashboard to provide an overview of all rOpenSci code contributors and their repositories.
  We are seeking feedback and suggestions on an initial [prototype dashboard](https://ropensci-review-tools.github.io/repometrics-demo/).
tags:
  - package development
  - tech notes
params:
  doi: "10.59350/fa54c-v4n44"
editor: 
- Maëlle Salmon
- Yanina Bellini Saibene
---

We have developed a prototype dashboard which aims to help organizations maintain complex systems of inter-dependent software components.
Our initial [prototype organizational dashboard](https://ropensci-review-tools.github.io/repometrics-demo/) provides insights into code contributors, their repositories, and maintenance status and needs.
The prototype dashboard shows data for the three related GitHub organizations, [reconhub](https://github.com/reconhub), [epiverse](https://github.com/epiverse), and [epiverse-trace](https://github.com/epiverse-trace), all of which develop and host open-source software for understanding and analysing epidemics.
We aim to develop the current prototype as a template for adoption and adaptation by other open-source organizations.

{{< figure src = "repometrics-index.png" alt = "Main prototype dashboard page. There are four cards, the top left one shows the total number of packages and below that it lists the organizations ordered from largest to smallest by the number of packages they have. The top right card shows the number of package that needs urgent maintenance. It lists those packages with a link. The bottom left card shows total numbers of commits for all repositories, including a graphical representation. The bottom right car show total activity on GitHub, also including a graphical representation." class = "pull-left" caption = "Organizational overview sections from main prototype dashboard page.">}}

{{< figure src = "repometrics-pkg-network.png" alt = "Network connections between packages." class = "pull-left" caption = "Interactive network diagram connecting packages in the organization.">}}

The primary aim of the dashboard is to help all people involved with, or interested in, either those epidemic-related organizations or rOpenSci, through providing an organization-wide overview of the state of code repositories and the community activity which sustains them.

## Help design and develop our dashboard!

We are seeking help in the further design and development of our [prototype organizational dashboard](https://ropensci-review-tools.github.io/repometrics-demo/), both for the organizations featured there, and more generally for a planned rOpenSci-wide dashboard.
You can help us by providing suggestions for any ways you think the [prototype organizational dashboard](https://ropensci-review-tools.github.io/repometrics-demo/) could be improved.
If you're a contributor to, or maintainer of, an R package, we'd particularly like to hear about any ways the dashboard could be made more useful for you.
Please make comments either in this blog post, or via or discussions in the [associated GitHub repository](https://github.com/ropensci-review-tools/orgmetrics/discussions).
Want to give private feedback?
No worries, email me [directly](mailto:mark@ropensci.org).

### A few notes

1. The dashboard is built on a huge wealth of data, so presume any data you can think of from full git logs and GitHub APIs are already there and could be used.
2. Those data include time series of most things measured, even though many are only presented as snapshots of the latest time period.
3. Given those 2 points, the biggest challenge is reducing these data to some minimally meaningful amount.

## Thank you!

Thank you! 
Interested in contributing in other ways to rOpenSci? 
Please have a look at our [contributing guide](https://contributing.ropensci.org). 
