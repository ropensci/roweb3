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
  last_newsletter: "2021-01-01"
---



Dear rOpenSci friends, it's time for our monthly news roundup!
Yes, the latest one was on 2021-01-01.
Some housekeeping first:
We've been changing the infrastructure of our newsletter a bit so please update your RSS and JSON feeds to `https://ropensci.org/tags/newsletter/index.xml` and `https://ropensci.org/tags/newsletter/index.json`, respectively.
You can read this post [on our blog](/blog/2021/01/01/ropensci-news).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

TO BE CURATED BY HAND

Find out more [events](/events).

## Software :package:

### New packages




The following 5 packages recently became a part of our software suite:

+ [osmextract](https://docs.ropensci.org/osmextract), developed by Andrea Gilardi together with Robin Lovelace: Find, download, convert and read Open Street Map data extracts obtained from several providers.  It is available on [CRAN]( https://CRAN.R-project.org/package=osmextract). It has been [reviewed](https://github.com/ropensci/software-review/issues/395) by Salva Fernández, Nicholas Potter.

+ [pendulum](https://docs.ropensci.org/pendulum), developed by Scott Chamberlain: Time classes, with hooks for mocking time. 

+ [pixelclasser](https://docs.ropensci.org/pixelclasser), developed by Carlos Real: Contains functions to classify the pixels of an image file (jpeg or tiff) by its colour. It implements a simple form of the techniques known as Support Vector Machine adapted to this particular problem. 

+ [tarchetypes](https://docs.ropensci.org/tarchetypes), developed by William Michael Landau: Function-oriented Make-like declarative workflows for Statistics and data science are supported in the 'targets' R package. As an extension to 'targets', the 'tarchetypes' package provides convenient user-side functions to make 'targets' easier to use. By establishing reusable archetypes for common kinds of targets and pipelines, these functions help express complicated reproducible workflows concisely and compactly. The methods in this package were influenced by the 'drake' R package by Will Landau (2018) <doi:10.21105/joss.00550>.  It is available on [CRAN]( https://CRAN.R-project.org/package=tarchetypes). It has been [reviewed](https://github.com/ropensci/software-review/issues/401) by Samantha Oliver, Tristan Mahr.

+ [targets](https://docs.ropensci.org/targets), developed by William Michael Landau: As a pipeline toolkit for Statistics and data science in R, the 'targets' package brings together function-oriented programming and 'Make'-like declarative workflows. It analyzes the dependency relationships among the tasks of a workflow, skips steps that are already up to date, runs the necessary computation with optional parallel workers, abstracts files as R objects, and provides tangible evidence that the results match the underlying code and data. The methodology in this package borrows from GNU 'Make' (2015, ISBN:978-9881443519) and 'drake' (2018, <doi:10.21105/joss.00550>).  It is available on [CRAN]( https://CRAN.R-project.org/package=targets). It has been [reviewed](https://github.com/ropensci/software-review/issues/401) by Samantha Oliver, Tristan Mahr.

Discover [more packages](/packages), read more about [Software Peer Review](/software-peer-review).

### New versions



The following 37 packages have had an update since the latest newsletter: [gert](https://docs.ropensci/gert "Simple Git Client for R") [v1.1.0](https://github.com/r-lib/gert/releases/tag/v1.1.0), [assertr](https://docs.ropensci/assertr "Assertive Programming for R Analysis Pipelines") [v2.8](https://github.com/ropensci/assertr/releases/tag/v2.8), [c14bazAAR](https://docs.ropensci/c14bazAAR "Download and Prepare C14 Dates from Different Source Databases") [1.3.0](https://github.com/ropensci/c14bazAAR/releases/tag/1.3.0), [ckanr](https://docs.ropensci/ckanr "Client for the Comprehensive Knowledge Archive Network ('CKAN') API") [v0.6.0](https://github.com/ropensci/ckanr/releases/tag/v0.6.0), [crul](https://docs.ropensci/crul "HTTP Client") [v1.1.0](https://github.com/ropensci/crul/releases/tag/v1.1.0), [drake](https://docs.ropensci/drake "A Pipeline Toolkit for Reproducible Computation at Scale") [7.13.1](https://github.com/ropensci/drake/releases/tag/7.13.1), [essurvey](https://docs.ropensci/essurvey "Download Data from the European Social Survey on the Fly") [v1.0.6](https://github.com/ropensci/essurvey/releases/tag/v1.0.6), [fulltext](https://docs.ropensci/fulltext "Full Text of 'Scholarly' Articles Across Many Data Sources") [v1.7.0](https://github.com/ropensci/fulltext/releases/tag/v1.7.0), [geojsonio](https://docs.ropensci/geojsonio "Convert Data from and to 'GeoJSON' or 'TopoJSON'") [v0.9.4](https://github.com/ropensci/geojsonio/releases/tag/v0.9.4), [git2r](https://docs.ropensci/git2r "Provides Access to Git Repositories") [v0.28.0](https://github.com/ropensci/git2r/releases/tag/v0.28.0), [git2rdata](https://docs.ropensci/git2rdata "Store and Retrieve Data.frames in a Git Repository") [v0.3.0](https://github.com/ropensci/git2rdata/releases/tag/v0.3.0), [GSODR](https://docs.ropensci/GSODR "Global Surface Summary of the Day ('GSOD') Weather Data Client") [v3.0.0](https://github.com/ropensci/GSODR/releases/tag/v3.0.0), [ijtiff](https://docs.ropensci/ijtiff "Comprehensive TIFF I/O with Full Support for 'ImageJ'
    TIFF Files") [v2.2.5](https://github.com/ropensci/ijtiff/releases/tag/v2.2.5), [magick](https://docs.ropensci/magick "Advanced Graphics and Image-Processing in R") [v2.6.0](https://github.com/ropensci/magick/releases/tag/v2.6.0), [nodbi](https://docs.ropensci/nodbi "'NoSQL' Database Connector") [v0.4.2](https://github.com/ropensci/nodbi/releases/tag/v0.4.2), [nomisr](https://docs.ropensci/nomisr "Access 'Nomis' UK Labour Market Data") [0.4.4](https://github.com/ropensci/nomisr/releases/tag/0.4.4), [opencage](https://docs.ropensci/opencage "Geocode with the OpenCage API") [v0.2.1](https://github.com/ropensci/opencage/releases/tag/v0.2.1), [osmextract](https://docs.ropensci/osmextract "Download and Read OpenStreetMap Data Extracts") [v0.2.0](https://github.com/ropensci/osmextract/releases/tag/v0.2.0), [parzer](https://docs.ropensci/parzer "Parse Messy Geographic Coordinates") [v0.4.0](https://github.com/ropensci/parzer/releases/tag/v0.4.0), [plotly](https://docs.ropensci/plotly "Create Interactive Web Graphics via 'plotly.js'") [v4.9.3](https://github.com/ropensci/plotly/releases/tag/v4.9.3), [qualtRics](https://docs.ropensci/qualtRics "Download 'Qualtrics' Survey Data") [v3.1.4](https://github.com/ropensci/qualtRics/releases/tag/v3.1.4), [rcol](https://docs.ropensci/rcol "Catalogue of Life Client") [v0.1.0](https://github.com/ropensci/rcol/releases/tag/v0.1.0), [rebird](https://docs.ropensci/rebird "R Client for the eBird Database of Bird Observations") [v1.2.0](https://github.com/ropensci/rebird/releases/tag/v1.2.0), [rgbif](https://docs.ropensci/rgbif "Interface to the Global 'Biodiversity' Information Facility API") [v3.5.2](https://github.com/ropensci/rgbif/releases/tag/v3.5.2), [rgnparser](https://docs.ropensci/rgnparser "Parse Scientific Names") [v0.2.0](https://github.com/ropensci/rgnparser/releases/tag/v0.2.0), [ritis](https://docs.ropensci/ritis "Integrated Taxonomic Information System Client") [v1.0.0](https://github.com/ropensci/ritis/releases/tag/v1.0.0), [rnoaa](https://docs.ropensci/rnoaa "'NOAA' Weather Data from R") [v1.3.2](https://github.com/ropensci/rnoaa/releases/tag/v1.3.2), [roadoi](https://docs.ropensci/roadoi "Find Free Versions of Scholarly Publications via Unpaywall") [v0.7](https://github.com/ropensci/roadoi/releases/tag/v0.7), [rorcid](https://docs.ropensci/rorcid "Interface to the 'Orcid.org' API") [v0.7.0](https://github.com/ropensci/rorcid/releases/tag/v0.7.0), [spocc](https://docs.ropensci/spocc "Interface to Species Occurrence Data Sources") [v1.2.0](https://github.com/ropensci/spocc/releases/tag/v1.2.0), [stplanr](https://docs.ropensci/stplanr "Sustainable Transport Planning") [0.8.1](https://github.com/ropensci/stplanr/releases/tag/0.8.1), [tarchetypes](https://docs.ropensci/tarchetypes "Archetypes for Targets") [0.0.4](https://github.com/ropensci/tarchetypes/releases/tag/0.0.4), [targets](https://docs.ropensci/targets "Dynamic Function-Oriented 'Make'-Like Declarative Workflows") [0.1.0](https://github.com/ropensci/targets/releases/tag/0.1.0), [taxizedb](https://docs.ropensci/taxizedb "Tools for Working with 'Taxonomic' Databases") [v0.3.0](https://github.com/ropensci/taxizedb/releases/tag/v0.3.0), [weathercan](https://docs.ropensci/weathercan "Download Weather Data from Environment and Climate Change Canada") [v0.5.0](https://github.com/ropensci/weathercan/releases/tag/v0.5.0), [webchem](https://docs.ropensci/webchem "Chemical Information from the Web") [v1.1.1](https://github.com/ropensci/webchem/releases/tag/v1.1.1), [wellknown](https://docs.ropensci/wellknown "Convert Between 'WKT' and 'GeoJSON'") [v0.7.2](https://github.com/ropensci/wellknown/releases/tag/v0.7.2).

We are only listing the most recent version.

## Software Peer Review



## On the blog



### Software Review

* [Introducing BaseSet for mathematical sets](/blog/2021/01/19/introducing-baseset) by Lluís Revilla Sancho.

{{< figure src="/blog/2021/02/03/targets/card.png" alt="targets hex logo" width="400" >}}

* [targets: Democratizing Reproducible Analysis Pipelines](/blog/2021/02/03/targets) by Will Landau. A new pipeline tool, a new ecosystem, and how you can help.

{{< figure src="/blog/2021/02/09/coder/hex.png" alt="Hex sticker for the coder package" width="400" >}}

* [coder Makes Medical Coding less Messy](/blog/2021/02/09/coder) by Erik Bülow. The coder package helps to summarize and interpret (medical) coding in R (think ICD, ATC and more).

### Other topics

* [rOpenSci Code of Conduct Annual Review](/blog/2021/01/07/conduct2021) by Stefanie Butland, Scott Chamberlain, Mark Padgham, Kara Woo. Updates for version 2.2 of rOpenSci's Code of Conduct.

* [rOpenSci 2020 Code of Conduct Transparency Report](/blog/2021/01/07/transparency2020) by Stefanie Butland, Scott Chamberlain, Kara Woo. No Code of Conduct reports in 2020.

{{< figure src="/blog/2021/01/20/contributing-guide/cover_sm.png" alt="Cartoon of 6 hypothetical rOpenSci community members" width="400" >}}

* [Introducing the rOpenSci Community Contributing Guide](/blog/2021/01/20/contributing-guide) by Stefanie Butland, Steffi LaZerte. A guide to finding your path to contributing to rOpenSci.

* [Learn All About HTTP Testing: Book Update](/blog/2021/01/26/http-testing-book) by Maëlle Salmon, Scott Chamberlain. The 'HTTP testing in R' book has been updated. Useful for developers of packages interacting with web resources.

{{< figure src="/blog/2021/02/02/ropensci-community-calls/commcalls-img.png" alt="collage of images from community calls with 3 Zoom views of speakers, a notes doc and view of someone's screen" width="400" >}}

* [How rOpenSci Runs Community Calls](/blog/2021/02/02/ropensci-community-calls) by Stefanie Butland, Emily Lescak. Tips from choosing a topic to capturing outcomes.

### Tech Notes

* [Behind the magick: updates to imagemagick and beyond](/blog/2021/01/29/magick-26) by Jeroen Ooms.

## Citations



So far we found 7 citations of our packages for 2021. 
In total our database contains 1223 citations that you can explore on our [citations page](/citations).
Thank you for citing our tools!

## Use cases



8 use cases of our packages and resources have been reported since the latest news digest.

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

## Package development corner

TO BE CURATED BY HAND

## Last words

Thanks for reading! If you want to want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or other things like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
