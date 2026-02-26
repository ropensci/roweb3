---
title: "Software Review in the Era of AI: What We Are Testing at rOpenSci"
author:
- Mark Padgham
- Noam Ross
- Maëlle Salmon
- Yanina Bellini Saibene
- Mauro Lepore
- Emily Riederer
- Jouni Helske
- Francisco Rodriguez-Sanchez
date: "2026-02-26"
slug: "ropensci-ai-policy"
categories: []
tags:
- governance
- Software Peer Review
- community
- maintenance
- rOpenSci team
description: "rOpenSci is testing preliminary policies on the use of generative AI tools, with proposed updates to documentation and procedures for authors submitting software for review, for editors, and for reviewers."
editor:
- Steffi LaZerte
params:
  doi: "10.59350/5tavw-mke71"
---

The advent of large language models (LLMs) and generative AI tools has changed the nature of software development and of software review.
These developments are complex, challenging, and controversial, but require action to maintain and grow rOpenSci's programs and community.
In response, we are starting with a preliminary set of policies to clarify our expectations for use of generative AI tools by authors, reviewers, and editors in software peer-review.
This blog post describes the challenges ahead and initial changes we are making.

## Challenge: Maintaining our core values

Our top challenge is maintaining our core values.

A central value for rOpenSci is fostering a welcoming community, in particular through supporting and encouraging people who might otherwise feel excluded. Generative AI tools can help with that.
Large language models and generative AI tools may make many coding tasks easier and quicker, and can expand the community of people able to contribute to open source software and the OSS community.

Yet there are many downsides to generative AI tools which challenge our core values. pyOpenSci has done an excellent job [exploring these in this blog post](https://www.pyopensci.org/blog/generative-ai-peer-review-policy.html).
They fall into two broad areas.

First, use of AI can in many cases degrade the quality of both open-source scientific code and the process by which we create it.
LLMs can in many cases produce incorrect outputs, fail to generate time or efficiency benefits, or degrade the process of learning to code or the social cohesion of the community.
A core design of our software peer-review is to drive community building through healthy interactions between authors, reviewers, and contributors.
We aim to improve and promote the quality of research software, to facilitate good development practices among researchers, to foster collaboration, and to curate a community of practice.
Any use of AI must be compatible with that goal.

Second, AI has the potential for tremendous broader impacts or externalities: environmental impacts, amplification of bias, infringement of creative and intellectual rights, or even driving increases in [social and economic inequality](https://pluralistic.net/2025/12/05/pop-that-bubble/#u-washington).
We have both collective and individual responsibilities to address these impacts, which include the right to opt out of uses of AI.

## Challenge: Changing the focus of software reviews

Editors and reviewers at rOpenSci are volunteers who devote their own time to help others improve the quality of their software.
Our review system works because they have always been able to assume that all aspects of code submitted for review have reflected decisions made by the human authors of software.
That, in turn, has ensured that the efforts of editors and reviewers are proportional to the primary efforts of software authors.

Generative AI tools potentially change both of these situations.
They enable software to be produced with relatively little human input or oversight, which means editors and reviewers may put more consideration into software design, structure, and function than submitting authors.
We do not want software review to become a service in which our human volunteers validate largely AI-generated software.
That would put at risk the equal and constructive interaction of review, and likely reduce the motivation of editors and reviewers.
We need to ensure that our software review process remains focused on the decisions, designs, and implementations of the submitting authors.

One option is requesting authors to outline the areas that have been AI generated, and specifying the scope of their own work.
However, this could result in our previously holistic process becoming one where only defined aspects or sections of software end up being reviewed.
Authors declaring that a certain tool was used to generate all tests may lead one reviewer to completely ignore those tests, while another reviewer may be passionately engaged in the ways by which exactly that tool writes tests.

In any case, this will require everybody to be as open as possible about what, where, and how generative AI tools may have been used.

## Response: Preliminary policies

Our initial policy updates are not intended to restrict use of generative AI tools, but to encourage the rOpenSci community to approach these tools in ways that encourage, rather than diminish, healthy community interactions.

Similar updates have already been implemented by both the [Journal of Open Source Software](https://blog.joss.theoj.org/2026/01/preparing-joss-for-a-generative-ai-future) and [pyOpenSci](https://www.pyopensci.org/blog/generative-ai-peer-review-policy.html), and we are indebted to the work of all those who contributed to these policy statements.

Importantly, our software review policies and practices have evolved over many years in response to community engagement and feedback.
The introduction of policies addressing generative AI tools is a part of that evolution, and these policies will also evolve further in responses to community engagement, and changing community practices.

### No change in scope

One potential response would be a change in the scope of packages we review.
JOSS has updated their [scope definition](https://joss.theoj.org/about#ai-policy) to, among other things, require a longer record of continuous development, along with other criteria, such as evidence of impact and design.
At rOpenSci, authors often seek feedback on early-stage software.
Our review process commonly involves deep and broad consideration through extensive exchanges between authors, reviewers, and editors.
We are confident that this extends to many of the areas emphasized by JOSS's updated criteria, and we therefore see no need to explicitly change either the scope or focus of review.

### Requiring openness of AI usage

Our policy updates aim to retain the same degree of openness and transparency we have always practiced, while extending to the new area of generative AI tools and practices.
We cannot know the eventual impact that generative AI tools may have on software review processes and practices at rOpenSci, and can ask only for an utmost degree of transparency from all involved.

We now describe specific updates to both our practices and policies for authors, for editors, and for reviewers.
Software review aims to provide authors with feedback on their practices and choices, and not just on the lines of code they or an AI generated.
We also value the time and effort of editors and reviewers, and want them to be able to focus on the practices and choices of authors.


### Practical application: for authors

Authors who do not use generative AI tools will submit as always, with no extra requirements.
Those who do use such tools will be asked to describe their use, and to affirm that all generated material has been carefully reviewed by the authors.
We want these descriptions to help reviewers and editors to understand how they can best review code and provide useful feedback.

We will be modifying our submission template to include this required section, and will be updating the [Guide for Authors](https://devguide.ropensci.org/softwarereview_author.html) with additional guidance.

A minimal example might be a statement that “we’re not very proficient in C, so we used an LLM to generate most of the code for the C algorithm.”
This might guide reviewers to pay particular attention to the tests for that part of the package.
A more extensive description might be that, “We used \<tool-of-choice\> to generate all tests, but have read, edited, and manually stepped through each test ourselves.”
This can help reviewers decide whether to pay more or less attention to the tests depending on their interests.
Either way, knowing that tests were generated by AI tools is useful and important to the review process.

Descriptions may refer to relevant documentation in the repository, such as:

- Design documents which highlight key components and explain their design;
- "agents.md" or equivalent files, along with explanations of how these have been used, along with clear description of the roles of the submitting authors;
- Overviews of developmental histories, for example in "NEWS.md" or equivalent files.

We intend to maintain our requirement for “CONTRIBUTING.md” files, as any generative AI tools can also be directed to treat that as an “agents.md” file.

This is our intended addition to the templates for authors submitting software for review:
```
## Use of Generative AI

- [ ] Generative AI tools were used to produce some of the material in this submission.

If so, please describe: <!-- refer to our AI policies at http:// ... -->
If your repository includes an "agents.md" file or equivalent, please provide a link, and describe how this has been used in the development of your package.
```

An example of such a description can be found in this [recent software review submission](https://github.com/ropensci/software-review/issues/752#issuecomment-3938097125).

### Practical application: for editors

Editors are the first to view software submitted to rOpenSci, and generally complete an initial [Editors checklist](https://devguide.ropensci.org/editortemplate.html) indicating whether they think a package may proceed to review.
This checklist will also include an additional item:

```
- [ ] **Use of generative AI tools**: If the authors have used generative AI tools, have they sufficiently described their usage?
```

This item will also require no additional action by editors unless authors have used generative AI tools.

Initial editorial considerations have until now been largely technical, including many of the aspects now automated by [our `pkgcheck` system](https://docs.ropensci.org/pkgcheck/).
In response to this new checklist item, editors may broaden their consideration to whether a package has had sufficient human contribution to be worth reviewing, alongside considerations of additional factors such as:

- Clear statements of package motivation and importance.
- Package development history.
- Evidence of design decisions motivating the software.

When recruiting reviewers for a package, editors may describe authors’ AI usage where relevant to help them understand the nature of the package and demands of review.

### Practical application: for reviewers

Review processes at rOpenSci frequently involve reviewers recommending potential improvements, and authors then implementing those.
In adapting to use of generative AI tools, we will strive to maintain the same culture of constructive feedback.
We hope that authors will provide sufficient information on any use of generative AI tools to guide reviewers towards aspects of their software requiring particular attention.

Reviewers are permitted to use generative AI tools in preparing reviews for rOpenSci, but their use must meet the same criteria of supporting the goals of review.
Our [Guide for Reviewers](https://devguide.ropensci.org/softwarereview_reviewer.html) will be updated to note the following points:

- Generative AI tools may be used to aid the review process, but all review text must reflect the judgement of the reviewer.
- Typical and acceptable use of generative AI tools in software review includes getting an overview of software design, structure, and function.

Updates to the [Guide for Reviewers](https://devguide.ropensci.org/softwarereview_reviewer.html) will also include examples of productive use of generative AI tools in the review process.
We aim to run pilots over the course of this year to test where in the review process AI can best be used to improve everyone's experience, and to provide more robust guidelines and custom tools.

Reviewers may also consider AI use in choosing whether to volunteer as a reviewer of a package, and authors should be aware that extensive AI use could increase the time to find reviewers.

## Moving forward

This is our first pass at providing guidelines governing the use of generative AI to ensure rOpenSci software review continues to improve while retaining its essential values.

With more package submissions having some component of AI contribution, the editorial board thought it essential to provide these updates to manage the process as we learn more about what works and what does not.

We invite you to further discuss the evolving role of AI in software review in [this issue](https://github.com/ropensci/software-review-meta/issues/107), and more importantly to join us as an author or reviewer in peer review, so we can learn together!
