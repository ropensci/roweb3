---
slug: "scheduling-mastodon"
title: Scheduling Mastodon Posts in R with rtoot and GitHub Actions
author:
  - Steffi LaZerte
date: 2023-05-17
tags:
  - tech notes
  - Community
  - GitHub Actions
  - Community Manager Tools
  - social media
  - mastodon
description: "How to schedule Mastodon Posts using rtoot and GitHub Actions"
---

A lot of what I do as rOpenSci's community assistant is related to social media.
I check for posts about rOpenSci packages, invite people to share [usecases](/usecases),
advertise [upcoming events](/events), as well as promoting
[new packages which completed software peer review](/software-review).

Up [until this past year](/blog/2022/11/16/mastodon-en/) most of this work was 
focused on Twitter and because we want to reach an international audience, 
we used Tweetdeck to schedule posts for different timezones[^1].
Being able to see when posts were queued was also important for us as a team to 
better plan our post timing.


[^1]: I already get up early for the European Central Coworking session and am 
not excited about getting up even earlier just to tweet the 1-hr reminder!

However, we're also now developing a [presence on Mastodon](https://hachyderm.io/@rOpenSci).
We've enjoyed exploring this new community, but unfortunately there aren't as many tools for working with
Mastodon posts as there are for Twitter. There are some schedulers available, 
but we thought this might be an opportunity to develop one of our own; 
one that worked programatically and allowed us to design it the way we wanted it to work. 

In particular, we wanted a workflow that allowed us to...

- schedule multiple posts at a time
- easily see and modify these posts
- have posts with images *and* [alternative text](https://axesslab.com/alt-texts/)
- handle multiple timezones

and did not

- require us to give Mastodon credentials to an unknown third party
- require a poster to have access to the main account credentials
- have a subscription cost

This led us to create a workflow for scheduling Mastodon posts using R, 
[rtoot](https://schochastics.github.io/rtoot), and GitHub actions 🎉!

You can find an 
[example of this workflow](https://github.com/ropensci-org/ro-cmtoolkit/tree/main/scheduled_socials_example) 
in our new 
[`ro-cmtools` repository](https://github.com/ropensci-org/ro-cmtoolkit/)
where we hope to continue sharing examples of our Community Management Tools.

### What does this workflow entail?

- Using a private repository on GitHub (Mastodon token is stored as GitHub Secrets)
- Issues are Mastodon posts (which is why the repo needs to be private!) -> See the [Issue Template](https://github.com/ropensci-org/ro-cmtoolkit/blob/main/scheduled_socials_example/.github/ISSUE_TEMPLATE/schedule-post.md)
- Actions run hourly (or as needed) to run a script  -> See the [Action Workflow](https://github.com/ropensci-org/ro-cmtoolkit/blob/main/scheduled_socials_example/.github/workflows/schedule_posts.yaml)
- R script posts issues to Mastodon  -> See the [R script](https://github.com/ropensci-org/ro-cmtoolkit/blob/main/scheduled_socials_example/schedule_posts.R)
  - The script uses [gh](https://gh.r-lib.org/) to get the issue, 
    and [rtoot](https://schochastics.github.io/rtoot) to post it
  - Then the script closes the issue
  - Multiple posts are separated by 5 min

### Why use this workflow?

By using this workflow we can 

- Schedule posts in the future
- Allow people to post without giving them admin access to the Mastodon account
- Have a clear picture of queued posts (both future and past)
- Modify scheduled posts
- Use issue templates to create post templates
- Post from anywhere with an Internet connection (no R setup required)
- Specify different time zones to make posting across time zones simpler ([in theory at least](https://fosstodon.org/@ropensci/109458205543474658))
- Embrace flexibility, we can add/change YAML keys to cue any specific behaviour required

### Why not use this workflow?

This workflow does have some limitations

- **It can be fragile**   
  If someone creates a post with the incorrect metadata it will fail, 
  but only when run, not while writing the post, which can be frustrating. 
- **Interactions**  
  While not impossible, it can be tricky or at least a bit clunky to 
  interact with existing posts using this workflow.
- **It can burn [GitHub Action Minutes](https://docs.github.com/en/billing/managing-billing-for-github-actions/about-billing-for-github-actions)**  
  If you set the CRON to run every hour, this might burn through more GitHub
  Action minutes than you would like, even with caching. This is why we set it
  to run only on specific hours that we need.

### Future ideas

**Incorporating the Mastodon API scheduler**

The Mastodon API and `rtoot::post_toot()` do have options to schedule posts, 
but I'm unclear how easy it is to see the queue. One thing I like about our
existing workflow is that we can easily see and modify the queue as a team.

However, it might be a good idea to incorporate the scheduler API into this tool
at least when posting multiple posts at the same time. Currently, we wait 5 min 
(using `Sys.sleep()`) between posts in order to space things out a bit more 
gradually. But this still uses 5 GitHub Action minutes 🤔

**Interacting with posts**

Right now our work flow doesn't have the capability to interact with posts on 
Mastodon. However, I've been toying with the idea of adding a YAML key for post id, 
so we could set up scheduled replies to existing posts.

Boosting and favouriting seem possible, but would probably require using 
`rtoot::rtoot()` to create a custom 
[API queries](https://docs.joinmastodon.org/methods/statuses/). For this workflow
that may be a bit too clunky, but it could be possible to set up a different type
of issue template where post ids to be boosted/favourtied could be listed.

Finally, although post threads aren't common on Mastodon (due to the generally
sufficient character limit), it should be possible to use comments on an issue to 
create a threaded post. I don't think we'll implement this as we like to be able
to use the comments for notes to each other or to our future selves, but 
depending on your workflow, this could be a useful feature to add!


And that's that! There are definitely other options out there, but I have to admit that
I thoroughly enjoyed the experience of making our own system. Even if testing it was a 
bit [terrifying](https://fosstodon.org/@steffilazerte/109433645817562816) 😉

{{< figure src = "toot_sm.png" width = "500" alt = "A screen shot of a Mastodon post by Steffi LaZerte with a photo of a cat in a canoe looking at trees in the a distance. The text states 'Hi! Hopefully a final test of rtoot and this time scheduled via GitHub actions 😱 Oh the thrill of accidentally sending a million toots 😉 And because there are never enough kitties, a photo of Vivi canoe camping! #RStats'." class = "center">}}




