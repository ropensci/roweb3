---
title: Help make qualtRics better! Code contributions wanted
author: 
- Julia Silge
- Joseph O'Brien
- Maëlle Salmon
date: '2024-03-01'
slug: qualtrics-call-help
preface: |
  One of the best things about open software is that it can be a community project with contributions from people other than just the maintainer.
  Sometimes those contributions are opportunistic, and sometimes maintainers solicit specific contributions, and that’s the case here!
tags:
  - package development
  - tech notes
---


The package [qualtRics](https://docs.ropensci.org/qualtRics) maintained by [Julia Silge](/author/julia-silge) together with [Joseph O’Brien](/author/joseph-obrien) provides functions to access survey results directly into R using the Qualtrics API. [Qualtrics](https://www.qualtrics.com/about/) is an online survey and data collection software platform. 



## Help test or improve qualtRics!

Are you a heavy user of the Qualtrics survey tooling in general, and of the qualtRics R package in particular? Then you can help build and test the package.

## How to help?

There are a few specific needs that the qualtRics package has today.

- Are you interested in [R package testing](https://github.com/ropensci/qualtRics/issues/294)? Right now, tests in the qualtRics package mock the API calls, but it is difficult for any given maintainer or contributor to regenerate the test fixtures. Instead, we want to move to using the "mock servers" that Qualtrics provides. This would be a great fit for any Qualtrics user who wants to learn more about package testing and API calls.
- Do you use [Qualtrics mailing lists](https://github.com/ropensci/qualtRics/issues/271)? We need help maintaining and fixing code around this Qualtrics feature.
- Are you interesting in [authentication and credentials](https://github.com/ropensci/qualtRics/issues/334)? We need help with an overhaul of how the R package authenticates to Qualtrics. This would be a great fit for any Qualtrics user who wants to learn more about system credential stores and/or OAuth.

If you have something else in mind, please open an issue in the [qualtRics Github repository](https://github.com/ropensci/qualtRics/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc), or comment on a relevant open issue. 

## Thank you!

Thank you! 
Interested in contributing in other ways to rOpenSci? 
Do not miss our [contributing guide](https://contributing.ropensci.org). 
Also stay tuned for more similar posts about maintainers’ specific call for contributions.
Last but not least, if you maintain an rOpenSci package and would like to put out such a call, get in touch with us.