---
title: "Get tweet status ID from CrossRef Event Data with crevents"
reporter: "Tuija Sonkkila"
date: 2019-04-12
resource: "crevents"
original_url: "https://discuss.ropensci.org/t/get-tweet-status-id-from-crossref-event-data-with-crevents/1665"
language: English
---

#### Package or resource used
[crevents](https://github.com/ropensci/crevents/)


#### URL or code snippet for your use case
https://github.com/tts/aaltoced/blob/b617ec401473cfe7928723e8f2d68be8fa4945ea/getdata.R#L36-L45

#### Sector
Academic


#### Field(s) of application 
Bibliometrics, altmetrics

#### What did you do? 
I built a [Shiny web app](https://ttso.shinyapps.io/aaltoced/) on those recent publications of our university that have been tweeted by their DOI. For this, I first queried CrossRef Event Data with crevents, extracted the tweet status id's from the result, and then fetched the tweet text and other info with  [rtweet](https://cran.r-project.org/package=rtweet). For the whole story, see [my blog post](https://blogs.aalto.fi/suoritin/2019/04/10/everyday-altmetrics/).

