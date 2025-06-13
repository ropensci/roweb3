---
title: "Multilingual Publishing: Frequently Asked Questions"
author: 
- Yanina Bellini Saibene
- Maëlle Salmon
editor: Steffi LaZerte
date: '2025-06-13'
slug: translation-faq
output: hugodown::md_document
tags:
  - multilingual
  - community
params:
  doi: "10.59350/yrdbt-xk458"
---

As we've [said before](/multilingual-publishing), we believe that publishing multilingual resources can lower the barrier to access to knowledge, help democratize access to quality resources and increase the possibilities of contributing to software and open science projects.
Our ongoing efforts at [multilingual publishing](/multilingual-publishing) are crucial work for rOpenSci's [mission](/about).
When discussing this project at [conferences](/talks-papers/) and [elsewhere](/commcalls/nov2023-multilingual/), we start an important conversation with people less familiar with such projects or unfamiliar with our specific [workflows](https://translationguide.ropensci.org/).
In this post, we summarize frequently asked questions, and our best answers to them (even better formulated than in the heat of a post-talk Q&A session :grin:).

## Will translations make people “lazy” in that they won’t learn English?

First of all, it's important to be clear that *not* learning English doesn’t mean people are lazy. 
Many people who do not speak English already speak several languages, and even if they only speak one, working on one’s project with the tools at one’s disposal is already work enough. 

Now, people might still choose to learn English later, for instance to take part in some conversations in English, but it won’t have been an issue for them to have first learnt how to, say, develop software using French.
Do we want people to learn how to use some tools or do we want them to be English speakers? 
In our case, we want people to be able to use and contribute to open-source tools without first having to become English speakers,
because we are aware of the "manifold costs of being a non-native English speaker in science"[^amano].

[^amano]: Amano T, Ramírez-Castañeda V, Berdejo-Espinola V, Borokini I, Chowdhury S, Golivets M, et al. (2023) The manifold costs of being a non-native English speaker in science. PLoS Biol 21(7): e3002184. https://doi.org/10.1371/journal.pbio.3002184

### Related: Is it that hard to read in English?

Yes, it is one of the "manifold costs of being a non-native English speaker in science"[^amano].
Further, there are several studies which have demonstrated the difficulties of learning to code in English-based programming languages when you are not an English speaker, and the benefits of having opportunities to learn in your native language.

Gou[^gou] found that non-native English speakers faced barriers with reading instructional materials, technical communication, reading and writing code, and simultaneously learning English and programming. 
These difficulties are rooted in the need to develop English understanding *at the same time* that they are expected to learn about the specific topic: in our case, how to develop research open source high quality software.

Another study[^tshukudu] suggested that while learning to program in English isn't necessarily difficult for all non-English speakers, including students' native language can make the learning experience clearer, more supportive and more enjoyable. 

If you are interested in learning more about this topic we suggest you follow [Felienne Hermans](https://www.felienne.com), who specializes in programming language design and developed a multilingual programming language for teaching. 

[^gou]: Philip J. Guo. 2018. Non-Native English Speakers Learning Computer Programming: Barriers, Desires, and Design Opportunities. In Proceedings of the 2018 CHI Conference on Human Factors in Computing Systems (CHI '18). Association for Computing Machinery, New York, NY, USA, Paper 396, 1–14. https://doi.org/10.1145/3173574.3173970

[^tshukudu]: Ethel Tshukudu, Emma Dodoo, Felienne Hermans, and Monkgogi Mudongo. 2024. Bilingual Programming: A Study of Student Attitudes and Experiences in the African context. In Proceedings of the 24th Koli Calling International Conference on Computing Education Research (Koli Calling '24). Association for Computing Machinery, New York, NY, USA, Article 42, 1–11. https://doi.org/10.1145/3699538.3699561

### Related: People should learn English

Some people claim that you have to learn English if you want to work in programming and science because English is the lingua franca of these disciplines. 

Unfortunately, even if this were desirable, this is simply not possible for many people, especially for casual or end-user programmers. They might not have the time, energy or money to learn both programming and English at the same time[^swidan].

[^swidan]: Alaaeddin Swidan and Felienne Hermans. 2023. A Framework for the Localization of Programming Languages. In Proceedings of the 2023 ACM SIGPLAN International Symposium on SPLASH-E (SPLASH-E 2023). Association for Computing Machinery, New York, NY, USA, 13–25. https://doi.org/10.1145/3622780.3623645

Let’s do some numbers: [The Common European Framework of Reference for Languages](https://www.languagecert.org/en/guided-learning-hours) has tabulated the guided learning hours typically required to reach each language proficiency level. These are hours spent studying with a teacher or through structured learning. 

For example, if you start as a beginner (A1) and want to become intermediate (B1) you will need approximately **400 guided hours**.  If you can dedicate **5 hours a week**, it will take **1.5 years**  and a minimum budget of **USD $6,000** to learn English. For reference, this would be the equivalent of two years of salary for a person with a minimum wage in Argentina. This also does not take into account the cost of finding the time to study (child minding services, working fewer hours, etc.).

By translating documents and resources we reduce the burden on non-English speakers. The more people involved in open source software and science, the more benefit we all get from bigger pool of experiences and expertise.
Finally, we want everyone to have the same opportunity to enjoy learning!

## Why don't you rely on automatic translations only?

For our [translation workflows](https://translationguide.ropensci.org/intro.html#general-aspects-of-the-stage-1-of-the-translation-process), machine translations are the first step followed by human reviews.
While you can publish automatic translations directly, or use tools for on-the-fly translations, there are drawbacks.
First, it is well documented that machine translation does not work well for less common languages[^swidan].
Even for common languages, automatic translations still have errors, and struggle with meanings related to context, grammar and syntax, as well as gender marks. 
Machine translation also can't localize some content, such as meaningful idioms, or currency and numeric symbols.

If we rely solely on automatic translation, the content in translated languages will be of poorer quality, so it would mean accepting that users in semi-supported languages do not deserve the same quality as others. 
Therefore at rOpenSci, human translators are involved in the process to ensure that all of our content is of good quality regardless of language.

## Why don’t you use `<insert-name-of-translation-patform>` instead of Git and GitHub?

There are many different platforms for translation, which is fantastic!
However, we are a technical community and we are translating and localizing technical content. 
We are already using Git and GitHub in our other development workflows and many of our community members know these tools or are planning to learn them. 
For members who are unfamiliar with Git and GitHub, we have resources and are happy to help them learn, and then they have new tools which they can apply to other technical projects.
Read more about our tooling and processes in our [translation guide](https://translationguide.ropensci.org/intro.html#technical-infrastructure-and-workflows).

## Isn’t translation and the maintenance of translations a lot of work?

Yes it is! 
But we think it’s worth it.
Furthermore, translation work brings new contributors to the community, which a) helps share the load, b) serves as a springboard to other forms of contributions, and c) makes our community more diverse 🎉.

## Conclusion

In this post we answered common questions we receive about our multilingual publishing project.
We are convinced that providing quality multilingual resources is part of fostering more [diversity, equity, inclusion, and accessibility](/blog/2025/02/05/no-science-without-deia/) in open source and open science.
We welcome your participation... and even more questions!
