---
title: "covidpreprints.com using europepmc and rAltmetric"
reporter: "Zhanghe Goh"
date: 2020-09-08
resource: "[europepmc](https://docs.ropensci.org/europepmc), rAltmetric"
original_url: "https://discuss.ropensci.org/t/covidpreprints-com-using-europepmc-and-raltmetric/2210"
language: [English]
---

#### rOpenSci package or resource used*
 [europepmc](https://github.com/ropensci/europepmc), [rAltmetric](https://github.com/ropensci/rAltmetric)

#### What did you do? 
`covidpreprints.com` is a one-stop portal for the lay public and scientific community. We created `covidpreprints.com` to promote scientific education and combat misinformation by discussing controversial scientific issues. We focus on the trend of open access in science, especially in the form of preprints, and we see it as a way to shape the growth of these trends within the scientific community.

This website was rebuilt during the eLife Sprint 2020 organised by eLife Innovation held from 2 - 3 Sept 2020. We introduced two features that would be of interest to our audience:

First, we rebuilt the COVID-19 timeline, which now displays both scientific advances (in the form of preprints) and worldwide events related to the pandemic side-by-side.

Second, we utilised the europepmc and rAltmetric packages to automatically populate the collection of preprint metadata (authors, title, date of publication, etc.) and metrics to create the abovementioned COVID-19 timeline. This greatly simplifies the process for users who now only need to add a DOI to a Google Sheet. We then automatically fetch the relevant metadata, and deploy a new version of the website hourly via a GitHub Action cron job.

We envision that the underlying set of architecture and tools that we have developed will last beyond the COVID-19 pandemic for which `covidpreprints.com` was created, and hope that this can be applied to other areas in science and medicine as well.


#### URL or code snippet for your use case*
Code: https://github.com/coatesj/covidpreprints/

Database: `covidpreprints.com`


#### Sector
non-profit

#### Field(s) of application 
Epidemiology, biomedical research, science communication, bibliometrics


