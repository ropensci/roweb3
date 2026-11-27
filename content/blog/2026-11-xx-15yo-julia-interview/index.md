---
slug: ""
title: ""
author:
  - Yanina Bellini Saibene
interviewee:
    - Athanasia Mo Mowinckel
date: 2026-11-xx
tags:
- community
- Software Peer Review
- packages 
- package development
- maintenance
- anniversary
preface: This post is part of our 15th anniversary celebration series, in which community members share their stories with rOpenSci.
description: " "
params:
  doi: 
---

Julia has been part of the rOpenSci community since the 2016 unconference, where the tidytext package started\! (You can read more about that story in [Julia’s .rprofile interview in 2018](https://ropensci.org/blog/2018/06/08/rprofile-julia-silge/)) and over the years has reviewed, developed, and maintained packages within the rOpenSci ecosystem. For this post, we’re focusing specifically on that side of her story: her role as a package author and maintainer under the rOpenSci umbrella.

1. How many R packages have you developed and maintained over the years, and for which of them would you say rOpenSci played an important role?

I’ve been involved with maybe 20 or so R packages overall, between the ones I’ve worked on for my day job at Posit and the ones I’ve worked on more independently as an open source community person. rOpenSci has played a role in quite a number of them, whether that’s through [publishing via R-universe](https://r-universe.dev/) or resources for developers like the book on [R packages that need HTTP testing](https://books.ropensci.org/http-testing/). However, two packages really stand out for me, in terms of rOpenSci being central to my experience with building and maintaining the software:

* [tidytext](https://juliasilge.github.io/tidytext/) is an R package for text mining using tidy data principles, and I started work on this with my collaborator David Robinson at the [rOpenSci unconference in San Francisco in 2016](https://juliasilge.com/blog/i-went-to-ropensci/). I was such a newbie at that point and hadn’t met anyone IRL from the R open source community before going to that event, but we had a working version of the package by the time we left, and then later we submitted it to CRAN and even [published a book with O’Reilly a year later](https://www.tidytextmining.com/). I don’t think it’s an exaggeration to say that event changed my life, honestly, as I also got my first industry job as a data scientist because of the visibility and connections I made there.

![Julia Silge in 2017 holding up the first copy of Text Mining with R at its publication][image1]

* [qualtRics](https://docs.ropensci.org/qualtRics/) is an R package for working with the Qualtrics API, to download and manage surveys, and this one is officially an rOpenSci package, having gone through the [process of software review](https://github.com/ropensci/software-review/issues/192). I wasn’t the first maintainer of this package, but instead took it over from Jasper Ginn. I actually am not the maintainer of it anymore, either, having now passed it on to Adam Pilipshen\! It’s been an interesting experience to be involved in stewarding this package for a time when I myself used Qualtrics a lot for work, and then bringing that stewardship on my part to an end. I think supporting these kinds of transitions is a uniquely healthy aspect of working with rOpenSci that you don’t see a lot in open source.

2. What’s your process for deciding to create a new package?  Is there something specific that tells you “this needs to exist”?

3. Does the audience or purpose of a package change how you approach maintaining it, or even change the process of maintenance itself: more users versus more niche, or more active development versus something that’s settled down, or volunteer versus organization/industry package?

I have observed some pretty dramatic differences in what it’s like to maintain different packages with different user populations\! The package I work on that has the most users overall is tidytext, and that comes with higher stakes around backwards compatibility as well as API design to start with. I still regret that [the arguments for `unnest_tokens()`](https://juliasilge.github.io/tidytext/reference/unnest_tokens.html) are set up so the output column comes *before* the input column (what were we thinking?\!) but that ship has definitely sailed. I worked for a number of years on the [tidymodels](https://www.tidymodels.org/) system of R packages, and maintaining those involved some complex understanding of how packages can depend on each other as well as how to stay sane maintaining a whole system with a very modular approach to package scope. I also maintain the [pins R package](https://pins.rstudio.com/), which is unique because a majority (although not all\!) of its users are Posit customers who are working on [Posit Connect](https://docs.posit.co/connect/user/pins/). Paying customers have different expectations about responsiveness (rightly so\!) which can feel high stakes, but also can be less heterogeneous with use cases that are more similar to each other, which can make decisions simpler.

![Julia Silge at posit::conf 2026 in Houston][image2]

4. You’ve also reviewed packages for rOpenSci. How has seeing the process from the reviewer’s side shaped how you develop and maintain your own?

I have learned a lot from reviewing packages, both from the logistic and technical side as well as the community and collaboration side. Probably what has had the most impact for me is concretely understanding that we all have very different “shapes” to our knowledge and experience. When I first started working on tidytext, I felt like an outsider who didn’t know what she was doing (and that was largely an accurate feeling, honestly\!) but the process of being involved in more R packages, as a maintainer or user or reviewer, has helped me see that people don’t all know the same things or have the same sets of experiences. When I review a package, I get to experience firsthand someone else’s strengths, which are often very different from my own, as well as how my own strengths and experiences can bring a perspective on what might be good choices for the package.

![Julia Silge at useR 2017 in Brussels][image3]

5. What’s been the hardest part of maintaining packages within rOpenSci’s ecosystem, and what’s been the most rewarding?

6. Across all these different roles, has your sense of what rOpenSci \*is\* — or what it's for — changed over time?

7. What would you tell someone who’s thinking about bringing a package into the rOpenSci software peer-review, taking over maintenance of one, or reviewing for the first time?

As someone who did take over maintenance of an existing rOpenSci package, the main thing I would want to tell someone considering this is that there is a rich set of resources and substantive support from rOpenSci that is there to set you up for success. The culture of openness with a focus on reproducible practices that rOpenSci has cultivated just brings out the best in people\!

8. Any other thing you want to share, and we don’t ask you

