---
title: Communication Tips for your Open-Source Project
author: 
- Maëlle Salmon
date: '2024-05-16'
slug: communication-tips-oss-project
output: hugodown::md_document
tags:
  - community
---

Do you maintain an open-source project like an R package or a collection thereof, and wonder how to best use various communication channels to inform and engage with your users' community?
We've consolidated this list of tips.
Some of them are required in our opinion, others are simply nice to have.

## Required: Having good release notes

Since you're developing a product, the first area of work for communication is your writing informative release notes, at the level of single repositories.
This description of changes might happen in a file called `NEWS.md`, with one header per version, and hopefully several sub-headers to group changes in meaningful categories if there are many changes.

Resources to get started include:

- [`usethis::use_news_md()`](https://usethis.r-lib.org/reference/use_news_md.html) to create the `NEWS.md` file.
- [the chapter about NEWS files in the tidyverse style guide](https://style.tidyverse.org/news.html)

You can automate release notes a bit from commit messages using for instance the [fledge package](https://fledge.cynkra.com/dev/) (quite powerful if paired with the [Conventional commits convention](https://www.conventionalcommits.org/en/v1.0.0/)).

The release notes will be useful directly to your users, who can read them

- from GitHub for instance if they decide to [watch release events](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github/setting-up-notifications/configuring-notifications#configuring-your-watch-settings-for-an-individual-repository) for the repository;
- from the documentation website: pkgdown will transform the `NEWS.md` file into a page called changelog on your documentation website.

They will also be useful as raw material for further communication efforts like blog posts about releases.

## Required: Issue trackers

Not only should your repositories have issue/ticket trackers but you should also make sure enough team members watch them or will go through new tickets or comments at least once in a while.
Your project's bug trackers should not feel like shredders to the users.

Your project's usual or current availability to issues might be advertised through a pinned issue; you could even [temporarily limit interactions](https://docs.github.com/en/communities/moderating-comments-and-conversations/limiting-interactions-in-your-repository).
These terms and links are for GitHub, but similar ideas and features might exist for your forge.

## Required: Polish any profile you have

When you create a profile for your project somewhere (a GitHub organization, a Mastodon account, etc.) make sure you add your logo if you have one, that you fill an informative description, that URLs are verified ([docs for GitHub](https://docs.github.com/en/organizations/managing-organization-settings/verifying-or-approving-a-domain-for-your-organization), [docs for Mastodon](https://joinmastodon.org/verification)).

For a GitHub organization you can ask your members whether they'd like to make their GitHub organization membership public, which might give a more collaborative image even before anyone dives into commit activity.

None of this takes a lot of time, but is good for your project's image.

## Required: Make sure you handle access smartly

This item is actually good for any account your project has (GitHub access rights, Slack admin rights, etc.).

For any platform requiring log-in / some sort of access rights, make sure everyone who needs access has it and that no one who doesn't need it still has it.

You might want to look into password management systems such as [1Password](https://1password.com/).

As the makeup of a development team changes over time, it might be wise to review access regularly, and to make it part of some sort of onboarding/offboarding cheklist.

## Required: have a space for private discussions

Although open-source development demands a lot to happen [in the open](https://producingoss.com/en/producingoss.html#avoid-private-discussions), having a safe space where team members can let off steam, discuss sensitive matters, or share pets' pictures, is very important.
This could take the form of a Slack workspace, Discord server, etc.

Ideally, you should own the space, unless you can rely on an external partner (a funder? a larger cohalition of projects?) to keep providing it to you.

## Having a forum 

For a small project, issue trackers might prove sufficient to handle bug reports, feature requests but also general Q&A.
Now, for bigger projects, your project might benefit from the creation and curation of a discussion forum.

You could use [Discourse](https://www.discourse.org/), [GitHub Discussions](https://docs.github.com/fr/discussions), etc. 
As with issue trackers, a challenge is making sure enough team or community members watch it.
Often, users of a forum will expect a faster turnaround than for an issue.


## Having a blog with an RSS feed

Compared to release notes, blog posts about new versions provide more of a narrative so can be easier to read.
They can still point users to the release notes for more information.

The blog of an open-source project could also contain other types of posts such as a deep-dive on a feature, announcement of funding or call for contributions or monetary support, etc.

When choosing a website builder, try to choose one that is free and either familiar for your project's team or easy enough to get acquainted with. 
Blog posts that are Markdown based are easier to write from release notes. 
Also make sure publishing a new blog post is not a complicated 100-step process or no one will want to write one.
You could choose to use [GitHub for a review and preview process of blog posts](https://blogguide.ropensci.org/).

If you do create a blog, make sure to also create an RSS feed for it.
With most static website generators this is either the default or available by turning on an option ([docs for Quarto](https://quarto.org/docs/websites/website-blog.html#rss-feed)).

Once your blog has an RSS feed, register it in relevant aggregators such as [R Weekly](https://github.com/rweekly/rweekly.org?tab=readme-ov-file#regular-r-posts-submit-your-rss-feed) in the R world.

## Having comments on blog posts

If you choose to open comments on your blog posts, you can have that integrated with your project's forum!

It is possible with [Discourse](https://meta.discourse.org/t/embed-discourse-comments-on-another-website-via-javascript/31963) (which we used on this very blog), [GitHub Discussions via Giscus](https://giscus.app/fr) (easy to integrate with [Quarto](https://quarto.org/docs/output-formats/html-basics.html#commenting) among others).

Integrating comments with your forum means you only need to watch one space, and also that blog posts might help make users aware of the forum.

## Having social media profiles

Social media might be another place where to spread the word about your project and its updates, as well as to engage with users.
You might choose to make your social media "read-only" by stating clearly you do not have the resources to answer questions there for instace.

Ideally, concentrate your social media usage on [nice platforms](/blog/2022/11/16/mastodon-en/), and platforms where your project's userbase usually congregates.

## Conclusion

In this post, we shared some tips for communication for your open-source project.
Use communication channels in accordance with your project's goals and resources: don't forget that aspect of your project's work but also don't spread your team too thin.
You might also be interested in our past community call [Set Up Your Package to Foster a Community](/blog/2021/04/28/commcall-pkg-community/)
