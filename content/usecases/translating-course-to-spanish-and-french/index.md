---
title: "Translating course to Spanish and French"
reporter: "Yann Say"
date: 2025-03-25
resource: "[babelquarto](https://docs.ropensci.org/babelquarto)"
original_url: "https://discuss.ropensci.org/t/translating-course-to-spanish-and-french/4207"
language: [English]
---

#### rOpenSci package or resource used*
[babelquarto](https://docs.ropensci.org/babelquarto/)


#### What did you do? 
Translated course content from English to Spanish and French to support rollout of an analytical framework and tools (created for that framework) in around 20 countries.

Initially, the idea was to have a face to face training with participants. The packages were developed in R, it made sense to use Quarto to create the teaching material. It was combining the reading, code, inputs in the same GitHub folder. That make it easy to share and maintain.

It was then decided to have a training accessible online and as the organisation has a Learning Management System (LMS), I could use that platform to track completion. I decided to take advantage of GitHub, GitHub Actions, GitHub Pages:
- GitHub as central repository
- GitHub actions to render directly into GitHub Pages.
- GitHub pages as "endpoint" for LMS: instead of writing each chapter/module in the LMS, I could just point to the course website.
- LMS: to add some quizz, drop files, follow up learner progressions.

As I was trying to render the course in multiple languages French and Spanish, this is when `babelquarto` came into play. In addition to a smooth transition, it allow a colleague and I to work on the same repository. My colleague was translating the pages to Spanish, and I was reformatting the content to fit into the online format (I had to take head start to avoid merge conflict). With the CI from GitHub Actions, any translation was directly rendered to the website, that was directly shown in the LMS.

The website is also accessible for people who prefer to use it or that are outside of the organisation and cannot access the LMS.

NOTE: we changed LMS during the process and it went almost smooth... For the Quarto part, it was just copying a link, the not smooth part was the differences between the LMS.

#### URL or code snippet for your use case*
[impact-initiatives/R-framework-with-IMPACT---how-to-use-the-tools: Introduction to the R framework website](https://github.com/impact-initiatives/R-framework-with-IMPACT---how-to-use-the-tools/)


#### Image
![image|690x224](upload://dNWp5NZk1YsESnM43PNXz2CK7DE.png)


#### Sector
non-profit

#### Field(s) of application 

humanitarian, data pipeline

#### Mastodon profile link 
Not a Mastodon but bluesky if that work.
@yannsay.bsky.social

