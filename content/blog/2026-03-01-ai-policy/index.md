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
params:
  doi: ""
---

The advent of large language models (LLMs) and generative AI tools has changed the nature of software development and of software review.
To accommodate these changes, rOpenSci is updating its policies to clarify our expectations for authors, reviewers, and editors using generative AI tools.
Our policy updates are not intended to restrict use of generative AI tools, rather we aim to encourage the rOpenSci community to use these tools in ways that encourage, rather than diminish, healthy community interactions.
The following describes changes we will make to our requirements for authors, for editors, and for reviewers.

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

There are many other downsides beyond those, such as increases in [social and economic inequality](https://pluralistic.net/2025/12/05/pop-that-bubble/#u-washington).
We hope anybody using generative AI tools to prepare software for our peer-review program takes these kinds of downsides into consideration in deciding how, when, and where to use such tools.
Generative AI tools can nevertheless contribute to producing and maintaining quality software.
However, rOpenSci’s software peer review program is designed not only to evaluate software quality, but also to act as an engine of collaboration and community building through healthy interactions between authors, reviewers, and contributors.

## rOpenSci's new policies

Software peer-review at rOpenSci is designed to improve and promote the quality of research software, to facilitate good development practices among researchers, to foster collaboration, and to curate a community of practice.
Human interactions are a vital part of reviewing and maintaining rOpenSci software.
Software review aims to provide authors with feedback on their practices and choices, and not just on the lines of code they or an AI generated. We also value the time and effort of reviewers, and want them to be able to focus on the practices and choices of authors.
Reviewers may use AI tools, but their reviews should still reflect their own choices and judgments.

The increasing ease by which generative AI tools can produce quality software requires us to give more consideration to what authors’ contributions may actually be.
In the words of the [JOSS blog post](https://blog.joss.theoj.org/2026/01/preparing-joss-for-a-generative-ai-future), this demands some degree of moving away from software-based "proxies for effort", to deeper consideration of the contexts in which software has been produced, and will be used.

Software reviews at rOpenSci have always been [constructive and non adversarial](https://ropensci.org/software-review/), and commonly involve extensive exchanges between authors, reviewers, and editors.
Software reviewed at rOpenSci is generally given deep and general consideration, commonly extending to the areas emphasised by JOSS's updated [scope definition](https://joss.theoj.org/about#ai-policy), and we therefore see no need to explicitly change either the scope or focus of review.

### For authors

It is important to us that authors who do not use generative AI tools are able to submit as always, with no extra requirements.
Only those who use such tools will have to check a box in our submission templates, and then describe their use of generative AI tools.
We want these descriptions to help reviewers and editors to understand how they can best review code and provide useful feedback.

Authors may describe their use of generative AI tools in whatever ways they think are best.
A minimal example might be a statement that “we’re not very proficient in C, so we used an LLM to generate most of the code for the C algorithm.”
This might guide reviewers to pay particular attention to the tests for that part of the package.
A more extensive description might be that, “We used \<tool-of-choice\> to generate all tests, but have read, edited, and manually stepped through each test ourselves.”
Reviewers who know that all tests were automatically generated may opt not to review them at all, or may choose to pay special attention to tests.
Either way, knowing that tests were generated by AI tools would be useful and important.

The [Guide for Authors](https://devguide.ropensci.org/softwarereview_author.html) will explain that authors who use generative AI tools also affirm that all generated material has been carefully reviewed, and that authors accept full responsibility for submitted content.
We will encourage authors where possible to clearly record contributions of generative AI tools, for example through commit authorship or comments.

We will also request that authors submitting software which includes “agents.md” files or equivalent provide explicit links to those files, and describe their usage in, and influence on, the development of their software.

We note that these kinds of files effectively aim to be for generative AI tools what rOpenSci’s [required “CONTRIBUTING.md” files](https://devguide.ropensci.org/maintenance_collaboration.html#contributing-guide) have always been for human contributors.
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
