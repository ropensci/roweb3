---
slug: covidpreprints
title: 'Covidpreprints.com: Automating Website Updates with the europepmc and rAltmetric
  Packages'
author:
  - Zhang-He Goh
  - Jonny Coates
  - Hugo Gruson
date: '2020-10-13'
crossposts:
- name: preLights
  url: https://prelights.biologists.com/news/covidpreprints-com-automating-website-updates-with-the-europepmc-and-raltmetric-packages/
tags:
  - community
  - open-science
  - preprint
  - scholarly-literature
  - altmetrics
  - europepmc
  - rAltmetric
featured: no
description: rOpenSci's europepmc and rAltmetric packages are used to auto-update
  the covidpreprints.com daily.
twitterImg: blog/2020/10/13/covidpreprints/graphical_abstract.png
output:
  html_document:
    keep_md: yes
---



At the eLife Sprint in September 2020, we revamped the [covidpreprints.com](https://covidpreprints.com/) website, which aims at featuring landmark preprints on a timeline of the pandemic. 
 
## The birth of the project

The ongoing COVID-19 pandemic has led to about 35 million confirmed cases and over a million deaths worldwide. The looming spectre of a second wave of the pandemic has spurred around-the-clock research efforts to better understand the pathology and epidemiology of the virus, in the hope of new therapies and vaccines.
And while novel scientific information about the pandemic was being shared at an unprecedented rate in the form of preprints[^1], it was becoming difficult to get an accurate, trustworthy record of this information.

[^1]: Fraser, N., Brierley, L., Dey, G., Polka, J. K., Pálfy, M., Nanni, F., & Coates, J. A. (2020). Preprinting the COVID-19 pandemic. doi:[10.1101/2020.05.22.111294](https://doi.org/10.1101/2020.05.22.111294)

<!--html_preserve-->
{{< figure src = "preprints-plot.png" width = "600" alt = "Number of COVID-19 preprints posted on bioRxiv and medRxiv over time" caption = "Number of COVID-related preprints per day on the bioRxiv and medRxiv preprint platforms. The daily number of new preprints sometimes exceeded 150. (<a href='https://raw.githubusercontent.com/coatesj/covidpreprints/master/vignettes/preprint_plot.Rmd'>source code for the plot</a>)." class = "center">}}
<!--/html_preserve-->

As a response to this explosive growth of COVID-related preprints, a small group of scientists from [preLights](https://prelights.biologists.com/) published a list of important preprints, each accompanied by a short summary. The list quickly evolved into a full-fledged website: [covidpreprints.com](https://covidpreprints.com/), with a timeline featuring landmark preprints side-by-side with key events in the pandemic.

But the team quickly faced a new problem: even the list of carefully selected preprints was becoming too long. This resulted in a cluttered interface that was difficult to navigate. Besides, the process to fetch the information related to each preprint (DOI, author names, link, etc.) was tedious and menial, which led to less frequent updates.

## The makeover during eLife Sprint 2020

The [eLife Sprint 2020](https://sprint.elifesciences.org/), an annual two-day hackathon gathering various stakeholders of the research community --researchers, publishers, and software developers, among others-- provided the perfect opportunity to try and design a more scalable, and re-usable, workflow. This year, owing to the coronavirus pandemic, the eLife Sprint went completely virtual: it was held on social media platforms like Qiqochat and Slack, held over 10 sessions of 3 hours each.

By the second session of the Sprint, we decided on two goals to work towards:
- we would design a more ergonomic, responsive, and less cluttered interface that would be usable on various screen sizes (including mobile phones).
- we would automate the update process to reduce the required amount of human input, thereby increasing the project capacity and sustainability.

Fortunately, we identified a significant part of the process that could be automated by fetching information from the [Europe PMC](https://europepmc.org/About) API. More precisely, this could be done directly in R with a single function call, thanks to rOpenSci's [europepmc](https://docs.ropensci.org/europepmc/)[^2] package.

[^2]: Najko Jahn (2020). europepmc: R Interface to the Europe PubMed Central RESTful Web Service. R package version 0.4.

Here is a quick rundown of our update process:

1. Get the list of preprint DOIs from a google sheet with the [googlesheets4](https://googlesheets4.tidyverse.org/)[^3] package
1. Fetch the preprint title, list of authors, link, and, if it has been reviewed and published, the journal name, using the europepmc package
1. Get the [altmetric score](https://www.altmetric.com/) of each publication with the [rAltmetric](https://docs.ropensci.org/rAltmetric/)[^4] package, to provide readers with some information about the impact of each preprint, and the amount of discussion it sparked on social media.



```r 
library(googlesheets4)
# Set Google de-authentication mode as sheet is public
googlesheets4::gs4_deauth()
sheet_url <- "https://docs.google.com/spreadsheets/d/1BES52D4nYUZjV6kx1S_lJKSHvC9I0uzPTFA2mcxv4FI"

library(europepmc)  # retrieving preprint metadata
library(rAltmetric)  # retrieving Altmetric scores

library(dplyr)
library(stringr)
library(purrr)
library(tidyr)
# parse_epmc() and altmetric() are short wrappers around functions europepmc and 
# rAltmetric packages. They're not displayed here for the sake of brevity
preprints <- read_sheet(sheet_url, sheet = "Preprints") %>%
  filter(class %in% c("preprint", "bad")) %>% # filter non-preprints
  filter(!str_detect(id, "arXiv")) %>% # filter arXiv preprints (for now...)
  mutate(publication = map(epmc_search_by_doi(id, output = "raw"), parse_epmc),
         altmetric = map(id, altmetric),
         url = str_c("https://doi.org/", id)) %>%
  unnest(publication) %>%
  unnest(altmetric)

head(preprints)
```

```
# A tibble: 6 x 18
  id    class briefSummary addedBy approvedBy internalComments longerSummary
  <chr> <chr> <chr>        <chr>   <chr>      <chr>            <chr>        
1 10.1… prep… Reports the… MDN     LH, GZH    "GZH: Approved-…  <NA>        
2 10.1… prep… Stochastic … MDN     GZH        "GZH: Edited su…  <NA>        
3 10.1… prep… SARS-CoV-2 … MDN     GZH        "GZH: Now publi…  <NA>        
4 10.1… prep… Based on mo… MDN     GZH        "GZH: Summary e…  <NA>        
5 10.1… prep… This study … MDN     GZH        "GZH: Summary e… "Sinai revie…
6 10.1… prep… Using the t… MDN     GZH        "GZH: I am not …  <NA>        
# … with 11 more variables: title <chr>, date <date>, authorString <chr>,
#   publishedVersionDoi <chr>, citationCount <int>, preLightsUrl <chr>,
#   altmetricScore <dbl>, tweeters <chr>, altmetricDonut <chr>,
#   altmetricUrl <chr>, url <chr>
```

The website is then automatically rebuilt and deployed each night with [pkgdown](https://pkgdown.r-lib.org/)[^5] and GitHub actions[^6]. The use of pkgdown on GitHub pages greatly reduces the need for complex tools such as [Shiny](https://shiny.rstudio.com/), and the necessity of a custom server. We believe this is an important step for the project's long-term sustainability and to ease re-use of our code in other contexts.

[^3]: Jenny Bryan (2020). googlesheets4: Access Google Sheets using the Sheets API V4. R package version 0.2.0.
[^4]: Karthik Ram (2017). rAltmetric: Retrieves Altmerics Data for Any Published Paper from 'Altmetric.com'. R package version 0.7.0.
[^5]: Hadley Wickham, Jay Hesselberth (2020). pkgdown: Generate an attractive and useful website from a source package. R packager version 1.6.1.
[^6]: thanks to [Maëlle Salmon](/author/ma%C3%ABlle-salmon/) & [Steph Locke](/author/stephanie-locke/) for the inspiration here with their workflow at <https://lockedata.github.io/cransays/>

<!--html_preserve-->
{{< figure src = "workflow.svg" width = "600" alt = "Graphical representation of the automated workflow set up during the sprint" caption = "Having a scalable workflow allowed us to better crowdsource suggestions of preprints to feature." class = "center">}}
<!--/html_preserve-->

This scalable workflow allows us to focus on the scientific side of the process: select and highlight chosen preprints to track the progress of our knowledge on COVID-19. This also unlocks the ability to crowdsource reviews or suggestions for landmark preprints. Now, any netizen can nominate a preprint [via this google form](https://docs.google.com/forms/d/e/1FAIpQLSfRuZegczktW7SCmkopVZLNL7k0IHrEuoPRdAn6czTNxkM_xQ/viewform).

Alongside these under-the-hood changes, the project also went through a complete design makeover, because we believe it is important to make this information easy to read and understand for everybody. This work mainly resulted in a fresh design for the timeline and a new logo for the project.

<!--html_preserve-->
{{< figure src = "timeline_comparison.png" width = "100%" alt = "Comparison of the previous (cluttered) website design with the new, more streamlined one" caption = "The timeline before the sprint (top) vs the timeline now (bottom)" class = "center">}}
<!--/html_preserve-->

<!--html_preserve-->
{{< figure src = "logo_selection.svg" width = "600" alt = "The new project logo, side-by-side with the preLights' one" caption = "The project also gained a new logo, inspired by the preLights logo, with the characteristic shape of a coronavirus." class = "center">}}
<!--/html_preserve-->

## Future perspectives

Experts from all around the world are asking, “What have we learnt from this pandemic?” For now, we have some exciting new ideas moving forward with the project. In addition to expanding our sources by including more scientific communities and crowdsourced reviews from [Outbreak Science PREreview](https://outbreaksci.prereview.org) on our website, we would also love to introduce preprint clustering, grouping preprints into themes that thread around them.
 
As advocates of preprints and open science, we are constantly mindful about how our project would remain relevant for years to come -- in a future post-COVID-19. We hope that our website, with its new simplified workflow, will continue to serve as a set of tools that can be easily re-purposed to meet the next healthcare challenge and further combat misinformation: be it another infectious disease crisis or one that is caused by an endemic disease. To facilitate re-use of the project and improve long-term sustainability, we have drafted a [maintenance document in the GitHub repository](https://github.com/coatesj/covidpreprints/wiki/Maintenance-guide), which contains more technical information. 

## Conclusion

This project illustrates what can be achieved when different communities focused on various aspects of Open Science intersect: preLights came up with the original idea and maintains the website content, rOpenSci provided packages to perform otherwise difficult and menial tasks in just a couple of code lines, and finally eLife brought all these people together. We are truly amazed at how much was accomplished in a very short amount of time due to the great complementarity of skills of people from the different communities! Now, we hope to cordially invite every interested person to join us in our quest for promoting better information about health by either nominating preprints [via the Google form](https://docs.google.com/forms/d/e/1FAIpQLSfRuZegczktW7SCmkopVZLNL7k0IHrEuoPRdAn6czTNxkM_xQ/viewform) or by contributing to [the website code](https://github.com/coatesj/covidpreprints/)!

## Acknowledgments

We'd like to thank both the original preLights team: Jonny Coates, Sejal Davla, Mariana De Niz, Gautam Dey, Zhang-He Goh, Debbie Ho, Kirsty Hooper, Lars Hubatsch, Sundar Naganathan, Máté Pálfy & Srivats Venkataramanan, as well as the eLife Sprint team:Hugo Gruson, Chris Huggins, Allan Ochola, Bruno Paranhos & Michael Parkin.

