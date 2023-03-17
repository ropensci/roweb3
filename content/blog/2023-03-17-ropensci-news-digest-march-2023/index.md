---
title: rOpenSci News Digest, March 2023
author:
  - The rOpenSci Team
date: '2023-03-17'
slug: ropensci-news-digest-march-2023
categories: []
tags:
  - newsletter
description: Interview of ThinkR Sébastien Rochette, package discovery on R-universe, coworking, new packages and package news
params:
  last_newsletter: '2023-02-17'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2023/03/17/ropensci-news-digest-march-2023).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Meeting the stars of the R-universe: Sébastien Rochette

Knowing our community's stories helps us to learn about the people behind our software, brings us closer and offers us new opportunities. To share some of these community stories, we created the rOpenSci interview series [_"Meeting the stars of the R-Universe"_](/tags/r-universe-stars/).

The latest interview with [Sébastien Rochette introduces ThinkR’s Approach to Contributing to a Growing and Friendly R Community](/blog/2023/02/28/r-universe-stars-2-en/).
The post is available in [Spanish](/blog/2023/02/28/r-universe-stars-2-es/) and [French](/blog/2023/02/28/r-universe-stars-2-fr/) too!
Don't miss the trilingual post and the video.


### Discovering and learning everything there is to know about R packages using R-universe

Jeroen Ooms explains [how to use R-universe to discover and assess new packages](/blog/2023/02/27/runiverse-discovering/).
He wrote that we can distinguish three levels of navigation in the R-universe when you go shopping for R packages:

1. Search the global ecosystem: find packages, by topic, keyword, ranking, etc.
1. Browse by maintainer/organization: explore all work from a given group or developer.
1. The individual package: get detailed information on everything there is to know about a project and instructions for how to start using it.

That post was also discussed on the [R Weekly highlights podcast](https://rweekly.fireside.fm/114?t=576) hosted by Eric Nantz and Mike Thomas!

### Coworking

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.
    
* [Tuesday, Apr 4th, 14:00 European Central / 12:00 UTC](/events/coworking-2023-04/) "Working with taxonomic lists in R" *Hosted by community host [Miguel Alvarez](/author/miguel-alvarez/) and [Steffi LaZerte](/author/steffi-lazerte/)*
    - Explore R packages for working with lists (such as [taxlist](https://docs.ropensci.org/taxlist/)),
    - Organize some taxonomy in your data using taxlist,
    - Talk to [Miguel](/author/miguel-alvarez/) and discuss tips for working with taxonomic lists.
    
And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

* Tuesday, May 2nd, 9:00 Americas Pacific / 16:00 UTC Tentative theme: "Spring Cleaning for R packages and scripts" *Hosted by community host TBD and [Steffi LaZerte](/author/steffi-lazerte/)*
    - Explore how other organizations keep their scripts/packages nice and clean
    - Take a look at your R packages and scripts and give them a good spring cleaning\*
    - Talk to our community host and other attendees and discuss tips for keeping on top of it all.
    
\* in the northern hemisphere at least, otherwise, give them a good *fall* cleaning!

## Software :package:

### New packages




The following five packages recently became a part of our software suite:

+ [geojson](https://docs.ropensci.org/geojson), developed by Scott Chamberlain together with Jeroen Ooms: Classes for GeoJSON to make working with GeoJSON easier. Includes S3 classes for GeoJSON classes with brief summary output, and a few methods such as extracting and adding bounding boxes, properties, and coordinate reference systems; working with newline delimited GeoJSON; linting through the geojsonlint package; and serializing to/from Geobuf binary GeoJSON format.  It is available on [CRAN]( https://CRAN.R-project.org/package=geojson). 

+ [openalexR](https://docs.ropensci.org/openalexR), developed by Massimo Aria together with Trang Le: A set of tools to extract bibliographic content from OpenAlex database using API <https://docs.openalex.org>.  It is available on [CRAN]( https://CRAN.R-project.org/package=openalexR). It has been [reviewed](https://github.com/ropensci/software-review/issues/560).

+ [rb3](https://docs.ropensci.org/rb3), developed by Wilson Freitas together with Marcelo Perlin: Download and parse public files released by B3 and convert them into useful formats and data structures common to data analysis practitioners.  It is available on [CRAN]( https://CRAN.R-project.org/package=rb3). It has been [reviewed](https://github.com/ropensci/software-review/issues/534).

+ [tsbox](https://docs.ropensci.org/tsbox), developed by Christoph Sax: Time series toolkit with identical behavior for all time series classes: ts,xts, data.frame, data.table, tibble, zoo, timeSeries, tsibble, tis or irts. Also converts reliably between these classes.  It is available on [CRAN]( https://CRAN.R-project.org/package=tsbox). It has been [reviewed](https://github.com/ropensci/software-review/issues/464) by Cathy Chamberlin, and Nunes Matt.

+ [waywiser](https://docs.ropensci.org/waywiser), developed by Michael Mahoney: Assessing predictive models of spatial data can be challenging, both because these models are typically built for extrapolating outside the original region represented by training data and due to potential spatially structured errors, with "hot spots" of higher than expected error clustered geographically due to spatial structure in the underlying data. Methods are provided for assessing models fit to spatial data, including approaches for measuring the spatial structure of model errors, assessing model predictions at multiple spatial scales, and evaluating where predictions can be made safely. Methods are particularly useful for models fit using the tidymodels framework. Methods include Morans I (Moran (1950) <doi:10.2307/2332142>), Gearys C (Geary (1954) <doi:10.2307/2986645>), Getis-Ords G (Ord and Getis (1995) <doi:10.1111/j.1538-4632.1995.tb00912.x>), agreement coefficients from Ji and Gallo (2006) (<doi: 10.14358/PERS.72.7.823>), agreement metrics from Willmott (1981) (<doi: 10.1080/02723646.1981.10642213>) and Willmott et al. (2012) (<doi: 10.1002/joc.2419>), an implementation of the area of applicability methodology from Meyer and Pebesma (2021) (<doi:10.1111/2041-210X.13650>), and an implementation of multi-scale assessment as described in Riemann et al'. (2010) (<doi:10.1016/j.rse.2010.05.010>).  It is available on [CRAN]( https://CRAN.R-project.org/package=waywiser). It has been [reviewed](https://github.com/ropensci/software-review/issues/571) by Virgilio Gómez-Rubio, and Jakub Nowosad.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following fifteen packages have had an update since the last newsletter: [c14bazAAR](https://docs.ropensci.org/c14bazAAR "Download and Prepare C14 Dates from Different Source Databases") ([`3.4.1`](https://github.com/ropensci/c14bazAAR/releases/tag/3.4.1)), [dynamite](https://docs.ropensci.org/dynamite "Bayesian Modeling and Causal Inference for Multivariate
    Longitudinal Data") ([`1.2.0`](https://github.com/ropensci/dynamite/releases/tag/1.2.0)), [FedData](https://docs.ropensci.org/FedData "Functions to Automate Downloading Geospatial Data Available from
    Several Federated Data Sources") ([`v3.0.3`](https://github.com/ropensci/FedData/releases/tag/v3.0.3)), [geojsonio](https://docs.ropensci.org/geojsonio "Convert Data from and to GeoJSON or TopoJSON") ([`v0.11.0`](https://github.com/ropensci/geojsonio/releases/tag/v0.11.0)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.12`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.12)), [mctq](https://docs.ropensci.org/mctq "Tools to Process the Munich ChronoType Questionnaire (MCTQ)") ([`v0.3.2`](https://github.com/ropensci/mctq/releases/tag/v0.3.2)), [osmdata](https://docs.ropensci.org/osmdata "Import OpenStreetMap Data as Simple Features or Spatial Objects") ([`v0.2.1`](https://github.com/ropensci/osmdata/releases/tag/v0.2.1)), [pathviewr](https://docs.ropensci.org/pathviewr "Wrangle, Analyze, and Visualize Animal Movement Data") ([`v1.1.7`](https://github.com/ropensci/pathviewr/releases/tag/v1.1.7)), [qualR](https://docs.ropensci.org/qualR "An R package to download São Paulo and Rio de Janeiro air pollution data") ([`v0.9.7`](https://github.com/ropensci/qualR/releases/tag/v0.9.7)), [rredlist](https://docs.ropensci.org/rredlist "IUCN Red List Client") ([`v0.7.1`](https://github.com/ropensci/rredlist/releases/tag/v0.7.1)), [spocc](https://docs.ropensci.org/spocc "Interface to Species Occurrence Data Sources") ([`v1.2.1`](https://github.com/ropensci/spocc/releases/tag/v1.2.1)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.7.5`](https://github.com/ropensci/tarchetypes/releases/tag/0.7.5)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`0.14.3`](https://github.com/ropensci/targets/releases/tag/0.14.3)), [webmockr](https://docs.ropensci.org/webmockr "Stubbing and Setting Expectations on HTTP Requests") ([`v0.9.0`](https://github.com/ropensci/webmockr/releases/tag/v0.9.0)), and [xslt](https://docs.ropensci.org/xslt "Extensible Style-Sheet Language Transformations") ([`v1.4.4`](https://github.com/ropensci/xslt/releases/tag/v1.4.4)).

## Software Peer Review

There are fifteen recently closed and active submissions and 2 submissions on hold. Issues are at different stages: 

* Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [openalexR](https://github.com/ropensci/software-review/issues/560), Getting Bibliographic Records from OpenAlex Database Using DSL. Submitted by [Trang Le](https://trang.page/). 

    * [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com).  (Stats).

* Three at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [concstats](https://github.com/ropensci/software-review/issues/559), Market Structure, Concentration and Inequality Measures. Submitted by [Andreas Schneider](https://github.com/schneiderpy). 

    * [wmm](https://github.com/ropensci/software-review/issues/522), World Magnetic Model. Submitted by [Will Frierson](https://github.com/wfrierson). 

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

* Four at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [credit](https://github.com/ropensci/software-review/issues/576), Generate CRediT Author Statements. Submitted by [Josep Pueyo-Ros](https://github.com/jospueyo). 

    * [predictNMB](https://github.com/ropensci/software-review/issues/566), Evaluate Clinical Prediction Models by Net Monetary Benefit. Submitted by [Rex Parsons](https://rwparsons.github.io/).  (Stats).

    * [dfms](https://github.com/ropensci/software-review/issues/556), Dynamic Factor Models. Submitted by [Sebastian Krantz](https://github.com/SebKrantz). 

    * [waywiser](https://github.com/ropensci/software-review/issues/571), Ergonomic Methods for Assessing Spatial Models. Submitted by [Michael Mahoney](https://mm218.dev/).  (Stats).

* Four at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [birdsize](https://github.com/ropensci/software-review/issues/577), Estimate Avian Body Size Distributions. Submitted by [Renata Diaz](https://diazrenata.github.io/home/). 

    * [dwctaxon](https://github.com/ropensci/software-review/issues/574), Tools for Working with Darwin Core Taxon Data. Submitted by [Joel Nitta](https://joelnitta.com). 

    * [ohun](https://github.com/ropensci/software-review/issues/568), Optimizing Acoustic Signal Detection. Submitted by [Marcelo Araya-Salas](https://marceloarayasalas.weebly.com/). 

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](https://jounihelske.netlify.app).  (Stats).

* Two at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [pangoling](https://github.com/ropensci/software-review/issues/575), Access to Large Language Model Predictions. Submitted by [Bruno Nicenboim](https://bnicenboim.github.io/). 

    * [qualtdict](https://github.com/ropensci/software-review/issues/572), Generating Variable Dictionaries and Labelled Data Exports of Qualtrics. Submitted by [lyh970817](https://github.com/lyh970817). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Other topics

* [rOpenSci Champions Program Kick off](/blog/2023/02/21/champions-program-kick-off) by Yanina Bellini Saibene. The champions program has already started the first activities of 2023. Read where the participants are from and what they will be doing.

* [Puntapié inicial de nuestro programa de campeonas y campeones](/blog/2023/02/21/champions-program-kick-off-es) by Yanina Bellini Saibene. El programa de campeones y campeonas ya inició las primeras actividades de este 2023. Lee de donde son los y las participantes y que van a estar haciendo.

* [Meeting the Stars of the R-universe: ThinkR's Approach to Contributing to a Growing and Friendly R Community](/blog/2023/02/28/r-universe-stars-2-en) by Yanina Bellini Saibene, Sébastien Rochette, Alejandra Bellini, Lucio Casalla, and Steffi LaZerte.

* [Aprender, ayudar y compartir. El método de ThinkR para crear una comunidad cada vez más grande y amigable de R](/blog/2023/02/28/r-universe-stars-2-es) by Yanina Bellini Saibene, Sébastien Rochette, Alejandra Bellini, Lucio Casalla, and Steffi LaZerte. Una nueva entrega de nuestra serie de entrevistas __"Conociendo a las estrellas del universo R"__. Nos vamos a Francia para conocer más de cerca el trabajo que hace la gente de ThinkR.

* [Enseigner, aider et partager. L'approche de ThinkR pour contribuer à la croissance d’une communauté R conviviale](/blog/2023/02/28/r-universe-stars-2-fr) by Yanina Bellini Saibene, Sébastien Rochette, Alejandra Bellini, Lucio Casalla, and Steffi LaZerte. A new installment of our interview series __"Meeting the stars of the R-Universe"__. We go to France to get a closer look at the work of the people at ThinkR.



### Tech Notes

* [Discovering and learning everything there is to know about R packages using r-universe](/blog/2023/02/27/runiverse-discovering) by Jeroen Ooms. The goal of r-universe is to provide a central place for browsing through the R ecosystem to discover what is out there, get a sense of the purpose and quality of individual packages, and help you get started in seconds.

* [Descubrir y aprender todo lo que hay que saber sobre los paquetes de R utilizando r-universe](/blog/2023/02/27/runiverse-discovering-es) by Jeroen Ooms. El objetivo de r-universe es proporcionar un lugar central para navegar por el ecosistema de R y descubrir lo que existe; hacerse una idea de la finalidad y la calidad de cada paquete, y ayudar a empezar en cuestión de segundos.

<!-- ## Use cases



`snakecase::to_sentence_case(english(length(usecases)))` use case` if (length(usecases) > 1) "s"` of our packages and resources ha` if (length(usecases) > 1) "ve" else "s"` been reported since we sent the last newsletter.



Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)! -->

## Call for (co)maintainers

### Call for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/) (or listening to its discussion on the [R Weekly highlights podcast](https://rweekly.fireside.fm/111) hosted by Eric Nantz and Mike Thomas)!

- **[rvertnet](https://cran.r-project.org/web/packages/rvertnet/index.html)**, Retrieve, map and summarize data from the VertNet.org archives (<http://vertnet.org/>). Functions allow searching by many parameters, including taxonomic names, places, and dates. In addition, there is an interface for conducting spatially delimited searches, and another for requesting large datasets via email. [Issue for volunteering](https://github.com/ropensci-archive/rvertnet/issues/71).

- **[natserv](https://cran.r-project.org/web/packages/natserv/index.html)**. Interface to NatureServe (<https://www.natureserve.org/>). Includes methods to get data, image metadata, search taxonomic names, and make maps. [Issue for volunteering](https://github.com/ropensci-archive/natserv/issues/29).

- **[sofa](https://cran.r-project.org/web/packages/sofa/index.html)**. Provides an interface to the NoSQL database CouchDB (<http://couchdb.apache.org>). Methods are provided for managing databases within CouchDB, including creating/deleting/updating/transferring, and managing documents within databases. One can connect with a local CouchDB instance, or a remote 'CouchDB' databases such as Cloudant. Documents can be inserted directly from vectors, lists, data.frames, and JSON. Targeted at CouchDB v2 or greater. [Issue for volunteering](https://github.com/ropensci-archive/sofa/issues/81).

- **[geojsonlint](https://cran.r-project.org/web/packages/geojsonlint/index.html)**, Tools for linting GeoJSON. Includes tools for interacting with the online tool <http://geojsonlint.com>, the Javascript library geojsonhint (<https://www.npmjs.com/package/geojsonhint>), and validating against a GeoJSON schema via the Javascript library (<https://www.npmjs.com/package/is-my-json-valid>). Some tools work locally while others require an internet connection. [Issue for volunteering](https://github.com/ropensci-archive/geojsonlint/issues/22).

- **[citesdb](https://docs.ropensci.org/citesdb/)**, a high-performance database of shipment-level CITES trade data. Provides convenient access to over 40 years and 20 million records of
endangered wildlife trade data from the Convention on International Trade
in Endangered Species of Wild Fauna and Flora, stored on a local on-disk,
out-of memory 'DuckDB' database for bulk analysis. [Issue for volunteering](https://github.com/ropensci/citesdb/issues/21).


### Call for comaintainers

- **[rtweet](https://docs.ropensci.org/rtweet)**, that interfaces Twitter API, is looking for a [co-maintainer](https://github.com/ropensci/rtweet/issues/763).

- Refer to our [recent blog post](/blog/2022/10/17/maintain-or-co-maintain-an-ropensci-package/#packages-looking-for-co-maintainers) to identify other packages where help is especially wished for!

## Package development corner

Some useful tips for R package developers. :eyes:

### R Consortium's call for proposals!

The R Consortium's Internal Steering Committee has a [call for proposals](https://www.r-consortium.org/all-projects/call-for-proposals) open until April 1st.

- The funds can be used for different sizes of projects. The project must have a software development component.
- Proofs of concept are not funded. No scientific publications or equipment.
- The idea is that the funds can cover people's time to develop software.

This might be relevant for your R package work so make sure to read the call, and good luck if you send a proposal! :rocket:

### To cache, or not to cache testthat results?

Have you ever wished you could cache testthat results?
You'll find arguments both in favor of and against that idea in this [testthat issue](https://github.com/r-lib/testthat/issues/1703) -- testthat maintainer Hadley Wickham being against the idea.

You might be interested in Kirill Müller's experimental package [lazytest](https://krlmlr.github.io/lazytest/) that helps you rerun only the tests that have failed during the last run.

### Check if an R package name is available 

The function [`pak::pkg_name_check()`](https://pak.r-lib.org/reference/pkg_name_check.html) by Gábor Csárdi can be viewed as a replacement for the available package. It has a very nice output.

### What if your httptest mock files are suddenly ignored?

Imagine you've set up [HTTP testing](https://books.ropensci.org/http-testing/index.html) in your package with [httptest](https://books.ropensci.org/http-testing/httptest.html) and all goes well until one day, where the httptest mock files are _ignored_.
Don't panick! 
Check whether the calls that are mocked are still made with httr.
Maybe one of your package's dependencies upgraded their [stack](https://books.ropensci.org/http-testing/http-in-r-101.html#http-requests-in-r-what-package)?
If the calls are made with httr2, the tests need to be updated to [httptest2](https://books.ropensci.org/http-testing/httptest2.html) which thankfully isn't too hard.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
