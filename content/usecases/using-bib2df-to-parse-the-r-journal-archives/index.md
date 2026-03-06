---
title: "Using bib2df to parse the R Journal archives"
reporter: "Maëlle Salmon"
date: 2019-05-29
resource: "[bib2df](https://docs.ropensci.org/bib2df)"
original_url: "https://discuss.ropensci.org/t/using-bib2df-to-parse-the-r-journal-archives/1718"
language: [English]
---

#### Package or resource used*

[bib2df](https://docs.ropensci.org/bib2df/)


#### URL or code snippet for your use case*

https://blog.r-hub.io/2019/05/29/keep-up-with-cran/

```r
journal <- bib2df::bib2df("https://journal.r-project.org/archive/RJournal.bib")
knitr::kable(
  journal[grepl("CRAN", journal$TITLE), c("TITLE", "MONTH", "YEAR", "URL")]
)
```


#### Sector

other

#### Field(s) of application 

R package development

#### What did you do? 

I used bib2df to parse the bibliography file containing information about all previous articles of the R Journal, to then filter articles whose title contained the word "CRAN", since I wanted to see how often the CRAN team had published articles giving updates on their policies and processes.

