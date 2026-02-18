---
title: "METAR analysis for flight conditions"
reporter: "Maëlle Salmon"
date: 2025-02-20
resource: "[riem](https://docs.ropensci.org/riem)"
original_url: "https://discuss.ropensci.org/t/metar-analysis-for-flight-conditions/4174"
language: English
---

Reporting on behalf of [Joseph Chou](https://github.com/jhchou)

#### rOpenSci package or resource used

riem

#### What did you do? 

Use case example: developed an R Shiny app that allows interactive analysis of 20+ years of hourly METAR data of flight conditions by time of day and month at multiple airports, including:

* VFR / MVFR / IFR / LIFR category
* winds, gusts, crosswinds (based on best available runway)
* visibility and ceilings
* temperatures
* prevailing winds
* customizable personal minimums

Deployed using `shinylive` so can be served as a static webpage from GitHub Pages, running under web assembly (WASM) in the client browser. Additional airports pretty easy to add (but not by users, unless I make the GitHub page public and accept pull requests).



#### URL or code snippet for your use case



* [Blog post: Original Quarto dashboard development](https://www.incidentalfindings.org/posts/2024-07-11_metar_analysis/) (prior to using `riem`)
* [Blog post: Updated to Shiny app](https://www.incidentalfindings.org/posts/2025-02-19_metar_analysis_2/) (using `riem`)
* [BlueSky post](https://bsky.app/profile/incidentalfindings.org/post/3ligaa5oc6c2u)
* [Actual METAR analysis `shinylive` app](https://jhchou.github.io/metar_analysis/) -- be patient, loading time is a bit long, because it's loading WASM-compiled R + packages to the client


#### Mastodon profile link 

https://bsky.app/profile/incidentalfindings.org

