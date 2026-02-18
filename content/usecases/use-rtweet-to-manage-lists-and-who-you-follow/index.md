---
title: "Use rtweet to manage lists and who you follow"
reporter: "Steph Locke"
date: 2022-02-22
image: use-rtweet-to-manage-lists-and-who-you-follow.jpeg
resource: "rtweet"
original_url: "https://discuss.ropensci.org/t/use-rtweet-to-manage-lists-and-who-you-follow/2830"
language: English
---

#### rOpenSci package or resource used*
rtweet

#### What did you do? 
After capturing a list of the people you follow, this workflow enables you to:

1. assign twitter accounts to different groups (e.g. via RegEx over the profile)
2. use the group boolean columns as the basis to create and populate lists*
3. mass un-follow people so that your core twitter feed is streamlined

\* I noticed significant instability in the Twitter list APIs. A workaround (*that was still a bit flaky!*) is to split the accounts into groups of 100 and use [Tweetdeck](https://tweetdeck.twitter.com) to bulk add people to lists. The `spit()` function in the gist is how I tackled this.


#### URL or code snippet for your use case*
[A gist demonstrating how to retrieve the people you follow, assign them to lists, and unfollow in batches (github.com)](https://gist.github.com/stephlocke/c62cd57e77103cbfb6d40b2bf9760605)


#### Image
![image|690x378](use-rtweet-to-manage-lists-and-who-you-follow.jpeg)




