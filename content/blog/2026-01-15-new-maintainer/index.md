---
title: How to Recruit a New Maintainer for Your Package
author: 
- Yanina Bellini Saibene
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
When that happens, one of the most responsible things you can do for users of your package, and for yourself, is to**proactively look for a new maintainer or co-maintainer.**

How to recruit a new maintainer, is a question we hear a lot at rOpenSci.
Over the years, we've supported rOpenSci's package authors through this transition, helping them connect with potential maintainers, clarify expectations around the role, and make handovers smoother and more sustainable.

In this post, we share practical tips and strategies to help you find people that can contribute and eventually take over your package, based on what we have learned supporting the packages that are part of the rOpenSci suite.

## Open an Issue: "Seeking New Maintainer"

Once you've decided to look for new maintainers or co-maintainers, communicate that clearly.
A visible first step is to open an issue in your repository dedicated to this topic.

Create an issue with a clear title, such as: "Seeking new maintainer(s)", "New maintainer wanted", "New co-maintainer(s) welcome" or "Looking for co-maintainers".

In the body, you can include:

- **Why** you're stepping back (at a high level: time, interest, job change, etc.).
- **What level of maintenance** is needed (bug fixes only, feature development, documentation, etc.).
- **What you're looking for** in a new maintainer:
  - Familiarity with the language/ecosystem?
  - Experience with testing or CI?
  - Comfort with releasing new versions?
- **How to express interest** (comment on the issue, email you, etc.).
- Any **timeline** you have in mind for the transition.

This issue becomes the central place to discuss ownership changes and can later serve as a public record of the transition.

[The rentrez package "New Maintainer(s)" issue](https://github.com/ropensci/rentrez/issues/203) is a good example of content, resources and followup conversation.

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
- It reduces the chance that someone assumes the package is abandoned without explanation.

You can also add a **"Project Status"** section in the README that gives a bit more context (e.g., "maintenance mode," "new features unlikely without new maintainers," etc.).

## Reach Out to Existing Contributors and Power Users

The best candidates for new maintainers are often already nearby:

- People who have submitted PRs.
- People who have filed useful, detailed issues.
- People you know use the package in their work.

You can:

- **Tag contributors** directly in the "Seeking new maintainer" issue, like the [rentrez package maintainer did](https://github.com/ropensci/rentrez/issues/203).
- Send a short, polite email or message to a few people who have been especially active. Even if they say no, they may know someone else who would be a good fit.

## Announce it where your users are

Now that your package repo has clear messages and a place to express interest and a clear way of communicate with you, is a good idea to spread the word beyond your repo.

Consider posting a brief announcement in places where your users or contributors are likely to see it:

- Social media (e.g., Mastodon, Bluesky, LinkedIn) using specific hashtags like #RStats.
- Community forums, mailing lists, Slack/Discord channels relevant to your language/ecosystem.

For example, rOpenSci [list "New maintainers" issues in our website](https://ropensci.org/help-wanted/), we share them on our social media and in our [newsletter](https://ropensci.org/blog/2025/12/18/news-december-2025/#calls-for-contributions).

## Make the Package Contributor-Friendly

If you want someone to take over, your package needs to be **approachable**.
Our [Dev Guide has an entire chapter on making packages contributor-friendly](https://devguide.ropensci.org/maintenance_collaboration.html), but here are some key points to consider.

Ask yourself:

- Could a new person understand how to build, test, and release this package from your repo alone?
- Is there enough documentation to make contributing feel safe?

Add or improve a contributing guidelines is a great way to lower barriers for someone to start acting like a maintainer, even before they officially take on the role.
A good`CONTRIBUTING.md` can cover:

- How to set up a development environment.
- Workflow preferences: Issue before a Pull Request?
- How you prefer to receive PRs (e.g., one feature per Pull Request, must include tests, etc.).
- Code style or formatting guidelines.
- Any tests and how to run them.
- Any release process notes, including scripts, CI workflows, or manual steps you take to release a new version.

rOpenSci further encourages contributing guides to include [a lifecycle statement clarifying visions and expectations for the future development of your package, like the skimr package](https://github.com/ropensci/skimr/blob/main/.github/CONTRIBUTING.md#understanding-the-scope-of-skimr).

The more you have documented clearly, the less hard it will feel for someone to say "yes" to maintaining.

## Clarify what you're willing (and not willing) to do

Potential maintainers will wonder:

- Will you still be around for questions?
- Will you keep some level of control, or are you fully handing over?
- Are you looking for a **co-maintainer** or someone to **fully take over**?

Be explicit.
For example:

- "I'm stepping back but happy to answer a few questions during the transition."
- "I'm looking for one or two co-maintainers and plan to stay on in a limited role."
- "I'd like to hand over fully and remove myself as maintainer once the transition is complete."

Setting clear boundaries helps others decide whether to volunteer and prevents misunderstandings later.

## It's Okay to Step Back

Stepping down from maintaining a package it's a normal part of the open source life cycle.

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


