---
title: "Metrics, Impact and Community Management"
author: 
    - Yanina Bellini Saibene
editor:
- Steffi LaZerte
date: '2024-06-27'
slug: impact-community-management
categories:
  - blog
tags:
  - Champions program
  - Community
description: 

---

On June 14 I was invited to present at the [CZI Open Science 2024](https://chanzuckerberg.com/science/programs-resources/open-science/) event. I was asked to participate on the Case Study Session 3: Demonstrating Impact of Open Science and explore the challenges of using traditional academic metrics for measuring project impact and emphasize alternative approaches.

I was very excited to share our experience and to learn from others projects. In this blog post there is a summary of my talk.

## Metrics

rOpenSci is a non-profit organization and a community of practice that lead a set of interrelated activities around capacity building, community development, and research software development practices to transform science through open data, software & reproducibility.

As many other organizations we have a set of _traditional_ metrics that we use to measure the impact of our work. We use dashboards, we have automatic process to calculate those metrics and we also use software that provide metrics to us. We calculate metrics by project or activity and by the overall organization.

For example, our [Software Peer Review](/software-review/) is a transparent, open, non-adversarial R package peer review process with the goal of improve the software we build to made science. Since it started we have review more than  

* **200+** scientific software packages 
* **577** reviewers
* **700** unique contributors
* **17,205,280** downloads

Even when those numbers are very useful, we know that they are not enough to measure the impact of our work. **A community is not just about numbers, but about people, because communities are built on connections**.  

## Frameworks to measure impact

We use two frameworks with a community management lens to capture metrics and try to measure our impact. The first one is a _four impact level_ framework: individual level, host institution/local level, the community level -in this case rOpenSci, and the Open Science or Open Source Community in general. The second one is base on a community of practice participation model. 

### Impact Level Framework

To exemplify this framework, let me introduce you to [Marcos Miguel Prunello](/author/marcos-prunello/), a professor of statistics at the Universidad Nacional de Rosario in Argentina and one of our Champions.

#### Individual level

Being part of the champions program Marcos recibe training on package development and community outreach. He also has individual mentoring, a cohort of colleagues to share experiences and knowledge during the program and paid time to develop a project in 12 months. He has also access to a network of experts in R and data science through rOpenSci community.

> The program allowed people who aren't typically represented to have opportunities. - Marcos Prunello

#### Host institution/local level

As part of his activities on the Champions Program, Marcos organized a [workshops in Spanish on how to develop R packages and made them multilingual](/events/r-en-rosario-champions/
).  He also delivered a talk about rOpenSci and how to participate, sharing his knowledge with his colleagues and students, and the local community.

The workshop and talk was organized jointly with RenRosario R User Group and the Universidad Nacional de Rosario, that provide the venue for the event. 

> The revival of our R user group in our city was motivating to me. I organized a workshop. After that, we had another meeting, and another one planned. - Marcos Prunello

{{< figure src = "individual-local.png" alt = "Marcos Prunello with the RenRosario meetup attendees. A screenshoot of Marcos's workshop material and flyer of the workshop and talk about rOpenSci" caption = "<strong>Marcos with the workshop and RenRosario's meetup attendees and material from the event</strong>">}}

#### Community level

Marco's project on the champions program was to get his [karel R package](https://mpru.github.io/karel/) in shape and submit it for rOpenSci software peer review. 

The package implements _Karel the robot_ to teach introductory programming concepts. Marcos' students speak in Spanish so he want the package in their native language, at the same time he wants other educators can use karel and for that he provide the documentation and lessons in English. 

> As the package is multilingual the editorial team considers that it is best to have one reviewer in English and one in Spanish. 

This package become the [**first rOpenSci bilingual software peer-review**](https://github.com/ropensci/software-review/issues/620), improving one of the most important process of rOpenSci.


#### Open Science Community level

The [multilingual aspect of the package](https://mpru.github.io/karel/) goes beyond the documentation and lessons.  Marcos design an architecture to have function names and messages in different languages, allowing students to learn to program also using their native language.

> This package is pushing the limits of what R can do in term of multilingual functionality.

The designed solution allows to other educator to translate the function and messages to also teach in their native language contributing to remove language barrier to code.  

{{< figure src = "community-global.png" alt = "Screenshoot of peer-review process messages, package documentation webpage and function examples in English and Spanish" caption = "<strong>karel package peer-review messages, bilingual documentation and bilingual functions</strong>">}}

#### Tools 

The tools we use to measure the impact of the Champions Program are:

* **Continuous anonymous surveys:**  after every activity we ask our champions and mentors to fill a form with one aspect we need to improve and one aspect that works very well. 

* **Exit focus group:** the last cohort meeting we have an activity to reflect on the program as group.  We also have an specific focus group with mentors.

* **Exit individual interview:** an 30-45 minutes individual interview with each champion with a semi structure set of questions to capture the impact of the program in different levels, thing to improve and thing that work well.

* **Exit anonymous survey:** with different questions for mentors and champions. 

* **Follow up with participants:** we plan to contact participants after 12 months and 24 months since they finished the program.


### Community Participation Model Framework

The second framework we use is the _Community Participation Model Framework_ that is based on [the CSCCE Participation Model](https://www.cscce.org/resources/cpm/). 

This model describe four modes of community member participation:

* **Convey/Consume:** the community *convey* content for members to *consume* independently of one another.

* **Contribute:** members are empowered to contribute in some way to the community activities.

* **Collaborate:** members of a community collaborate with one another for the community activities, often with the community providing scaffolding for success. 

* **Co-create:** members work together within the community to co-create something that they couldn’t do before and that can involve others communities.

#### Example of the Community Participation Model Framework

To exemplify this framework, let me introduce you to [Joel Nitta](/author/joel-nitta/) from Japan and [Athanasia Mowinckel](/author/athanasia-mo-mowinckel/) from Norway.

In [their own words](https://ropensci.org/blog/2023/07/20/teaching-targets-with-penguins/):

> Joel was planning to visit Oslo, Norway to teach a workshop. 
>
> He reached out to Mo, *another active member of rOpenSci*, to ask about getting together for a coffee, 
>
> Mo asked if Joel would be up for *teaching another workshop*. 
>
> Mo had *seen* Joel on an *rOpenSci community call about targets*, and really wanted to *take advantage of his experience* to start digging into [*targets*](https://docs.ropensci.org/targets/) (a rOpenSci's package developed by [Will Landau](/author/will-landau/)). 
>
> Joel realized this was the *motivation* he needed to fully *flesh out the workshop materials*, so he happily agreed.

{{< figure src = "mo-joel.png" alt = "Mo and Joel during the workshop and the community call webpage" caption = "<strong>Mo and Joel during the workshop and the community call webpage</strong>">}}

* The [targets community call](/commcalls/jan2023-targets/) event was a _contribute_ mode for Joel and a _consume_ mode for Mo. 

* The creation and delivery of the workshop was a _co-creation_ mode for both of them. Joel and Mo are both Carpentries instructors and they used their lesson development process and [infrastructure](https://carpentries.github.io/workbench/) to create the workshop materials.  The workshop is published with an open licence in [The Carpentries Incubator](https://carpentries-incubator.github.io/targets-workshop/). The Digital Scholarship Center at the University of Oslo, The Carpentries and rOpenSci benefit from this work. Also, anyone that want to learn or teach about targets can use the open materials.
 
* Finally, when Mo and Joel write a blog post about this experience and the workshop, they are in a _collaboration_ mode.  Which also allow a collaboration mode for rOpenSci and The Carpentries because we cross post the blog post in both sites.

{{< figure src = "workshop.png" alt = "Screenshoot of the blog post about the workshop, the workshop material in The Carpentries Incubator and Joel teaching" caption = "<strong>Blog post about the workshop, workshop material and Joel teaching</strong>">}}

#### Tools

The tools we use to capture our memebers stories and the impact of the community are:

* **Annual maintainers surveys**.
* **Interviews**: for example the series [The Stars of R-Universe](https://ropensci.org/blog/2023/11/06/r-universe-stars-finale/)
* [**Use cases**](https://ropensci.org/usecases/): collected in a public forum, users report on how they use rOpenSci reviewed packages and those are shared in our webpage
* **Social network analysis**.

### Social network analysis

We mapped rOpenSci collaboration network in 2022.  If we filter the network of those collaboration on writing blog post, this is how the network looks like in 2014 and this is how it looks in 2022.

{{< figure src = "workshop.png" alt = "" caption = "<strong>Blog post collaboration network 2014 and 2022</strong>">}}

If we filter even more and we look at the collaboration on writing blog post in Spanish, this is how our network looks like before 2022, that year we introduce our Multilingual Publishing project, and this is how it looks in 2024.

{{< figure src = "network-2024-es.png" alt = "The collaboration network before 2022 shows 2 nodes withour interation.  The collaboration network in 2024 shows 20 nodes with edges between them.  There are 3 clear clusters, champions program participants, the stars of r-universe series and translations of important post for the peer-review process" caption = "<strong>Blog post in spanish collaboration network mapping in two different moments in time.</strong>">}}

## Suggestion to think about metrics

* Use metrics based on your goals.
* That give us valuable feedback to improve our activities and programs.
* That inform about your impact.
* Use a mix of quantitative and qualitative metrics.

**Register the numbers and the stories** to guide your decisions to reach your goals.


