---
title: rOpenSci News Digest, April 2022
author:
  - The rOpenSci Team
date: '2022-04-21'
slug: ropensci-news-digest-april-2022
categories: []
tags:
  - newsletter
description: R-universe individual package pages, co-working, pkgcheck, new packages and package news
output:
  html_document:
    keep_md: yes
params:
  last_newsletter: '2022-03-18'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2022/04/21/ropensci-news-digest-april-2022).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### pkgcheck reports now include dependencies

Our [automated checking system for packages](/commcalls/dec2021-automation/) submitted for peer review now has a new section, "*Package Dependencies*". 
This is intended to help editors and reviewers understand how package dependencies (that is, packages listed in *Imports*, *Depends*, or *Suggests* `DESCRIPTION` fields) are actually used by a package.
The section summarises total numbers of function calls made to each package, followed by collapsible "details" sections containing numbers of calls made to the individual functions of each packages. 
Dependencies include base R and all recommended packages, ensuring that this section provides a comprehensive overview of how each package submitted for peer review uses and depends upon the entire R ecosystem.

Want to try it for yourself?
Install [pkgcheck](https://docs.ropensci.org/pkgcheck/) and then run `pkgcheck::pkgcheck (<package-source-directory>)`.

### R-universe now features package individual pages

### Next coworking sessions

Join us for social coworking & office hours monthly on 1st Tuesdays! Hosted by Steffi LaZerte  and various community hosts. Everyone welcome. No RSVP needed. Consult our [Events](/events) page to find your local time and how to join.

Our next sessions are:

* [Tuesday, 03 May 2022 9 AM North American Pacific / 16:00 UTC](/events/coworking-2022-05/) "Why be a reviewer of R packages?" *Hosted by community host François Michonneau and [Steffi LaZerte](/author/steffi-lazerte/)*
  * Cowork on a project of your choice;
  * Prepare an R package for rOpenSci software review, work on reviewer comments, or review a package;
  * Or ask [François Michonneau](https://francoismichonneau.net/) what it's like to review packages!
  
* [Tuesday, 07 June 2022 9 AM Australian Western / 1:00 UTC ](/events/coworking-2022-06/) " Tackle something you've always wanted to learn" *Hosted by community host Nick Tierney and [Steffi LaZerte](/author/steffi-lazerte/)*
  * Take time to tackle something you've always wanted to learn;
  * Cowork on a project of your choice.

Find out about more [events](/events).


## Software :package:

### New packages




The following  package recently became a part of our software suite:

+ [qualR](https://docs.ropensci.org/qualR), developed by Mario Gavidia-Calderón together with Daniel Schuch: A package to download information from CETESB QUALAR <https://cetesb.sp.gov.br/ar/qualar/> and MonitorAr <https://www.rio.rj.gov.br/web/smac/monitorar-rio1> systems. It contains function to download different parameters, a set of criteria pollutants and the most frequent meteorological parameters used in air quality data analysis and air quality model evaluation. It has been [reviewed](https://github.com/ropensci/software-review/issues/474) by Beatriz Milz, and Kaue de Sousa.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following seven packages have had an update since the last newsletter: [gert](https://docs.ropensci.org/gert "Simple Git Client for R") ([`v1.6.0`](https://github.com/r-lib/gert/releases/tag/v1.6.0)), [antiword](https://docs.ropensci.org/antiword "Extract Text from Microsoft Word Documents") ([`v1.3.1`](https://github.com/ropensci/antiword/releases/tag/v1.3.1)), [baRcodeR](https://docs.ropensci.org/baRcodeR "Label Creation for Tracking and Collecting Data from
    Biological Samples") ([`v0.1.7`](https://github.com/ropensci/baRcodeR/releases/tag/v0.1.7)), [git2rdata](https://docs.ropensci.org/git2rdata "Store and Retrieve Data.frames in a Git Repository") ([`v0.4.0`](https://github.com/ropensci/git2rdata/releases/tag/v0.4.0)), [occCite](https://docs.ropensci.org/occCite "Querying and Managing Large Biodiversity Occurrence Datasets") ([`v0.5.4`](https://github.com/ropensci/occCite/releases/tag/v0.5.4)), [rgbif](https://docs.ropensci.org/rgbif "Interface to the Global Biodiversity Information Facility API") ([`v3.7.1`](https://github.com/ropensci/rgbif/releases/tag/v3.7.1)), and [tidyhydat](https://docs.ropensci.org/tidyhydat "Extract and Tidy Canadian Hydrometric Data") ([`0.5.5`](https://github.com/ropensci/tidyhydat/releases/tag/0.5.5)).

## Software Peer Review

There are fifteen recently closed and active submissions and 4 submissions on hold. Issues are at different stages: 

* Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [EDIutils](https://github.com/ropensci/software-review/issues/498), An API Client for the Environmental Data Initiative Repository. Submitted by [Colin Smith](https://github.com/clnsmth). 

    * [gbifdb](https://github.com/ropensci/software-review/issues/492), Local Database Interface to GBIF. Submitted by [Carl Boettiger](http://carlboettiger.info). 

* One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [tidyqpcr](https://github.com/ropensci/software-review/issues/470), Quantitative PCR Analysis with the Tidyverse. Submitted by [Edward Wallace](https://scholar.google.co.uk/citations?user=7FLIJBAAAAAJ&hl=en). 

* Four at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [npi](https://github.com/ropensci/software-review/issues/505), Access the U.S. National Provider Identifier Registry API. Submitted by [Frank Farach](https://frankfarach.com). 

    * [phruta](https://github.com/ropensci/software-review/issues/458), Phylogenetic Reconstruction and Time-dating. Submitted by [Cristian Román-Palacios](http://cromanpa94.github.io/cromanpa/). 

    * [epair](https://github.com/ropensci/software-review/issues/418), Grabs data from EPA API, simplifies getting pollutant data. Submitted by [Leo Orozco-Mulfinger](https://github.com/GLOrozcoM). 

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com). 

* Three at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [canaper](https://github.com/ropensci/software-review/issues/475), Categorical Analysis of Neo- And Paleo-Endemism. Submitted by [Joel Nitta](https://joelnitta.com).  (Stats).

    * [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com).  (Stats).

    * [ROriginStamp](https://github.com/ropensci/software-review/issues/433), Interface to OriginStamp API to Obtain Trusted Time Stamps. Submitted by [Rainer M Krug](https://github.com/rkrug). 

* Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [unifir](https://github.com/ropensci/software-review/issues/521), A Unifying API for Calling Unity from R. Submitted by [Michael Mahoney](https://mm218.dev/). 

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

* Three at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [hudr](https://github.com/ropensci/software-review/issues/524), A R interface for accessing HUD (US Department of Housing and Urban Development) APIs. Submitted by [Emmet Tam](https://github.com/etam4260). 

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](http://jounihelske.netlify.app).  (Stats).

    * [rdbhapi](https://github.com/ropensci/software-review/issues/443), Interface to DBH-API. Submitted by [Marija Ninic](https://hkdir.no/). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->




### Tech Notes

* [Searching and browsing the R universe](/blog/2022/03/23/runiverse-search) by Jeroen Ooms. We made a series of structural improvements in r-universe to make it easier to browse and discover interesting R packages and articles. Most notably, the landing page has been overhauled: you can now search directly for any name or keyword across the entire ecosystem.

* [rsnps 0.5.0: New ncbi_snp_query() Features](/blog/2022/03/29/rsnps-update) by Sina Rüeger, and Julia Gustavsen. `ncbi_snp_query()` now returns all reported variant allele frequencies in dbSNP.{{< figure src="plot-maf-1.png" alt="Allele frequencies in dbSNP for various studies/populations." width="400" >}}



* [Safeguards and Backups for GitHub Organizations](/blog/2022/03/22/safeguards-and-backups-for-github-organizations) by Maëlle Salmon. Some practical steps we've taken to safeguard our GitHub organizations.

## Use cases



One use case of our packages and resources has been reported since we sent the last newsletter.

* [Using vcr for HTTP testing of a package for Kobotoolbox](https://discuss.ropensci.org/t/using-vcr-for-http-testing-of-a-package-for-kobotoolbox/2865). Reported by Frie.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

There are no open calls for new maintainers at this point but you can refer to our [contributing guide](https://contributing.ropensci.org/) for finding ways to get involved!
As the maintainer of an rOpenSci package, feel free to contact us on Slack or email `info@ropensci.org` to get your call for maintainer featured in the next newsletter.

## Package development corner

Some useful tips for R package developers. :eyes:

### Identifying code duplication

Are you worried a codebase you've just inherited doesn't follow the DRY (don't repeat yourself) principle?
You might find the [dupree package](https://russhyde.github.io/dupree/) by Russ Hyde useful: "The goal of dupree is to identify chunks / blocks of highly duplicated code within a set of R scripts.".

### Security for package developers

Did you know our development guide includes a short chapter on [Package Development Security Best Practices](https://devguide.ropensci.org/package-development-security-best-practices.html)?
Starting with the recommendation to enable [two-factor authentication (2FA)](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa/configuring-two-factor-authentication) for your GitHub account.
We've also recently blogged on [Safeguards and Backups for GitHub Organizations](/blog/2022/03/22/safeguards-and-backups-for-github-organizations/)

### S3, S4, R6, R7 (not an April Fools' joke!)

Have you heard of the [R7 package](https://rconsortium.github.io/OOP-WG/)?
It is meant to be an object-oriented programming system successor to S3 and S4.
It is developped under the umbrella of an R Consortium working group, and a long term goal is to merge it into base R.
Explore the current repository and get a taste of the future!

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
