---
title: Communication Tips for your Open-Source Project
author: 
- Maëlle Salmon
editor:
- Mark Padgham
date: '2024-05-17'
slug: communication-tips-oss-project
output: hugodown::md_document
tags:
  - community
---

Do you maintain an open-source project like an R package or a collection thereof, and wonder how to best use various communication channels to inform and engage with your community of users?
We've consolidated this list of tips.
Some of them are required in our opinion, others are simply nice to have.

## Required: Having good release notes

Since you're developing a product, the first act of communication is to write informative release notes.
Release notes generally describe updates and changes, commonly in a file called `NEWS.md`. These files generally have one header per release, with sub-headers used to group changes in meaningful categories.

Resources to get started with release notes include:

- [`usethis::use_news_md()`](https://usethis.r-lib.org/reference/use_news_md.html) to create the `NEWS.md` file.
- [the chapter about NEWS files in the tidyverse style guide](https://style.tidyverse.org/news.html)

You can partially automate release notes from commit messages using for instance the [fledge package](https://fledge.cynkra.com/dev/) (quite powerful if paired with the [Conventional commits convention](https://www.conventionalcommits.org/en/v1.0.0/)).

Release notes can directly inform users, who can read them

- from GitHub through [watching release events](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github/setting-up-notifications/configuring-notifications#configuring-your-watch-settings-for-an-individual-repository) for the repository;
- from the documentation website, on which pkgdown transforms `NEWS.md` files into a page called changelog.

They will also be useful as raw material for further communication efforts like blog posts about releases.

## Required: Issue trackers

Not only should your repositories have issue/ticket trackers but you should also make sure enough team members watch them or will go through new tickets or comments at least once in a while.
Maintaining and responding to issues is an important part of maintaining a community of users.

Your project's use of issues might be advertised through a pinned issue; you could even [temporarily limit interactions](https://docs.github.com/en/communities/moderating-comments-and-conversations/limiting-interactions-in-your-repository).
These terms and links are for GitHub, but similar ideas and features exist for other code hosting platforms.

## Required: Polish project profiles

All open-source software has a profile, potentially spread across many places such as GitHub organizations or Mastodon accounts. A logo can be a key identifier of your profile, and should appear consistently throughout your profile(s). It is also important to include informative descriptions, and to verify all URLs ([docs for GitHub](https://docs.github.com/en/organizations/managing-organization-settings/verifying-or-approving-a-domain-for-your-organization), [docs for Mastodon](https://joinmastodon.org/verification)).

For a GitHub organization you can ask your members whether they'd like to make their [GitHub organization membership public](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-your-membership-in-organizations/publicizing-or-hiding-organization-membership), which might give a more collaborative image even before anyone dives into commit activity.

Profile polishing need not take a lot of time, and can only improve your project's image.

## Required: Make sure you handle access smartly


For any platform requiring log-ins or some sort of access rights, make sure everyone who needs access has it, and that access is removed from anybody who no longer needs it.

You might want to look into password management systems such as [1Password](https://1password.com/).

As the makeup of a development team changes over time, it might be wise to review access regularly, and to make that review part of some sort of onboarding/offboarding checklist.

## Required: have a space for private discussions

Although open-source development demands that a lot happens [in the open](https://producingoss.com/en/producingoss.html#avoid-private-discussions), it is also important to cultivate a safe space where team members can let off steam, discuss sensitive matters, or share pets' pictures.
This could take such forms as a Slack workspace, Discord, Matrix, or Element server, or cutting edge options like [flat](https://try.flat.app) or [CQ2](https://cq2.co/).

Ideally, you should own the space, unless you can rely on an external partner (a funder? a larger cohalition of projects?) to keep providing it to you.

## Having a forum 

For a small project, issue trackers might be all you need to handle bug reports, feature requests, and general Q&A.
Bigger projects might nevertheless benefit from the creation and curation of a dedicated discussion forum.

You could use [Discourse](https://www.discourse.org/), or [GitHub Discussions](https://docs.github.com/fr/discussions).

## Having a blog with an RSS feed

Compared to release notes, blog posts about new versions provide more of a narrative so can be easier to read.
They can still point users to the release notes for more information.

The blog of an open-source project could also contain other types of posts such as a deep-dive on a feature, announcement of funding or call for contributions, or monetary support.

When choosing a website builder, try to choose one that is free and either familiar for your project's team or easy enough to get acquainted with. 
Blog posts that are Markdown based are easier to write from release notes. 
Also make sure publishing a new blog post is not a complicated 100-step process or no one will want to write one.
You could choose to use [GitHub for a review and preview process of blog posts](https://blogguide.ropensci.org/).

If you do create a blog, make sure to also create an RSS feed for it.
With most static website generators this is either the default or available by turning on an option ([docs for Quarto](https://quarto.org/docs/websites/website-blog.html#rss-feed)).

Once your blog has an RSS feed, register it in relevant aggregators such as [R Weekly](https://github.com/rweekly/rweekly.org?tab=readme-ov-file#regular-r-posts-submit-your-rss-feed) in the R world.

## Having comments on blog posts

If you choose to open comments on your blog posts, make sure to integrate comments within your project's forum.

This is very easy with [Discourse](https://meta.discourse.org/t/embed-discourse-comments-on-another-website-via-javascript/31963) (which we use on this very blog), and [GitHub Discussions via Giscus](https://giscus.app/fr) (which are also easy to integrate with [Quarto](https://quarto.org/docs/output-formats/html-basics.html#commenting) among others).

Integrating comments with your forum means you only need to watch one space, and also help connect readers of your blog posts to the forum.

## Having social media profiles

Social media can be useful to spread the word about your project and its updates, and to engage with users.
You might choose to make your social media "read-only" by stating clearly you do not have the resources to answer questions there.

Ideally, concentrate your social media usage on [nice platforms](/blog/2023/06/22/ropensci-news-digest-june-2023/#ropenscis-communication-channels-for-safe-and-friendly-exchange), and platforms where your projects' users and community are likely to congregate.

## Conclusion

In this post, we shared some tips for communication for your open-source project.
Use communication channels in accordance with your project's goals and resources.
You might also be interested in our past community call [Set Up Your Package to Foster a Community](/blog/2021/04/28/commcall-pkg-community/).
