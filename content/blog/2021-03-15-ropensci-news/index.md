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
You can read this post [on our blog](/blog/2021/03/15/ropensci-news).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

Our R-universe project now has its own page on our website! :rocket:

Regarding another exciting project of ours... We've run the first comm call of our series on [statistical software review project](/stat-software-review/)! [rOpenSci Statistical Software Testing and Peer Review](https://ropensci.org/commcalls/feb2021-statsreview/) took place on March the 2d, blabla, resources up, recording up, blabla.

Find out more [events](/events).

## Software :package:

### New packages




The following 6 packages recently became a part of our software suite:

+ [osmextract](https://docs.ropensci.org/osmextract), developed by Andrea Gilardi together with Robin Lovelace: Find, download, convert and read Open Street Map data extracts obtained from several providers.  It is available on [CRAN]( https://CRAN.R-project.org/package=osmextract). It has been [reviewed](https://github.com/ropensci/software-review/issues/395) by Salva Fernández, Nicholas Potter.

+ [pendulum](https://docs.ropensci.org/pendulum), developed by Scott Chamberlain: Time classes, with hooks for mocking time. 

+ [pixelclasser](https://docs.ropensci.org/pixelclasser), developed by Carlos Real: Contains functions to classify the pixels of an image file (jpeg or tiff) by its colour. It implements a simple form of the techniques known as Support Vector Machine adapted to this particular problem. It has been [reviewed](https://github.com/ropensci/software-review/issues/406) by Quentin Read.

+ [tarchetypes](https://docs.ropensci.org/tarchetypes), developed by William Michael Landau: Function-oriented Make-like declarative workflows for Statistics and data science are supported in the 'targets' R package. As an extension to 'targets', the 'tarchetypes' package provides convenient user-side functions to make 'targets' easier to use. By establishing reusable archetypes for common kinds of targets and pipelines, these functions help express complicated reproducible workflows concisely and compactly. The methods in this package were influenced by the 'drake' R package by Will Landau (2018) <doi:10.21105/joss.00550>.  It is available on [CRAN]( https://CRAN.R-project.org/package=tarchetypes). It has been [reviewed](https://github.com/ropensci/software-review/issues/401) by Samantha Oliver, Tristan Mahr.

+ [targets](https://docs.ropensci.org/targets), developed by William Michael Landau: As a pipeline toolkit for Statistics and data science in R, the 'targets' package brings together function-oriented programming and 'Make'-like declarative workflows. It analyzes the dependency relationships among the tasks of a workflow, skips steps that are already up to date, runs the necessary computation with optional parallel workers, abstracts files as R objects, and provides tangible evidence that the results match the underlying code and data. The methodology in this package borrows from GNU 'Make' (2015, ISBN:978-9881443519) and 'drake' (2018, <doi:10.21105/joss.00550>).  It is available on [CRAN]( https://CRAN.R-project.org/package=targets). It has been [reviewed](https://github.com/ropensci/software-review/issues/401) by Samantha Oliver, Tristan Mahr.

+ [terrainr](https://docs.ropensci.org/terrainr), developed by Michael Mahoney: Functions for the retrieval, manipulation, and visualization of 'geospatial' data, with an aim towards producing '3D' landscape visualizations in the 'Unity' '3D' rendering engine. Functions are also provided for retrieving elevation data and base map tiles from the 'USGS' National Map ('<https://apps.nationalmap.gov/services/>'). It has been [reviewed](https://github.com/ropensci/software-review/issues/416) by Mike Johnson, Sydney Foks.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following 40 packages have had an update since the latest newsletter: [gert](https://docs.ropensci.org/gert "Simple Git Client for R") ([`v1.1.0`](https://github.com/r-lib/gert/releases/tag/v1.1.0)), [assertr](https://docs.ropensci.org/assertr "Assertive Programming for R Analysis Pipelines") ([`v2.8`](https://github.com/ropensci/assertr/releases/tag/v2.8)), [c14bazAAR](https://docs.ropensci.org/c14bazAAR "Download and Prepare C14 Dates from Different Source Databases") ([`1.3.0`](https://github.com/ropensci/c14bazAAR/releases/tag/1.3.0)), [ckanr](https://docs.ropensci.org/ckanr "Client for the Comprehensive Knowledge Archive Network ('CKAN') API") ([`v0.6.0`](https://github.com/ropensci/ckanr/releases/tag/v0.6.0)), [crul](https://docs.ropensci.org/crul "HTTP Client") ([`v1.1.0`](https://github.com/ropensci/crul/releases/tag/v1.1.0)), [drake](https://docs.ropensci.org/drake "A Pipeline Toolkit for Reproducible Computation at Scale") ([`7.13.1`](https://github.com/ropensci/drake/releases/tag/7.13.1)), [essurvey](https://docs.ropensci.org/essurvey "Download Data from the European Social Survey on the Fly") ([`v1.0.6`](https://github.com/ropensci/essurvey/releases/tag/v1.0.6)), [fulltext](https://docs.ropensci.org/fulltext "Full Text of 'Scholarly' Articles Across Many Data Sources") ([`v1.7.0`](https://github.com/ropensci/fulltext/releases/tag/v1.7.0)), [geojsonio](https://docs.ropensci.org/geojsonio "Convert Data from and to 'GeoJSON' or 'TopoJSON'") ([`v0.9.4`](https://github.com/ropensci/geojsonio/releases/tag/v0.9.4)), [git2r](https://docs.ropensci.org/git2r "Provides Access to Git Repositories") ([`v0.28.0`](https://github.com/ropensci/git2r/releases/tag/v0.28.0)), [git2rdata](https://docs.ropensci.org/git2rdata "Store and Retrieve Data.frames in a Git Repository") ([`v0.3.0`](https://github.com/ropensci/git2rdata/releases/tag/v0.3.0)), [GSODR](https://docs.ropensci.org/GSODR "Global Surface Summary of the Day ('GSOD') Weather Data Client") ([`v3.0.0`](https://github.com/ropensci/GSODR/releases/tag/v3.0.0)), [ijtiff](https://docs.ropensci.org/ijtiff "Comprehensive TIFF I/O with Full Support for 'ImageJ'
    TIFF Files") ([`v2.2.5`](https://github.com/ropensci/ijtiff/releases/tag/v2.2.5)), [magick](https://docs.ropensci.org/magick "Advanced Graphics and Image-Processing in R") ([`v2.6.0`](https://github.com/ropensci/magick/releases/tag/v2.6.0)), [nodbi](https://docs.ropensci.org/nodbi "'NoSQL' Database Connector") ([`v0.4.2`](https://github.com/ropensci/nodbi/releases/tag/v0.4.2)), [nomisr](https://docs.ropensci.org/nomisr "Access 'Nomis' UK Labour Market Data") ([`0.4.4`](https://github.com/ropensci/nomisr/releases/tag/0.4.4)), [opencage](https://docs.ropensci.org/opencage "Geocode with the OpenCage API") ([`v0.2.2`](https://github.com/ropensci/opencage/releases/tag/v0.2.2)), [osmextract](https://docs.ropensci.org/osmextract "Download and Read OpenStreetMap Data Extracts") ([`v0.2.1`](https://github.com/ropensci/osmextract/releases/tag/v0.2.1)), [parzer](https://docs.ropensci.org/parzer "Parse Messy Geographic Coordinates") ([`v0.4.0`](https://github.com/ropensci/parzer/releases/tag/v0.4.0)), [plotly](https://docs.ropensci.org/plotly "Create Interactive Web Graphics via 'plotly.js'") ([`v4.9.3`](https://github.com/ropensci/plotly/releases/tag/v4.9.3)), [qualtRics](https://docs.ropensci.org/qualtRics "Download 'Qualtrics' Survey Data") ([`v3.1.4`](https://github.com/ropensci/qualtRics/releases/tag/v3.1.4)), [rcol](https://docs.ropensci.org/rcol "Catalogue of Life Client") ([`v0.1.0`](https://github.com/ropensci/rcol/releases/tag/v0.1.0)), [rebird](https://docs.ropensci.org/rebird "R Client for the eBird Database of Bird Observations") ([`v1.2.0`](https://github.com/ropensci/rebird/releases/tag/v1.2.0)), [rgbif](https://docs.ropensci.org/rgbif "Interface to the Global 'Biodiversity' Information Facility API") ([`v3.5.2`](https://github.com/ropensci/rgbif/releases/tag/v3.5.2)), [rgnparser](https://docs.ropensci.org/rgnparser "Parse Scientific Names") ([`v0.2.0`](https://github.com/ropensci/rgnparser/releases/tag/v0.2.0)), [rinat](https://docs.ropensci.org/rinat "Access 'iNaturalist' Data Through APIs") ([`v0.1.7`](https://github.com/ropensci/rinat/releases/tag/v0.1.7)), [ritis](https://docs.ropensci.org/ritis "Integrated Taxonomic Information System Client") ([`v1.0.0`](https://github.com/ropensci/ritis/releases/tag/v1.0.0)), [rnoaa](https://docs.ropensci.org/rnoaa "'NOAA' Weather Data from R") ([`v1.3.2`](https://github.com/ropensci/rnoaa/releases/tag/v1.3.2)), [roadoi](https://docs.ropensci.org/roadoi "Find Free Versions of Scholarly Publications via Unpaywall") ([`v0.7`](https://github.com/ropensci/roadoi/releases/tag/v0.7)), [rorcid](https://docs.ropensci.org/rorcid "Interface to the 'Orcid.org' API") ([`v0.7.0`](https://github.com/ropensci/rorcid/releases/tag/v0.7.0)), [rplos](https://docs.ropensci.org/rplos "Interface to the Search API for 'PLoS' Journals") ([`v1.0.0`](https://github.com/ropensci/rplos/releases/tag/v1.0.0)), [spocc](https://docs.ropensci.org/spocc "Interface to Species Occurrence Data Sources") ([`v1.2.0`](https://github.com/ropensci/spocc/releases/tag/v1.2.0)), [stplanr](https://docs.ropensci.org/stplanr "Sustainable Transport Planning") ([`0.8.1`](https://github.com/ropensci/stplanr/releases/tag/0.8.1)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.0.4`](https://github.com/ropensci/tarchetypes/releases/tag/0.0.4)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented 'Make'-Like Declarative Workflows") ([`0.1.0`](https://github.com/ropensci/targets/releases/tag/0.1.0)), [taxizedb](https://docs.ropensci.org/taxizedb "Tools for Working with 'Taxonomic' Databases") ([`v0.3.0`](https://github.com/ropensci/taxizedb/releases/tag/v0.3.0)), [terrainr](https://docs.ropensci.org/terrainr "Landscape Visualizations in R and 'Unity'") ([`v0.3.1`](https://github.com/ropensci/terrainr/releases/tag/v0.3.1)), [weathercan](https://docs.ropensci.org/weathercan "Download Weather Data from Environment and Climate Change Canada") ([`v0.5.0`](https://github.com/ropensci/weathercan/releases/tag/v0.5.0)), [webchem](https://docs.ropensci.org/webchem "Chemical Information from the Web") ([`v1.1.1`](https://github.com/ropensci/webchem/releases/tag/v1.1.1)), [wellknown](https://docs.ropensci.org/wellknown "Convert Between 'WKT' and 'GeoJSON'") ([`v0.7.2`](https://github.com/ropensci/wellknown/releases/tag/v0.7.2)).

We are only listing the most recent version.

## Software Peer Review

There are 19 recently closed and active submissions and 2 submissions on hold. Issues are at different stages: 

* 6 at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [terrainr](https://github.com/ropensci/software-review/issues/416), Retrieve Data from the 'USGS' National Map and Transform it for '3D' Landscape Visualizations. Submitted by [Michael Mahoney](https://www.mikemahoney218.com/).

    * [pixelclasser](https://github.com/ropensci/software-review/issues/406), A Package for Classifying Pixels by Colour. Submitted by [Carlos Real Rodríguez](https://github.com/CarlosRealR).

    * [targets](https://github.com/ropensci/software-review/issues/401), Dynamic Function-Oriented Make-Like Declarative Pipelines for R. Submitted by [Will Landau](https://wlandau.github.io).

    * [osmextract](https://github.com/ropensci/software-review/issues/395), Download and Read OpenStreetMap Data Extracts. Submitted by [Andrea Gilardi](https://github.com/agila5).

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

* [Introducing BaseSet for mathematical sets](/blog/2021/01/19/introducing-baseset) by Lluís Revilla Sancho.

* [targets: Democratizing Reproducible Analysis Pipelines](/blog/2021/02/03/targets) by Will Landau. A new pipeline tool, a new ecosystem, and how you can help.{{< figure src="/blog/2021/02/03/targets/card.png" alt="targets hex logo" width="400" >}}



* [coder Makes Medical Coding less Messy](/blog/2021/02/09/coder) by Erik Bülow. The coder package helps to summarize and interpret (medical) coding in R (think ICD, ATC and more).{{< figure src="/blog/2021/02/09/coder/hex.png" alt="Hex sticker for the coder package" width="400" >}}



### Other topics

* [rOpenSci Code of Conduct Annual Review](/blog/2021/01/07/conduct2021) by Stefanie Butland, Scott Chamberlain, Mark Padgham, Kara Woo. Updates for version 2.2 of rOpenSci's Code of Conduct.

* [rOpenSci 2020 Code of Conduct Transparency Report](/blog/2021/01/07/transparency2020) by Stefanie Butland, Scott Chamberlain, Kara Woo. No Code of Conduct reports in 2020.

* [Introducing the rOpenSci Community Contributing Guide](/blog/2021/01/20/contributing-guide) by Stefanie Butland, Steffi LaZerte. A guide to finding your path to contributing to rOpenSci.{{< figure src="/blog/2021/01/20/contributing-guide/cover_sm.png" alt="Cartoon of 6 hypothetical rOpenSci community members" width="400" >}}



* [Learn All About HTTP Testing: Book Update](/blog/2021/01/26/http-testing-book) by Maëlle Salmon, Scott Chamberlain. The 'HTTP testing in R' book has been updated. Useful for developers of packages interacting with web resources.

* [How rOpenSci Runs Community Calls](/blog/2021/02/02/ropensci-community-calls) by Stefanie Butland, Emily Lescak. Tips from choosing a topic to capturing outcomes.{{< figure src="/blog/2021/02/02/ropensci-community-calls/commcalls-img.png" alt="collage of images from community calls with 3 Zoom views of speakers, a notes doc and view of someone's screen" width="400" >}}



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
