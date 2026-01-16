---
title: How to Recruit a New Maintainer for Your Package
author: 
- Yanina Bellini Saibene
- Noam Ross
- Maëlle Salmon
editor:
- Steffi LaZerte
date: '2026-01-15'
slug: new-maintainer
description: |
  Finding a new maintainer for your R package can be a overwhelming task. In this post, we share practical tips and strategies to help you find people that can contribute and take over your package.
tags:
  - package development
  - tech notes
params:
  doi: "10.59350/teckx-0v214"
---

Maintaining an open source package is rewarding work, but it's also a [lot of work](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).
Life and career changes, interests shift, and sometimes you simply don't have the time or energy to keep working on your R package.
When that happens, one of the most responsible things you can do for users of your package, and for yourself, is to **proactively look for a new maintainer or co-maintainer.**

How to recruit a new maintainer, is a question we hear a lot at rOpenSci.
Over the years, we've supported rOpenSci's package authors through this transition, helping them connect with potential maintainers, clarify expectations around the role, and make handovers smoother and more sustainable.

In this post, we share practical tips and strategies to help you find people that can contribute and eventually take over your package, based on what we have learned supporting the packages that are part of the rOpenSci suite.

## Start early

The best time to start looking for a new maintainer is well before you actually need one, and the best place to look for a new maintainers is among existing contributors to your package.
For this reason, it's a good idea to make planning for succession part of your package design and maintenance strategy from the beginning.

We encourage package authors to write a ["life cycle statement"](https://stats-devguide.ropensci.org/standards.html#G1_2) to describe your medium- to long-term vision of package development maintenance.  
This can be just a few sentences in a `CONTRIBUTING.md` or `README.md` file that outlines your intentions for development, including how long you anticipate maintaining it.
Even if the future is uncertain, this helps set expectations for yourself as well as potential contributors.


## Make the package contributor-friendly

If you want to attract contributors who can become maintainers in the short- or long-term, your package needs to be **approachable**.
Our [Dev Guide has an entire chapter on making packages contributor-friendly](https://devguide.ropensci.org/maintenance_collaboration.html) and we also have a Community Call ["Set Up Your Package to Foster a Community"](https://ropensci.org/commcalls/apr2021-pkg-community/), but here are some key points to consider.

Ask yourself:

- Could a new person understand how to build, test, and release this package from your repo alone?
- Is there enough documentation to make contributing feel safe?

Add or improve a contributing guidelines is a great way to lower barriers for someone to start acting like a maintainer, even before they officially take on the role.
A good `CONTRIBUTING.md` can cover:

- How to set up a development environment.
- Workflow preferences: Issue before a Pull Request?
- How you prefer to receive PRs (e.g., one feature per Pull Request, must include tests, etc.).
- Code style or formatting guidelines.
- Any tests and how to run them.
- Any release process notes, including scripts, CI workflows, or manual steps you take to release a new version.

The more you have documented clearly, the less hard it will feel for someone to say "yes" to maintaining.

Depending on your ability to do so, you can also actively invest in growing contributors in a number of ways, for example:

-  Mentor a beginning contributor through their first pull request
-  Host a "bug bash" or "documentation sprint" to encourage contributions. Our [guide on organizing events for first-time contributors](https://ftc-guide.ropensci.org) has resources to help you plan.
-  Highlight "good first issues" in your issue tracker

These activities help expand your community of contributors and potential future maintainers, but will be most effective if you start well ahead of package handover, when you still have plenty of time and energy to invest.

## Clarify what you're willing (and not willing) to do

Potential new maintainers will wonder:

- Will you still be around for questions?
- Will you keep some level of control, or are you fully handing over?
- Are you looking for a **co-maintainer** or someone to **fully take over**?

Be explicit. 
For example:

- "I'm stepping back but happy to answer a few questions during the transition."
- "I'm looking for one or two co-maintainers and plan to stay on in a limited role."
- "I'd like to hand over fully and remove myself as maintainer once the transition is complete."

Setting clear boundaries helps others decide whether to volunteer and prevents misunderstandings later.

## Open an issue: "Seeking New Maintainer"

Once you've decided to look for new maintainers or co-maintainers, and how you plan to be involve with the project in the future, communicate that clearly.
A visible first step is to open an issue in your repository dedicated to this topic.

Create an issue with a clear title, such as: "Seeking new maintainer(s)", "New maintainer wanted", "New co-maintainer(s) welcome" or "Looking for co-maintainers".

In the body, you can include:

- **What level of maintenance** is needed (bug fixes only, feature development, documentation, etc.).
- **What you're looking for** in a new contributor/co-maintainer:
  - Familiarity with the language/ecosystem?
  - Experience with testing or CI?
  - Comfort with releasing new versions?
- **How to express interest** (comment on the issue, email you, etc.).
- Any **timeline** you have in mind for the transition.

Optionally you can also explain *Why* you’re stepping back (at a high level: time, interest, job change, etc.).

This issue becomes the central place to discuss ownership changes and can later serve as a public record of the transition.

[The rentrez package "New Maintainer(s)" issue](https://github.com/ropensci/rentrez/issues/203) is a good example of content, resources and followup conversation.

If your repo is on GitHub you can _pin_ this issue and it will be shown at the top of the Issues tab, making it more visible to visitors.

## Update your README to reflect the package's status

The README is the other place that many users will see.
Add a short, highly visible note near the top, for example:

```markdown
⚠️ **Project status:** we are looking for a new maintainer.  
If you're interested in helping maintain this package, 
please see [this issue](link-to-issue) or 
get in touch at your_email@example.com.
```

This message will:

- Sets expectations for users.
- Invites potential maintainers directly from your repo front page.
- It reduces the chance that someone assumes the package is abandoned without explanation ([this blog post list the sources of information we advice people to check in a package activity to understand package status](https://ropensci.org/blog/2022/07/01/evaluating-github-activity-for-contributors/)).

You can also add a **"Project Status"** section in the README that gives a bit more context (e.g., "maintenance mode," "new features unlikely without new maintainers," etc.).

## Reach out to existing contributors and power users

The best candidates for new maintainers are often already nearby:

- People who have submitted PRs.
- People who have filed useful, detailed issues.
- People you know use the package in their work.

You can:

- Send a short, polite email or message to a few people who have been especially active. Even if they say no, they may know someone else who would be a good fit.
- If you don't have an email or other way of contact then tag contributors directly in the "Seeking new maintainer" issue, like the [rentrez package maintainer did](https://github.com/ropensci/rentrez/issues/203).


## Announce it where your users are

Now that your package repo has clear messages and a place to express interest and a clear way of communicate with you, is a good idea to spread the word beyond your repo.

Consider posting a brief announcement in places where your users or contributors are likely to see it:

- Community forums, mailing lists, Slack/Discord channels relevant to your language/ecosystem.
- Social media (e.g., Mastodon, Bluesky, LinkedIn) using specific hashtags like #RStats.

For example, rOpenSci [lists "New maintainers" issues in our website](https://ropensci.org/help-wanted/), we share them on our social media and in our [newsletter](https://ropensci.org/blog/2025/12/18/news-december-2025/#calls-for-contributions).

## Add a package startup message  

At certain point, you can consider adding a startup message that informs users about the maintainer search.

In this message you can link to the "Seeking new maintainer" issue and encourage users to check it out if they're interested in helping.

This is an aggressive move and may annoy some users, so consider it only if your package has a lot of active users and you haven't had much luck finding a new maintainer through other channels.

## Last resort: archive your package

If after a reasonable time you were not able to find a new maintainer for your package,
you might have to make the difficult decision to archive it, on your code forge, e.g. [GitHub](https://docs.github.com/en/repositories/archiving-a-github-repository/archiving-repositories) -- and CRAN if relevant.
Archiving the package puts an, albeit sad, end on your maintenance efforts.

Before archiving your package, take time to add an explanatory comment in all issues and PRs and to close them all.
You can create a new README to explain the new status.
You could add how to get in touch with you in case you are ready to transfer the repository to someone who'd like to revive it.

Maybe your software will be replaced by other packages, 
maybe someone will end up reaching out to you to request you transfer the repository to them, 
maybe someone will create a replacement with the same name (and hopefully correct authorship and licensing if it re-used your code).
In all cases, you will have done your best and the fate of the R package is out of your hands.

## It's okay to step back

Stepping down from maintaining a package is a normal part of the open source life cycle.

By:

- Opening a clear "Seeking new maintainer" issue,
- Updating your README,
- Announcing the search in the right channels,
- Reaching out to contributors,
- And making the package contributor-friendly,

you give your project the best chance to continue, while also respecting your own time and energy.

Do you have any other tips or ideas?
Please share them.
We would love to know!


