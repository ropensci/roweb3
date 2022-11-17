---
title: rOpenSci News Digest, November 2022
author:
  - The rOpenSci Team
date: '2022-11-18'
slug: ropensci-news-digest-november-2022
categories: []
tags:
  - newsletter
description: Multilingual publishing (Spanish!), champions program, community call recording, coworking, new packages and package news
params:
  last_newsletter: '2022-10-21'
---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it’s time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2022/11/18/ropensci-news-digest-november-2022).
Now let’s dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Multilingual Publishing

Open Source and Open Science are global movements, but most of their material and resources are published in English, meaning non-English speakers face a significant barrier to being part of these movements.  
Publishing multilingual resources can lower these barriers by increasing access to knowledge, which helps democratize access to quality resources, and therefore increases the potential for contributing to software and open science projects.

We’re excited to announce that with the support of the [Chan-Zuckerberg Initiative](/blog/2021/12/20/inclusive-leadership-program/), [NumFOCUS](https://numfocus.org/) and the [R Consortium](https://www.r-consortium.org/), we have started translating rOpenSci’s material on best practices for software development, code review, and contribution to open source projects into Spanish.
As part of this effort we are also developing guidelines for translating open source resources to a wider audience.

Learn more about our [Multilingual Publishing project](/multilingual-publishing/).

### Champions Program

The application period for our champions program is now closed.

We are very excited about the response from the community! We received 74 applications for Champions and 28 for mentors from 31 countries.

We are very grateful to those who took the time to apply and to all who helped us spread the word about these calls.

Over the next few weeks, we will review the proposals and select the nominees. All applicants will receive feedback on their applications.

Learn more about our [Champions Program](/champions/).

{{< figure src="map.png" alt="World Maps with the applicant's countries colored. The map shows America almost all painted and then some few countries from Asia, Africa, Europe and Oceania.">}}

### Community Call recap: “Mentoring & training program for Scientific Open Source Champions”

After a brief hiatus, we returned to community calls with a session dedicated to our Champions Program.  
We invited open source software Champions from other spaces and communities to share their experiences, to help us learn more about what it is to be a Champion, the benefit of applying to these programs, and how being a Champion can benefit not only us, but also our communities.

In this call, moderated by rOpenSci Community Manager [Yani Bellini Saibene](/author/yanina-bellini-saibene/), Santosh Yadav and Emanuele Bartolesi shared their experiences of being Champions in their communities and gave advice on how to create a path to becoming a Champion in open source software communities.

You can [watch the video](/commcalls/oct2022-champions/) and [access all the materials](/commcalls/oct2022-champions/) on our website.

### Coworking sessions continue!

Join us for social coworking & office hours monthly on first Tuesdays!
Hosted by Steffi LaZerte and various community hosts.
Everyone welcome.
No RSVP needed.
Consult our [Events](/events) page to find your local time and how to join.

- [Tuesday, December 6th, 9:00 Australian Western / 1:00 UTC](/events/coworking-2022-12/) “Getting started with targets!” *Hosted by community host [Nick Tierney](/author/nicholas-tierney/) and [Steffi LaZerte](/author/steffi-lazerte/)*
  - Dive into the world of targets! Do some studying; Start setting it up for some of your projects;
  - Ask [Nick](/author/nicholas-tierney/) for suggestions how how to get started or tips and tricks.
- [Tuesday, Jan 10th, 14:00 European Central / 13:00 UTC](/events/coworking-2023-01/) “Working with new R users” *Hosted by community host [Alex Koiter](https://alexkoiter.ca) and [Steffi LaZerte](/author/steffi-lazerte/)*
  - Brainstorm ideas for supporting and encouraging new R users; Annotate a script for a friend or colleague to help them learn;
  - Talk to [Alex](https://alexkoiter.ca) and discuss how to share the love of R with new R users.
- [Tuesday, Feb 7th, 9:00 Americas Pacific / 17:00 UTC](/events/coworking-2023-02/) “Setting up Continuous Integration” *Hosted by community host [Hugo Gruson](/author/hugo-gruson/) and [Steffi LaZerte](/author/steffi-lazerte/)*
  - Do some reading to learn about Continuous Integration; Setup Continuous Integration on one (or more) of your projects;
  - Talk to [Hugo](/author/hugo-gruson/) and discuss how Continuous Integration can simplify your development process and how to get set up.

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

### rOpenSci communication channels as an alternative to Twitter

Our Twitter account is still active for now but here are alternatives:

🐘 [Mastodon account](https://fosstodon.org/web/@ropensci) (if you like social media)

💬 [Discussion forum](https://discuss.ropensci.org/)

🗞️ [Newsletter](/news)

✍️ [Blog](/blog)

You can read more in our [blog post](/blog/2022/11/16/mastodon-en/).

## Software :package:

### New packages

The following two packages recently became a part of our software suite:

- [daiquiri](https://docs.ropensci.org/daiquiri), developed by T. Phuong Quan: Generate reports that enable quick visual review of temporal shifts in record-level data. Time series plots showing aggregated values are automatically created for each data field (column) depending on its contents (e.g. min/max/mean values for numeric data, no. of distinct values for categorical data), as well as overviews for missing values, non-conformant values, and duplicated rows. The resulting reports are shareable and can contribute to forming a transparent record of the entire analysis process. It is designed with Electronic Health Records in mind, but can be used for any type of record-level temporal data (i.e. tabular data where each row represents a single “event”, one column contains the “event date”, and other columns contain any associated values for the event). It is available on [CRAN](https://CRAN.R-project.org/package=daiquiri). It has been [reviewed](https://github.com/ropensci/software-review/issues/535) by Brad Cannell, and Mauro Lepore.

- [npi](https://docs.ropensci.org/npi), developed by Frank Farach: Access the United States National Provider Identifier Registry API <https://npiregistry.cms.hhs.gov/api/>. Obtain and transform administrative data linked to a specific individual or organizational healthcare provider, or perform advanced searches based on provider name, location, type of service, credentials, and other attributes exposed by the API. It is available on [CRAN](https://CRAN.R-project.org/package=npi). It has been [reviewed](https://github.com/ropensci/software-review/issues/505) by Matthias Grenié, and Emily C. Zabor.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions

The following eighteen packages have had an update since the last newsletter: [aorsf](https://docs.ropensci.org/aorsf "Accelerated Oblique Random Survival Forests") ([`v0.0.4`](https://github.com/ropensci/aorsf/releases/tag/v0.0.4)), [assertr](https://docs.ropensci.org/assertr "Assertive Programming for R Analysis Pipelines") ([`v3.0.0`](https://github.com/ropensci/assertr/releases/tag/v3.0.0)), [chromer](https://docs.ropensci.org/chromer "Interface to Chromosome Counts Database API") ([`v0.3`](https://github.com/ropensci/chromer/releases/tag/v0.3)), [daiquiri](https://docs.ropensci.org/daiquiri "Data Quality Reporting for Temporal Datasets") ([`v1.0.1`](https://github.com/ropensci/daiquiri/releases/tag/v1.0.1)), [jagstargets](https://docs.ropensci.org/jagstargets "Targets for JAGS Workflows") ([`1.0.4`](https://github.com/ropensci/jagstargets/releases/tag/1.0.4)), [mctq](https://docs.ropensci.org/mctq "Tools to Process the Munich ChronoType Questionnaire (MCTQ)") ([`v0.3.1`](https://github.com/ropensci/mctq/releases/tag/v0.3.1)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.9.0`](https://github.com/ropensci/nodbi/releases/tag/v0.9.0)), [npi](https://docs.ropensci.org/npi "Access the U.S. National Provider Identifier Registry API") ([`v0.2.0`](https://github.com/ropensci/npi/releases/tag/v0.2.0)), [oai](https://docs.ropensci.org/oai "General Purpose Oai-PMH Services Client") ([`v0.4.0`](https://github.com/ropensci/oai/releases/tag/v0.4.0)), [rcrossref](https://docs.ropensci.org/rcrossref "Client for Various CrossRef APIs") ([`v1.2.0`](https://github.com/ropensci/rcrossref/releases/tag/v1.2.0)), [restez](https://docs.ropensci.org/restez "Create and Query a Local Copy of GenBank in R") ([`v2.1.3`](https://github.com/ropensci/restez/releases/tag/v2.1.3)), [spiro](https://docs.ropensci.org/spiro "Manage Data from Cardiopulmonary Exercise Testing") ([`v0.1.2`](https://github.com/ropensci/spiro/releases/tag/v0.1.2)), [stantargets](https://docs.ropensci.org/stantargets "Targets for Stan Workflows") ([`0.0.6`](https://github.com/ropensci/stantargets/releases/tag/0.0.6)), [stplanr](https://docs.ropensci.org/stplanr "Sustainable Transport Planning") ([`v1.0.2`](https://github.com/ropensci/stplanr/releases/tag/v1.0.2)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.7.2`](https://github.com/ropensci/tarchetypes/releases/tag/0.7.2)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Workflows") ([`0.14.0`](https://github.com/ropensci/targets/releases/tag/0.14.0)), [vcr](https://docs.ropensci.org/vcr "Record HTTP Calls to Disk") ([`v1.1.0`](https://github.com/ropensci/vcr/releases/tag/v1.1.0)), and [webchem](https://docs.ropensci.org/webchem "Chemical Information from the Web") ([`v1.2.0`](https://github.com/ropensci/webchem/releases/tag/v1.2.0)).

## Software Peer Review

There are thirteen recently closed and active submissions and 2 submissions on hold. Issues are at different stages:

- Two at [‘6/approved’](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

  - [daiquiri](https://github.com/ropensci/software-review/issues/535), Data Quality Reporting for Temporal Datasets. Submitted by [Phuong Quan](https://github.com/phuongquan).

  - [npi](https://github.com/ropensci/software-review/issues/505), Access the U.S. National Provider Identifier Registry API. Submitted by [Frank Farach](https://frankfarach.com).

- One at [‘5/awaiting-reviewer(s)-response’](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

  - [phruta](https://github.com/ropensci/software-review/issues/458), Phylogenetic Reconstruction and Time-dating. Submitted by [Cristian Román Palacios](http://cromanpa94.github.io/cromanpa/).

- Four at [‘4/review(s)-in-awaiting-changes’](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

  - [hudr](https://github.com/ropensci/software-review/issues/524), A R interface for accessing HUD (US Department of Housing and Urban Development) APIs. Submitted by [Emmet Tam](https://github.com/etam4260/etam4260).

  - [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser).

  - [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com). (Stats).

  - [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com).

- Three at [‘3/reviewer(s)-assigned’](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

  - [dynamite](https://github.com/ropensci/software-review/issues/554), Bayesian Modeling and Causal Inference for Multivariate. Submitted by [Santtu Tikka](http://users.jyu.fi/~santikka/). (Stats).

  - [stochLAB](https://github.com/ropensci/software-review/issues/551), Stochastic Collision Risk Model. Submitted by [Grant](http://www.blackbawks.net). (Stats).

  - [wmm](https://github.com/ropensci/software-review/issues/522), World Magnetic Model. Submitted by [Will Frierson](https://github.com/wfrierson).

- One at [‘2/seeking-reviewer(s)’](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

  - [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](http://jounihelske.netlify.app). (Stats).

- Two at [‘1/editor-checks’](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

  - [openalexR](https://github.com/ropensci/software-review/issues/560), Getting Bibliographic Records from OpenAlex Database Using DSL. Submitted by [Trang Le](http://trang.page).

  - [dfms](https://github.com/ropensci/software-review/issues/556), Dynamic Factor Models. Submitted by [Sebastian Krantz](https://github.com/SebKrantz).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->

- [Become a Mentor for rOpenSci Champions!](/blog/2022/10/20/mentors-champions-program) by Yanina Bellini Saibene. rOpenSci is seeking mentors to support our inaugural cohort of rOpenSci Champions. Could you offer insight and advice to our selected Champions? Learn the details and express your interest.

- [rOpenSci’s Communication Channels: Twitter](/blog/2022/11/16/mastodon-en) by Yanina Bellini Saibene, and Steffi LaZerte. We announce our actions on rOpenSci’s communication channels as alternatives to Twitter.

- [Canales de comunicación de rOpenSci: Twitter](/blog/2022/11/16/mastodon-es) by Yanina Bellini Saibene, and Steffi LaZerte. Anunciamos nuestras acciones en los canales de comunicación de rOpenSci como alternativas a Twitter.

## Use cases

One use case of our packages and resources has been reported since we sent the last newsletter.

- [Adding missing EXIF data to wildlife trail camera images](https://discuss.ropensci.org/t/adding-missing-exif-data-to-wildlife-trail-camera-images/3203). Reported by Neil Saunders.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for package (co-)maintainers

### Call for maintainers

There are still a few packages to adopt [from our recent blog post](/blog/2022/10/17/maintain-or-co-maintain-an-ropensci-package/). To volunteer, comment in the corresponding volunteering issue. Thank you!

- **wikitaxa, Taxonomic Information from ‘Wikipedia’**. ‘Taxonomic’ information from ‘Wikipedia’, ‘Wikicommons’, ‘Wikispecies’, and ‘Wikidata’. Functions included for getting taxonomic information from each of the sources just listed, as well performing taxonomic search. [Issue for volunteering](https://github.com/ropensci/wikitaxa/issues/20).
- **rgnparser, Parse Scientific Names**. Parse scientific names using [‘gnparser’](https://github.com/gnames/gnparser), written in Go. ‘gnparser’ parses scientific names into their component parts; it utilizes a Parsing Expression Grammar specifically for scientific names. [Issue for volunteering](https://github.com/ropensci/rgnparser/issues/14).
- **RSelenium, R Bindings for ‘Selenium WebDriver’**. Provides a set of R bindings for the [‘Selenium 2.0 WebDriver’](https://www.selenium.dev/documentation/) using the [‘JsonWireProtocol’](https://github.com/SeleniumHQ/selenium/wiki/JsonWireProtocol). ‘Selenium 2.0 WebDriver’ allows driving a web browser natively as a user would either locally or on a remote machine using the Selenium server it marks a leap forward in terms of web browser automation. [Issue for volunteering](https://github.com/ropensci/RSelenium/issues/261).
- **elastic, General Purpose Interface to ‘Elasticsearch’**. Connect to ‘Elasticsearch’, a ‘NoSQL’ database built on the ‘Java’ Virtual Machine. Interacts with the [‘Elasticsearch’ ‘HTTP’ API](https://www.elastic.co/elasticsearch/), including functions for setting connection details to ‘Elasticsearch’ instances, loading bulk data, searching for documents with both ‘HTTP’ query variables and ‘JSON’ based body requests. [Issue for volunteering](https://github.com/ropensci/elastic/issues/292).
- **ckanr, Client for the Comprehensive Knowledge Archive Network (‘CKAN’) API**. Client for [‘CKAN’ API](https://ckan.org/). Includes interface to ‘CKAN’ ‘APIs’ for search, list, show for packages, organizations, and resources. In addition, provides an interface to the ‘datastore’ API. [Issue for volunteering](https://github.com/ropensci/ckanr/issues/186).
- **Rclean, A Tool for Writing Cleaner, More Transparent Code**. To create clearer, more concise code provides this toolbox helps coders to isolate the essential parts of a script that produces a chosen result, such as an object, tables and figures written to disk. [Issue for volunteering](https://github.com/ropensci/Rclean/issues/213).

### Call for comaintainers

Refer to our [recent blog post](/blog/2022/10/17/maintain-or-co-maintain-an-ropensci-package/#packages-looking-for-co-maintainers) to identify packages where help is especially wished for!

## Package development corner

Some useful tips for R package developers. :eyes:

### Tired of typing \#’ before function examples?

You can write your [function examples](https://blog.r-hub.io/2020/01/27/examples) in separate scripts and then refer to them using the [roxygen2 `@example` (no s!) tag](https://roxygen2.r-lib.org/articles/rd.html#examples).

You’d write

``` r
#' @example man/examples/foo.R
```

and in `man/examples/foo.R`

``` r
# basic usage of foo
foo(basic = TRUE)
# elaborate usage of foo
foo(basic = FALSE)
```

Downsides of using this are that it might surprise contributors, and that someone who’d look for the source of the example through, say, the link indicated on a pkgdown reference page, would not get to the example source directly.

Thanks to Hugo Gruson for reminding this in the [rOpenSci semi-open slack](https://contributing.ropensci.org/resources.html#channels).

### Display a message or warning only once per session?

If that’s your need, know that [`rlang::warn()` and `rlang::inform()`](https://rlang.r-lib.org/reference/abort.html) have a handy `.frequency` argument, as reported by [Jon Harmon on Posit Community forum](https://community.rstudio.com/t/how-to-print-a-once-only-package-startup-message/151468/3).

### Run some tests on continuous integration only?

Say you have some slow and fragile [tests querying an API](https://books.ropensci.org/http-testing/).
If you want to run them on continuous integration only,
refer to [Bryce Mecum’s blog post](https://brycemecum.com/2020/08/05/testing-r-api-packages/).

### How to use additional packages for the pkgdown website only

Say a package is needed for a pkgdown article of your package (but not a vignette), or for nicer autolinking of a reference to a function (for instance if you recommend `usethis::create_package()`).
Assuming you’re building your website with GitHub Actions from [r-lib/actions](https://github.com/r-lib/actions/tree/v2-branch/examples) (that you might have gotten via [usethis](https://usethis.r-lib.org/reference/github_actions.html)).

If so, you can use the `Config/Needs/website` field in `DESCRIPTION`.
Here is an example, in [pkgdown itself](https://github.com/r-lib/pkgdown/blob/7fe9e802df2964d483d0267f1d5a59aa7b3c685d/DESCRIPTION#L64)

    Config/Needs/website: usethis, servr

The idea of custom fields is mentioned in the second edition of the [R packages book](https://r-pkgs.org/Metadata.html#custom-fields).

Note that it works for rOpenSci packages, whose documentation websites are [built with R-universe](/blog/2021/09/03/runiverse-docs/)!

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven’t subscribed to our newsletter yet, you can [do so via a form](/news/). Until it’s time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
