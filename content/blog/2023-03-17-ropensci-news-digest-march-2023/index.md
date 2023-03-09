---
title: rOpenSci News Digest, March 2023
author:
  - The rOpenSci Team
date: '2023-03-17'
slug: ropensci-news-digest-march-2023
categories: []
tags:
  - newsletter
description: keywords from the content
params:
  last_newsletter: '2023-02-17'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2023/03/17/ropensci-news-digest-march-2023).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

<!-- to be curated manually -->

<!-- Can use same coworking text every month and ping Steffi to ask if there are any special guests to add -->
Join us for social coworking & office hours monthly on 1st Tuesdays! Hosted by Steffi LaZerte  and various community hosts. Everyone welcome. No RSVP needed. Consult our [Events](/events) page to find your local time and how to join.


Find out about more [events](/events).

## Software :package:

### New packages




The following four packages recently became a part of our software suite:

+ [openalexR](https://docs.ropensci.org/openalexR), developed by Massimo Aria together with Trang Le: A set of tools to extract bibliographic content from OpenAlex database using API <https://docs.openalex.org>.  It is available on [CRAN]( https://CRAN.R-project.org/package=openalexR). 

+ [rb3](https://docs.ropensci.org/rb3), developed by Wilson Freitas together with Marcelo Perlin: Download and parse public files released by B3 and convert them into useful formats and data structures common to data analysis practitioners.  It is available on [CRAN]( https://CRAN.R-project.org/package=rb3). It has been [reviewed](https://github.com/ropensci/software-review/issues/534).

+ [tsbox](https://docs.ropensci.org/tsbox), developed by Christoph Sax: Time series toolkit with identical behavior for all time series classes: ts,xts, data.frame, data.table, tibble, zoo, timeSeries, tsibble, tis or irts. Also converts reliably between these classes.  It is available on [CRAN]( https://CRAN.R-project.org/package=tsbox). 

+ [waywiser](https://docs.ropensci.org/waywiser), developed by Michael Mahoney: Assessing predictive models of spatial data can be challenging, both because these models are typically built for extrapolating outside the original region represented by training data and due to potential spatially structured errors, with "hot spots" of higher than expected error clustered geographically due to spatial structure in the underlying data. Methods are provided for assessing models fit to spatial data, including approaches for measuring the spatial structure of model errors, assessing model predictions at multiple spatial scales, and evaluating where predictions can be made safely. Methods are particularly useful for models fit using the tidymodels framework. Methods include Morans I (Moran (1950) <doi:10.2307/2332142>), Gearys C (Geary (1954) <doi:10.2307/2986645>), Getis-Ords G (Ord and Getis (1995) <doi:10.1111/j.1538-4632.1995.tb00912.x>), agreement coefficients from Ji and Gallo (2006) (<doi: 10.14358/PERS.72.7.823>), agreement metrics from Willmott (1981) (<doi: 10.1080/02723646.1981.10642213>) and Willmott et al. (2012) (<doi: 10.1002/joc.2419>), an implementation of the area of applicability methodology from Meyer and Pebesma (2021) (<doi:10.1111/2041-210X.13650>), and an implementation of multi-scale assessment as described in Riemann et al'. (2010) (<doi:10.1016/j.rse.2010.05.010>).  It is available on [CRAN]( https://CRAN.R-project.org/package=waywiser). It has been [reviewed](https://github.com/ropensci/software-review/issues/571) by Virgilio Gómez-Rubio, and Jakub Nowosad.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following twelve packages have had an update since the last newsletter: [c14bazAAR](https://docs.ropensci.org/c14bazAAR "Download and Prepare C14 Dates from Different Source Databases") ([`3.4.1`](https://github.com/ropensci/c14bazAAR/releases/tag/3.4.1)), [dynamite](https://docs.ropensci.org/dynamite "Bayesian Modeling and Causal Inference for Multivariate
    Longitudinal Data") ([`1.2.0`](https://github.com/ropensci/dynamite/releases/tag/1.2.0)), [geojsonio](https://docs.ropensci.org/geojsonio "Convert Data from and to GeoJSON or TopoJSON") ([`v0.11.0`](https://github.com/ropensci/geojsonio/releases/tag/v0.11.0)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.12`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.12)), [mctq](https://docs.ropensci.org/mctq "Tools to Process the Munich ChronoType Questionnaire (MCTQ)") ([`v0.3.2`](https://github.com/ropensci/mctq/releases/tag/v0.3.2)), [osmdata](https://docs.ropensci.org/osmdata "Import OpenStreetMap Data as Simple Features or Spatial Objects") ([`v0.2.1`](https://github.com/ropensci/osmdata/releases/tag/v0.2.1)), [pathviewr](https://docs.ropensci.org/pathviewr "Wrangle, Analyze, and Visualize Animal Movement Data") ([`v1.1.7`](https://github.com/ropensci/pathviewr/releases/tag/v1.1.7)), [spocc](https://docs.ropensci.org/spocc "Interface to Species Occurrence Data Sources") ([`v1.2.1`](https://github.com/ropensci/spocc/releases/tag/v1.2.1)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.7.5`](https://github.com/ropensci/tarchetypes/releases/tag/0.7.5)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Pipelines") ([`0.14.3`](https://github.com/ropensci/targets/releases/tag/0.14.3)), [webmockr](https://docs.ropensci.org/webmockr "Stubbing and Setting Expectations on HTTP Requests") ([`v0.9.0`](https://github.com/ropensci/webmockr/releases/tag/v0.9.0)), and [xslt](https://docs.ropensci.org/xslt "Extensible Style-Sheet Language Transformations") ([`v1.4.4`](https://github.com/ropensci/xslt/releases/tag/v1.4.4)).

## Software Peer Review

There are fourteen recently closed and active submissions and 2 submissions on hold. Issues are at different stages: 

* Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [openalexR](https://github.com/ropensci/software-review/issues/560), Getting Bibliographic Records from OpenAlex Database Using DSL. Submitted by [Trang Le](https://trang.page/). 

    * [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com).  (Stats).

* Three at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [concstats](https://github.com/ropensci/software-review/issues/559), Market Structure, Concentration and Inequality Measures. Submitted by [Andreas Schneider](https://github.com/schneiderpy). 

    * [wmm](https://github.com/ropensci/software-review/issues/522), World Magnetic Model. Submitted by [Will Frierson](https://github.com/wfrierson). 

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

* Three at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [predictNMB](https://github.com/ropensci/software-review/issues/566), Evaluate Clinical Prediction Models by Net Monetary Benefit. Submitted by [Rex Parsons](https://rwparsons.github.io/).  (Stats).

    * [dfms](https://github.com/ropensci/software-review/issues/556), Dynamic Factor Models. Submitted by [Sebastian Krantz](https://github.com/SebKrantz). 

    * [waywiser](https://github.com/ropensci/software-review/issues/571), Ergonomic Methods for Assessing Spatial Models. Submitted by [Michael Mahoney](https://mm218.dev/).  (Stats).

* Four at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [birdsize](https://github.com/ropensci/software-review/issues/577), Estimate Avian Body Size Distributions. Submitted by [Renata Diaz](https://diazrenata.github.io/home/). 

    * [dwctaxon](https://github.com/ropensci/software-review/issues/574), Tools for Working with Darwin Core Taxon Data. Submitted by [Joel Nitta](https://joelnitta.com). 

    * [ohun](https://github.com/ropensci/software-review/issues/568), Optimizing Acoustic Signal Detection. Submitted by [Marcelo Araya-Salas](https://marceloarayasalas.weebly.com/). 

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](https://jounihelske.netlify.app).  (Stats).

* Two at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [credit](https://github.com/ropensci/software-review/issues/576), Generate CRediT Author Statements. Submitted by [Josep Pueyo-Ros](https://github.com/jospueyo). 

    * [qualtdict](https://github.com/ropensci/software-review/issues/572), Generating Variable Dictionaries and Labelled Data Exports of Qualtrics. Submitted by [lyh970817](https://github.com/lyh970817). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Other topics

* [rOpenSci Champions Program Kick off](/blog/2023/02/21/champions-program-kick-off) by Yanina Bellini Saibene. The champions program has already started the first activities of 2023. Read where the participants are from and what they will be doing.

* [Puntapié inicial de nuestro programa de campeonas y campeones](/blog/2023/02/21/champions-program-kick-off-es) by Yanina Bellini Saibene. El programa de campeones y campeonas ya inició las primeras actividades de este 2023. Lee de donde son los y las participantes y que van a estar haciendo.

* [Descubrir y aprender todo lo que hay que saber sobre los paquetes de R utilizando r-universe](/blog/2023/02/27/runiverse-discovering-es) by Jeroen Ooms. El objetivo de r-universe es proporcionar un lugar central para navegar por el ecosistema de R y descubrir lo que existe; hacerse una idea de la finalidad y la calidad de cada paquete, y ayudar a empezar en cuestión de segundos.

* [Meeting the Stars of the R-universe: ThinkR's Approach to Contributing to a Growing and Friendly R Community](/blog/2023/02/28/r-universe-stars-2-en) by Yanina Bellini Saibene, Sébastien Rochette, Alejandra Bellini, Lucio Casalla, and Steffi LaZerte.

* [Aprender, ayudar y compartir. El método de ThinkR para crear una comunidad cada vez más grande y amigable de R](/blog/2023/02/28/r-universe-stars-2-es) by Yanina Bellini Saibene, Sébastien Rochette, Alejandra Bellini, Lucio Casalla, and Steffi LaZerte. Una nueva entrega de nuestra serie de entrevistas __"Conociendo a las estrellas del universo R"__. Nos vamos a Francia para conocer más de cerca el trabajo que hace la gente de ThinkR.

* [Enseigner, aider et partager. L'approche de ThinkR pour contribuer à la croissance d’une communauté R conviviale](/blog/2023/02/28/r-universe-stars-2-fr) by Yanina Bellini Saibene, Sébastien Rochette, Alejandra Bellini, Lucio Casalla, and Steffi LaZerte. A new installment of our interview series __"Meeting the stars of the R-Universe"__. We go to France to get a closer look at the work of the people at ThinkR.



### Tech Notes

* [Discovering and learning everything there is to know about R packages using r-universe](/blog/2023/02/27/runiverse-discovering) by Jeroen Ooms. The goal of r-universe is to provide a central place for browsing through the R ecosystem to discover what is out there, get a sense of the purpose and quality of individual packages, and help you get started in seconds.

<!-- ## Use cases



`snakecase::to_sentence_case(english(length(usecases)))` use case` if (length(usecases) > 1) "s"` of our packages and resources ha` if (length(usecases) > 1) "ve" else "s"` been reported since we sent the last newsletter.



Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)! -->

## Call for maintainers

<!--IF CALL
* [our guidance on _Changing package maintainers_](https://devguide.ropensci.org/changing-maintainers.html)
* [our _Package Curation Policy_](https://devguide.ropensci.org/curationpolicy.html)

IF NO CALL
There are no open calls for new maintainers at this point but you can refer to our [contributing guide](https://contributing.ropensci.org/) for finding ways to get involved!
As the maintainer of an rOpenSci package, feel free to contact us on Slack or email `info@ropensci.org` to get your call for maintainer featured in the next newsletter. -->

## Package development corner

Some useful tips for R package developers. :eyes:

<!-- To be curated by hand -->

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
