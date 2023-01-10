---
title: rOpenSci News Digest, January 2023
author:
  - Maëlle Salmon
date: '2023-01-20'
slug: ropensci-news-digest-january-2023
categories: []
tags:
  - newsletter
description: keywords from the content
params:
  last_newsletter: '2022-12-16'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2023/01/20/ropensci-news-digest-january-2023).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### {targets} in Action Community Call

Tuesday, 31 January 2023 20:00 UTC / Tuesday, 31 January 2023 15:00 EST / Wednesday, 1st February 07:00 AEDT.

The [{targets}](https://docs.ropensci.org/targets/) package is a pipeline tool for Statistics and data science in R. With {targets}, you can maintain a reproducible workflow without repeating yourself. {targets} learns how your pipeline fits together, skips costly runtime for tasks that are already up to date, runs only the necessary computation, supports implicit parallel computing, abstracts files as R objects, and shows tangible evidence that the results match the underlying code and data.

On this call Will, Eric and Joel will share their experience putting **{targets} into action**. Eric will share with us _Using {targets} with HPC_ and Joel will talk about _Using {targets} for bioinformatics pipelines_, then Will will demonstrate _Debugging {targets} pipelines_.

More info on the [event page](/commcalls/jan2023-targets/).

### Coworking

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

- Tuesday, Feb 7th, 9:00 Americas Pacific / 17:00 UTC](/events/coworking-2023-02/) "Setting up Continuous Integration" *Hosted by community host [Hugo Gruson](/author/hugo-gruson/) and [Steffi LaZerte](/author/steffi-lazerte/)*
    - Do some reading to learn about Continuous Integration; Setup Continuous Integration on one (or more) of your projects;
    - Talk to [Hugo](/author/hugo-gruson/) and discuss how Continuous Integration can simplify your development process and how to get set up.

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

### Code of Conduct annual review and transparency report

Find [our annual review of the rOpenSci Code of Conduct, reporting process, and internal guidelines for handling reports and enforcement](/blog/2023/01/06/conduct2023/) as well as our [transparency report](/blog/2023/01/06/transparency2022/).
We thank our two independent community members [Megan Carter](https://www.esipfed.org/about/people/megan-carter) (until June 2022) and [Kara Woo](https://karawoo.com/).

## Software :package:

### New packages




The following  package recently became a part of our software suite:

+ [phruta](https://docs.ropensci.org/phruta), developed by Cristian Roman Palacios: The phruta R package is designed to simplify the basic phylogenetic pipeline. Specifically, all code is run within the same program and data from intermediate steps are saved in independent folders. Furthrmore, all code is run within the same environment which increases the reproducibility of your analysis. phruta retrieves gene sequences, combines newly downloaded and local gene sequences, and performs sequence alignments. It has been [reviewed](https://github.com/ropensci/software-review/issues/458) by Anna Krystalli, Rayna Harris, and Frederick Boehm.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following thirteen packages have had an update since the last newsletter: [GSODR](https://docs.ropensci.org/GSODR "Global Surface Summary of the Day (GSOD) Weather Data Client") ([`v3.1.7`](https://github.com/ropensci/GSODR/releases/tag/v3.1.7)), [jagstargets](https://docs.ropensci.org/jagstargets "Targets for JAGS Pipelines") ([`1.1.0`](https://github.com/ropensci/jagstargets/releases/tag/1.1.0)), [nasapower](https://docs.ropensci.org/nasapower "NASA POWER API Client") ([`v4.0.9`](https://github.com/ropensci/nasapower/releases/tag/v4.0.9)), [opentripplanner](https://docs.ropensci.org/opentripplanner "Setup and connect to OpenTripPlanner") ([`0.5.0`](https://github.com/ropensci/opentripplanner/releases/tag/0.5.0)), [ReLTER](https://docs.ropensci.org/ReLTER "An Interface for the eLTER Community") ([`2.0.0`](https://github.com/ropensci/ReLTER/releases/tag/2.0.0)), [rgbif](https://docs.ropensci.org/rgbif "Interface to the Global Biodiversity Information Facility API") ([`v3.7.5`](https://github.com/ropensci/rgbif/releases/tag/v3.7.5)), [rtweet](https://docs.ropensci.org/rtweet "Collecting Twitter Data") ([`v1.1.0`](https://github.com/ropensci/rtweet/releases/tag/v1.1.0)), [skimr](https://docs.ropensci.org/skimr "Compact and Flexible Summaries of Data") ([`v2.1.5`](https://github.com/ropensci/skimr/releases/tag/v2.1.5)), [stantargets](https://docs.ropensci.org/stantargets "Targets for Stan Workflows") ([`0.1.0`](https://github.com/ropensci/stantargets/releases/tag/0.1.0)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.7.4`](https://github.com/ropensci/tarchetypes/releases/tag/0.7.4)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`0.14.2`](https://github.com/ropensci/targets/releases/tag/0.14.2)), [tidytags](https://docs.ropensci.org/tidytags "Importing and Analyzing Twitter Data Collected with Twitter Archiving Google Sheets") ([`v1.1.1`](https://github.com/ropensci/tidytags/releases/tag/v1.1.1)), and [writexl](https://docs.ropensci.org/writexl "Export Data Frames to Excel xlsx Format") ([`v1.4.2`](https://github.com/ropensci/writexl/releases/tag/v1.4.2)).

## Software Peer Review

There are eleven recently closed and active submissions and 2 submissions on hold. Issues are at different stages: 

* One at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [phruta](https://github.com/ropensci/software-review/issues/458), Phylogenetic Reconstruction and Time-dating. Submitted by [Cristian Román Palacios](http://cromanpa94.github.io/cromanpa/). 

* One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [rb3](https://github.com/ropensci/software-review/issues/534), Download and Parse Public Data Released by B3 Exchange. Submitted by [Marcelo S. Perlin](https://www.msperlin.com/). 

* Five at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [stochLAB](https://github.com/ropensci/software-review/issues/551), Stochastic Collision Risk Model. Submitted by [Grant](http://www.blackbawks.net).  (Stats).

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

    * [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com).  (Stats).

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com). 

    * [stochLAB](https://github.com/ropensci/software-review/issues/551), Stochastic Collision Risk Model. Submitted by [Grant](http://www.blackbawks.net).  (Stats).

* Three at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [openalexR](https://github.com/ropensci/software-review/issues/560), Getting Bibliographic Records from OpenAlex Database Using DSL. Submitted by [Trang Le](http://trang.page). 

    * [dfms](https://github.com/ropensci/software-review/issues/556), Dynamic Factor Models. Submitted by [Sebastian Krantz](https://github.com/SebKrantz). 

    * [wmm](https://github.com/ropensci/software-review/issues/522), World Magnetic Model. Submitted by [Will Frierson](https://github.com/wfrierson). 

* One at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](http://jounihelske.netlify.app).  (Stats).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



* [rOpenSci Code of Conduct Annual Review](/blog/2023/01/06/conduct2023) by Yanina Bellini Saibene, Mark Padgham, Kara Woo, and Megan Carter. Updates for version 2.4 of rOpenSci's Code of Conduct.

* [rOpenSci 2022 Code of Conduct Transparency Report](/blog/2023/01/06/transparency2022) by Yanina Bellini Saibene, Mark Padgham, and Kara Woo. rOpenSci 2022 Code of Conduct Transparency Report.

## Use cases



`snakecase::to_sentence_case(english(length(usecases)))` use case`if (length(usecases) > 1) "s"` of our packages and resources ha`if (length(usecases) > 1) "ve" else "s"` been reported since we sent the last newsletter.



Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

### Calls for maintainers

- **[RSelenium](https://docs.ropensci.org/RSelenium), R Bindings for 'Selenium WebDriver'**. Provides a set of R bindings for the ['Selenium 2.0 WebDriver'](https://www.selenium.dev/documentation/) using the ['JsonWireProtocol'](https://github.com/SeleniumHQ/selenium/wiki/JsonWireProtocol). 'Selenium 2.0 WebDriver' allows driving a web browser natively as a user would either locally or on a remote machine using the Selenium server it marks a leap forward in terms of web browser automation. [Issue for volunteering](https://github.com/ropensci/RSelenium/issues/261).

- **[elastic](https://docs.ropensci.org/elastic), General Purpose Interface to 'Elasticsearch'**. Connect to 'Elasticsearch', a 'NoSQL' database built on the 'Java' Virtual Machine. Interacts with the ['Elasticsearch' 'HTTP' API](https://www.elastic.co/elasticsearch/), including functions for setting connection details to 'Elasticsearch' instances, loading bulk data, searching for documents with both 'HTTP' query variables and 'JSON' based body requests. [Issue for volunteering](https://github.com/ropensci/elastic/issues/292).

### Call for comaintainers

Refer to our [recent blog post](/blog/2022/10/17/maintain-or-co-maintain-an-ropensci-package/#packages-looking-for-co-maintainers) to identify packages where help is especially wished for!

## Package development corner

Some useful tips for R package developers. :eyes:

### Bad code? Good code?

Why not feel code shame when looking at older, less good code of yours?
In case you might ignore it, this 2015 blog post by David Robinson underlines how important it is to not code shame anyone lest they lose the courage to keep coding and improving: ["A Million Lines of Bad Code"](http://varianceexplained.org/programming/bad-code/).
And remember [testthat always believes in you](https://github.com/r-lib/testthat/blob/9cd6e01be008376b1f7f2d8d528d725b87c0d01e/R/praise.R#L50-L57). :wink:

### Write an R Package from R Markdown?

If you ever dreamed of [writing an R package from R Markdown](https://yihui.org/en/2023/01/litr-package/), check out the [fusen](https://thinkr-open.github.io/fusen/) package by Sébastien Rochette or the [litr](https://faculty.marshall.usc.edu/jacob-bien/litr/docs/) package by Jacob Bien and Patrick Vossler.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
