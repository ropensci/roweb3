---
title: Maintain or Co-Maintain an rOpenSci Package!
author:
  - Maëlle Salmon
date: '2022-10-17'
slug: maintain-or-co-maintain-an-ropensci-package
categories: []
tags:
  - community
  - packages
  - welcome
  - maintenance
description: A list of packages who need your help, and a list of reasons why to help.
---

The rOpenSci [suite of packages](/packages) is mainly composed of packages contributed by the community through [peer-review](/software-review), but also includes some packages maintained by staff. 
Over time, the commitments and availability of the original developers of a package can change. This leads to some maintainers stepping down from their maintainer role, or other maintainers looking to lower their workload through more teamwork and therefore looking for co-maintainers.

We're so grateful for all our community maintainers and want to make sure that they feel good about the work they do and not burdened by the responsibility. This is why we conduct annual maintainer surveys, to ensure that maintainers feel supported and feel free to say when they need help, or are ready to move on. 
Following our recent annual maintainer survey, we have projects looking for both new maintainers and co-maintainers. Therefore, we say **thank you!** to our maintainers looking to move on, and in this blog post we will explain why **you** might want to help, and we'll list the packages currently up for adoption or collaboration.

## Why maintain or co-maintain a package?

Maintaining or co-maintaining a package can have some specific advantages, on top of the big motivator "keep a cool package alive".
Maintenance work allows you to gain and practice software development skills (writing R functions, using GitHub interface, unit testing and continuous integration, technical writing in the documentation...).
Furthermore, it becomes a public record of these awesome skills you have developed and will contribute to your online developer portfolio.

Being an author of an _rOpenSci_ package means you have access to rOpenSci infrastructure (such as [pkgdown docs building for all packages](/blog/2021/09/03/runiverse-docs/)) as well as community support and camaraderie (through our [forum](/blog/2022/01/11/ropensci-forum/), and our semi-open slack where there are other package maintainers, including rOpenSci staff).
We're grateful for all contributors that help us provide a healthy suite of packages!

Co-maintaining can allow for more team work and more division of labour, so if that appeals to you, you could also look for co-maintainers. 

## What does it take to (co-)maintain a package?

How much time, what skills in particular?
Sadly the answers is "it depends".
In the list of packages in this post, some require a large overhaul (for instance [essurvey](https://github.com/ropensci/essurvey) whose data source underwent many changes) while others are more stable (for instance [robotstxt](https://github.com/ropensci/robotstxt/)).
Other criteria that might increase the workload are: popularity (many users' requests), code health (maybe a dependency could or should be swapped for a more modern or better maintained one), whether the package is on CRAN or you'd want it to be, etc.
Have a [look at the repository](/blog/2022/07/01/evaluating-github-activity-for-contributors/) to assess its needs and its toolset before volunteering, and don't hesitate to ask questions (in the volunteering issue, in a new issue if there is no volunteering issue).

## How long would you (co-)maintain a package?

Until you no longer want to. :wink:
Ideally, it'd be great for you to be reasonably confident you can spend some of your time on the package for at least one year.
As a maintainer, if you want to step down, please reach out to `info@ropensci.org` -- no need to wait for the next annual survey and suffer in silence.

## How to choose a package to (co-)maintain?

Although general technical skills will make you a good contributor to many packages, it is **crucial** to have specific interest in what a package does or the toolset it uses.
You might have that interest because you use that package at work or because its scope falls under your topics of interest, for instance.
Being very interested in a package will make you more motivated, furthermore the user community will likely be a community of your peers.

Last but not least, if you use the package you maintain at work, you might be able to tackle maintenance during your normal working hours, which might be more sustainable than carving time for it on the side.

## Packages looking for maintainers!

To volunteer, comment in the corresponding volunteering issue. Thank you!


- **robotstxt, A 'robots.txt' Parser and 'Webbot'/'Spider'/'Crawler' Permissions Checker**. Provides functions to download and parse 'robots.txt' files. Ultimately the package makes it easy to check if bots (spiders, crawler, scrapers, ...) are allowed to access specific resources on a domain. [Issue for volunteering](https://github.com/ropensci/robotstxt/issues/62).
- **chromer, Interface to Chromosome Counts Database API**. A programmatic interface to the [Chromosome Counts Database](http://ccdb.tau.ac.il/). [Issue for volunteering](https://github.com/ropensci/chromer/issues/33).
- **essurvey, Download Data from the European Social Survey on the Fly**. Download data from the European Social Survey directly from their [website](https://www.europeansocialsurvey.org/). There are two families of functions that allow you to download and interactively check all countries and rounds available. [Issue for volunteering](https://github.com/ropensci/essurvey/issues/57).
- **wikitaxa, Taxonomic Information from 'Wikipedia'**. 'Taxonomic' information from 'Wikipedia', 'Wikicommons', 'Wikispecies', and 'Wikidata'. Functions included for getting taxonomic information from each of the sources just listed, as well performing taxonomic search. [Issue for volunteering](https://github.com/ropensci/wikitaxa/issues/20).
- **rgnparser, Parse Scientific Names**. Parse scientific names using ['gnparser'](https://github.com/gnames/gnparser), written in Go. 'gnparser' parses scientific names into their component parts; it utilizes a Parsing Expression Grammar specifically for scientific names. [Issue for volunteering](https://github.com/ropensci/rgnparser/issues/14).
- **tabulizer, Bindings for 'Tabula' PDF Table Extractor Library**. Bindings for the ['Tabula'](https://tabula.technology/) 'Java' library, which can extract tables from PDF documents. The ['tabulizerjars'](https://github.com/ropensci/tabulizerjars) package provides versioned 'Java' .jar files, including all dependencies, aligned to releases of 'Tabula'. [Issue for volunteering](https://github.com/ropensci/tabulizer/issues/148).
- **RSelenium, R Bindings for 'Selenium WebDriver'**. Provides a set of R bindings for the ['Selenium 2.0 WebDriver'](https://www.selenium.dev/documentation/) using the ('JsonWireProtocol'](https://github.com/SeleniumHQ/selenium/wiki/JsonWireProtocol). 'Selenium 2.0 WebDriver' allows driving a web browser natively as a user would either locally or on a remote machine using the Selenium server it marks a leap forward in terms of web browser automation. [Issue for volunteering](https://github.com/ropensci/RSelenium/issues/261).
- **elastic, General Purpose Interface to 'Elasticsearch'**. Connect to 'Elasticsearch', a 'NoSQL' database built on the 'Java' Virtual Machine. Interacts with the ['Elasticsearch' 'HTTP' API](https://www.elastic.co/elasticsearch/), including functions for setting connection details to 'Elasticsearch' instances, loading bulk data, searching for documents with both 'HTTP' query variables and 'JSON' based body requests. [Issue for volunteering](https://github.com/ropensci/elastic/issues/292).
- **ckanr, Client for the Comprehensive Knowledge Archive Network ('CKAN') API**. Client for ['CKAN' API](https://ckan.org/). Includes interface to 'CKAN' 'APIs' for search, list, show for packages, organizations, and resources. In addition, provides an interface to the 'datastore' API. [Issue for volunteering](https://github.com/ropensci/ckanr/issues/186).
- **Rclean, A Tool for Writing Cleaner, More Transparent Code**. To create clearer, more concise code provides this toolbox helps coders to isolate the essential parts of a script that produces a chosen result, such as an object, tables and figures written to disk. [Issue for volunteering](https://github.com/ropensci/Rclean/issues/213).

## Packages looking for co-maintainers!

To volunteer, open an issue in the GitHub repository or email the maintainer.
Thank you!


- **taxlist, Handling Taxonomic Lists**. Handling taxonomic lists through objects of class 'taxlist'. This package provides functions to import species lists from ['Turboveg'](https://www.synbiosys.alterra.nl/turboveg/) and the possibility to create backups from resulting R-objects. [Issue with details](https://github.com/ropensci/taxlist/issues/19).
- **tidync, A Tidy Approach to 'NetCDF' Data Exploration and Extraction**. Tidy tools for 'NetCDF' data sources. Explore the contents of a 'NetCDF' source (file or URL) presented as variables organized by grid with a database-like interface.   [Issue with details](https://github.com/ropensci/tidync/issues/117).
- **googleLanguageR, Call Google's 'Natural Language' API, 'Cloud Translation' API, 
  'Cloud Speech' API and 'Cloud Text-to-Speech' API**. Call 'Google Cloud' machine learning APIs for text and speech tasks. Call the ['Cloud Translation' API](https://cloud.google.com/translate/) for detection and translation of text, the ['Natural Language' API](https://cloud.google.com/natural-language/) to analyse text for sentiment, entities or syntax, the ['Cloud Speech' API](https://cloud.google.com/speech/) to transcribe sound files to text and the ['Cloud Text-to-Speech' API](https://cloud.google.com/text-to-speech/)> to turn text into sound files. [Issue with details](https://github.com/ropensci/googleLanguageR/issues/79).
- **nlrx, Setup, Run and Analyze 'NetLogo' Model Simulations from 'R' via 'XML'**. Setup, run and analyze ['NetLogo'](https://ccl.northwestern.edu/netlogo/>) model simulations in 'R'. 'nlrx' experiments use a similar structure as 'NetLogos' Behavior Space experiments. However, 'nlrx' offers more flexibility and additional tools for running and analyzing complex simulation designs and sensitivity analyses. By nesting model calls in future environments, large simulation design with many runs can be executed in parallel. This also enables simulating 'NetLogo' experiments on remote high performance computing machines.  [Repository](https://github.com/ropensci/nlrx).
- **refsplitr, author name disambiguation, author georeferencing, and mapping of 
    coauthorship networks with 'Web of Science' data**. Tools to parse and organize reference records downloaded from the 'Web of Science' citation database into an R-friendly format, disambiguate the names of authors, geocode their locations, and generate/visualize coauthorship networks. [Issue with details](https://github.com/ropensci/refsplitr/issues/88).
- **rtika, R Interface to 'Apache Tika'**. Extract text or metadata from over a thousand file types, using [Apache Tika](https://tika.apache.org/). Get either plain text or structured XHTML content.  [Issue with details](https://github.com/ropensci/rtika/issues/16).
- **tidyqpcr, Quantitative PCR Analysis with the Tidyverse**. For reproducible quantitative PCR (qPCR) analysis building on packages from the ’tidyverse’, notably ’dplyr’ and ’ggplot2’. It normalizes (by ddCq), summarizes, and plots pre-calculated Cq data, and plots raw amplification and melt curves from Roche Lightcycler (tm) machines. It does NOT (yet) calculate Cq data from amplification curves. [Repository](https://github.com/ropensci/tidyqpcr). [Issue with details](https://github.com/ropensci/tidyqpcr/issues/196).

- **dbparser, 'DrugBank' Database XML Parser**. This tool is for parsing the ['DrugBank' XML database](https://www.drugbank.ca/). The parsed data are then returned in a proper 'R' dataframe with the ability to save them in a given database. [Issue with details](https://github.com/ropensci/dbparser/issues/138).
- **MODIStsp, Find, Download and Process MODIS Land ProductsData**. Allows automating the creation of time series of rasters derived from MODIS satellite land products data. It performs several typical preprocessing steps such as download, mosaicking, reprojecting and resizing data acquired on a specified time period. [Repository](https://github.com/ropensci/MODIStsp). [Issue with details](https://github.com/ropensci/MODIStsp/issues/262).
- **assertr, Assertive Programming for R Analysis Pipelines**. Provides functionality to assert conditions that have to be met so that errors in data used in analysis pipelines can fail quickly. Similar to 'stopifnot()' but more powerful, friendly, and easier for use in pipelines. [Repository](https://github.com/ropensci/assertr). [Issue with details](https://github.com/ropensci/assertr/issues/118).


## Conclusion

In this post we explained that there is a cycle to package maintenance, why maintainers may step down, and why one would want to step up! Hopefully we've inspired some soon-to-be maintainers, who've taken a look at our list of rOpenSci packages for which new maintainers or co-maintainers are needed.
Not sure you're ready to tackle these packages, but think you might be interested in the future? Help requests including calls for maintainers and co-maintainers are always listed on our [help wanted](/help-wanted) page.
If you are interested in rOpenSci mission but not in the idea of maintaining a package, have a look at our [contributing guide](https://contributing.ropensci.org/) for other ways you can contribute to rOpenSci and benefit from being part of the rOpenSci community!
