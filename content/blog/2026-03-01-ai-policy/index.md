---
title: rOpenSci's updated policies on AI usage
author:
- Mark Padgham
date: "2026-03-01"
slug: "ropensci-ai-policy"
categories: []
tags:
- governance
- Software Peer Review
- community
- maintenance
- rOpenSci team
description: "rOpenSci's policy on the use of generative AI tools, with proposed updates to documentation and procedures for authors submitting software for review, for editors, and for reviewers."
editor:
- Mauro Lepore
params:
  doi: ""
---

The advent of large language models (LLMs) and generative AI tools has changed the nature of software development and of software review.
To accommodate these changes, rOpenSci is updating its policies to clarify our expectations for use of generative AI tools by authors, reviewers, and editors.
Our policy updates are not intended to restrict use of generative AI tools, rather we aim to encourage the rOpenSci community to use these tools in ways that encourage, rather than diminish, healthy community interactions.
This blog post describes changes we will make to our requirements for authors, for editors, and for reviewers.

Similar updates have already been implemented by both the [Journal of Open Source Software](https://blog.joss.theoj.org/2026/01/preparing-joss-for-a-generative-ai-future) and [pyOpenSci](https://www.pyopensci.org/blog/generative-ai-peer-review-policy.html), and we are indebted to the work of all those who contributed to these policy statements.

Large language models and generative AI tools make many coding tasks easier and quicker, and can expand the community of people able to contribute to open source software.
rOpenSci has always prided itself on fostering a welcoming community, in particular through supporting and encouraging people who might otherwise feel excluded, and generative AI tools can help with that.

There are nevertheless many downsides to generative AI tools, as explored in the [pyOpenSci blog post](https://www.pyopensci.org/blog/generative-ai-peer-review-policy.html) which emphasises the potential for:

- Incorrect outputs
- Misleading time benefits
- Environmental impacts
- Impacts on learning
- Amplification of bias
- Infringement of copyright

Important downsides beyond those are increases in [social and economic inequality](https://pluralistic.net/2025/12/05/pop-that-bubble/#u-washington).
We hope anybody using generative AI tools to prepare software for our peer-review program will consider these kinds of downsides in deciding how, when, and where to use such tools.

Regardless of the influences generative AI tools may have on the processes by which software is produced or evaluated, we hope that rOpenSci can continue to act as an engine of collaboration and community building through healthy interactions between authors, reviewers, and contributors.

## rOpenSci's new policies

### Our scope remains unchanged

Software reviews at rOpenSci are [constructive and non-adversarial](https://ropensci.org/software-review/), and commonly involve extensive exchanges between authors, reviewers, and editors.
We aim to improve and promote the quality of research software, to facilitate good development practices among researchers, to foster collaboration, and to curate a community of practice.
Software reviewed at rOpenSci is generally given deep and general consideration, commonly extending to the areas emphasised by JOSS's updated [scope definition](https://joss.theoj.org/about#ai-policy), and we therefore see no need to explicitly change either the scope or focus of review.

Software review aims to provide authors with feedback on their practices and choices, and not just on the lines of code they or an AI generated.
We also value the time and effort of editors and reviewers, and want them to be able to focus on the practices and choices of authors.

### AI tools may change the focus of software reviews

Editors and reviewers at rOpenSci are volunteers who devote their own time to help others improve the quality of their software.
Our review system works because they have always been able to assume that all aspects of code submitted for review have reflected decisions made by the human authors of software.
That in turn has ensured that the efforts of editors and reviewers have been relatively minor in comparison to the primary efforts of software authors.
Generative AI tools potentially change both of these situations, through enabling software to be produced with relatively little human input or oversight, and through potentially leading to editors and reviewers putting more consideration into software design, structure, and function than what submitting authors may have done.

We do not want software review to become a service in which our human volunteers validate largely AI-generated software.
We need to ensure that our software review process remains focussed on the decisions, designs, and implementations of the submitting authors.
This will require everybody to be as open as possible about what, where, and how generative AI tools may have been used.
Authors declaring that a certain tool was used to generate all tests may lead one reviewer to completely ignore those tests, while another reviewer may be passionately engaged in the ways by which exactly that tool writes tests.
There is no clear policy we can develop around what either authors or reviewers can or should do.

### AI tools require openness

Our policy updates aim to retain the same degree of openness and transparency we have always practiced, merely extending to the new area of generative AI tools and practices.
Such openness may require authors to highlights aspects of their software which they would encourage or desire reviewers to focus on.
This could also fundamentally change the nature of review from a previously holistic process into one where only defined aspects or sections of software end up being reviewed, and those potentially at the discretion of the submitting authors.
We can not know the eventual impact that generative AI tools may have on software review processes and practices at rOpenSci, and can ask only for an utmost degree of transparency from all involved.

Perhaps most importantly, our software review policies and practices have evolved over many years in response to community engagement and feedback.
The introduction of policies addressing generative AI tools is a part of that evolution, and these policites will also evolve further in responses to community engagement, and changing community practices.

We now describe specific updates to both our practices and policies for authors, for editors, and for reviewers.


### For authors

It is important to us that authors who do not use generative AI tools are able to submit as always, with no extra requirements.
Only those who use such tools will have to check a box in our submission templates, and then describe their use of generative AI tools.
We want these descriptions to help reviewers and editors to understand how they can best review code and provide useful feedback.

A minimal example might be a statement that “we’re not very proficient in C, so we used an LLM to generate most of the code for the C algorithm.”
This might guide reviewers to pay particular attention to the tests for that part of the package.
A more extensive description might be that, “We used \<tool-of-choice\> to generate all tests, but have read, edited, and manually stepped through each test ourselves.”
Reviewers who know that all tests were automatically generated may opt not to review them at all, or may choose to pay special attention to tests.
Either way, knowing that tests were generated by AI tools would be useful and important.


The descriptions given in submission templates may of course link to external documents.
These should be contained within the submitted repository, and might include things such as:

- Design documents which highlight key components and explain their design;
- "agents.md" or equivalent files, along with explanations of how these have been used, along with clear description of the roles of the submitting authors;
- Overviews of developmental histories, for example in "NEWS.md" or equivalent files.

Where any such documents exist, we will expect explicit links to be provided in the initial submission template.

The [Guide for Authors](https://devguide.ropensci.org/softwarereview_author.html) will explain that authors who use generative AI tools also affirm that all generated material has been carefully reviewed, and that authors accept full responsibility for submitted content.
We will encourage authors where possible to clearly record contributions of generative AI tools, for example through commit authorship or comments.

We intend to maintain our requirement for “CONTRIBUTING.md” files, as any generative AI tools can also be directed to treat that as an “agents.md” file.

This is our intended addition to the templates for authors submitting software for review:

```
## Use of Generative AI

- [ ] Generative AI tools were used to produce some of the material in this submission.

If so, please describe: <!-- refer to our AI policies at http:// ... -->
If your repository includes an "agents.md" file or equivalent, please provide a link, and describe how this has been used in the development of your package.
```

### For editors

Editors are the first to view software submitted to rOpenSci, and generally complete an initial [Editors checklist](https://devguide.ropensci.org/editortemplate.html) indicating whether they think a package may proceed to review.
This checklist will also include an additional item:

```
- [ ] **Use of generative AI tools**: If the authors have used generatic AI tools, have they sufficiently described their usage?
```

This item will also require no additional action by editors unless authors have used generative AI tools.

More generally, initial editorial considerations have until now been largely technical, including many of the aspects now automated by [our `pkgcheck` system](https://docs.ropensci.org/pkgcheck/).
In response to this new checklist item, editors may broaden their consideration to whether a package has had sufficient human contribution to be worth reviewing, alongside considerations of additional factors such as:

- Clear statements of package motivation and importance.
- Package development history.
- Evidence of design decisions motivating the software.

When recruiting reviewers for a package, editors may describe authors’ AI usage where relevant, and will also communicate any requests by authors for reviewers not to use AI tools.

### Requirements and advice for reviewers

Review processes at rOpenSci frequently involve reviewers recommending potential improvements, and authors then implementing those.
In adapting to use of generative AI tools, we will strive to maintain the same culture of constructive feedback.
Reviewers need to be confident that any suggestions they might have reflect design decisions made by the submitting authors.
We hope that authors will provide sufficient information on use of generative AI tools to guide reviewers towards aspects of their software requiring particular attention.

As for submitting authors, reviewers are permitted to use generative AI tools in preparing reviews for rOpenSci.
Our [Guide for Reviewers](https://devguide.ropensci.org/softwarereview_reviewer.html) will be updated to note the following points:

- Generative AI tools may be used to aid the review process, but all review text must reflect the judgement of the reviewer.
- Typical and acceptable use of generative AI tools in software review include getting an overview of software design, structure, and function.

Updates to the [Guide for Reviewers](https://devguide.ropensci.org/softwarereview_reviewer.html) will also include examples of productive use of generative AI tools in the review process, such as,

- Consistency of function names (for example, use of "verb_noun"-forms throughout)

Reviewers may also consider AI use in choosing whether to volunteer as a reviewer of a package.
