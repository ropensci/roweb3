---
title: Help make waywiser better! User requests wanted
author: 
- Mike Mahoney
- Maëlle Salmon
date: '2024-02-19'
slug: waywiser-call-help
preface: |
  One of the best things about open software is that it can be a community project with contributions from people other than just the maintainer.
  Sometimes those contributions are opportunistic, and sometimes maintainers solicit specific contributions, and that’s the case here!
tags:
  - package development
  - tech notes
---

The package [waywiser](https://docs.ropensci.org/waywiser) maintained by [Mike Mahoney](/author/mike-mahoney) provides ergonomic methods for assessing spatial models. 
Assessing predictive models of spatial data can be challenging, 
both because these models are typically built for extrapolating outside the original region represented by training data and due to potential spatially structured errors, 
with "hot spots" of higher than expected error clustered geographically due to spatial structure in the underlying data. 
The waywiser package tries to make it easier, 
providing methods for assessing models fit to spatial data, 
including approaches for measuring the spatial structure of model errors, assessing model predictions at multiple spatial scales, 
and evaluating where predictions can be made safely. 
Functions in waywiser are designed to be useful on their own, 
and additionally integrate naturally with  the tidymodels framework. 


## Help wanted: what is missing in waywiser?

The ambition for waywiser is for it to become a more expansive set of tools for evaluating models. As a user or potential user, what gaps do you see between waywiser and your dream workflow? What challenges do you have assessing your models, what protocols are out there that don’t have good implementations in R? We want to hear from you!


## How to help?

Please open an issue in waywiser’s GitHub repository: https://github.com/ropensci/waywiser/issues (or comment on an open issue if one of them is relevant to you!)


## Thank you!

Thank you! 
Interested in contributing in other ways to rOpenSci? 
Do not miss our [contributing guide](https://contributing.ropensci.org). 
Also stay tuned for more similar posts about maintainers’ specific call for contributions.
Last but not least, if you maintain an rOpenSci package and would like to put out such a call, get in touch with us.