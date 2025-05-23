---
title: "My Experience With Long Term Maintenance Of An R Package"
author: "Vincent van Hees"
date: "2024-08-20"
slug: "my-experience-with-long-term-maintenance-of-an-r-package"
editor:
- Maëlle Salmon
- Yanina Bellini Saibene
tags:
- maintenance
- sustainability
- community
description: "I discuss various strategies for package maintenance, drawing on my experience with the GGIR package, and explore how funding, community involvement, and scope management can help ensure continued success"
params:
  doi: "10.59350/271wf-gsr30"
---

R packages, like any software, require [maintenance](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/). Package maintenance includes:

- Fixing bugs when discovered.
- Adapting to updates in package dependencies.
- Providing some level of user and contributor support.
- When desired, refactoring code or adding new functionality.

Without maintenance efforts a package is at risk of losing its value. Yet, maintaining a package for years or even decades can be challenging as it is time consuming. Therefore, it is important for any package maintainer to adopt a strategy for sustaining the maintenance effort. In this blog post I share my own experience with a variety of strategies that I have explored myself. For readability I have categorized them into:

- Funding: Ways to pay for maintenance time.
- Community: Ways to involve others.
- Scope: Strategic decisions on how to approach the maintenance effort.

Before I start, it may be good to briefly summarize my own package maintenance experience. I created and maintain the [R package GGIR](https://wadpac.github.io/GGIR/) since 2013. GGIR is a processing pipeline for wearable movement sensor data used in sleep and physical activity research. GGIR is designed for researchers with typically limited to no programming skills. As such, GGIR attempts to automate the entire process from raw binary data handling and quality assessment to the generation of research friendly summary reports. The growing demand for enhancements and support for GGIR in 2019 led me to start my own business, [Accelting](https://www.accelting.com/).

## Funding: Ways to pay for maintenance time.

### Research grants

Getting a research grant could result in a substantial amount of resources (people time) for a certain period of time. This option is most realistic if you are an academic. There may not be many funding calls dedicated to research software maintenance, but it may be possible to incorporate some time for package maintenance in a grant proposal if it is a logical step towards achieving your research goals. Applying for research grants is not necessarily something a non-academic package author would do, but they could encourage the academics who use the package to account for package maintenance time in their grant applications. That said, some software grants exists[^1] [^2] [^3] [^4].

[^1]: https://www.r-consortium.org/all-projects/call-for-proposals
[^2]: https://summerofcode.withgoogle.com/
[^3]: https://developers.google.com/season-of-docs
[^4]: https://www.researchsoft.org/funding-opportunities/

**My experience:** So far, several users of my package have successfully applied for research grants to pay for enhancements of the package. I do not apply for grants myself as I think it is more convincing if a package user asks for it.

### Maintenance as a paid service

Package stakeholders are those who benefit from the ongoing maintenance of the package, which include:

i. The package users.
ii. Those who benefit from the work done by package users, e.g. colleagues of the package user or their supervisor.
iii. Yourself, because being the maintainer could look good on your resume.

Maintenance as a paid service has the advantage that you, as package maintainer, make clear to other stakeholders that your time and expertise are not for free. I see three variants on this:

1. As part of your regular job with payments going directly to your employer in exchange for the hours you work on the package. This requires that the work is in line with the mission of the organization you work for, which may limit the scope of the maintenance work you can do.
2. As side job in spare time. Some tips: make sure to not overload yourself with contractual obligations as even three hours of spare time work per week on top of a full time job can already feel like a burden. Also note that not all employment contracts allow for spare time consultancy.
3. Your own (full-time) company around servicing the R package.

**My experience:** For option 1 and 2 I was lucky that my employer at the time (2016-2019) facilitated me doing them. Option 1 was good for me to make some well-defined larger enhancements to the package defined in 3-6 month projects. Whereas, option 2 which I did next was great for doing projects requiring 0-10 day time investments that were too small to be of interest for my employer but perfect for resolving some issues. For the past five years I have been following option 3, which has been good for being available for both small and large projects. My clients are typically from group ii listed above because they either have budget or know how to find it.

### Unpaid spare time efforts

Unpaid spare time efforts can sometimes be an attractive option if you were the creator of the package and none of the other options in this list are feasible or immediately available to you. Doing the work in your spare time has the advantage that you can do it whenever it suits you without time pressure. You may even want to see some of the spare time efforts as an investment in your personal skills. Further, spare time efforts can be an effective solution when the amount of work is relatively low and the expected impact is high. The disadvantage of working on the package in your spare time is that it may give other stakeholders the impression that your time and expertise are for free, which is not the case.

**My experience:** I do this primarily by providing quick user-support. Providing some level of free support feels necessary to generate enough opportunities for the other strategies in this list. For example, sometimes a bit of free support leads to paid support and sometimes a user with questions becomes a contributors. I do not like the idea of asking users to sponsor me via a patron account or similar as I [motivated](https://www.accelting.com/updates/how-to-keep-ggir-alive/) a couple of years ago.

## Community: Ways to involve others.

### Increase user base

Attempt to increase your package's user base and by that increase the number of stakeholders that may be able to help. For example by actively [advertising your package](/blog/2024/03/07/package-marketing/) if you have not done so before or by joining forces with a similar and/or complementary package like facilitating each others data formats.

**My experience:** I have prioritized making the package functional for all types of data used in our research field and the package offers the user many parameters to tailor the functionality to their own needs. Finally, I have created an online [training course](https://www.accelting.com/ggir-training/) to help new users get started.

### Academic student projects

Student projects can help to review, test, and improve a package. However, students expect active coaching and project goals relevant to their degree.

**My experience:** One PhD-student, Jairo Migueles, who used the package in his thesis project (2016-2020) helped fix bugs and enhance the code. Currently there is another PhD-student, Gaia Segantin, who is proof-reading the elaborate almost book-style [narrative documentation](https://wadpac.github.io/GGIR/) that we recently added. Their efforts have been valuable.

### Build developer community

Growing a [community](/commcalls/apr2021-pkg-community/) of code contributors around your package could reduce the work load on individual contributors. However, whether this makes things easier for you really depends on the type of contributors and how good they are. The downside of a larger community is that there is a stronger need for a good central coordination to safeguard quality. Google Season of Code [^2] and Google Season of Docs [^3] are possible avenues.

**My experience:** I have had several contributors who worked on the code or helped respond to user questions. My efforts to grow the community are limited to having some documentation on how to contribute and trying to be welcoming to contributors more generally. I am not sure what else I can do to grow the community. Most of my package users are not R programmers themselves as the package is designed to for a users with very limited R experience, which is good for building a broad user community but not necessarily for building a broad developer community. I did consider Google Season of Code and Google Season of Docs but missed the deadline twice already as the application windows for organisations was not clear to me.

### Outsource the maintenance work

Outsourcing to commercial parties could be an option if you, lack access to software engineers and do not have time yourself, but already have financial resources, and if you have clearly defined package maintenance target(s).

**My experience:** I have outsourced some of the maintenance work items to other freelancers when either I did not have time for it or if I felt that my skills in a certain were insufficient.


## Scope: Strategic decisions on how to approach the maintenance effort.

### Focus on publications

If you are an academic, focusing on academic publications that are about the package or that use the package. Here, the objective is that you focus on the package issues that are relevant to your own research. The strengths of this approach is that it generates evidence for the value of specific aspects of your package or specific use cases.

**My experience:** R package [GGIR](https://wadpac.github.io/GGIR/) started based on my own published PhD thesis work and benefited from additional publications in later years. Over time I learnt that a strong focus on publications makes it harder to also improve my coding skills and have time for the bigger coding challenges. So, I shifted my focus to encouraging academic package users to do the necessary research publications.

### Follow community guides for package development

Following the [rOpenSci package development guide](https://devguide.ropensci.org/) will reduce the effort needed to maintain the package, and will make it easier for outsiders to contribute. Needless to say that community guidelines do not generate time (salary) for people to actually do the maintenance. Therefore, following community guidelines is best combined with other options mentioned in this blog post.

**My experience:** I started my package in 2013 when I did not have peers to coach me. Submitting the package to CRAN helped me to become aware and comply with the community standards at the time. Further, I learned about unit-testing and the concepts of clean code in the job I had between 2015 and 2019, which also helped to boost package quality. I know the package is still not perfect, but I see it as a gradual process where every year I try to make the package a bit more compliant with standards.

### Reduce cost

Try to minimize the amount of package components you develop and maintain yourself by aiming to rely as much as possible on off the shelf solutions developed and maintained by others, either commercially or open-source.

**My experience:** I had a few bad experiences with dependencies being deprecated, by which I have become more careful in adding dependencies. Also, I sometimes find it difficult to find off the shelf solutions for what I need. That said, if I find a well maintained R package that offers a functionality I need in a few lines of code that I cannot write myself easily in base R code then I will consider it as a dependency in line with the guidance by https://r-pkgs.org/dependencies-mindset-background.html.

### Do what nobody expects: Stop maintenance

Your relentless efforts to maintain the package may be the exact reason why other stakeholders do not step in. Announcing to stop the maintenance of the package might trigger stakeholders to help find a solution. Stopping maintenance can come in different flavors:

1.	Full permanent retirement: Not available for any work except for hand-over to a new maintainer.
2.	Partial permanent retirement: Only available for essential maintenance.
3.	Full temporary break: Not available for any work for X months but return afterward.
4.	Partial temporary break: Only available for essential maintenance for X months and return afterward.

Note that this approach may actually be better than being a maintainer in name only without spending time on the package. By clearly communicating the maintenance status to users and potential contributors, you avoid false expectations.

On a side note - If there is another R package with similar functionality as yours then it may actually be worth considering stopping maintenance and deprecating your package as it may help to channel scarce maintenance efforts towards this other package.

**My experience:** At the moment, doing any of these would conflict with my business interests as maintenance requests are a potential source of income for me. However, if I stopped my business then stopping the maintenance (fully, temporarily or partially) could be a strategy.

## Wrapping up

I hope you found this list of sustainability strategies useful, either for your own package or to learn how you can support someone else's package. If you think I have missed an option or disagree with the ones I have mentioned: Please leave your thoughts in the comments!

## Acknowledgements

This blog post is based on a [blog post](https://blog.esciencecenter.nl/10-ways-to-keep-your-successful-scientific-software-alive-61ac81f36a87) I wrote in 2017, but updated with my experiences from the past 7 years and now tailored to the rOpenSci community.
