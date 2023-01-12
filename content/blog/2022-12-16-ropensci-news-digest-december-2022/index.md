---
title: rOpenSci News Digest, December 2022
author:
  - The rOpenSci Team
date: '2022-12-16'
slug: ropensci-news-digest-december-2022
categories: []
tags:
  - newsletter
description: Community call recording, one-page HTML package docs, R-universe stars interview, coworking
params:
  last_newsletter: '2022-11-18'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2022/12/16/ropensci-news-digest-december-2022).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

<!-- to be curated manually -->

### One-page HTML package manuals on R-universe!

We have recently started building HTML reference manuals for each package in the R-universe! For packages that have had an update in the past 3 weeks, the reference manual is now linked from the package homepage on [R-universe.dev](https://r-universe.dev). All packages in the R-universe are rebuilt at least once per month, so soon all packages should have an online HTML manual. 
You can also find [reference manuals for base-R packages](https://r-universe.dev/manuals/).

We released the three packages used to create these manuals: [postdoc](https://docs.ropensci.org/postdoc/), [katex](https://docs.ropensci.org/katex/) and [prismjs](https://docs.ropensci.org/prismjs/).

Find more information in our [tech note](/blog/2022/11/18/ropensci-news-digest-november-2022/).


### Meeting the stars of the R-universe

Knowing our community's stories helps us to learn about the people behind our software, brings us closer and offers us new opportunities. To share some of these community stories, we introduce you to the rOpenSci interview series [_"Meeting the stars of the R-Universe"_](/tags/r-universe-stars/).

The first interview showcases a bilingual (Spanish & English) story from Latin America: The experience of working with R packages in the Argentinian State. 

Don't miss the [blog post and the video](/blog/2022/11/23/r-universe-stars-1-en/) (with subtitles in English and Spanish).

### Community Call recap: "Mentoring & training program for Scientific Open Source Champions"

After a brief hiatus, we returned to community calls with a session dedicated to our Champions Program.   
We invited open source software Champions from other spaces and communities to share their experiences, to help us learn more about what it is to be a Champion, the benefit of applying to these programs, and how being a Champion can benefit not only us, but also our communities.

In this call, moderated by rOpenSci Community Manager [Yani Bellini Saibene](/author/yanina-bellini-saibene/), [Santosh Yadav](/author/santosh-yadav/) and [Emanuele Bartolesi](/author/emanuele-bartolesi/) shared their experiences of being Champions in their communities and gave advice on how to create a path to becoming a Champion in open source software communities.

You can [watch the video](/commcalls/oct2022-champions/) and [access all the materials](/commcalls/oct2022-champions/)  on our website.
### Coworking sessions continue!

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.

* [Tuesday, Jan 10th\*, 14:00 European Central / 13:00 UTC](/events/coworking-2023-01/) "Working with new R users" *Hosted by community host [Alex Koiter](https://alexkoiter.ca) and [Steffi LaZerte](/author/steffi-lazerte/)*
    - Brainstorm ideas for supporting and encouraging new R users; Annotate a script for a friend or colleague to help them learn;
    - Talk to [Alex](https://alexkoiter.ca) and discuss how to share the love of R with new R users.

* [Tuesday, Feb 7th, 9:00 Americas Pacific / 17:00 UTC](/events/coworking-2023-02/) "Setting up Continuous Integration" *Hosted by community host [Hugo Gruson](/author/hugo-gruson/) and [Steffi LaZerte](/author/steffi-lazerte/)*
    - Do some reading to learn about Continuous Integration; Setup Continuous Integration on one (or more) of your projects;
    - Talk to [Hugo](/author/hugo-gruson/) and discuss how Continuous Integration can simplify your development process and how to get set up.

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

\* Note that the January Co-working session is on the *second* Tuesday in January.

## Software :package:

### New packages




The following three packages recently became a part of our software suite:

+ [dynamite](https://docs.ropensci.org/dynamite), developed by Santtu Tikka together with Jouni Helske: Easy-to-use and efficient interface for Bayesian inference of complex panel (time series) data. The package supports joint modeling of multiple measurements per individual, time-varying and time-invariant effects, and a wide range of discrete and continuous distributions. Estimation of these dynamic multivariate panel models is carried out via Stan. It has been [reviewed](https://github.com/ropensci/software-review/issues/554) by Nicholas Clark, and Lucy McGowan.

+ [postdoc](https://docs.ropensci.org/postdoc), developed by Jeroen Ooms: Generates simple and beautiful one-page HTML reference manuals with package documentation. Math rendering and syntax highlighting are done server-side in R such that no JavaScript libraries are needed in the browser, which makes the documentation portable and fast to load.  It is available on [CRAN]( https://CRAN.R-project.org/package=postdoc). 

+ [prismjs](https://docs.ropensci.org/prismjs), developed by Jeroen Ooms: Prism <https://prismjs.com/> is a lightweight, extensible syntax highlighter, built with modern web standards in mind. This package provides server-side rendering in R using V8 such that no JavaScript library is required in the resulting HTML documents. Over 400 languages are supported.  It is available on [CRAN]( https://CRAN.R-project.org/package=prismjs). 

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following twenty packages have had an update since the last newsletter: [gert](https://docs.ropensci.org/gert "Simple Git Client for R") ([`v1.9.2`](https://github.com/r-lib/gert/releases/tag/v1.9.2)), [pkgstats](https://docs.ropensci.org/pkgstats "Metrics of R Packages") ([`v0.1.2`](https://github.com/ropensci-review-tools/pkgstats/releases/tag/v0.1.2)), [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (cff) Metadata for R Packages") ([`v0.4.0`](https://github.com/ropensci/cffr/releases/tag/v0.4.0)), [crul](https://docs.ropensci.org/crul "HTTP Client") ([`v1.3`](https://github.com/ropensci/crul/releases/tag/v1.3)), [daiquiri](https://docs.ropensci.org/daiquiri "Data Quality Reporting for Temporal Datasets") ([`v1.0.3`](https://github.com/ropensci/daiquiri/releases/tag/v1.0.3)), [gutenbergr](https://docs.ropensci.org/gutenbergr "Download and Process Public Domain Works from Project Gutenberg") ([`v0.2.3`](https://github.com/ropensci/gutenbergr/releases/tag/v0.2.3)), [katex](https://docs.ropensci.org/katex "Rendering Math to HTML, MathML, or R-Documentation Format") ([`v1.4.1`](https://github.com/ropensci/katex/releases/tag/v1.4.1)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.9.1`](https://github.com/ropensci/nodbi/releases/tag/v0.9.1)), [phylocomr](https://docs.ropensci.org/phylocomr "Interface to Phylocom") ([`v0.3.3`](https://github.com/ropensci/phylocomr/releases/tag/v0.3.3)), [postdoc](https://docs.ropensci.org/postdoc "Minimal and Uncluttered Package Documentation") ([`v1.1.0`](https://github.com/ropensci/postdoc/releases/tag/v1.1.0)), [prismjs](https://docs.ropensci.org/prismjs "Server-Side Syntax Highlighting") ([`v1.1.0`](https://github.com/ropensci/prismjs/releases/tag/v1.1.0)), [qualtRics](https://docs.ropensci.org/qualtRics "Download Qualtrics Survey Data") ([`v3.1.7`](https://github.com/ropensci/qualtRics/releases/tag/v3.1.7)), [rerddap](https://docs.ropensci.org/rerddap "General Purpose Client for ERDDAP Servers") ([`v1.0.1`](https://github.com/ropensci/rerddap/releases/tag/v1.0.1)), [rgbif](https://docs.ropensci.org/rgbif "Interface to the Global Biodiversity Information Facility API") ([`v3.7.4`](https://github.com/ropensci/rgbif/releases/tag/v3.7.4)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.7.3`](https://github.com/ropensci/tarchetypes/releases/tag/0.7.3)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Workflows") ([`0.14.1`](https://github.com/ropensci/targets/releases/tag/0.14.1)), [terrainr](https://docs.ropensci.org/terrainr "Landscape Visualizations in R and Unity") ([`v0.7.2`](https://github.com/ropensci/terrainr/releases/tag/v0.7.2)), [tic](https://docs.ropensci.org/tic "CI-Agnostic Workflow Definitions") ([`v0.13.2`](https://github.com/ropensci/tic/releases/tag/v0.13.2)), [tidytags](https://docs.ropensci.org/tidytags "Importing and Analyzing Twitter Data Collected with Twitter Archiving Google Sheets") ([`v1.1`](https://github.com/ropensci/tidytags/releases/tag/v1.1)), and [unifir](https://docs.ropensci.org/unifir "A Unifying API for Calling the Unity 3D Video Game Engine") ([`v0.2.3`](https://github.com/ropensci/unifir/releases/tag/v0.2.3)).

## Software Peer Review

There are eleven recently closed and active submissions and 2 submissions on hold. Issues are at different stages: 

* Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [dynamite](https://github.com/ropensci/software-review/issues/554), Bayesian Modeling and Causal Inference for Multivariate. Submitted by [Santtu Tikka](http://users.jyu.fi/~santikka/).  (Stats).

    * [phruta](https://github.com/ropensci/software-review/issues/458), Phylogenetic Reconstruction and Time-dating. Submitted by [Cristian Román Palacios](http://cromanpa94.github.io/cromanpa/). 

* Two at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [stochLAB](https://github.com/ropensci/software-review/issues/551), Stochastic Collision Risk Model. Submitted by [Grant](http://www.blackbawks.net).  (Stats).

    * [rb3](https://github.com/ropensci/software-review/issues/534), Download and Parse Public Data Released by B3 Exchange. Submitted by [Marcelo S. Perlin](https://www.msperlin.com/). 

* Three at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

    * [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com).  (Stats).

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com). 

* Three at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [openalexR](https://github.com/ropensci/software-review/issues/560), Getting Bibliographic Records from OpenAlex Database Using DSL. Submitted by [Trang Le](http://trang.page). 

    * [dfms](https://github.com/ropensci/software-review/issues/556), Dynamic Factor Models. Submitted by [Sebastian Krantz](https://github.com/SebKrantz). 

    * [wmm](https://github.com/ropensci/software-review/issues/522), World Magnetic Model. Submitted by [Will Frierson](https://github.com/wfrierson). 

* One at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](http://jounihelske.netlify.app).  (Stats).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Software Review

* [Our First Peer-Reviewed Statistical R Packages!](/blog/2022/11/30/first-peer-reviewed-stats-packages) by Noam Ross, and Mark Padgham.

### Other topics

* [Meeting the stars of the R-universe: R Community, Exchange and Learn](/blog/2022/11/23/r-universe-stars-1-en) by Yanina Bellini Saibene, Alejandra Bellini, Lucio Casalla, and Steffi LaZerte. This is the first post of our interview series __"Meeting the stars of the R-universe"__. We begin our journey in _Argentina_ with a team that uses R and develops R packages in the Argentinean State.

* [Conociendo a las estrellas del universo R: comunidad R, intercambiar y aprender](/blog/2022/11/23/r-universe-stars-1-es) by Yanina Bellini Saibene, Alejandra Bellini, Lucio Casalla, and Steffi LaZerte. Esta es la primera entrega de nuestra serie de entrevistas __"Conociendo a las estrellas del universo R"__. Iniciamos nuestro recorrido en _Argentina_ y con un equipo que utiliza R y desarrolla paquetes de R en el estado Argentino.

* [rOpenSci Code of Conduct Annual Review](/blog/2023/01/06/conduct2023) by Yanina Bellini Saibene, Mark Padgham, Kara Woo, and Megan Carter. Updates for version 2.4 of rOpenSci's Code of Conduct.

* [rOpenSci 2022 Code of Conduct Transparency Report](/blog/2023/01/06/transparency2022) by Yanina Bellini Saibene, Mark Padgham, and Kara Woo. rOpenSci 2022 Code of Conduct Transparency Report.



### Tech Notes

* [postdoc 1.0: minimal and uncluttered HTML package manuals](/blog/2022/11/29/postdoc-docs) by Jeroen Ooms. We released two new packages that we are using in R-universe to render package documentation: postdoc and prismjs.

* [How to Save ggplot2 Plots in a targets Workflow?](/blog/2022/12/06/save-ggplot2-targets) by Matthias Grenié. A short exploration of how to save ggplot2 objects in targets workflow.

## Use cases



One use case of our packages and resources has been reported since we sent the last newsletter.

* [Delete all your tweets using rtweet](https://discuss.ropensci.org/t/delete-all-your-tweets-using-rtweet/3217). Reported by Julia Silge.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for package (co-)maintainers

### Calls for maintainers

* **[onekp](https://docs.ropensci.org/onekp), Access sequences from the 1000 Plant Initiative (1KP)**. The 1000 Plants Initiative (www.onekp.com) has sequenced the transcriptomes of over 1000 plant species. This package allows these sequences and metadata to be retrieved and filtered by code, species or recursively by clade. Scientific names and NCBI taxonomy IDs are both supported. [Issue for volunteering](https://github.com/ropensci/onekp/issues/9) 

- **[citesdb](https://docs.ropensci.org/citesdb/)**,a high-performance database of shipment-level CITES trade data. Provides convenient access to over 40 years and 20 million records of
endangered wildlife trade data from the Convention on International Trade
in Endangered Species of Wild Fauna and Flora, stored on a local on-disk,
out-of memory 'DuckDB' database for bulk analysis. [Issue for volunteering](https://github.com/ropensci/citesdb/issues/21)


- **[RSelenium](https://docs.ropensci.org/RSelenium), R Bindings for 'Selenium WebDriver'**. Provides a set of R bindings for the ['Selenium 2.0 WebDriver'](https://www.selenium.dev/documentation/) using the ['JsonWireProtocol'](https://github.com/SeleniumHQ/selenium/wiki/JsonWireProtocol). 'Selenium 2.0 WebDriver' allows driving a web browser natively as a user would either locally or on a remote machine using the Selenium server it marks a leap forward in terms of web browser automation. [Issue for volunteering](https://github.com/ropensci/RSelenium/issues/261).

- **[elastic](https://docs.ropensci.org/elastic), General Purpose Interface to 'Elasticsearch'**. Connect to 'Elasticsearch', a 'NoSQL' database built on the 'Java' Virtual Machine. Interacts with the ['Elasticsearch' 'HTTP' API](https://www.elastic.co/elasticsearch/), including functions for setting connection details to 'Elasticsearch' instances, loading bulk data, searching for documents with both 'HTTP' query variables and 'JSON' based body requests. [Issue for volunteering](https://github.com/ropensci/elastic/issues/292).

### Call for comaintainers

Refer to our [recent blog post](/blog/2022/10/17/maintain-or-co-maintain-an-ropensci-package/#packages-looking-for-co-maintainers) to identify packages where help is especially wished for!

## Package development corner

Some useful tips for R package developers. :eyes:

### What is a reproducible example for package development problems?

You might have heard of the [reprex](https://reprex.tidyverse.org/) package, which we'd recommend using.
However, it's not necessarily adapted to _package development problems_.
To illustrate a problem you are having when developing a package, a reproducible example might consist in

* Creating an empty package, potentially with [`usethis::create_package()`](https://usethis.r-lib.org/reference/create_package.html);
* Adding as few elements as possible to it until you can illustrate the problem you have;
* Sharing it on a public platform (or a platform accessible to your target helper), potentially on GitHub with [`usethis::use_github()`](https://usethis.r-lib.org/reference/use_github.html);
* Optionally, adding GitHub Actions workflows to it to have a log to show. See [`usethis::use_github_actions()`](https://usethis.r-lib.org/reference/github_actions.html).

You do not need to use the usethis package.
However, it is crucial you find a way to quickly create the package skeleton and to quickly share it, as it will lessen the energy needed to get started, and leave you more time for the trickier reproducible example creation!

That's the kind of workflow recommended in [pkgdown contributing guide](https://pkgdown.r-lib.org/CONTRIBUTING.html#package-reprexes).
It will also serve you well in any package development Q&A channel.
Alternatively, if you can't reduce your problem to a minimal example, hopefully you can show your actual package to someone, as opposed to describing it with words.

### How to distribute data with your package?

Because of size limitations on CRAN for instance, it might seem tricky to distribute data with your package.
You could publish it on [R-universe](https://ggseg.r-universe.dev/ui#packages), and also explore solutions presented in a [R-hub blog post](https://blog.r-hub.io/2020/05/29/distribute-data/) and in a [posit community forum answer by Gábor Csárdi](https://community.rstudio.com/t/distributing-data-with-a-package/152848).

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
