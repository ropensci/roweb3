---
slug: "scheduling-mastodon"
title: Scheduling Mastodon Posts with rtoot and GitHub Actions
author:
  - Steffi LaZerte
# Set the date below to the publication date of your post
date: 2023-05-17
tags:
  - tech notes
  - Community
  - GitHub Actions
  - Community Manager Tools
# The summary below will be used by e.g. Twitter cards
description: "How to schedule Mastodon Posts using rtoot and GitHub Actions"
---

A lot of what I do as rOpenSci's community assistant is related to social media.
I check for posts about rOpenSci packages, invite people to share [usecases](/usecases),
and advertise [upcoming events](/events) as well as 
[new packages finishing software peer review](/software-review).

Up [until this past year](/blog/2022/11/16/mastodon-en/) most of this work was 
focused on Twitter and because we want to reach an international audience, 
we use Tweetdeck to schedule posts for different timezones[^1]. 

[^1]: I already get up early for the European Central Coworking session and am 
lazy enough not to want to get up even earlier just to tweet the 1-hr reminder!

However, we're also now developing a [presence on Mastodon](https://hachyderm.io/@rOpenSci).
We've enjoyed exploring this new community, but unfortunately there aren't as many tools for working with
Mastodon posts as there are for Twitter. There are some schedulers available, 
but we thought this might be an opportunity to develop one of our own; 
one that worked programatically and allowed us to design it the way we wanted it to work. 

In particular, we wanted a workflow that did allow us to...

- schedule multiple posts at a time
- easily see and modify these posts
- have posts with images *and* Alt text
- handle multiple timezones

and did not

- require us to give Mastodon credentials to an unknown third party
- require a poster to have access to the main account credentials
- cost much (or ideally anything)

This led us to create a workflow for scheduling Mastodon posts using R, 
[rtoot](https://schochastics.github.io/rtoot), and GitHub actions 🎉!

We hope to continue sharing examples of our Community Management Tools so you
can find an 
[example of this workflow](https://github.com/ropensci-org/ro-cmtoolkit/tree/main/scheduled_socials_example) 
in our new 
[`ro-cmtools` repository](https://github.com/ropensci-org/ro-cmtoolkit/). 

### What does this workflow entail?
- Using a private repository on GitHub (Mastodon credentials are stored as GitHub Secrets)
- Issues are Mastodon posts (which is why the repo needs to be private!) -> See the [Issue Template](https://github.com/ropensci-org/ro-cmtoolkit/blob/main/scheduled_socials_example/.github/ISSUE_TEMPLATE/schedule-post.md)
- Actions run hourly (or as needed) to run a script  -> See the [Action Workflow](https://github.com/ropensci-org/ro-cmtoolkit/blob/main/scheduled_socials_example/.github/workflows/schedule_posts.yaml)
- R script posts issues to Mastodon  -> See the [R script](https://github.com/ropensci-org/ro-cmtoolkit/blob/main/scheduled_socials_example/schedule_posts.R)
  - The script uses [gh](https://gh.r-lib.org/) to get the issue, 
    and [rtoot](https://schochastics.github.io/rtoot) to post it
  - Then the script closes the issue
  - Multiple posts are separated by 5 min[^2]

[^2]: Although this might benefit from using the Mastodon API scheduler, as
waiting 5 min between posts in an Action still uses 5 Action minutes 🤔

### Why use this workflow?

By using this workflow we can 

- Schedule posts in the future
- Allow people to post without giving them admin access to the Mastodon account
- Keep track of old posts (closed issues)
- Modify scheduled posts
- Use issue templates to create post templates
- Can post from anywhere with an Internet connection (no R setup required)
- Can specify different time zones to make posting across time zones simpler ([in theory at least](https://fosstodon.org/@ropensci/109458205543474658))
- It's very flexible, add your own YAML keys to cue any specific behaviour you need[^3]

[^3]: For example, I've been toying with the idea of adding a YAML key for post id, 
so we could set up scheduled replies to existing posts.

### Why not use this workflow?

This workflow does have some limitations

- **It can be fragile**   
  If someone creates a post with the incorrect metadata it will fail, 
  but only when run, not while writing the post which can be frustrating. 
- **Interactions**  
  While not impossible[^4], it can be tricky or at least a bit clunky to 
  interact with existing posts using this workflow.
- **It can burn GitHub Action Minutes**
  If you set the CRON to run every hour, this might burn through more GitHub
  Action minutes than you would like, even with caching. This is why we set it
  to run only on specific hours that we need.

[^4]: Replies should be possible via rtoot, but boosting and favouriting will
probably require using `rtoot::rtoot()` to create a custom 
[API query](https://docs.joinmastodon.org/methods/statuses/).


The Mastodon API and `rtoot::post_toot()` do have options to schedule posts, 
but I'm unclear how easy it is to see the queue. One thing I like about our
existing workflow is that I can easily see and modify the queue.

And that's that! There are definitely other options out there, but I have to admit that
I thoroughly enjoyed the experience of making our own. Even if testing it was a 
bit terrifying 😉

{{< figure src = "toot.png" alt = "A screen shot of a Mastodon post by Steffi LaZerte 
with a photo of a cat in a canoe looking at trees on a distance short. The 
text states 'Hi! Hopefully a final test of rtoot (https://github.com/schochastics/rtoot) 
and this time scheduled via GitHub actions 😱 
Oh the thrill of accidentally sending a million toots 😉 
And because there are never enough kitties, a photo of Vivi canoe camping!
#RStats'" 
class = "center">}}




