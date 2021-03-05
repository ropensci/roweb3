---
slug: "commcall-stats"
title: rOpenSci Statistical Software Testing and Peer Review - Community Call Summary
author:
  - Noam Ross
  - Mark Padgham
  - Anna Krystalli
  - Alex Hayes
  - John Sakaluk
  - Steffi LaZerte
date: 2021-03-09
tags:
  - Software Peer Review
  - packages
  - community
  - statistics
  - community-call
description: "Summary of the Community Call on Statistical Software Testing and Peer Review"
twitterImg: blog/2021/03/09/commcall-stats/speakers.png
twitterAlt: "Headshots of the five speakers"
tweet: "Statistical Software Testing and Peer Review Community Call Summary by @noamross, @bikesrdata, @annakrystalli, @JohnSakaluk, @alexpghayes, & @steffilazerte!"
output: 
  html_document:
    keep_md: true
---

A week ago we held a [Community Call](/commcalls/feb2021-statsreview/) discussing rOpenSci Statistical Software Testing and Peer Review. 
This call included speakers [Noam Ross](/author/noam-ross/) [Mark Padgham](/author/mark-padgham), [Anna Krystalli](/author/anna-krystalli), [Alex Hayes](/author/alex-hayes) and [John Sakaluk](/author/john-sakaluk). 

{{< figure src = "speakers.png" class = "center" width = "600" alt = "Headshots of the moderator and four panelists">}}

We decided to write this additional blog post to provide a ready reference and description of this community call, which introduced the system being developed for peer review of explicitly statistical software, along with a couple of the automated software tools for use by developers and reviewers of statistical software.
After an introduction by Stefanie Butland, Anna Krystali gave an overview of the context and importance of our new tools from an editorial perspective.
Noam Ross then introduced the statistical software review project, members of its advisory board, and the standards-based system which will be used to assess and review statistical software.
Mark Padgham then briefly described the two main tools intended for use by developers and reviewers: the [`autotest` package](https://ropenscilabs.github.io/autotest/) for automated testing of software to ensure robust responses to unexpected inputs throughout development, and the [`srr` (**s**oftware **r**eview **r**oclets) package](https://ropenscilabs.github.io/srr/) for documenting within code itself how and where it complies with both general and category-specific standards for statistical software.

The call then moved on to its main intention of being a "hands-on" demonstration of how these packages can be used in practice, by first passing to [John Sakaluk](https://www.psychology.uwo.ca/people/faculty/profiles/sakaluk.html), who has developed the [`dySEM` package](https://jsakaluk.github.io/dySEM/) for his own use, and would now like to refine and extend the package for more general use, ideally working towards submission to our peer-review system.
John described the usefulness of [`autotest`](https://ropenscilabs.github.io/autotest/) in explicitly revealing aspects of his code which could be improved for more general usage.

> (cool quotes from John once captions are up ...)

[Alex Hayes](https://www.alexpghayes.com/) then described his experiences from initial review of his [`fastadi` package](https://github.com/RoheLab/fastadi), and of the role standards can play in software improvement and assessment, noting in particular the usefulness of standards as contextual "touchpoints" for review.

Here we've organized the video content by speakers and questions, including links to the specific time points in the [video](https://vimeo.com/518761488) as well as to questions and answers in the [collaborative document](https://docs.google.com/document/d/1o933nG1ZW2Qf8p7FdQxn8wOkk9qoBINL1fx3FlIFSJU/) that we include in every community call. 
We hope that by preparing this summary, more people will be able to benefit from this information.


## Summarizing the community call

### Speakers

- **Anna Krystalli - The Editorial Perspective** ([video](https://vimeo.com/518761488#t=4m00s))

- **Noam Ross - Project Introduction** ([video](https://vimeo.com/518761488#t=7m01s))

- **Mark Padgham - Introducing autotest and srr packages** ([video](https://vimeo.com/518761488#t=12m31s))

- **John Sakaluk - Using autotest on a package-in-development** ([video](https://vimeo.com/518761488#t=23m34s))

- **Alex Hayes - Using srr while preparing a package for review** ([video](https://vimeo.com/518761488#t=31m23s))

- **Anna Kyrstalli - Moderates Questions** ([video](https://vimeo.com/518761488#t=38m47s))


### Questions

- (Anna) Suggestion of RStudio addin for srr ([video](https://vimeo.com/518761488#t=38m47s))

- (Anna) Could we get more detail on what autotest looks for? ([video](https://vimeo.com/518761488#t=39m45s) | [document](https://docs.google.com/document/d/1o933nG1ZW2Qf8p7FdQxn8wOkk9qoBINL1fx3FlIFSJU/edit#heading=h.so3v8xc34myn))

- (Steffi) Is autotest applicable to all packages or just statistical packages? ([video](https://vimeo.com/518761488#t=43m11s) | [document](https://docs.google.com/document/d/1o933nG1ZW2Qf8p7FdQxn8wOkk9qoBINL1fx3FlIFSJU/edit#heading=h.4th2qtdafspr))

- (Kieran) What is missing from these package for assessing statistical packages? ([video](https://vimeo.com/518761488#t=44m43s) | [document](https://docs.google.com/document/d/1o933nG1ZW2Qf8p7FdQxn8wOkk9qoBINL1fx3FlIFSJU/edit#heading=h.jk4fef3ixoga))

- (Joss) We are just beginning to re-code some existing packages - so have the advantage of starting with a blank sheet AND a good specification AND well tested code snippets. We're new to this community - what advice would give on both engagement and coding? ([video](https://vimeo.com/518761488#t=49m07s) | [document](https://docs.google.com/document/d/1o933nG1ZW2Qf8p7FdQxn8wOkk9qoBINL1fx3FlIFSJU/edit#heading=h.fvjzqwqcf88u))

- (John) Regarding representation in the program, do we have any sense where groups of folks are over/under-represented within specific areas? ([video](https://vimeo.com/518761488#t=53m27s) | [document](https://docs.google.com/document/d/1o933nG1ZW2Qf8p7FdQxn8wOkk9qoBINL1fx3FlIFSJU/edit#heading=h.xnstfjt1cjg7))

- (Rafael) What is the vision for applying these srr standards to existing (previously published) rOpenSci packages ([video](https://vimeo.com/518761488#t=55m40s) | [document](https://docs.google.com/document/d/1o933nG1ZW2Qf8p7FdQxn8wOkk9qoBINL1fx3FlIFSJU/edit#heading=h.78ydzxagwubi))

- (Charles) Does autotest take into account dependencies and dependency changes? ([document](https://docs.google.com/document/d/1o933nG1ZW2Qf8p7FdQxn8wOkk9qoBINL1fx3FlIFSJU/edit#heading=h.s52f459a2yp1))


## Want to get involved?

Not sure how you might contribute? Contact us (<mark@ropensci.org>) and tell us what you're thinking. 
We are particularly keen to help people from underrepresented groups find ways to get involved. 

- Contact us about submitting packages for peer-review, even if the package is only a concept right now
- Contact us if you would be interested in reviewing statistical software packages
- We're aiming for an official launch in around one month's time
- Use autotest on your own package right now, and give feedback to help improve it
- Hep us to improve our standards by giving any kind of feedback
- Informal comments, questions, suggestions 
    - #stats-peer-review channel on rOpenSci Slack 
    - rOpenSci [Statistical Software Peer Review forum](https://discuss.ropensci.org/c/statistical-software-peer-review/28)

