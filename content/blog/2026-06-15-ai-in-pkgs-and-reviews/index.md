---
title: "Generative AI tools in rOpenSci packages and reviews"
description: This follows on from our recent, initial blog post on ways we intend to adapt to the use of generative AI tools in both software development and peer-review processes. We demonstrate here how we think generative AI tools can be used in software development in ways that best assist our processes of software review. We also demonstrate how these tools may help editors and reviewers.
date: 2026-06-16
tags:
  - ai
  - governance
  - Software Peer Review
  - package development
  - community
  - best pratice
---

# Generative AI tools in rOpenSci packages and reviews

In a [recent bllog post](/blog/2026-02-26-ai-policy/), we described some of our evolving ideas for how we plan on accommodating generative AI tools within both software submitted to rOpenSci, and our software review processes in general.
This follow-on post demonstrates some ways that we think generative AI tools could be used in ways that best assist our processes of software review.
In a subsequent section, we also demonstrate how these tools may help editors and reviewers.

All tools demonstrated here are exploratory only, are unlikely ever to be _required_ at any stage of peer-review.
They are described here only in the hope that they may help those people who wish to use generative AI tools in preparing or reviewing software for rOpenSci do so in maximally beneficial ways.

As stated in the [initial bllog post](/blog/2026-02-26-ai-policy/), we aim _not_ to ask any humans to review machine-generated code.
The only black-and-white distinction is likely to remain the right of both authors and reviews to resolutely eschew any use of generative AI tools, and we will always respect and welcome such decisions. 
But any use of such tools largely prevents any simple distinctions or categorizations.
How much is enough?
How much is too much?
We don't expect these kinds of questions to be answerable in any meaningful way, and will seek instead to provide the best guidance that we can for how such tools can be productively used in ways that best retain our culture of openness and transparency, and that best retain the publicly identifiable value of "our" software.

## Generative AI tools for software developers

All of our software submission templates now require submitting authors to disclose whether any generative AI tools were used in the software being submitted.
Authors using any such tools are requested to,
> please describe usage, and include links to any relevant aspects of your repository.

This requirement is intentionally vague and non-specific, in the hope that this will allow us to collaboratively evolve towards broadly sensible and beneficial policies.
There is nevertheless much that can already be done to ensure that usage of such tools makes software peer-review as easy and open as possible.
What can be done reduces to the one recommendation to please:

- _Use generative AI tools in ways that produce systematic artefacts detailing the decision processes behind the form and function of your software_.

The rest of this section details ways of doing that.
But before we jump into that ...

### A very brief history of software development

That single recommendation represents a peculiar curve in the trajectory of software development.
The last 50 or more years have produced many models and practices of software development processes, including those variously referred to as "plan-driven", "model-driven", or "specification-" or "spec-driven" development.
All of those involve beginning with sketches of high-level plans, models, or specifications of what is to be built.
According to all such models, jumping straight in and coding is not good.
Drawing some kind of concept map is good, even if it ultimately bears no relationship to what ends up being produced.
The primary backlash against all such approaches emerged in [the agile manifesto](https://agilemanifesto.org/history.html), versions of which indelibly changed software development practices, and ultimately out-competed all other methods which began with plans, models, specs, or anything but the software itself.

It's important to keep that history in mind, because generative AI tools can now execute much of the work formally freed up through adopting agile methods.
Automated development now supersedes agile development, and frees the humans involved to focus on other aspects.
And those other aspects are of course the inputs and outputs of the development process.
The output phase is software review which we'll describe in the following section.
The input phase returns by necessity to some kind of plan, model, or spec.
And so history repeats itself, and we're back once again at spec-driven development.

### spec-driven development for generative AI

Generative AI tools are often "just used" without any particular system.
They enable software to be developed or modified through entering iterative series of verbal commands.
A developer may make many decisions based on their own visions, desires, and experiences, likely including their desires to direct the outputs of generative AI tools in particular ways.
And yet these development decisions are generally lost at the end of each coding session, leaving a static piece of software devoid of any of the decision history which ultimately gave it form.

AI-era spec-driven development aims to record histories of decision-making processes alongside the software itself.
One of the most prominent tools is GitHub's own [spec-kit](https://github.github.com/spec-kit/).
This, and almost all similar systems, work by breaking development into concrete phases, and recording the steps of each phase within the software itself.
The phases of [spec-kit](https://github.github.com/spec-kit/) are _Spec_ &rarr; _Plan_ &rarr; _Tasks_ &rarr; _Implement_.
_Spec_ is the initial description of the kind that might be entered in an iterative AI-coding session without structured tools.
That is systematically refined and converted into a high-level _Plan_, which is then broken down into specific _Tasks_.
Only once you agree with all _Tasks_ do you then tell a generative AI tool to _Implement_.

Each phase then produces four markdown-formatted text documents.
Phases are structured within a local `specs/` folder, with each phase prefixed with an incremental numbering system.
This `specs/` folder is intended to be committed as part of the repository itself, and records all design inputs and outpus as development proceeds through any number of distinct "spec" phases.

Through being included with the repository, the outputs of [spec-kit](https://github.github.com/spec-kit/) and similar systems produce systematic artefacts which record the dynamic processes of code development.
In an era in which static code may be largely or even entirely produced by generative AI tools, these records of dynamic processes then provide the most direct insight into the actual human input that generated that code.

But there are two main problems with general tools like [spec-kit](https://github.github.com/spec-kit/):

1. Their general applicability makes them less efficient than more specific tools, and this in turn means they generally require uploading and downloading very large numbers of tokens from model providers. Use of such tools can thus quickly get expensive, rate-limited, or both.
2. The artefacts produced are also general by nature, and not necessarily ideal for software review at rOpenSci or similar places like [pyOpenSci](https://pyopensci.org) or [JOSS](https://joss.theoj.org).

### spec-driven development for software review

Directly inspired by [spec-kit](https://github.github.com/spec-kit/), we have developed a prototype tool that generates histories of design decisions in ways that best facilitate software review.
Our [designlens tool](https://github.com/ropensci-review-tools/designlens) is mostly a collection of bash scripts that has a one-line installation procedure, and can be uninstalled just as easily.

Once installed, you can run `designlens init` in the root directory of any project (as a shell and not an R command).
This will produce a series of files which will be staged and so visible when you run `git status`.
Most of these files are markdown-format text files intended to be instructions for generative AI tools, with tool-specific setup currently implemented for [opencode](https://opencode.ai) and [Claude](https://claude.ai).

These markdown files are placed within a `.opencode/command` or `.claude/commands` sub-directory, and can be edited any way you like.
The most important of these is [`designlens.retrospective.md`](https://github.com/ropensci-review-tools/designlens/blob/main/commands/designlens.retrospective.md).
This is run at the end of each design phase, and generates a "design-decisions.md" document that summarises all key design decisions of that phase.
The use of [designlens](https://github.com/ropensci-review-tools/designlens) throughout the development of software submitted for peer-review will thus include a full history of all major design decisions behind that software.
This history will in turn help focus a review on the human decisions behind the software, and can alleviate the problem of requesting reviewers to evaluate machine-generated code.

#### Using designlens at later stages

Most spec-driven development tools will only start recording systematic artefacts from the point in design history when they are first used.
Because the point of [designlens](https://github.com/ropensci-review-tools/designlens) is to provide a full history of design decisions, it includes additional functionality that enables it to be applied to existing repositories to generate a history of design decisions up the point at which `designlens init` is first run.
Just running `/designlens.status` should then generate an initial overview of design decisions up to that point, or explicitly running `/designlens.retrospective` will do the same.
This history is generated through several systematic trawls of a project's Git history (see [the `init` file for details](https://github.com/ropensci-review-tools/designlens/blob/206113cbd2fb0b3147cb4ca7e037b4218b61af7f/lib/init.sh#L134-L249)).

### General recommendations for using generative AI tools in software submitted to rOpenSci

The [designlens toolkit](https://github.com/ropensci-review-tools/designlens) has been developed as a prototype demonstration of the kind of tools that can be used to record dynamic design decisions that have influenced the form of software submitted for peer review
Nobody will ever be required to use tools like this.
But as stated in our [_Software Review Dev Guide_](https://devguide.ropensci.org), we will strive for a general rule-of-thumb that the more that generative AI tools are used, the more we will expect any usage to be thoroughly and systematically documented.
[designlens](https://github.com/ropensci-review-tools/designlens) provides a convenient way to automate that process.

---

## Generative AI tools for software review

Reviewers of packages submitted for software review should always ask for approval of submitting authors prior to using any generative AI tools to inform their review.
As stated in the reviewer template, generative AI tools may be used to guide reviews only, and never to make any actual decisions.

An initial summary of design decisions as recorded in a repository's Git history can be generated by installing [designlens](https://github.com/ropensci-review-tools/designlens) and then:

1. Cloning a repository
2. Running `designlens init`
3. Running `/designlens.retrospective` to generate a summary in `specs/000-design-history/design-history.md`

This summary can provide an insightful starting point into understand a package's evolution, and the major decisions that led to its submitted form.
Whether or not submitting authors may have used [designlens](https://github.com/ropensci-review-tools/designlens) or similar systems, we recommend making your use of any such tools entirely transparent by forking the repository you are reviewing, and then committing and uploading any additional artefacts generated during these processes.
[designlens](https://github.com/ropensci-review-tools/designlens) stages can focus entirely on code review rather than code generation, and will still yield useful and transparent _Plan_ and _Task_ steps that can be used to guide a review.

### Our own trials with generative-AI based reviews

We have used this system in internal evaluations against a couple of existing reviews, guided by specification steps including,

> Suggest general improvements to the workflow supported by this package

and,

> Suggest improvements in the user-facing design of this package, including but not limited to the design of all function interfaces

Those are converted into `plan.md` documents which we then tweaked to ensure the output was an additional review document.
After breaking down into `tasks.md` and implementing, we found generative AI tool output to be highly technical yet useful in uncovering minor inconsistencies and oversights in both overall workflow and function design.

However, comparison with what was written by actual reviewers revealed generative AI outputs to be far too focussed on minor technical details, while being (un-)surprisingly unable to produce a sufficiently high-level overview.
Most importantly, the excessive focus on (minor) technical issues would make any direct use of their outputs as part of a review unduly negative and critical.

We at rOpenSci are duly proud of our long history of ["transparent, constructive, non-adversarial and open review"](https://ropensci.org/software-review/), and are confident that our volunteer reviewers will remain as committed as ever to maintaining this constructive culture.
We are accordingly confident that where reviewers do use such tools, they will do so with an awareness that the outputs of such tools is generally only useful in revealing technical issues, and do that with no general ability to gauge the severity of such issues.
Our experiments convinced us that software can only be productively reviewed by humans with an expert familiarity with how that software is likely to actually be used within professional contexts.

### Generative AI reviews of statistical software

Reviews of statistical software differ from general reviews in one important way: They must review author's statements of compliance with [our _Statistical Software Standards_](https://stats-devguide.ropensci.org/standards.html).
Each package must comply with all [_General Standards_](https://stats-devguide.ropensci.org/standards.html#standards-general), as well as one or more sets of category-specific standards.
Statistical software reviews have [their own template](https://stats-devguide.ropensci.org/pkgreview.html#pkgrev-template) which asks reviewers to assess how well the package complies with standards.

Reviewing statements of compliance with these standards is the kind of highly technical exercise that generative AI tools are actually quite okay at.
Again, we trialled applying these tools to a couple of submissions, starting by
giving them full copies of the relevant standards (downloadable from
[here](https://github.com/ropensci/statistical-software-review-book/tree/main/standards)).
We prompted a generative AI tool to:

- First proceed sequentially through each individual standard, find the locations in the code at which it had been flagged as having been addressed, and write a summary of how well or how thoroughly each standard had been addressed.
- In a second iteration, to group the individual statements into the categories defined within the standards themselves (such as _Documentation_ or _Algorithms_), and to produce a summary for each category of each type of standards.
- In a third iteration, to condense those summaries into overall summaries for each category of standards (_General_ plus the chosen category for that submission).

We found the combination of those outputs to provide a useful overview of how well each package complied with standards, and to generally accord with what reviewers had actually written.

The [statistical software review template](https://stats-devguide.ropensci.org/pkgreview.html#pkgrev-template) also asks reviewers to consider whether any standards deemed by submitting authors as "non-applicable" might actually be applied.
We found generative AI tools to be less capable at this task.
They often generated longer lists than did human reviewers (extending to over twice the length), yet with reasons which seemed implausible or impractical.
The presence of such tenuous reasoning within output intended to guide concrete suggestions made generative AI outputs in these contexts decidedly less useful that were the initial summary outputs of overall compliance.

## Conclusions
