---
title: rOpenSci News Digest, August 2021
author:
  - The rOpenSci Team
date: '2021-08-31'
slug: ropensci-news-digest-august-2021
tags:
  - newsletter
description: Social co-working, useR! recordings, new packages and package news
output:
  html_document:
    keep_md: yes
params:
  last_newsletter: '2021-07-23'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2021/08/31/ropensci-news-digest-august-2021).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

<!-- to be curated manually -->

Find out about more [events](/events).

## Software :package:

### New packages




<!-- The following  package recently became a part of our software suite:-->



No new package this month, but you can browse [our current suite of packages](/packages), and read more about [Software Peer Review](/software-review).

### New versions



The following sixteen packages have had an update since the latest newsletter: [beastier](https://docs.ropensci.org/beastier "Call BEAST2") ([`v2.4.5`](https://github.com/ropensci/beastier/releases/tag/v2.4.5)), [beautier](https://docs.ropensci.org/beautier "BEAUti from R") ([`v2.6.2`](https://github.com/ropensci/beautier/releases/tag/v2.6.2)), [exoplanets](https://docs.ropensci.org/exoplanets "Access NASA's Exoplanet Archive Data") ([`v0.2.2`](https://github.com/ropensci/exoplanets/releases/tag/v0.2.2)), [helminthR](https://docs.ropensci.org/helminthR "Access London Natural History Museum Host-Helminth Record Database") ([`v1.0.9`](https://github.com/ropensci/helminthR/releases/tag/v1.0.9)), [MODIStsp](https://docs.ropensci.org/MODIStsp "Find, Download and Process MODIS Land Products
    Data") ([`v2.0.6`](https://github.com/ropensci/MODIStsp/releases/tag/v2.0.6)), [nasapower](https://docs.ropensci.org/nasapower "NASA POWER API Client") ([`v4.0.0`](https://github.com/ropensci/nasapower/releases/tag/v4.0.0)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.4.3`](https://github.com/ropensci/nodbi/releases/tag/v0.4.3)), [osmdata](https://docs.ropensci.org/osmdata "Import OpenStreetMap Data as Simple Features or Spatial Objects") ([`v0.1.6`](https://github.com/ropensci/osmdata/releases/tag/v0.1.6)), [osmextract](https://docs.ropensci.org/osmextract "Download and Import Open Street Map Data Extracts") ([`v0.3.1`](https://github.com/ropensci/osmextract/releases/tag/v0.3.1)), [piggyback](https://docs.ropensci.org/piggyback "Managing Larger Data on a GitHub Repository") ([`v0.1.0`](https://github.com/ropensci/piggyback/releases/tag/v0.1.0)), [rerddap](https://docs.ropensci.org/rerddap "General Purpose Client for ERDDAP Servers") ([`v0.7.6`](https://github.com/ropensci/rerddap/releases/tag/v0.7.6)), [rfishbase](https://docs.ropensci.org/rfishbase "R Interface to FishBase") ([`slb-21.04`](https://github.com/ropensci/rfishbase/releases/tag/slb-21.04)), [rglobi](https://docs.ropensci.org/rglobi "R Interface to Global Biotic Interactions") ([`v0.2.25`](https://github.com/ropensci/rglobi/releases/tag/v0.2.25)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.3.0`](https://github.com/ropensci/tarchetypes/releases/tag/0.3.0)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Workflows") ([`0.7.0`](https://github.com/ropensci/targets/releases/tag/0.7.0)), [terrainr](https://docs.ropensci.org/terrainr "Landscape Visualizations in R and Unity") ([`v0.5.0-r`](https://github.com/ropensci/terrainr/releases/tag/v0.5.0-r)).

## Software Peer Review

There are twelve recently closed and active submissions and 5 submissions on hold. Issues are at different stages: 

* Six at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [rsat](https://github.com/ropensci/software-review/issues/437), Tools for Downloading, Customizing, and Processing Time Series of Satellite Images from Landsat, MODIS, and Sentinel. Submitted by [Unai Pérez-Goya](https://unai-perez.github.io/).

    * [gendercoder](https://github.com/ropensci/software-review/issues/435), Recodes Sex/Gender Descriptions Into A Standard Set. Submitted by [Emily Kothe](http://emilykothe.com).

    * [mctq](https://github.com/ropensci/software-review/issues/434), An R Package for the Munich ChronoType Questionnaire. Submitted by [Daniel Vartanian](https://orcid.org/0000-0001-7782-759X).

    * [slopes](https://github.com/ropensci/software-review/issues/420), Calculate Slopes of Roads, Rivers and Trajectories. Submitted by [RFlx](http://www.rosafelix.bike).

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com).

    * [chemspiderapi](https://github.com/ropensci/software-review/issues/329), R Wrapper for ChemSpider's API Services. Submitted by [Raoul Wolf](https://github.com/RaoulWolf).

* Four at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [allodb](https://github.com/ropensci/software-review/issues/436), Tree Biomass Estimation at Extratropical Forest Plots. Submitted by [Erika Gonzalez-Akre](https://sites.google.com/site/forestecoclimlab/home).

    * [ROriginStamp](https://github.com/ropensci/software-review/issues/433), Interface to OriginStamp API to Obtain Trusted Time Stamps. Submitted by [Rainer M Krug](https://github.com/rkrug).

    * [jagstargets](https://github.com/ropensci/software-review/issues/425), Targets for JAGS Workflows. Submitted by [Will Landau](https://wlandau.github.io).

    * [occCite](https://github.com/ropensci/software-review/issues/407), Querying and Managing Large Biodiversity Occurrence Datasets. Submitted by [Hannah Owens](http://hannahlowens.weebly.com/).

* One at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [excluder](https://github.com/ropensci/software-review/issues/455), Checks for Exclusion Criteria in Online Data. Submitted by [Jeffrey Stevens](https://decisionslab.unl.edu/).

* One at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [rdbhapi](https://github.com/ropensci/software-review/issues/443), Interface to DBH-API. Submitted by [Marija Ninic](https://hkdir.no/).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Other topics

* [The Story Behind censo2017, the First rOpenSci Package to be Reviewed in Spanish](/blog/2021/07/27/censo2017) by Pachá (aka Mauricio Vargas Sepúlveda). Chilean census tables at a glance.
.

* [La Historia de censo2017, el Primer Paquete de rOpenSci Revisado en Español](/blog/2021/07/27/censo2017-es) by Pachá (aka Mauricio Vargas Sepúlveda). Las tablas del Censo de Chile al instante.
.

* [rOpenSci Introduces Monthly Social Coworking and Office Hours](/blog/2021/08/17/coworking-sessions) by Steffi LaZerte, Stefanie Butland, Nicholas Tierney. Work, meet other developers, get your questions answered, and/or socialize.

## Citations

No new citations added to our database this month ([browse all citations](/citations)).

## Use cases



Four use cases of our packages and resources have been reported since we sent the last newsletter.

* [Investigating the drought in the Candian prairies](https://discuss.ropensci.org/t/investigating-the-drought-in-the-candian-prairies/2556). Reported by Alex Koiter.

* [targets pipeline with RMarkdown to download and visualize USGS data](https://discuss.ropensci.org/t/targets-pipeline-with-rmarkdown-to-download-and-visualize-usgs-data/2559). Reported by Lindsay Platt.

* [Answering 'what colour is London?' with magick and rtweet](https://discuss.ropensci.org/t/answering-what-colour-is-london-with-magick-and-rtweet/2562). Reported by Matt Dray.

* [Informal package review using rOpenSci review template](https://discuss.ropensci.org/t/informal-package-review-using-ropensci-review-template/2570). Reported by Hugo Gruson.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

<!--IF CALL
* [our guidance on _Changing package maintainers_](https://devguide.ropensci.org/changing-maintainers.html)
* [our _Package Curation Policy_](https://devguide.ropensci.org/curationpolicy.html)

IF NO CALL
There's no open call for new maintainers at this point but you can refer to our [contributing guide](https://contributing.ropensci.org/) for finding ways to get involved!
As the maintainer of an rOpenSci package, feel free to contact us on Slack or email `info@ropensci.org` to get your call for maintainer featured in the next newsletter. -->

## Package development corner

Some useful tips for R package developers. :eyes:

<!-- To be curated by hand -->

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
