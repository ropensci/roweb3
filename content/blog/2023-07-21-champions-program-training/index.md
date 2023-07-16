---
title: "Training at the rOpenSci Champions Program Pilot"
author:
  - Yanina Bellini Saibene
  - Camille Santistevan
  - Maya Sanghvi
  - Maëlle Salmon
  - Mauro Lepore
  - Heather Turner
  - Paola Corrales
date: '2023-07-21'
tags:
  - community
  - champions program
  - training
description: ""
---

Our first cohort of the [rOpenSci Champions Program](/champions/) finished the first phase of their training. In this article, we share the curriculum created for the champions, mentors, and applicants and what we learned in this pilot.

## Training for the Champions

We planned a six-week training that covered the following topics:

* how to plan and facilitate engaging and inclusive workshops to support participants’ success,
* knowledge of various channels through which new members can engage in and contribute to rOpenSci and R projects, and
* technical skills in software development and review.

The final curriculum for this pilot consisted of 5 courses:

### Making a PACT for engaging virtual meetings and events

In this 90-minute mini-workshop hosted by the [Center for Scientific Collaboration and Community Engagement](https://www.cscce.org/),
participants explore designing and facilitating engaging and productive virtual meetings and events.

Participants discuss the opportunities and challenges of working together online and outline the “Making a PACT” framework for effective meeting design. In addition to examples of the framework in action, attendees can apply it directly to some example scenarios so that participants feel empowered to use the framework in their own work.
Participants are welcome to review the CSCCE’s free guidebook on Zenodo ahead of the session: [A guide to using virtual events to facilitation community building: Making a PACT for more engaging virtual meetings and events](https://zenodo.org/record/4987666#.Y-1Y4nbMK5c)

All champions must complete this training.

### [Package Development: The Mechanics](https://rpkgdev-mechanics.netlify.app/)

In this two-hour session with a live demo, a rOpenSci trainer demystifies the creation of an R package. R packages are mostly well-organized folders, with automatic tools to help, such as usethis.

This training was developed for the Champion Program and taught by [Maëlle Salmon](/author/maëlle-salmon/).  It is intended for champions planning to develop a package and have not previously developed or contributed to packages.


### [Package Development: Not Rocket Science](https://rpkgdev-rocket.netlify.app/)

This two-hour workshop is for R users who’ve already developed or contributed to packages or have taking the Package Development: The Mechanics workshop. It is intended for champions planning to develop a package or send it to review and want to learn several tips and tricks on package development.
Ideally, participants attend with a package of their own to use as a playground.

This training was developed for the Champion Program and taught by [Maëlle Salmon](/author/maëlle-salmon/).  

### [How rOpenSci Performs Peer Review](https://github.com/maurolepore/ropensci-review)

This one-hour workshop is for people wanting to try the rOpenSci review process. We review the way we communicate, build, and review software with selected examples and resources with some time for Questions and comments. This training is for champions who will send a package to review or become reviewers.

This training was developed for the Champion Program and taught by [Mauro Lepore](/author/mauro-lepore/). 


### [How to contribute to base R](https://ropensci.org/events/2023-05-18-how-to-contribute-base-r/ )

This workshop is a 60-minute walkthrough of how to contribute to base R. The outline includes How to contribute to a bug, confirm a bug, diagnose a bug, and propose a fix to code/documentation.  

The workshop shows tools and strategies to find a bug to work on and what features make it good for first-timer to work on. It has examples and exercises on how to triage bugs.  Then show how to debug code/documentation with collaborative hand on. Next, show how to fix a bug by commenting on Bugzilla and a demo on creating a patch with git workflow. Finally, share pointers to further help and resources.

This training was developed and taught by [Hether Turner](/author/heather-turner/), and is open to all champions and mentors.

## Trainning for the Mentors

### [rOpenSci Champions Program. Mentorship Training and Orientation](https://ropensci-training.github.io/ropensci-mentors/)

Mentors gain mentoring skills during this training and orientation (active listening, effective questioning, and giving feedback). They receive resources for their mentoring roles, such as the Mentors Guidelines, Meeting Templates, and details of the logistics of the champions program.

This training was developed for the Champion Program, taught by [Yanina Bellini Saibene](/author/yanina-bellini-saibene/), and all mentors must complete it. 


In addition mentors are invited to all the training offered to champions as an optional activity.

## Training for non-selected applicants

We also conduct workshops for those not selected to be champions. The aim of this workshops is to provide an opportunity for all applicants to develop skills in open-source software development for supporting career opportunities as well as future applications to this or other similar programs.

### [Developing Software Together](https://paocorrales.github.io/git-developing-software-together/)  

It is a three-hour course on using Git and GitHub to collaboratively develop open-source software with the R language. The workshop presents how to work with Git, using the command line, RStudio, and GitHub. Introduce the concept of version control systems, local and remote repositories, and actions like stage, commit, push, pull, and merge.  Also, show how to collaborate with others through forks and pull requests. The workshop has hands-on and group exercises.

The training was developed by [Paola Corrales](https://ropensci.org/author/pao-corrales/) and taught by Paola and Yanina Bellini Saibene. 


## What do our participants think of the training received?

At the end of each workshop, we asked those who participated to fill out an anonymous survey telling us three things: 

* What did you like the most?

* What did you like the least? 

* Can you rate this meeting? (in a scale from 1-worst to 5-best). 

We use this feedback to improve the next sesion of the training. The result show the average score for all the training is **4.6**. which let us know that the attendees are satisfied with the workshops. 

When we analyze the responses to "What did you like the most?" in detail we found four positive aspects mentioned: _Interaction with other participants_, _Structure_ of the workshop, _Material and Resources_ shared during the workshop, and _Exercises_ performed during training. 

In the following plot is the detail of the number of mention for each aspect and an example comment explaining why it was perceived positively by the participants. The comments highlight various aspects of the trainings, such as enjoyable interactions, valuable tools provided, opportunity for reflection and a good structure base on practice after instruction.

{{< figure src = "feedback_positive.jpg" class = "pull-left" alt = "Ranked quantities of four different positive aspects in a bar plot. The aspect are Material and Resources (15 mentions), Interaction with other participants, (10 mentions), Exercises (8 mentions), and Structure (7 mentions). Each aspect is followed by a comment explaining why it was perceived positively by the participants.">}}

Even when the answers to "What did you like the least?" show that most attendees think there is _Nothing_ they liked the least we identify five areas for improvement: _Level_ of the training, _More time_ for all the content or exercises, _Tools_ used during the workshops,  _Exercises_ during the workshop, _Pace_ of the teaching. In the plot we show the number of mention and each aspect is followed by a comment explaining the specific improvement suggestion or feedback. 

The comments highlight the need for more time to cover content, the desire for better collaboration tools, the request for additional exercises, and the suggestion to offer different levels of the training, for begginers and for competent practictioners. The comments also includes expression of overall satisfaction while mentioning challanges, like time zones. 

{{< figure src = "feedback_toimprove.jpg" class = "pull-right" alt = "Ranked quantities of five areas of improvement in a bar plot. The aspect are Nothing (12 mentions), Level (5 mentions), More time (4 mentions), Tools (4 mentions), Exercises (3 mentions), and Pace (3 mentions). Each aspect have a comment explaining the specific improvement suggestion or feedback.">}}

The survey data provides us with valuable insights into the participants' perspectives on the strengths and areas for enhancement our trainings and allow us to take action to further enhance future iterations of the training.


## Next Step

With a new cohort starting this year we plan to improve our schedulle of each training session allowing participat to choose between two options of date taking into account time zones, and recording the material to allow them to watch after the meeting. We will develop guidelines for increase the accesibility of each session and we will change the order od the workshops. 

With this actions we intend to address some of the dificulties related to time zone, accesibility and participants' commitments in their jobs or studies. 


## Achivements

We developed a new curriculum involving not only rOpenSci staff but also champions and mentors and other communities, contributing to the grow of the connection of our community. 

We also published all the material with open licenses, that allow other organization, like the The Netherlands eScience Center. adapt and reuse our material for trainig mentors for their fellow program.  

Overall, the rOpenSci Champions Program successfully trained participants in essential skills for their role as champions and mentors while fostering engagement and collaboration in open-source research software development. 

