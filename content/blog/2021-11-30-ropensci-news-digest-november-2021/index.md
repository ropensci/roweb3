---
slug: "ropensci-news-digest-november-2021"
title: 'rOpenSci News Digest, November 2021'
author:
  - The rOpenSci Team
date: '2021-11-30'
tags:
  - newsletter
description: keywords from the content
output:
  html_document:
    keep_md: yes
params:
  last_newsletter: "2021-10-22"
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2021/11/30/ropensci-news-digest-november-2021).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Community call: @ropensci-review-bot help!

Tuesday, 07 December 2021 17:00 UTC we'll share how we are [**Enhancing Software Peer Review with GitHub Automation**](/commcalls/dec2021-automation/).

Speakers [Arfon Smith](https://www.arfon.org/), [Karthik Ram](/author/karthik-ram), [Maëlle Salmon](/author/maëlle-salmon) and [Noam Ross](/author/noam-ross) will discuss how rOpenSci has worked with [The Journal of Open Source Software (JOSS)](https://joss.theoj.org/) to extend their approach of [chatops-driven publishing](https://www.arfon.org/chatops-driven-publishing) into a new GitHub chat-bot that manages our editorial process: assigning tasks, tagging issues, running tests on software submissions, and returning reports to reviewers and editors, all from the comfort of a GitHub issue comment. Chat-ops automation has been critical to JOSS’s success, and shows huge promise for automating even more tedious tasks like frequent software checks and compliance with best practices. We will show how our new review bot improves the author and editor experience, **explain how other teams can use and customize the bot**, and discuss how this approach can be extended to tackle other automation, code review, and reproducibility challenges.

Come join the conversation, we'll have lots of time for Q & A.

### rOpenSci help wanted issues

Help Wanted issues have a home: our website's new [help-wanted page](/help-wanted/)!

This page lists ALL recent(ish) issues from rOpenSci R packages labelled "help wanted". We'll still [tweet new issues](https://twitter.com/search?q=from%3Aropensci%20%5Bhelp%20wanted%5D&f=live), but this is a great place to see what's out there that needs your help.

On the page you can easily find issues relevant to you by:  

- Sorting (e.g, find all the issues labelled "good first issue");

- Searching (e.g., look for issues in your favourite packages).

### Next co-working sessions

Join us for social coworking & office hours monthly on 1st Tuesdays! Hosted by Steffi LaZerte, Nick Tierney, and Stefanie Butland. Everyone welcome. No RSVP needed. Consult our [Events](/events) page to find your local time and how to join.

Our next sessions are

* [Monday, 06 December 2021 17:00 PST](/events/coworking-2021-12/) (9 AM Australian Western);

* [Tuesday, 04 January 2022 09:00 PST](/events/coworking-2022-01/) (9 AM North American Pacific).

Find out about more [events](/events).

## Software :package:

### New packages




The following three packages recently became a part of our software suite:

+ [cffr](https://docs.ropensci.org/cffr), developed by Diego Hernangómez: The Citation File Format version 1.2.0 <doi:10.5281/zenodo.5171937> is a human and machine readable file format which provides citation metadata for software. This package provides core utilities to generate and validate this metadata.  It is available on [CRAN]( https://CRAN.R-project.org/package=cffr). It has been [reviewed](https://github.com/ropensci/software-review/issues/463) by João Martins, Scott Chamberlain.

+ [excluder](https://docs.ropensci.org/excluder), developed by Jeffrey R. Stevens: Data that are collected through online sources such as Mechanical Turk may require excluding rows because of IP address duplication, geolocation, or completion duration. This package facilitates exclusion of these data for Qualtrics datasets.  It is available on [CRAN]( https://CRAN.R-project.org/package=excluder). It has been [reviewed](https://github.com/ropensci/software-review/issues/455) by Joseph O'Brien, Julia Silge.

+ [mctq](https://docs.ropensci.org/mctq), developed by Daniel Vartanian together with Ana Amelia Benedito-Silva, Mario Pedrazzoli: A complete and consistent toolkit to process the Munich ChronoType Questionnaire (MCTQ) for its three versions (standard, micro, and shift). MCTQ is a quantitative and validated tool to assess chronotypes using peoples' sleep behavior, originally presented by Till Roenneberg, Anna Wirz-Justice, and Martha Merrow (2003, <doi:10.1177/0748730402239679>).  It is available on [CRAN]( https://CRAN.R-project.org/package=mctq). It has been [reviewed](https://github.com/ropensci/software-review/issues/434) by Jonathan Keane, Mario Andre Leocadio-Miguel.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following twenty-three packages have had an update since the latest newsletter: [gert](https://docs.ropensci.org/gert "Simple Git Client for R") ([`v1.4.2`](https://github.com/r-lib/gert/releases/tag/v1.4.2)), [pkgstats](https://docs.ropensci.org/pkgstats "Metrics of R Packages") ([`v0.0.3`](https://github.com/ropensci-review-tools/pkgstats/releases/tag/v0.0.3)), [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (cff) Metadata for R Packages") ([`v0.1.1`](https://github.com/ropensci/cffr/releases/tag/v0.1.1)), [crul](https://docs.ropensci.org/crul "HTTP Client") ([`v1.2.0`](https://github.com/ropensci/crul/releases/tag/v1.2.0)), [excluder](https://docs.ropensci.org/excluder "Checks for Exclusion Criteria in Online Data") ([`v0.3.2`](https://github.com/ropensci/excluder/releases/tag/v0.3.2)), [git2rdata](https://docs.ropensci.org/git2rdata "Store and Retrieve Data.frames in a Git Repository") ([`v0.3.1`](https://github.com/ropensci/git2rdata/releases/tag/v0.3.1)), [gitignore](https://docs.ropensci.org/gitignore "Create Useful .gitignore Files for your Project") ([`v0.1.5`](https://github.com/ropensci/gitignore/releases/tag/v0.1.5)), [jagstargets](https://docs.ropensci.org/jagstargets "Targets for JAGS Workflows") ([`0.0.1`](https://github.com/ropensci/jagstargets/releases/tag/0.0.1)), [jqr](https://docs.ropensci.org/jqr "Client for jq, a JSON Processor") ([`v1.2.2`](https://github.com/ropensci/jqr/releases/tag/v1.2.2)), [lightr](https://docs.ropensci.org/lightr "Read Spectrometric Data and Metadata") ([`v1.6.2`](https://github.com/ropensci/lightr/releases/tag/v1.6.2)), [mapscanner](https://docs.ropensci.org/mapscanner "Print Maps, Draw on Them, Scan Them Back in") ([`v0.0.6`](https://github.com/ropensci/mapscanner/releases/tag/v0.0.6)), [mctq](https://docs.ropensci.org/mctq "Tools to Process the Munich ChronoType Questionnaire (MCTQ)") ([`v0.1.0`](https://github.com/ropensci/mctq/releases/tag/v0.1.0)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.5.0`](https://github.com/ropensci/nodbi/releases/tag/v0.5.0)), [osmextract](https://docs.ropensci.org/osmextract "Download and Import Open Street Map Data Extracts") ([`v0.4.0`](https://github.com/ropensci/osmextract/releases/tag/v0.4.0)), [patentsview](https://docs.ropensci.org/patentsview "An R Client to the PatentsView API") ([`v0.3.0`](https://github.com/ropensci/patentsview/releases/tag/v0.3.0)), [PostcodesioR](https://docs.ropensci.org/PostcodesioR "API Wrapper Around Postcodes.io") ([`cran`](https://github.com/ropensci/PostcodesioR/releases/tag/cran)), [rcites](https://docs.ropensci.org/rcites "R Interface to the Species+ Database") ([`v1.2.0`](https://github.com/ropensci/rcites/releases/tag/v1.2.0)), [rerddap](https://docs.ropensci.org/rerddap "General Purpose Client for ERDDAP Servers") ([`v0.8.0`](https://github.com/ropensci/rerddap/releases/tag/v0.8.0)), [rmangal](https://docs.ropensci.org/rmangal "Mangal Client") ([`v2.1.0`](https://github.com/ropensci/rmangal/releases/tag/v2.1.0)), [rnoaa](https://docs.ropensci.org/rnoaa "NOAA Weather Data from R") ([`c1.3.7`](https://github.com/ropensci/rnoaa/releases/tag/c1.3.7)), [stplanr](https://docs.ropensci.org/stplanr "Sustainable Transport Planning") ([`v0.8.5`](https://github.com/ropensci/stplanr/releases/tag/v0.8.5)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.3.2`](https://github.com/ropensci/tarchetypes/releases/tag/0.3.2)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Workflows") ([`0.8.1`](https://github.com/ropensci/targets/releases/tag/0.8.1)).

## Software Peer Review

There are eighteen recently closed and active submissions and 5 submissions on hold. Issues are at different stages: 

* Three at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [cffr](https://github.com/ropensci/software-review/issues/463), Generate Citation File Format (cff) Metadata for R Packages. Submitted by [Diego H.](http://dieghernan.github.io). 

    * [excluder](https://github.com/ropensci/software-review/issues/455), Checks for Exclusion Criteria in Online Data. Submitted by [Jeffrey Stevens](https://decisionslab.unl.edu/). 

    * [mctq](https://github.com/ropensci/software-review/issues/434), An R Package for the Munich ChronoType Questionnaire. Submitted by [Daniel Vartanian](https://danielvartan.netlify.app). 

* One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [gendercoder](https://github.com/ropensci/software-review/issues/435), Recodes Sex/Gender Descriptions Into A Standard Set. Submitted by [Emily Kothe](http://emilykothe.com). 

* Two at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [epair](https://github.com/ropensci/software-review/issues/418), Grabs data from EPA API, simplifies getting pollutant data. Submitted by [Leo Orozco-Mulfinger](https://github.com/GLOrozcoM). 

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com). 

* Seven at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [rfema](https://github.com/ropensci/software-review/issues/484), Access the openFEMA API. Submitted by [Dylan Turner](http://dylanturner.org). 

    * [qualR](https://github.com/ropensci/software-review/issues/474), An R package to download Sao Paulo and Rio de Janeiro air pollution data. Submitted by [Mario Gavidia Calderón](http://randroll.wordpress.com). 

    * [tidyqpcr](https://github.com/ropensci/software-review/issues/470), Quantitative PCR Analysis with the Tidyverse. Submitted by [Edward Wallace](https://scholar.google.co.uk/citations?user=7FLIJBAAAAAJ&hl=en). 

    * [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com).  (Stats).

    * [phruta](https://github.com/ropensci/software-review/issues/458), Phylogenetic Reconstruction and Time-dating. Submitted by [Cristian Román-Palacios](http://cromanpa94.github.io/cromanpa/). 

    * [ROriginStamp](https://github.com/ropensci/software-review/issues/433), Interface to OriginStamp API to Obtain Trusted Time Stamps. Submitted by [Rainer M Krug](https://github.com/rkrug). 

    * [occCite](https://github.com/ropensci/software-review/issues/407), Querying and Managing Large Biodiversity Occurrence Datasets. Submitted by [Hannah Owens](http://hannahlowens.weebly.com/). 

* Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [gittargets](https://github.com/ropensci/software-review/issues/486), Data Version Control for the Targets Package. Submitted by [Will Landau](https://wlandau.github.io). 

    * [OmicsMetaData](https://github.com/ropensci/software-review/issues/471), OmicsMetaData: an R-package for interoperable and re-usable biodiversity 'omics (meta)data. Submitted by [Maxime Sweetlove](https://github.com/msweetlove). 

* Three at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [ReLTER](https://github.com/ropensci/software-review/issues/485), An interface to the eLTER for the R statistical programming environment. Submitted by [Alessandro Oggioni](https://www.cnr.it/people/alessandro.oggioni). 

    * [canaper](https://github.com/ropensci/software-review/issues/475), Categorical Analysis of Neo- And Paleo-Endemism. Submitted by [Joel Nitta](https://joelnitta.com).  (Stats).

    * [rdbhapi](https://github.com/ropensci/software-review/issues/443), Interface to DBH-API. Submitted by [Marija Ninic](https://hkdir.no/). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Software Review

* [rOpenSci Dev Guide 0.7.0: Updates](/blog/2021/11/18/devguide-0.7.0) by Maëlle Salmon, Laura DeCicco, Julia Gustavsen, Jeff Hollister, Anna Krystalli, Mauro Lepore, Karthik Ram, Emily Riederer, Noam Ross, Adam Sparks, Melina Vidoni. Updates in version 0.7.0 of the online book 'rOpenSci Packages: Development, Maintenance, and Peer Review rOpenSci Packages: Development, Maintenance, and Peer Review'.{{< figure src="cover.png" alt="cover of rOpenSci dev guide, showing a package production line with small humans discussing, examining and promoting packages" width="400" >}}



* [cffr: Create a CITATION.cff File for your R Package](/blog/2021/11/23/cffr) by Diego Hernangómez. cffr, a package for creating valid CITATION.cff files using the metadata of any R package.{{< figure src="brain-network.png" alt="The cffr package" width="400" >}}



### Other topics

* [How to Cite R and R Packages](/blog/2021/11/16/how-to-cite-r-and-r-packages) by Steffi LaZerte. A short primer on how to cite R and R packages to support developers and ensure repeatable science.



### Tech Notes

* [How I Test cffr on (about) 2,000 Packages using GitHub Actions and R-universe](/blog/2021/11/23/how-i-test-cffr) by Diego Hernangómez.

* [RSS feeds of package updates in r-universe](/blog/2021/11/24/runiverse-badges) by Jeroen Ooms. A major difference between r-universe and static repositories like CRAN and BioConductor is continuous deployment: packages in r-universe are continuously built in CI and immediately deployed to our package server. This package server stores binaries and metadata in a database, which enables us to dynamically query and expose all the package data through APIs, dashboards, feeds, etc. Based on some suggestions from twitter users, we have added support for RSS feeds of package updates.

## Use cases



<!--` snakecase::to_sentence_case(english(length(usecases)))` use cases of our packages and resources have been reported since we sent the last newsletter.-->



Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

There's no open call for new maintainers at this point but you can refer to our [contributing guide](https://contributing.ropensci.org/) for finding ways to get involved!
As the maintainer of an rOpenSci package, feel free to contact us on Slack or email `info@ropensci.org` to get your call for maintainer featured in the next newsletter. 

## Package development corner

Some useful tips for R package developers. :eyes:

### Only use the best dependencies!

Some dependencies are better than others: in particular, it's best not to depend on unmaintained packages or packages scheduled for retirement.

In our dev guide we have some [scaffolding advice](https://devdevguide.netlify.app/building.html#recommended-scaffolding) (note this is a link to the development version of the dev guide!):

* For HTTP requests we recommend using [curl][], [crul][], [httr][] or [httr2][] over [RCurl][]. If you like low level clients for HTTP, [curl][] is best, whereas [crul][] or [httr][] or [httr2][] are better for higher level access. 

* For parsing JSON, use [jsonlite][] instead of [rjson][] or [RJSONIO][].

* For parsing, creating, and manipulating XML, we strongly recommend [xml2][] for most cases. [You can refer to Daniel Nüst's notes about migration from XML to xml2](https://gist.github.com/nuest/3ed3b0057713eb4f4d75d11bb62f2d66).

* For spatial data, the [sp][] package should be considered deprecated in favour of [sf][], and the packages [rgdal][], [maptools][], and [rgeos][] will be retired by the end of 2023. We recommend use of the spatial suites developed by the [r-spatial](https://github.com/r-spatial) and [rspatial](https://github.com/rspatial) communities. See [this GitHub issue](https://github.com/ropensci/software-review-meta/issues/47) for relevant discussions.

Furthermore, in the recent [release notes of r-lib cli](https://www.tidyverse.org/blog/2021/11/cli-3-1-0/#what-about-the-crayon-package) it was interesting to note "Our focus will be on improving the cli package in the future, and crayon will only receive important bug fixes. If you already use both cli and crayon, then it might make sense to completely switch to cli.".

As a package developer, informing users of the lifecycle is crucial.
It's part of our [standards for statistical software](https://stats-devguide.ropensci.org/standards.html#general-standards): "Statistical Software should include a Life Cycle Statement describing current and anticipated future states of development".


[curl]: https://github.com/jeroen/curl/
[RCurl]: https://cran.rstudio.com/web/packages/RCurl/
[crul]: https://github.com/ropensci/crul/
[httr]: https://httr.r-lib.org
[httr2]: https://httr2.r-lib.org
[webmockr]: https://github.com/ropensci/webmockr/
[vcr]: https://github.com/ropensci/vcr/
[jsonlite]: https://github.com/jeroen/jsonlite
[rjson]: https://cran.rstudio.com/web/packages/rjson/
[RJSONIO]: https://cran.rstudio.com/web/packages/RJSONIO/
[xml2]: https://cran.rstudio.com/web/packages/xml2/
[sp]: https://github.com/edzer/sp/
[sf]: https://r-spatial.github.io/sf/
[rgdal]: https://cran.r-project.org/web/packages/rgdal/index.html
[maptools]: https://cran.r-project.org/web/packages/maptools/index.html
[rgeos]: https://cran.r-project.org/web/packages/rgeos/index.html

For more general posts about dependencies, see

* [limiting dependencies in R package development](https://recology.info/2018/10/limiting-dependencies/) by rOpenSci co-founder Scott Chamberlain;
* [It depends - A dialog about dependencies](https://www.tidyverse.org/blog/2019/05/itdepends/) by Jim Hester;
* our dev guide's section about [package dependencies](https://devguide.ropensci.org/building.html#pkgdependencies).

### List of "Awesome R package development" tools maintained by Indrajeet Patil

[Indrajeet Patil](https://github.com/IndrajeetPatil) created a list ["Awesome R package development"](https://indrajeetpatil.github.io/awesome-r-pkgtools/).
Browse it to check you already know all of the awesome things!

### Shim files

Do you know what shim files are?
If you use `devtools::load_all()`, chances are you do know _of_ them, cf [pkgload docs](https://r-lib.github.io/pkgload/reference/load_all.html#shim-files).
"`load_all()` also inserts shim functions into the imports environment
of the loaded package. It presently adds a replacement version of
`system.file()` which returns different paths from
`base::system.file()`. This is needed because installed and uninstalled
package sources have different directory structures. Note that this is not
a perfect replacement for `base::system.file()`."

This is different from [monkey-patching](https://en.wikipedia.org/wiki/Monkey_patch) that is [not allowed in R](https://books.ropensci.org/http-testing/vcr-intro.html?q=monkey#hooks-into-http-clients).

### Function-specific and package-specific environments

If you are curious about the use of private environments for functions and packages, have a read of this [nice R-package-devel thread](https://www.mail-archive.com/r-package-devel@r-project.org/msg07413.html)!

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
