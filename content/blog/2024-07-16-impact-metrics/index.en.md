---
title: "Metrics, Impact and Community Management"
author: 
    - Yanina Bellini Saibene
editor:
- Steffi LaZerte
date: '2024-07-16'
slug: impact-community-management
categories:
  - blog
tags:
  - Champions program
  - Community Manager Tools
  - Community
description: "Our community manager Yani, shares experiences using multi-level metrics and participation models through a community management lens to measure rOpenSci impact."
preface: This blog post is based on the talk [reproducible OpenScience by and for All](/events/czi-2024/) at the CZI Open Science 2024 event. 
---

On June 14 I was invited to present at the [CZI Open Science 2024](https://chanzuckerberg.com/science/programs-resources/open-science/) event. I was asked to participate in "Case Study Session 3: Demonstrating Impact of Open Science" and to explore the challenges of using traditional academic metrics for measuring project impact with an emphasis on alternative approaches.

I was very excited to share our experiences and to learn from others projects. Here I present a summary of this talk.

## Metrics

rOpenSci is a non-profit organization and a community of practice that leads a set of interrelated activities around *capacity building, community development, and research software development practices* to *transform science through open data, software & reproducibility.*

Similar to many other organizations, we have a set of _traditional_ metrics that we use to measure the impact of our work. We use dashboards, we have automatic processes to calculate metrics and we also use software which provide other metrics. We calculate these metrics for individual projects or activities as well as for the organization overall.

For example, our [Software Peer Review](/software-review/) is a transparent, open, non-adversarial R package peer review process with the goal of improving software built to do science. Since we started this program, we have had

* **200+** scientific software packages go through review
* **700** unique contributors to these packages
* **577** reviewers participate in the process
* **17,205,280** downloads of these reviewed packages

While those numbers are very useful, we know that they are not enough to fully measure the impact of our work. **A community is not just about numbers, but about people, because communities are built on connections**.  

## Frameworks to measure impact

We use two frameworks with a community management lens to capture metrics and try to measure our impact. The first one is a _Impact Level framework_ with four levels: the individual level, the host institution/local level, the rOpenSci community level, and the Open Science or Open Source Community in general level. The second framework we use is based on a community of practice participation model. 

### Impact Level Framework

To exemplify this framework, lets talk about the Champions Program where I will introduce you to one of our Champions, [Marcos Miguel Prunello](/author/marcos-prunello/), a professor of statistics at the Universidad Nacional de Rosario in Argentina.

#### Individual level

Being part of the Champions Program, Marcos receives training on package development and community outreach. He has individual mentoring, a cohort of colleagues with whom to share experiences and knowledge during the program, and paid time to develop a project in 12 months. He has also access to a network of experts in R and data science through the rOpenSci community.

> The program allowed people who aren't typically represented to have opportunities.    
> <span style="float:right"> -- <em>Marcos Prunello</em></span>

#### Host institution/local level

As part of his activities in the Champions Program, Marcos organized a [workshop in Spanish on how to develop multilingual R packages](/events/r-en-rosario-champions/
).  He also delivered a talk about rOpenSci and how to participate, sharing his knowledge with his colleagues and students, and the local community.

The workshop and talk were organized jointly with the RenRosario R User Group and the Universidad Nacional de Rosario, who provided the venue for the event. 

> The revival of our R user group in our city was motivating to me. I organized a workshop. After that, we had another meeting, and another one planned.    
<span style="float:right"> -- <em>Marcos Prunello</em></span>

{{< figure src = "individual-local.png" alt = "Three panels: A photo of Marcos Prunello with the RenRosario meetup attendees,  a screenshoot of Marcos's workshop material, and flyer of the workshop and talk about rOpenSci" caption = "<strong>Marcos with the workshop and RenRosario's meetup attendees and material from the event</strong>">}}

#### Community level

Marco's project in the Champions Program was to get his [karel R package](https://mpru.github.io/karel/) in shape and submit it for rOpenSci software peer review. 

The package implements _Karel the robot_ to teach introductory programming concepts in both Spanish and English. Marcos' students speak in Spanish so he want the package in their native language, at the same time he also wants karel to be used by other educators, so for that he provided additional documentation and lessons in English. 

> As the package is multilingual the editorial team considers that it is best to have one reviewer in English and one in Spanish.     
> <span style="float:right"> -- <em>[Mauro Lepore](author/mauro-lepore/), rOpenSci Editor</em></span>

This package become the [**first rOpenSci bilingual software peer-review**](https://github.com/ropensci/software-review/issues/620). This experience helped to improve one of the most important projects at rOpenSci.


#### Open Science Community level

The [multilingual aspect of the package](https://mpru.github.io/karel/) goes beyond the documentation and lessons.  Marcos design an architecture to have function names and messages in different languages, allowing students to learn to program also using their native language.

> This package is pushing the limits of what R can do in term of multilingual functionality.    
> <span style="float:right"> -- <em>[Joel Nitta](author/joel-nitta/), rOpenSci Reviewer</em></span>

The designed solution allows other educators to translate functions and messages, so they can also teach in their native languages, contributing to removing language barriers to coding.  

{{< figure src = "community-global.png" alt = "Screenshots of peer-review process messages suggesting having reviewers in English and Spanish, the karel package documentation webpage, and function examples in English and Spanish" caption = "<strong>karel package peer-review messages, bilingual documentation and bilingual functions</strong>">}}

#### Tools 

The tools we used to measure the impact of the Champions Program at these different levels were:

* **Continuous anonymous surveys:**  after every activity we asked our Champions and mentors to fill out a form with one aspect we need to improve and one aspect that worked very well. 

* **Exit focus group:** in the last cohort meeting we had an activity to reflect on the program as group.  We also had an specific focus group with mentors.

* **Exit individual interview:** we have 30-45 minutes individual interviews with each Champion with a semi-structured set of questions to capture the impact of the program at different levels, things to improve and things that worked well.

* **Exit anonymous survey:** after the program we ask Champions and mentors different questions about the program overall.

* **Follow up with participants:** we plan to contact participants 12 months and 24 months after they have finished the program to ask how the program impacted their work and their career and their involvement in the community.


### Community Participation Model Framework

The second framework we use is the _Community Participation Model Framework_ that is based on [the CSCCE Participation Model](https://www.cscce.org/resources/cpm/). 

This model describes four modes of community member participation:

* **Convey/Consume:** the community *conveys* content for members to *consume* independently of one another.

* **Contribute:** members are empowered to contribute in some way to the community activities.

* **Collaborate:** members of a community collaborate with one another in the community activities, often with the community providing scaffolding for success. 

* **Co-create:** members work together within the community to co-create something that they couldn’t do before and that can involve others communities.

#### Example of the Community Participation Model Framework

To exemplify this framework, let me introduce you to [Joel Nitta](/author/joel-nitta/) from Japan and [Athanasia Mowinckel](/author/athanasia-mo-mowinckel/) from Norway.

In [their own words](/blog/2023/07/20/teaching-targets-with-penguins/):

> Joel was planning to visit Oslo, Norway to teach a workshop. 
>
> He reached out to Mo, *another active member of rOpenSci*, to ask about getting together for a coffee, 
>
> Mo asked if Joel would be up for *teaching another workshop*. 
>
> Mo had *seen* Joel on an *rOpenSci community call about targets*, and really wanted to *take advantage of his experience* to start digging into [*targets*](https://docs.ropensci.org/targets/) (a rOpenSci's package developed by [Will Landau](/author/will-landau/)). 
>
> Joel realized this was the *motivation* he needed to fully *flesh out the workshop materials*, so he happily agreed.     
> <span style="float:right"> -- <em>[Teaching targets with Penguins](/blog/2023/07/20/teaching-targets-with-penguins/), rOpenSci Blog, July 20 2023</em></span>

{{< figure src = "mo-joel.png" alt = "A photo of Mo and Joel during the workshop and a screenshot of the targets community call webpage" caption = "<strong>Mo and Joel during the workshop and the targets community call webpage</strong>">}}

* The [targets community call](/commcalls/jan2023-targets/) event was a _contribute_ mode for Joel and a _consume_ mode for Mo. 

* The creation and delivery of the workshop was a _co-creation_ mode for both of them. Joel and Mo are both Carpentries instructors and they used their lesson development process and [infrastructure](https://carpentries.github.io/workbench/) to create the workshop materials.  The workshop is published with an open licence in [The Carpentries Incubator](https://carpentries-incubator.github.io/targets-workshop/). The Digital Scholarship Center at the University of Oslo, The Carpentries, and rOpenSci all benefit from this work. Also, anyone that wants to learn or teach about targets can use the open materials.
 
* Finally, when Mo and Joel wrote a blog post about this experience and the workshop, they were in a _collaboration_ mode.  Which also created a collaboration mode for rOpenSci and The Carpentries because we cross posted the blog post on both sites.

{{< figure src = "workshop.png" alt = "Screenshot of the blog post about the workshop, screenshot of the workshop material in The Carpentries Incubator, and a photo of Joel teaching" caption = "<strong>Blog post about the workshop, workshop material and Joel teaching</strong>">}}

#### Tools

The tools we use to capture our members stories and the impact on the community via this Community Participation Model are:

* **Annual maintainers surveys**: we ask our maintainers to fill out a survey with to asset how we can support their role and their experience as member of our community. This information is used to look for new maintainers, develop new content, update our developers guide, and organize community calls.  
* **Interviews**: for example the [The Stars of R-Universe](/blog/2023/11/06/r-universe-stars-finale/) series. We interview members of our community to learn about their work, their experience with rOpenSci, and how they use our technical and social infrastructure.
* [**Use cases**](/usecases/): collected in a public forum, users report on how they use rOpenSci reviewed packages and those are shared on our webpage. They serve as examples for other users and as feedback for the package authors.
* **Social network analysis**: we use network analysis to map the connections among our members and the interactions among them. We use this information to improve our programs and activities.

### Social network analysis (SNA)

As the goal of this talk was to explore the challenges of using traditional academic metrics for measuring project impact with an *emphasis on alternative approaches*, I want to share with you some details of [how we use social network analysis to measure the impact of our work](/blog/2024/07/11/collaboration-networks/). We wanted to highlight this particular tool, because although SNA it is well developed, we have not seen many examples of its use in the context of communities of practice in the field of open initiatives with the objective of understanding the community management interventions that are carried out.

In 2022, we mapped the rOpenSci collaboration network across years.  If we filter the network to collaborations on writing blog posts, we can compare the network of 2014 to 2022. We can see that the network has grown in both contributions, collaborators and interaction between the authors. The colors identify clusters (also called communities) of authors that wrote blog post together. For example, in 2022, the green cluster is the rOpenSci software peer-review participants and the pink one are community management related topics, like Code of Conducts updates and rOpenSci members interviews. We can identify important players in the network by their number of contributions and collaborations; for example, we can see that there are more community members contributing blog posts in 2022 than in 2014.

{{< figure src = "network-2014-2022.png" alt = "Network map for 2014 blog post showing 14 nodes and few collaboration among most of them and network map for 2022 blog post with more than 30 nodes and a more dense interaction links with several nodes having more than one collaboration." caption = "<strong>Blog post collaboration network 2014 and 2022</strong>">}}

If we filter the network in a different way to look at collaborations on writing blog posts in Spanish, we can compare how our network looked before 2022, the year we introduced our Multilingual Publishing project, to how it looks now, in 2024. The network has grown, not only in contributors, but also the connections among them. We can see three clear clusters, the Champions Program participants, the interviewees in the Stars of R-Universe series and translations of important posts for the peer-review process. 

{{< figure src = "network-2024-es.png" alt = "The collaboration network before 2022 shows 2 nodes without any interactions.  The collaboration network in 2024 shows 20 nodes with edges between them.  There are 3 clear clusters, Champions Program participants, interviewees from the Stars of R-Universe series and translations of important post for the peer-review process" caption = "<strong>Blog posts in Spanish collaboration network mapping in two different moments in time.</strong>">}}

Creating the multilingual infrastructure on our website and developing tools for translations has positively impacted the amount of content we can have in other languages, not only by multilingual people but also by localizing our existing content. It also has increased the number of new contributors and opens new paths for contributions: writing and translating content. 
Using the SNA tool we can see and understand the impact of our work in the community.

## Suggestions for using metrics

Use and develop metrics

* **Based on your goals:** every metric requires effort to be recorded, analyzed and maintained over time.  It is important to select those that give us information about our objectives. For example, with the Champions Program we mapped the countries of our applicants to see if we were reaching the geographic regions we wanted to reach. In response, we changed our communication strategy in the second call to the program to reach more countries in Africa, Asia and Oceania.

* **Which give you valuable feedback to improve your activities and programs:** metrics should be used to make decisions about programs and content.  For example, using the answers to our maintainers survey we created a series of blog posts calling for different type of [support](/blog/2024/03/01/qualtrics-call-help/) for several packages, such as [answering questions](/blog/2024/02/29/targets-call-help/) and [helping to close issues](/blog/2024/02/27/assertr-call-help/). We also wrote a series of posts with recommendations for [communication](/blog/2024/05/17/communication-tips-oss-project/) and [marketing](/blog/2024/03/07/package-marketing/) for open source projects.

* **Which inform about your impact:** if you can understand how, at what level, and what kind of impact you have, you can look for ways to replicate it or make the necessary changes to get closer to your objectives. For example, from the data and stories we gather, we can say that our Slack and our Community Calls are an important space for rOpenSci people to meet and collaborate. It is not only a place to learn or to improve our knowledge, but also to generate connections that go beyond the activities of rOpenSci. 

## Conclusion

The main recommendation is to use metrics that combine quantitative and qualitative tools to be able to make decisions about your programs and content.  It is important to *record the numbers but also the stories*.  There are many tools which can give us valuable information if we use. Although we will always have an incomplete picture, it can still be a useful guide.  


