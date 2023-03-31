---
title: rOpenSci News Digest, April 2023
author:
  - The rOpenSci Team
date: '2023-04-14'
slug: ropensci-news-digest-april-2023
categories: []
tags:
  - newsletter
description: Interview of Athanasia Monika Mowinckel, multilingual blog, coworking, new packages and package news
params:
  last_newsletter: '2023-03-17'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2023/04/14/ropensci-news-digest-april-2023).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Meeting the stars of the R-universe: Athanasia Monika Mowinckel

Knowing our community's stories helps us to learn about the people behind our software, brings us closer and offers us new opportunities. To share some of these community stories, we created the rOpenSci interview series [_"Meeting the stars of the R-Universe"_](/tags/r-universe-stars/).

Working with the human brain requires specific software and complex developments, however R appears as the natural way to collect hundreds of data that need to be analyzed and the R-Universe as the most friendly place to share and invite to collaborate. Our third stop bring us to Norway to talk with [Athanasia Monika Mowinckel](/blog/2023/03/30/r-universe-stars-3-en/).
You can also read the post in [Spanish](/es/blog/2023/03/30/r-universe-stars-3-es/).


### Multilingual posts

TODO

### Coworking

Join us for social coworking & office hours monthly on first Tuesdays! 
Hosted by Steffi LaZerte and various community hosts. 
Everyone welcome. 
No RSVP needed. 
Consult our [Events](/events) page to find your local time and how to join.
    
And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

* Tuesday, May 2nd, 9:00 Americas Pacific / 16:00 UTC ["Spring Cleaning for R packages and scripts"](/events/coworking-2023-05/) *Hosted by [Steffi LaZerte](/author/steffi-lazerte/) and [Yanina Bellini Saibene](/author/yanina-bellini-saibene/)*
    - Explore how other organizations keep their scripts/packages nice and clean
    - Take a look at your R packages and scripts and give them a good spring cleaning\*
    - Talk to our community host and other attendees and discuss tips for keeping on top of it all.
    
\* in the northern hemisphere at least, otherwise, give them a good *fall* cleaning!

## Software :package:

### New packages




The following two packages recently became a part of our software suite:

+ [concstats](https://docs.ropensci.org/concstats), developed by Andreas Schneider: Based on individual market shares of all participants in a market or space, the package offers a set of different structural and concentration measures frequently - and not so frequently - used in research and in practice. Measures can be calculated in groups or individually. The calculated measure or the resulting vector in table format should help practitioners make more informed decisions. Methods used in this package are from: 1. Chang, E. J., Guerra, S. M., de Souza Penaloza, R. A. & Tabak, B. M. (2005) "Banking concentration: the Brazilian case". 2. Cobham, A. and A. Summer (2013). "Is It All About the Tails? The Palma Measure of Income Inequality". 3. Garcia Alba Idunate, P. (1994). "Un Indice de dominancia para el analisis de la estructura de los mercados". 4. Ginevicius, R. and S. Cirba (2009). "Additive measurement of market concentration" <doi:10.3846/1611-1699.2009.10.191-198>. 5. Herfindahl, O. C. (1950), "Concentration in the steel industry" (PhD thesis). 6. Hirschmann, A. O. (1945), "National power and structure of foreign trade". 7. Melnik, A., O. Shy, and R. Stenbacka (2008), "Assessing market dominance" <doi:10.1016/j.jebo.2008.03.010>. 8. Palma, J. G. (2006). "Globalizing Inequality: Centrifugal and Centripetal Forces at Work". 9. Shannon, C. E. (1948). "A Mathematical Theory of Communication". 10. Simpson, E. H. (1949). "Measurement of Diversity" <doi:10.1038/163688a0>.  It is available on [CRAN]( https://CRAN.R-project.org/package=concstats). It has been [reviewed](https://github.com/ropensci/software-review/issues/559) by Sebastian Wojcik, and Christopher T. Kenny.

+ [predictNMB](https://docs.ropensci.org/predictNMB), developed by Rex Parsons together with Robin Blythe, and Adrian Barnett: Estimates when and where a model-guided treatment strategy may outperform a treat-all or treat-none approach by Monte Carlo simulation and evaluation of the Net Monetary Benefit (NMB). It has been [reviewed](https://github.com/ropensci/software-review/issues/566) by Emi Tanaka, and Tinula Kariyawasam.

+ [sofa](https://docs.ropensci.org/sofa), developed by Scott Chamberlain: Provides an interface to the NoSQL database CouchDB (<http://couchdb.apache.org>). Methods are provided for managing databases within CouchDB, including creating/deleting/updating/transferring, and managing documents within databases. One can connect with a local CouchDB instance, or a remote CouchDB databases such as Cloudant. Documents can be inserted directly from vectors, lists, data.frames, and JSON. Targeted at CouchDB v2 or greater.  It is available on [CRAN]( https://CRAN.R-project.org/package=sofa). 

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following eleven packages have had an update since the last newsletter: [commonmark](https://docs.ropensci.org/commonmark "High Performance CommonMark and Github Markdown Rendering in R") ([`v1.9.0`](https://github.com/r-lib/commonmark/releases/tag/v1.9.0)), [chromer](https://docs.ropensci.org/chromer "Interface to Chromosome Counts Database API") ([`v0.4`](https://github.com/ropensci/chromer/releases/tag/v0.4)), [ckanr](https://docs.ropensci.org/ckanr "Client for the Comprehensive Knowledge Archive Network (CKAN) API") ([`v0.7.0`](https://github.com/ropensci/ckanr/releases/tag/v0.7.0)), [drake](https://docs.ropensci.org/drake "A Pipeline Toolkit for Reproducible Computation at Scale") ([`7.13.5`](https://github.com/ropensci/drake/releases/tag/7.13.5)), [dynamite](https://docs.ropensci.org/dynamite "Bayesian Modeling and Causal Inference for Multivariate
    Longitudinal Data") ([`1.3.0`](https://github.com/ropensci/dynamite/releases/tag/1.3.0)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.9.2`](https://github.com/ropensci/nodbi/releases/tag/v0.9.2)), [qpdf](https://docs.ropensci.org/qpdf "Split, Combine and Compress PDF Files") ([`v1.3.2`](https://github.com/ropensci/qpdf/releases/tag/v1.3.2)), [rgbif](https://docs.ropensci.org/rgbif "Interface to the Global Biodiversity Information Facility API") ([`v3.7.6`](https://github.com/ropensci/rgbif/releases/tag/v3.7.6)), [rtweet](https://docs.ropensci.org/rtweet "Collecting Twitter Data") ([`v1.2.0`](https://github.com/ropensci/rtweet/releases/tag/v1.2.0)), [tinkr](https://docs.ropensci.org/tinkr "Cast (R)Markdown Files to XML and Back Again") ([`0.2.0`](https://github.com/ropensci/tinkr/releases/tag/0.2.0)), and [waywiser](https://docs.ropensci.org/waywiser "Ergonomic Methods for Assessing Spatial Models") ([`v0.3.0`](https://github.com/ropensci/waywiser/releases/tag/v0.3.0)).
## Software Peer Review

There are thirteen recently closed and active submissions and 2 submissions on hold. Issues are at different stages: 

* Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [predictNMB](https://github.com/ropensci/software-review/issues/566), Evaluate Clinical Prediction Models by Net Monetary Benefit. Submitted by [Rex Parsons](https://rwparsons.github.io/).  (Stats).

    * [concstats](https://github.com/ropensci/software-review/issues/559), Market Structure, Concentration and Inequality Measures. Submitted by [Andreas Schneider](https://github.com/schneiderpy). 

* Two at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [wmm](https://github.com/ropensci/software-review/issues/522), World Magnetic Model. Submitted by [Will Frierson](https://github.com/wfrierson). 

    * [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser). 

* Four at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [birdsize](https://github.com/ropensci/software-review/issues/577), Estimate Avian Body Size Distributions. Submitted by [Renata Diaz](https://diazrenata.github.io/home/). 

    * [CRediTas](https://github.com/ropensci/software-review/issues/576), Generate CRediT Author Statements. Submitted by [Josep Pueyo-Ros](https://github.com/jospueyo). 

    * [dwctaxon](https://github.com/ropensci/software-review/issues/574), Tools for Working with Darwin Core Taxon Data. Submitted by [Joel Nitta](https://joelnitta.com). 

    * [dfms](https://github.com/ropensci/software-review/issues/556), Dynamic Factor Models. Submitted by [Sebastian Krantz](https://github.com/SebKrantz). 

* Three at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [ohun](https://github.com/ropensci/software-review/issues/568), Optimizing Acoustic Signal Detection. Submitted by [Marcelo Araya-Salas](https://marceloarayasalas.weebly.com/). 

    * [NA](https://github.com/ropensci/software-review/issues/546), NA. Submitted by [Alexander Fischer](https://s3alfisc.github.io/blog/).  (Stats).

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](https://jounihelske.netlify.app).  (Stats).

* Two at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [pangoling](https://github.com/ropensci/software-review/issues/575), Access to Large Language Model Predictions. Submitted by [Bruno Nicenboim](https://bnicenboim.github.io/). 

    * [qualtdict](https://github.com/ropensci/software-review/issues/572), Generating Variable Dictionaries and Labelled Data Exports of Qualtrics. Submitted by [lyh970817](https://github.com/lyh970817). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



* [Meeting the Stars of the R-Universe: Researching Our Brain with the Magic of the R-Universe](/blog/2023/04/14/ropensci-news-digest-april-2023) by Yanina Bellini Saibene, Alejandra Bellini, Lucio Casalla, and Steffi LaZerte. Working with the human brain requires specific software and complex developments, however R appears as the natural way to collect hundreds of data that need to be analyzed and the R-Universe as the most friendly place to share and invite to collaborate. Our third stop bring us to __Norway__ to talk with __Athanasia Monika Mowinckel__. Other languages: [Conociendo a las estrellas del Universo R: Investigando nuestro cerebro con la magia del universo R](/es/blog/2023/03/30/r-universe-stars-3-es) (es).

<!-- ## Use cases



`snakecase::to_sentence_case(english(length(usecases)))` use case` if (length(usecases) > 1) "s"` of our packages and resources ha` if (length(usecases) > 1) "ve" else "s"` been reported since we sent the last newsletter.



Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)! -->

## Call for (co)maintainers

### Call for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/) (or listening to its discussion on the [R Weekly highlights podcast](https://rweekly.fireside.fm/111) hosted by Eric Nantz and Mike Thomas)!

- **[rvertnet](https://cran.r-project.org/web/packages/rvertnet/index.html)**, Retrieve, map and summarize data from the VertNet.org archives (<http://vertnet.org/>). Functions allow searching by many parameters, including taxonomic names, places, and dates. In addition, there is an interface for conducting spatially delimited searches, and another for requesting large datasets via email. [Issue for volunteering](https://github.com/ropensci-archive/rvertnet/issues/71).

- **[natserv](https://cran.r-project.org/web/packages/natserv/index.html)**. Interface to NatureServe (<https://www.natureserve.org/>). Includes methods to get data, image metadata, search taxonomic names, and make maps. [Issue for volunteering](https://github.com/ropensci-archive/natserv/issues/29).

- **[geojsonlint](https://cran.r-project.org/web/packages/geojsonlint/index.html)**, Tools for linting GeoJSON. Includes tools for interacting with the online tool <http://geojsonlint.com>, the Javascript library geojsonhint (<https://www.npmjs.com/package/geojsonhint>), and validating against a GeoJSON schema via the Javascript library (<https://www.npmjs.com/package/is-my-json-valid>). Some tools work locally while others require an internet connection. [Issue for volunteering](https://github.com/ropensci-archive/geojsonlint/issues/22).

- **[citesdb](https://docs.ropensci.org/citesdb/)**, a high-performance database of shipment-level CITES trade data. Provides convenient access to over 40 years and 20 million records of
endangered wildlife trade data from the Convention on International Trade
in Endangered Species of Wild Fauna and Flora, stored on a local on-disk,
out-of memory 'DuckDB' database for bulk analysis. [Issue for volunteering](https://github.com/ropensci/citesdb/issues/21).


### Call for comaintainers

Refer to our [recent blog post](/blog/2022/10/17/maintain-or-co-maintain-an-ropensci-package/#packages-looking-for-co-maintainers) to identify other packages where help is especially wished for!

## Package development corner

Some useful tips for R package developers. :eyes:


## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Mastodon account](https://hachyderm.io/@rOpenSci).
