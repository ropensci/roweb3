---
slug: "r-package-review"
title: R Package Review Experience
author:
- Alex Koiter
date: 2025-03-25
tags:
- Software Peer Review
- packages
- R
- community
- mbquartR
description: "My experience with rOpenSci peer-review"
social: "A post about the rOpenSci software peer review by @Alex_Koiter@sciencemastodon.com!"
# this field is for the storing the name(s) of the editor(s) of your post
# you can leave it empty until you know who'll review your PR
editor: 
  - Steffi LaZerte
params:
  doi: "10.59350/r0dkq-5jt28"
---

> There's an R package for this... right?

## How it started

My journey in creating my first R package all started when I received an email from a colleague who was working with archived soil samples that were collected prior to the advent of GPS technology.
These samples were georeferenced using the Manitoba Original Survey Legal Descriptions, which originate from the [Dominion Land Survey system](https://en.wikipedia.org/wiki/Dominion_Land_Survey), introduced in the late 19th century to organize the European settlement and colonization of Western Canada.
I was asked by my colleague if there was an R package that could locate these samples so they could be plotted on a map.
There wasn't.
The data was publicly available so I wrote a short script that searched the data set for the legal land description and returned the coordinates.
This morphed into a series of functions, which eventually turned into a package!
And thanks to the encouragement of the rOpenSci community assistant, Steffi LaZerte, I submitted my package for peer review.
That is how [`mbquartR`](https://github.com/ropensci/mbquartR/) was born.

## A little about me

I have always thought of myself as more of a soil/environmental scientist than an R programmer so I was a bit apprehensive to even create an R package let alone have it peer reviewed.
This is was my first R package, and developing it not only tested my R skills, but I was also learning so much along the way.
I also felt the functionality of my package was pretty minimal given all the excellent and extensive R packages already available.
I definitely had a case of the [impost**R** syndrome!](https://en.wikipedia.org/wiki/Impostor_syndrome)

I have had lots of experiences with peer review, all of it through academic journals.
I have been reviewed as author, I have reviewed others work, and as a subject/submission editor for an international journal I have solicited and read many reviews.
All of this has been single-blind review, where the authors do not know the identity of the reviewers, but the reviewers know the identity of the authors.
The review process is also done in a closed manner, where only the authors, reviewers, and journal staff every see the process.
This is relatively common place in my academic world.
Overall, I would say this type of review process, in my experiences, has been fairly respectful ([YMMV](https://dictionary.cambridge.org/dictionary/english/ymmv)).
Although I have definitely seen both reviewers comments and authors responses be somewhat rude, abrupt, and often lacking any pleasantries.
Both as an author and a reviewer I have often wished there was an opportunity and a space to have a discussion, ask for clarification and advice, and to say thank you to authors and reviewers for their work.
There is also the dreaded "desk rejection", where the manuscript never makes it out for peer review because the journal deems the work to be out of scope, lacking scientific rigor, poor fit, and/or lacking novelty.
Never mind the hours spent formatting to meet author guidelines only to get rejected immediately.

## My rOpenSci software peer review experience

I really appreciated the ability to do a [Pre-Submission Enquiry](https://github.com/ropensci/software-review/issues/649).
No more hours of formatting only to get the dreaded desk rejection! or, in this case, changes to the package and its documentation.
This process was very straight forward, create a new [issue](https://github.com/ropensci/software-review/issues) and fill out the pre-submission template.
I got an enthusiastic response within less than 2 weeks letting me know that `mbquartR` was a good fit.
Time to get to work!
Once I felt that I had met all the guidelines as outlined in the [rOpenSci Dev Guide](https://devguide.ropensci.org/) I was ready to submit.
The straight forward instructions made the submission process a breeze.
Open a new [issue](https://github.com/ropensci/software-review/issues/658) and fill in the template.

The assigned editor and the two volunteer reviewers were fantastic!
Despite the package returning errors at multiple steps along the review process I was never made to feel bad for submitting something that wasn't perfect.
At every step and interaction I felt like the reviewers were trying to help me make the package better, not simply telling me to do better.
The reviewers had great suggestions on how to improve the package user experience.
The package now has more informative warnings and errors, and additional functionality was added to the mapping function.
I also really appreciated the reviewers attention to package as a whole, not only did they review the functionality of the package, they also paid attention to all the documentation.
From the README, to articles, to functions, it all got reviewed.

The openness and discussion thread nature of the review process made it possible for me to ask questions and get clarification on revision requests, suggestions, and the review process itself.
This was a pretty big departure from my past experiences with the review process and one I would **love** to see more in the academic journal review process that I often find myself in.
Scientific writing, like all forms of communication, will be interpreted differently by different people and this is where having the ability to have a discussion between the authors and the reviewers can be so beneficial.
I can still see a benefit even if the process remained blind (anonymous).
I suspect this approach would promote a collaborative environment which would result in more robust and reliable science.
I also really appreciate that the work and contributions of the reviewers are clearly visible to everyone and they get the credit they deserve.
I was also able to thank them both as part of review process and within the package [DESCRIPTION](https://docs.ropensci.org/mbquartR/authors.html).
I have written journal articles that have been substantially improved based on reviewer suggestions and ideas and in many cases there is not a great way to acknowledge this contribution or for the reviewer to get credit.
I feel the "Authors would like to thank the two anonymise reviewers for their help in improving this paper" statement doesn't give give them proper recognition or show my gratitude.

## Summary

Submitting my R package for peer review with rOpenSci was a completely different experience from the traditional academic reviews I am used to.
The process was open, collaborative, and constructive.
Instead of the closed, single-blind system I was used to, where reviewers are often anonymous and interactions limited, the rOpenSci review felt more like a conversation.
I could ask questions and get thoughtful and respectful feedback aimed at making the package better.
The reviewers focused on everything from package functionality to documentation and overall user experience.
The reviewers helped me improve the package and, importantly, they received clear recognition and my thanks for their contributions.
It made me realize how valuable open dialogue and credit-sharing can be in peer review something I would love to see more of in academic publishing.
