---
title: Maintain or Co-Maintain an rOpenSci Package!
author:
  - Maëlle Salmon
date: '2022-10-28'
slug: maintain-or-co-maintain-an-ropensci-package
categories: []
tags:
  - community
description: A list of packages who need your help, and a list of reasons why to help.
---

rOpenSci [suite of packages](/packages) is mainly composed of packages contributed by the community through [peer-review](/software-peer-review), and of packages maintained by staff. 
Over time, the commitments and availability of the original developers of a package change, which leads to some maintainers' stepping down from their maintainer role, or some maintainers' hoping for more teamwork and therefore looking for co-maintainers.
Following our recent annual maintainer survey, in this blog post we will explain why **you** might want to help, and we'll list the packages currently up for adoption or collaboration.

## Why maintain or co-maintain a package?

Maintaining or co-maintaining a package can have some advantages, on top of the big motivator "keep a cool package alive".
Maintenance work allows you to gain and practice software development skills (writing R functions, using GitHub interface, unit testing and continuous integration, technical writing in the documentation...).
Furthermore, it will give these skills of yours a public record.

Being an author of an _rOpenSci_ package means you have access to rOpenSci infrastructure ([pkgdown docs building for all packages](/blog/2021/09/03/runiverse-docs/)) and community support and camaraderie (through our [forum](/blog/2022/01/11/ropensci-forum/), our semi-open slack).
We're grateful for all contributions that help us provide a healthy suite of packages!

Co-maintaining might allow for more team work and more work division, and if that appeals to you, even as a the sole maintainer of a package, you could look for co-maintainers. 

## What does it take to maintain or co-maintain a package?

How much time, what skills in particular?
Sadly the answers is "it depends".
In the list of packages in this post, some require a large overhaul (for instance essurvey whose data source underwent many changes) while others are more stable (for instance [robotstxt](https://github.com/ropensci/robotstxt/)).
Other criteria that might increase the workload are: popularity (many users' requests), code health (maybe a dependency could or should be swapped for a more modern or better maintained one), whether the package is on CRAN or you'd want it to be, etc.
Have a [look at the repository](/blog/2022/07/01/evaluating-github-activity-for-contributors/) to assess its needs and its toolset before volunteering, and don't hesitate to ask questions (in the volunteering issue, in a new issue if there is no volunteering issue).

## How long would you maintain or co-maintain a package?

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
- **chromer, Interface to Chromosome Counts Database API**. A programmatic interface to the Chromosome Counts Database (<http://ccdb.tau.ac.il/>). This package is part of the rOpenSci suite (<https://ropensci.org>). [Issue for volunteering](https://github.com/ropensci/chromer/issues/33).
- **essurvey, Download Data from the European Social Survey on the Fly**. Download data from the European Social Survey directly from their website <http://www.europeansocialsurvey.org/>. There are two families of functions that allow you to download and interactively check all countries and rounds available. [Issue for volunteering](https://github.com/ropensci/essurvey/issues/57).
- **wikitaxa, Taxonomic Information from 'Wikipedia'**. 'Taxonomic' information from 'Wikipedia', 'Wikicommons', 'Wikispecies', and 'Wikidata'. Functions included for getting taxonomic information from each of the sources just listed, as well performing taxonomic search. [Issue for volunteering](https://github.com/ropensci/wikitaxa/issues/20).
- **rgnparser, Parse Scientific Names**. Parse scientific names using 'gnparser' (<https://github.com/gnames/gnparser>), written in Go. 'gnparser' parses scientific names into their component parts; it utilizes a Parsing Expression Grammar specifically for scientific names. [Issue for volunteering](https://github.com/ropensci/rgnparser/issues/14).
- **tabulizer, Bindings for 'Tabula' PDF Table Extractor Library**. Bindings for the 'Tabula' <http://tabula.technology/> 'Java' library, which can extract tables from PDF documents. The 'tabulizerjars' package <https://github.com/ropensci/tabulizerjars> provides versioned 'Java' .jar files, including all dependencies, aligned to releases of 'Tabula'. [Issue for volunteering](https://github.com/ropensci/tabulizer/issues/148).
- **RSelenium, R Bindings for 'Selenium WebDriver'**. Provides a set of R bindings for the 'Selenium 2.0 WebDriver' (see <https://www.selenium.dev/documentation/> for more information) using the 'JsonWireProtocol' (see <https://github.com/SeleniumHQ/selenium/wiki/JsonWireProtocol> for more information). 'Selenium 2.0 WebDriver' allows driving a web browser natively as a user would either locally or on a remote machine using the Selenium server it marks a leap forward in terms of web browser automation. Selenium automates web browsers (commonly referred to as browsers). Using RSelenium you can automate browsers locally or remotely. [Issue for volunteering](https://github.com/ropensci/RSelenium/issues/261).
- **elastic, General Purpose Interface to 'Elasticsearch'**. Connect to 'Elasticsearch', a 'NoSQL' database built on the 'Java' Virtual Machine. Interacts with the 'Elasticsearch' 'HTTP' API (<https://www.elastic.co/elasticsearch/>), including functions for setting connection details to 'Elasticsearch' instances, loading bulk data, searching for documents with both 'HTTP' query variables and 'JSON' based body requests. In addition, 'elastic' provides functions for interacting with API's for 'indices', documents, nodes, clusters, an interface to the cat API, and more. [Issue for volunteering](https://github.com/ropensci/elastic/issues/292).
- **ckanr, Client for the Comprehensive Knowledge Archive Network ('CKAN') API**. Client for 'CKAN' API (<https://ckan.org/>). Includes interface to 'CKAN' 'APIs' for search, list, show for packages, organizations, and resources. In addition, provides an interface to the 'datastore' API. [Issue for volunteering](https://github.com/ropensci/ckanr/issues/186).

## Packages looking for co-maintainers!

To volunteer, open an issue in the GitHub repository or email the maintainer.
Thank you!


- **taxlist, Handling Taxonomic Lists**. Handling taxonomic lists through objects of class 'taxlist'. This package provides functions to import species lists from 'Turboveg' (<https://www.synbiosys.alterra.nl/turboveg/>) and the possibility to create backups from resulting R-objects. Also quick displays are implemented as summary-methods. [Repository](https://github.com/ropensci/taxlist).
- **tidync, A Tidy Approach to 'NetCDF' Data Exploration and Extraction**. Tidy tools for 'NetCDF' data sources. Explore the contents of a 'NetCDF' source (file or URL) presented as variables organized by grid with a database-like interface. The hyper_filter() interactive function translates the filter value or index expressions to array-slicing form. No data is read until explicitly requested, as a data frame or list of arrays via hyper_tibble() or hyper_array().  [Repository](https://github.com/ropensci/tidync).
- **googleLanguageR, Call Google's 'Natural Language' API, 'Cloud Translation' API, 
  'Cloud Speech' API and 'Cloud Text-to-Speech' API**. Call 'Google Cloud' machine learning APIs for text and speech tasks. Call the 'Cloud Translation' API <https://cloud.google.com/translate/> for detection and translation of text, the 'Natural Language' API <https://cloud.google.com/natural-language/> to analyse text for sentiment, entities or syntax, the 'Cloud Speech' API <https://cloud.google.com/speech/> to transcribe sound files to text and the 'Cloud Text-to-Speech' API <https://cloud.google.com/text-to-speech/> to turn text into sound files. [Repository](https://github.com/ropensci/googleLanguageR).
- **nlrx, Setup, Run and Analyze 'NetLogo' Model Simulations from 'R' via 'XML'**. Setup, run and analyze 'NetLogo' (<https://ccl.northwestern.edu/netlogo/>) model simulations in 'R'. 'nlrx' experiments use a similar structure as 'NetLogos' Behavior Space experiments. However, 'nlrx' offers more flexibility and additional tools for running and analyzing complex simulation designs and sensitivity analyses. The user defines all information that is needed in an intuitive framework, using class objects. Experiments are submitted from 'R' to 'NetLogo' via 'XML' files that are dynamically written, based on specifications defined by the user. By nesting model calls in future environments, large simulation design with many runs can be executed in parallel. This also enables simulating 'NetLogo' experiments on remote high performance computing machines. In order to use this package, 'Java' and 'NetLogo' (>= 5.3.1) need to be available on the executing system. [Repository](https://github.com/ropensci/nlrx).
- **refsplitr, author name disambiguation, author georeferencing, and mapping of 
    coauthorship networks with 'Web of Science' data**. Tools to parse and organize reference records downloaded from the 'Web of Science' citation database into an R-friendly format, disambiguate the names of authors, geocode their locations, and generate/visualize coauthorship networks. This package has been peer-reviewed by rOpenSci (v. 1.0). [Repository](https://github.com/ropensci/refsplitr).
- **rtika, R Interface to 'Apache Tika'**. Extract text or metadata from over a thousand file types, using Apache Tika <https://tika.apache.org/>. Get either plain text or structured XHTML content.  [Repository](https://github.com/ropensci/rtika).
- **tidyqpcr, Quantitative PCR Analysis with the Tidyverse**. For reproducible quantitative PCR (qPCR) analysis building on packages from the ’tidyverse’, notably ’dplyr’ and ’ggplot2’. It normalizes (by ddCq), summarizes, and plots pre-calculated Cq data, and plots raw amplification and melt curves from Roche Lightcycler (tm) machines. It does NOT (yet) calculate Cq data from amplification curves. [Repository](https://github.com/ropensci/tidyqpcr).
- **dbparser, 'DrugBank' Database XML Parser**. This tool is for parsing the 'DrugBank' XML database <https://www.drugbank.ca/>. The parsed data are then returned in a proper 'R' dataframe with the ability to save them in a given database. [Repository](https://github.com/ropensci/dbparser).
- **assertr, Assertive Programming for R Analysis Pipelines**. Provides functionality to assert conditions that have to be met so that errors in data used in analysis pipelines can fail quickly. Similar to 'stopifnot()' but more powerful, friendly, and easier for use in pipelines. [Repository](https://github.com/ropensci/assertr).
https://github.com/ropensci/MODIStsp/issues/262
https://github.com/ropensci/tidyqpcr/issues/196
TODOS:
- check clarifications when both step down and co maintainers checked.
- ask maintainers to open issues?
- provide an email template?

## Conclusion

In this post we listed some rOpenSci packages for which new maintainers or co-maintainers are needed.
We also explained why one would volunteer.
If you are interested in rOpenSci mission but not in the idea of maintaining a package, have a look at our [contributing guide](https://contributing.ropensci.org/)!
