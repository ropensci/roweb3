---
slug: ropensci-news
title: Latest rOpenSci News Digest
author:
  - The rOpenSci Team
date: '2021-03-15'
tags:
  - newsletter
description: keywords bla
output:
  html_document:
    keep_md: yes
params:
  last_newsletter: "2021-02-08"
---



Dear rOpenSci friends, it's time for our monthly news roundup!
Yes, the latest one was on 2021-02-08.
Some housekeeping first:
We've been changing the infrastructure of our newsletter a bit so please update your RSS and JSON feeds to `https://ropensci.org/tags/newsletter/index.xml` and `https://ropensci.org/tags/newsletter/index.json`, respectively.
You can read this post [on our blog](/blog/2021/03/15/ropensci-news).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

Our R-universe project now has its own page on our website! :rocket:

Regarding another exciting project of ours... We've run the first comm call of our series on [statistical software review project](/stat-software-review/)! [rOpenSci Statistical Software Testing and Peer Review](https://ropensci.org/commcalls/feb2021-statsreview/) took place on March the 2d, blabla, resources up, recording up, blabla.

Find out more [events](/events).

## Software :package:

### New packages




The following 1 package recently became a part of our software suite:

+ [terrainr](https://docs.ropensci.org/terrainr), developed by Michael Mahoney: Functions for the retrieval, manipulation, and visualization of geospatial data, with an aim towards producing 3D landscape visualizations in the Unity 3D rendering engine. Functions are also provided for retrieving elevation data and base map tiles from the USGS National Map (<https://apps.nationalmap.gov/services/>).  It is available on [CRAN]( https://CRAN.R-project.org/package=terrainr). It has been [reviewed](https://github.com/ropensci/software-review/issues/416) by Mike Johnson, Sydney Foks.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following 12 packages have had an update since the latest newsletter: [crul](https://docs.ropensci.org/crul "HTTP Client") ([`v1.1.0`](https://github.com/ropensci/crul/releases/tag/v1.1.0)), [eia](https://docs.ropensci.org/eia "API Wrapper for US Energy Information Administration Open Data") ([`v0.3.7`](https://github.com/ropensci/eia/releases/tag/v0.3.7)), [epubr](https://docs.ropensci.org/epubr "Read EPUB File Metadata and Text") ([`v0.6.2`](https://github.com/ropensci/epubr/releases/tag/v0.6.2)), [fulltext](https://docs.ropensci.org/fulltext "Full Text of Scholarly Articles Across Many Data Sources") ([`v1.7.0`](https://github.com/ropensci/fulltext/releases/tag/v1.7.0)), [opencage](https://docs.ropensci.org/opencage "Geocode with the OpenCage API") ([`v0.2.2`](https://github.com/ropensci/opencage/releases/tag/v0.2.2)), [osmextract](https://docs.ropensci.org/osmextract "Download and Read OpenStreetMap Data Extracts") ([`v0.2.1`](https://github.com/ropensci/osmextract/releases/tag/v0.2.1)), [parzer](https://docs.ropensci.org/parzer "Parse Messy Geographic Coordinates") ([`v0.4.0`](https://github.com/ropensci/parzer/releases/tag/v0.4.0)), [rinat](https://docs.ropensci.org/rinat "Access iNaturalist Data Through APIs") ([`v0.1.7`](https://github.com/ropensci/rinat/releases/tag/v0.1.7)), [rnoaa](https://docs.ropensci.org/rnoaa "NOAA Weather Data from R") ([`v1.3.2`](https://github.com/ropensci/rnoaa/releases/tag/v1.3.2)), [rplos](https://docs.ropensci.org/rplos "Interface to the Search API for PLoS Journals") ([`v1.0.0`](https://github.com/ropensci/rplos/releases/tag/v1.0.0)), [terrainr](https://docs.ropensci.org/terrainr "Landscape Visualizations in R and Unity") ([`v0.3.1`](https://github.com/ropensci/terrainr/releases/tag/v0.3.1)), [tiler](https://docs.ropensci.org/tiler "Create Geographic and Non-Geographic Map Tiles") ([`v0.2.5`](https://github.com/ropensci/tiler/releases/tag/v0.2.5)).

We are only listing the most recent version.

## Software Peer Review

There are 17 recently closed and active submissions and 2 submissions on hold. Issues are at different stages: 

* 4 at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [terrainr](https://github.com/ropensci/software-review/issues/416), Retrieve Data from the USGS National Map and Transform it for 3D Landscape Visualizations. Submitted by [Michael Mahoney](https://www.mikemahoney218.com/).

    * [pixelclasser](https://github.com/ropensci/software-review/issues/406), A Package for Classifying Pixels by Colour. Submitted by [Carlos Real Rodríguez](https://github.com/CarlosRealR).

    * [coder](https://github.com/ropensci/software-review/issues/381), Deterministic Categorization of Items Based on External Code Data. Submitted by [Erik Bülow](https://github.com/eribul).

    * [SymbiotaR2](https://github.com/ropensci/software-review/issues/373), Downloading data from Symbiota2 portals into R. Submitted by [Austin Koontz](https://akoontz11.github.io/).

* 2 at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [censo2017](https://github.com/ropensci/software-review/issues/414), Base de Datos de Facil Acceso del Censo 2017 de Chile. Submitted by [Pachamaltese](https://pacha.dev).

    * [pathviewR](https://github.com/ropensci/software-review/issues/409), Wrangle, Analyze, and Visualize Animal Movement Data. Submitted by [Vikram Baliga](https://www.vikram-baliga.com/).

* 2 at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com).

    * [circle](https://github.com/ropensci/software-review/issues/356), R Client Package for Circle CI. Submitted by [Patrick Schratz](https://pat-s.me).

* 2 at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [chemspiderapi](https://github.com/ropensci/software-review/issues/329), R Wrapper for ChemSpider's API Services. Submitted by [Raoul Wolf](https://github.com/RaoulWolf).

    * [exoplanets](https://github.com/ropensci/software-review/issues/309), Provides access to NASA's Exoplanet Archive, see <https://exoplanetarchive.ipac.caltech.edu/index.html>. Submitted by [Tyler Littlefield](http://tylerlittlefield.com).

* 4 at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [stantargets](https://github.com/ropensci/software-review/issues/430), Targets for Stan Workflows. Submitted by [Will Landau](https://wlandau.github.io).

    * [dataaimsr](https://github.com/ropensci/software-review/issues/428), AIMS Data Platform API Client. Submitted by [Diego Barneche](https://www.diegobarneche.com/).

    * [dataspice](https://github.com/ropensci/software-review/issues/426), Create Lightweight Schema.org Descriptions of Data. Submitted by [Bryce Mecum](https://brycemecum.com).

    * [occCite](https://github.com/ropensci/software-review/issues/407), Querying and Managing Large Biodiversity Occurrence Datasets. Submitted by [Hannah Owens](http://hannahlowens.weebly.com/).

* 3 at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [slopes](https://github.com/ropensci/software-review/issues/420), Calculate Slopes of Roads, Rivers and Trajectories. Submitted by [RFlx](http://www.rosafelix.bike).

    * [epair](https://github.com/ropensci/software-review/issues/418), Grabs data from EPA API, simplifies getting pollutant data. Submitted by [GLOrozcoM](https://github.com/GLOrozcoM).

    * [tidytags](https://github.com/ropensci/software-review/issues/382), Simple Collection and Powerful Analysis of Twitter Data. Submitted by [Bret Staudt Willet](http://bretsw.com).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog



### Software Review

* [coder Makes Medical Coding less Messy](/blog/2021/02/09/coder) by Erik Bülow. The coder package helps to summarize and interpret (medical) coding in R (think ICD, ATC and more).{{< figure src="/blog/2021/02/09/coder/hex.png" alt="Hex sticker for the coder package" width="400" >}}



* [rOpenSci Dev Guide 0.6.0: Updates](/blog/2021/02/23/devguide-0.6.0) by Maëlle Salmon, Brooke Anderson, Laura DeCicco, Julia Gustavsen, Anna Krystalli, Mauro Lepore, Karthik Ram, Noam Ross, Melina Vidoni. Updates in version 0.6.0 of the online book 'rOpenSci Packages: Development, Maintenance, and Peer Review rOpenSci Packages: Development, Maintenance, and Peer Review'.{{< figure src="/img/blog-images/2019-05-16-dev-guide-update/cover.png" alt="" width="400" >}}



### Other topics

* [Make Your R Package Easier to Cite](/blog/2021/02/16/package-citation) by Maëlle Salmon, Scott Chamberlain, Karthik Ram. Some tips to promote scientific citations of your work.

## Citations



So far we found 7 citations of our packages for 2021. 
In total our database contains 1223 citations that you can explore on our [citations page](/citations).
Thank you for citing our tools!

## Use cases



8 use cases of our packages and resources have been reported since the 1st of January.

* [Mapping collaborations in Neotropical Taxonomy with refsplitr](https://discuss.ropensci.org/t/mapping-collaborations-in-neotropical-taxonomy-with-refsplitr/2353). Reported by Emilio M Bruna.

* [Use gert to scan all git repos in a directory](https://discuss.ropensci.org/t/use-gert-to-scan-all-git-repos-in-a-directory/2332). Reported by Danielle Navarro.

* [Shiny apps to search #rstudioglobal or #rstats tweets with rtweet](https://discuss.ropensci.org/t/shiny-apps-to-search-rstudioglobal-or-rstats-tweets-with-rtweet/2324). Reported by Sharon Machlis.

* [Using dittodb to test database queries](https://discuss.ropensci.org/t/using-dittodb-to-test-database-queries/2322). Reported by Gordon Shotwell.

* [pdftools for extracting complex (e.g. text-wrapped/multiline) tables from pdfs](https://discuss.ropensci.org/t/pdftools-for-extracting-complex-e-g-text-wrapped-multiline-tables-from-pdfs/2327). Reported by Lizlaw.

* [Getting and plotting weather and climate data](https://discuss.ropensci.org/t/getting-and-plotting-weather-and-climate-data/2320). Reported by Alex.

* [Using ghql to analyze all my 2020 GitHub commits](https://discuss.ropensci.org/t/using-ghql-to-analyze-all-my-2020-github-commits/2315). Reported by Frie.

* [Scraping liked posts on Twitter using rtweet](https://discuss.ropensci.org/t/scraping-liked-posts-on-twitter-using-rtweet/2294). Reported by Isabella Velásquez.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## From the forum

TO BE CURATED BY HAND

## Call For maintainers

TO BE CURATED BY HAND

<!--IF CALL
* [our guidance on _Changing package maintainers_](https://devguide.ropensci.org/changing-maintainers.html)
* [our _Package Curation Policy_](https://devguide.ropensci.org/curationpolicy.html)

IF NO CALL
There's no open call for new maintainers at this point but you can refer to our [contributing guide](https://contributing.ropensci.org/) for finding ways to get involved!
As a maintainer, feel free to contact us on Slack or email `info@ropensci.org` to get your call for maintainer featured in the next newsletter. -->

## Package development corner

Some useful tips for R package developers. :eyes:

Do you have some questions around licensing of your R package?
The [license chapter](https://r-pkgs.org/license.html) of the R packages book by Hadley Wickham and Jenny Bryan was [recently](https://twitter.com/hadleywickham/status/1307338435976364032) updated.
A less recent but interesting read is [Colin Fay's Licensing R e-book](https://thinkr-open.github.io/licensing-r/index.html).

Resources roundup encoding?
"If the DESCRIPTION file is not entirely in ASCII it should contain an ‘Encoding’ field specifying an encoding. This is used as the encoding of the DESCRIPTION file itself and of the R and NAMESPACE files, and as the default encoding of .Rd files. "
http://kevinushey.github.io/blog/2018/02/21/string-encoding-and-r/
https://irene.rbind.io/post/encoding-in-r/
https://www.mail-archive.com/r-package-devel@r-project.org/msg06536.html

## Last words

Thanks for reading! If you want to want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or other things like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
