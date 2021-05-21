---
title: rOpenSci News Digest, May 2021
author:
  - The rOpenSci Team
date: '2021-05-21'
slug: ropensci-news-digest-may-2021
categories: []
tags: 
  - newsletter
description: social co-working, R-universe, rOpenSci at useR! 2021, new packages and package news
output:
  html_document:
    keep_md: yes
params:
  last_newsletter: '2021-04-16'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2021/05/21/ropensci-news-digest-may-2021).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

We have no less than three categories of (online :wink:) events coming up: social co-working events, a community call, a conference with contributions from four rOpenSci staff members. :sparkles:

### Community Calls

* Our next community call is about [**rOpenSci's R-universe Project**](/commcalls/may2021-r-universe/) and will take place on Tuesday, 25 May 2021 17:00 UTC. The R-universe platform is a new umbrella project under which rOpenSci experiments with new ideas for improving publication and discovery of research software packages in R. In this 1-hour community call, **Jeroen Ooms** will explain the basic steps of setting up your own universe, and getting started with publishing packages (including experimental software, development versions, [research compendia](https://ropensci.org/blog/2021/04/09/r-universe-articles/)) and articles on your [personal subdomain](https://jeroen.r-universe.dev). We are interested in hearing your thoughts and ideas on how this infrastructure can improve how researchers publish and discover R packages and related content.

* Video and resources from our past community call [**Set Up Your Package to Foster a Community**](/commcalls/apr2021-pkg-community/) were posted. rOpenSci puts ongoing effort into exploring and communicating how developers can best attract attention to their package (e.g. usage, citations, or feedback), or how to set up their repository to encourage the types of contributions they want. In this 1-hour community call, **Maëlle Salmon**, **Hugo Gruson**, and **Steffi LaZerte** shared tips and examples on how to do this! **Sina Rüeger** [summarized the call](/blog/2021/04/28/commcall-pkg-community/) with help from Mark Padgham.

### Social Co-Working

We held our first two **Social Co-Working and Label-athon events** on April 29th and May 13th. 
These were truly **international events** with 14 participants from Canada, Germany, Switzerland, USA, the UK, France, Singapore, and Mexico. 
We had a blast **socializing (scavenger hunts!) and co-working on our personal R projects** including repository organization, creating/labelling issues, preliminary research, personal GitHub README files, and those packages you can never find time for. 
We had **quiet and noisy rooms** to work in, so everyone was able to find an environment that worked best for them.
Sound like fun? We have **two more coming up**! 

- [Thursday May 27th 9am Pacific](/events/labelathon03/) (16:00 UTC) - [Registration encouraged!](https://form.jotform.com/211236537172249)

- [Thursday June 10th 5pm Pacific](/events/labelathon04/) (Fri June 11th 00:00 UTC) - [Registration encouraged!](https://form.jotform.com/211236201763243)

### rOpenSci at useR! 2021

[Registration](https://user2021.r-project.org/participation/registration/) for the **useR! 2021 conference** has begun, with  Early Bird Deadline until May 28th. 
useR! conferences are non-profit conferences organized by community volunteers for the community, supported by the R Foundation.
useR! 2021 will take place online.

Get excited for four contributions by rOpenSci staff members:

* **Jeroen Ooms**, rOpenSci Lead Infrastructure Engineer, will give a [**keynote talk**](https://user2021.r-project.org/program/keynotes/) about **building a modern and scalable package build infrastructure**, such as R-universe.

* **Maëlle Salmon**, Research Software Engineer with rOpenSci, will give a [tutorial](https://user2021.r-project.org/program/tutorials/), _**GET better at testing your R package!**_ on Wednesday, July the 7th at 9-12AM GMT+2. This tutorial is about advanced testing of R packages, with HTTP testing as a case study.

* **Stefanie Butland**, rOpenSci community manager, will present on **rOpenSci's Model for Managing a Federated Open Source Software Community**.

* **Mark Padgham**, rOpenSci Software Research Scientist, will also give a regular talk, about his original [**autotest**](https://ropenscilabs.github.io/autotest/) package for automatic testing of packages.

Find out about more [events](/events).

### Software review in Spanish

Another great piece of news: censo2017 was the first package to pass **rOpenSci software peer-review in Spanish**! :tada:
The [censo2017](https://github.com/ropensci/software-review/issues/414) package by [Pachá (aka Mauricio Vargas Sepúlveda)](/author/pachá-aka-mauricio-vargas-sepúlveda/) provides access to the 2017 Chilean Census.
Editor [Melina Vidoni](/blog/2019/01/31/more_editors/) was in charge of this review, the reviewers were [Frans van Dunné](https://github.com/FvD) and [María Paula Caldas](https://www.mpaulacaldas.com/).
Frans van Dunné most kindly translated our [review template to Spanish](https://devguide.ropensci.org/reviewtemplatees.html)!

Thank you to people in the Latin American R community for discussion and encouragement that helped make this happen.

## Software :package:

### New packages




The following two packages recently became a part of our software suite:

+ [censo2017](https://docs.ropensci.org/censo2017), developed by Mauricio Vargas: Provee un acceso conveniente a mas de 17 millones de registros de la base de datos del Censo 2017. Los datos fueron importados desde el DVD oficial del INE usando el Convertidor REDATAM creado por Pablo De Grande. Esta paquete esta documentado intencionalmente en castellano asciificado para que funcione sin problema en diferentes plataformas. (Provides convenient access to more than 17 million records from the Chilean Census 2017 database. The datasets were imported from the official DVD provided by the Chilean National Bureau of Statistics by using the REDATAM converter created by Pablo De Grande and in addition it includes the maps accompanying these datasets.).  It is available on [CRAN]( https://CRAN.R-project.org/package=censo2017). It has been [reviewed](https://github.com/ropensci/software-review/issues/414) by Frans van Dunné, Maria Paula Caldas.

+ [exoplanets](https://docs.ropensci.org/exoplanets), developed by Tyler Littlefield: The goal of exoplanets is to provide access to NASA's Exoplanet Archive TAP Service. For more information regarding the API please read the documentation <https://exoplanetarchive.ipac.caltech.edu/index.html>.  It is available on [CRAN]( https://CRAN.R-project.org/package=exoplanets). It has been [reviewed](https://github.com/ropensci/software-review/issues/309) by Maëlle Salmon, Nichole Monhait.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following forty packages have had an update since the latest newsletter: [gert](https://docs.ropensci.org/gert "Simple Git Client for R") ([`v1.3.0`](https://github.com/r-lib/gert/releases/tag/v1.3.0)), [babette](https://docs.ropensci.org/babette "Control BEAST2") ([`v2.3`](https://github.com/ropensci/babette/releases/tag/v2.3)), [BaseSet](https://docs.ropensci.org/BaseSet "Working with Sets the Tidy Way") ([`v0.0.16`](https://github.com/ropensci/BaseSet/releases/tag/v0.0.16)), [beastier](https://docs.ropensci.org/beastier "Call BEAST2") ([`v2.3.1`](https://github.com/ropensci/beastier/releases/tag/v2.3.1)), [beautier](https://docs.ropensci.org/beautier "BEAUti from R") ([`v2.5`](https://github.com/ropensci/beautier/releases/tag/v2.5)), [bold](https://docs.ropensci.org/bold "Interface to Bold Systems API") ([`v1.2.0`](https://github.com/ropensci/bold/releases/tag/v1.2.0)), [brranching](https://docs.ropensci.org/brranching "Fetch Phylogenies from Many Sources") ([`v0.7.0`](https://github.com/ropensci/brranching/releases/tag/v0.7.0)), [c14bazAAR](https://docs.ropensci.org/c14bazAAR "Download and Prepare C14 Dates from Different Source Databases") ([`2.3.0`](https://github.com/ropensci/c14bazAAR/releases/tag/2.3.0)), [circle](https://docs.ropensci.org/circle "R Client Package for Circle CI") ([`v0.7.1`](https://github.com/ropensci/circle/releases/tag/v0.7.1)), [codemetar](https://docs.ropensci.org/codemetar "Generate CodeMeta Metadata for R Packages") ([`v0.3.0`](https://github.com/ropensci/codemetar/releases/tag/v0.3.0)), [drake](https://docs.ropensci.org/drake "A Pipeline Toolkit for Reproducible Computation at Scale") ([`7.13.2`](https://github.com/ropensci/drake/releases/tag/7.13.2)), [exoplanets](https://docs.ropensci.org/exoplanets "Access NASA's Exoplanet Archive Data") ([`v0.2.1`](https://github.com/ropensci/exoplanets/releases/tag/v0.2.1)), [fingertipsR](https://docs.ropensci.org/fingertipsR "Fingertips Data for Public Health") ([`v1.0.6`](https://github.com/ropensci/fingertipsR/releases/tag/v1.0.6)), [ijtiff](https://docs.ropensci.org/ijtiff "Comprehensive TIFF I/O with Full Support for ImageJ
    TIFF Files") ([`v2.2.6`](https://github.com/ropensci/ijtiff/releases/tag/v2.2.6)), [jqr](https://docs.ropensci.org/jqr "Client for jq, a JSON Processor") ([`v1.2.1`](https://github.com/ropensci/jqr/releases/tag/v1.2.1)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.5`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.5)), [magick](https://docs.ropensci.org/magick "Advanced Graphics and Image-Processing in R") ([`v2.7.2`](https://github.com/ropensci/magick/releases/tag/v2.7.2)), [mauricer](https://docs.ropensci.org/mauricer "Install BEAST2 Packages") ([`v2.4`](https://github.com/ropensci/mauricer/releases/tag/v2.4)), [mcbette](https://docs.ropensci.org/mcbette "Model Comparison Using babette") ([`v1.14`](https://github.com/ropensci/mcbette/releases/tag/v1.14)), [MtreeRing](https://docs.ropensci.org/MtreeRing "A Shiny Application for Automatic Measurements of Tree-Ring Widths on Digital Images") ([`v1.4.5`](https://github.com/ropensci/MtreeRing/releases/tag/v1.4.5)), [oai](https://docs.ropensci.org/oai "General Purpose Oai-PMH Services Client") ([`v0.3.2`](https://github.com/ropensci/oai/releases/tag/v0.3.2)), [opencv](https://docs.ropensci.org/opencv "Bindings to OpenCV Computer Vision Library") ([`v0.2.1`](https://github.com/ropensci/opencv/releases/tag/v0.2.1)), [pangaear](https://docs.ropensci.org/pangaear "Client for the Pangaea Database") ([`v1.1.0`](https://github.com/ropensci/pangaear/releases/tag/v1.1.0)), [pathviewr](https://docs.ropensci.org/pathviewr "Wrangle, Analyze, and Visualize Animal Movement Data") ([`v1.0.1`](https://github.com/ropensci/pathviewr/releases/tag/v1.0.1)), [rbhl](https://docs.ropensci.org/rbhl "Interface to the Biodiversity Heritage Library") ([`v0.9.2`](https://github.com/ropensci/rbhl/releases/tag/v0.9.2)), [rdhs](https://docs.ropensci.org/rdhs "API Client and Dataset Management for the Demographic and Health Survey (DHS) Data") ([`0.7.2`](https://github.com/ropensci/rdhs/releases/tag/0.7.2)), [rglobi](https://docs.ropensci.org/rglobi "R Interface to Global Biotic Interactions") ([`v0.2.24`](https://github.com/ropensci/rglobi/releases/tag/v0.2.24)), [rnoaa](https://docs.ropensci.org/rnoaa "NOAA Weather Data from R") ([`v1.3.4`](https://github.com/ropensci/rnoaa/releases/tag/v1.3.4)), [rzmq](https://docs.ropensci.org/rzmq "R Bindings for ZeroMQ") ([`v0.9.8`](https://github.com/ropensci/rzmq/releases/tag/v0.9.8)), [solrium](https://docs.ropensci.org/solrium "General Purpose R Interface to Solr") ([`v1.2.0`](https://github.com/ropensci/solrium/releases/tag/v1.2.0)), [ssh](https://docs.ropensci.org/ssh "Secure Shell (SSH) Client for R") ([`v0.8.0`](https://github.com/ropensci/ssh/releases/tag/v0.8.0)), [stantargets](https://docs.ropensci.org/stantargets "Targets for Stan Workflows") ([`0.0.2`](https://github.com/ropensci/stantargets/releases/tag/0.0.2)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.2.0`](https://github.com/ropensci/tarchetypes/releases/tag/0.2.0)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Workflows") ([`0.4.2`](https://github.com/ropensci/targets/releases/tag/0.4.2)), [terrainr](https://docs.ropensci.org/terrainr "Landscape Visualizations in R and Unity") ([`v0.4.0`](https://github.com/ropensci/terrainr/releases/tag/v0.4.0)), [tidyhydat](https://docs.ropensci.org/tidyhydat "Extract and Tidy Canadian Hydrometric Data") ([`0.5.3`](https://github.com/ropensci/tidyhydat/releases/tag/0.5.3)), [tracerer](https://docs.ropensci.org/tracerer "Tracer from R") ([`v2.2`](https://github.com/ropensci/tracerer/releases/tag/v2.2)), [UCSCXenaTools](https://docs.ropensci.org/UCSCXenaTools "Download and Explore Datasets from UCSC Xena Data Hubs") ([`v1.4.4`](https://github.com/ropensci/UCSCXenaTools/releases/tag/v1.4.4)), [workloopR](https://docs.ropensci.org/workloopR "Analysis of Work Loops and Other Data from Muscle Physiology Experiments") ([`v1.1.4`](https://github.com/ropensci/workloopR/releases/tag/v1.1.4)), [writexl](https://docs.ropensci.org/writexl "Export Data Frames to Excel xlsx Format") ([`v1.4.0`](https://github.com/ropensci/writexl/releases/tag/v1.4.0)).

## Software Peer Review

There are sixteen recently closed and active submissions and 4 submissions on hold. Issues are at different stages: 

* Three at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [stantargets](https://github.com/ropensci/software-review/issues/430), Targets for Stan Workflows. Submitted by [Will Landau](https://wlandau.github.io).

    * [dataspice](https://github.com/ropensci/software-review/issues/426), Create Lightweight Schema.org Descriptions of Data. Submitted by [Bryce Mecum](https://brycemecum.com).

    * [censo2017](https://github.com/ropensci/software-review/issues/414), Base de Datos de Facil Acceso del Censo 2017 de Chile. Submitted by [Pachamaltese](https://pacha.dev).

* Three at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [tidytags](https://github.com/ropensci/software-review/issues/382), Simple Collection and Powerful Analysis of Twitter Data. Submitted by [Bret Staudt Willet](http://bretsw.com).

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com).

    * [chemspiderapi](https://github.com/ropensci/software-review/issues/329), R Wrapper for ChemSpider's API Services. Submitted by [Raoul Wolf](https://github.com/RaoulWolf).

* Six at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [gendercoder](https://github.com/ropensci/software-review/issues/435), Recodes Sex/Gender Descriptions Into A Standard Set. Submitted by [Emily Kothe](http://emilykothe.com).

    * [mctq](https://github.com/ropensci/software-review/issues/434), An R Package for the Munich ChronoType Questionnaire. Submitted by [Daniel Vartanian](https://orcid.org/0000-0001-7782-759X).

    * [ROriginStamp](https://github.com/ropensci/software-review/issues/433), Interface to OriginStamp API to Obtain Trusted Time Stamps. Submitted by [Rainer M Krug](https://github.com/rkrug).

    * [awardFindR](https://github.com/ropensci/software-review/issues/432), QDR awardFindR. Submitted by [Michael C. McCall](http://mccall.cc).

    * [slopes](https://github.com/ropensci/software-review/issues/420), Calculate Slopes of Roads, Rivers and Trajectories. Submitted by [RFlx](http://www.rosafelix.bike).

    * [occCite](https://github.com/ropensci/software-review/issues/407), Querying and Managing Large Biodiversity Occurrence Datasets. Submitted by [Hannah Owens](http://hannahlowens.weebly.com/).

* Three at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [rsat](https://github.com/ropensci/software-review/issues/437), Tools for Downloading, Customizing, and Processing Time Series of Satellite Images from Landsat, MODIS, and Sentinel. Submitted by [Unai Pérez-Goya](https://unai-perez.github.io/).

    * [allodb](https://github.com/ropensci/software-review/issues/436), Tree Biomass Estimation at Extratropical Forest Plots. Submitted by [Erika Gonzalez-Akre](https://sites.google.com/site/forestecoclimlab/home).

    * [jagstargets](https://github.com/ropensci/software-review/issues/425), Targets for JAGS Workflows. Submitted by [Will Landau](https://wlandau.github.io).

* One at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [rdbhapi](https://github.com/ropensci/software-review/issues/443), Interface to DBH-API. Submitted by [makinin](https://nsd.no/).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Software Review

* [What's New in terrainr 0.4.0?](/blog/2021/05/04/what-s-new-in-terrainr-0-4-0) by Mike Mahoney. The new CRAN release of terrainr improves consistency, CRS logic, and fixes some bugs.

{{< figure src="washington.jpg" alt="A 3D rendering of the summit of Mt. Washington, including watershed boundaries and river lines." width="400" >}}



### Other topics

* [Set Up Your Package to Foster a Community - Community Call Summary](/blog/2021/04/28/commcall-pkg-community) by Sina Rüeger, Maëlle Salmon, Hugo Gruson, Steffi LaZerte, Mark Padgham. Summary of the Community Call on Setting Up Your Package to Foster a Community.

## Citations



Below are the citations recently added to our database of 1295 articles, that you can explore on our [citations page](/citations).
We found use of...

* [**biomartr**](https://docs.ropensci.org/biomartr) in Böttcher, A., Büttner, M., Tritschler, S., Sterr, M., Aliluev, A., Oppenländer, L., … Lickert, H. (2021). Non-canonical Wnt/PCP signalling regulates intestinal stem cell lineage priming towards enteroendocrine and Paneth cell fates. Nature Cell Biology, 23(1), 23–31. <https://doi.org/10.1038/s41556-020-00617-2>

* [**bold**](https://docs.ropensci.org/bold), [**rentrez**](https://docs.ropensci.org/rentrez) in Batovska, J., Piper, A., Valenzuela, I., Cunningham, J., & Blacket, M. (2020). Developing a Non-destructive Metabarcoding Protocol for Detection of Pest Insects in Bulk Trap Catches. <https://doi.org/10.21203/rs.3.rs-125070/v1>

* [**comtradr**](https://docs.ropensci.org/comtradr) in Chini, C. M., & Peer, R. A. M. (2021). The traded water footprint of global energy from 2010 to 2018. Scientific Data, 8(1). <https://doi.org/10.1038/s41597-020-00795-6>

* [**CoordinateCleaner**](https://docs.ropensci.org/CoordinateCleaner) in Esquivel, D. A., Aya-Cuero, C., Penagos, A. P., Chacón-Pacheco, J., Agámez-López, C. J., Ochoa, A. V., … Bennett, D. (2020). Updating the distribution of Vampyrum spectrum (Chiroptera, Phyllostomidae) in Colombia: new localities, potential distribution and notes on its conservation. Neotropical Biology and Conservation, 15(4), 689–709. <https://doi.org/10.3897/neotropical.15.e58383>

* [**CoordinateCleaner**](https://docs.ropensci.org/CoordinateCleaner) in Suissa, J. S., & Sundue, M. A. (2020). Diversity Patterns of Neotropical Ferns: Revisiting Tryon’s Centers of Richness and Endemism. American Fern Journal, 110(4). <https://doi.org/10.1640/0002-8444-110.4.211>

* [**CoordinateCleaner**](https://docs.ropensci.org/CoordinateCleaner), [**taxize**](https://docs.ropensci.org/taxize) in Tamme, R., Pärtel, M., Kõljalg, U., Laanisto, L., Liira, J., Mander, Ü., … Zobel, M. (2020). Global macroecology of nitrogen‐fixing plants. Global Ecology and Biogeography, 30(2), 514–526. <https://doi.org/10.1111/geb.13236>

* [**FedData**](https://docs.ropensci.org/FedData) in Porter, W. T., Barrand, Z. A., Wachara, J., DaVall, K., Mihaljevic, J. R., Pearson, T., … Nieto, N. C. (2021). Predicting the current and future distribution of the western black-legged tick, Ixodes pacificus, across the Western US using citizen science collections. PLOS ONE, 16(1), e0244754. <https://doi.org/10.1371/journal.pone.0244754>

* [**neotoma**](https://docs.ropensci.org/neotoma) in Byun, E., Sato, H., Cowling, S. A., & Finkelstein, S. A. (2020). Extensive wetland development in mid-latitude North America during the Bølling–Allerød. Nature Geoscience, 14(1), 30–35. <https://doi.org/10.1038/s41561-020-00670-4>

* [**NLMR**](https://ropensci.github.io/NLMR/) in Thompson, P. R., Derocher, A. E., Edwards, M. A., & Lewis, M. A. (2021). Describing spatiotemporal memory patterns using animal movement modelling. arXiv preprint arXiv:2101.04183. <https://arxiv.org/pdf/2101.04183>

* [**nlrx**](https://docs.ropensci.org/nlrx) in Dahirel, M., Bertin, A., Haond, M., Blin, A., Lombaert, E., Calcagno, V., … Vercken, E. (2020). Shifts from pulled to pushed range expansions caused by reduction of landscape connectivity. <https://doi.org/10.1101/2020.05.13.092775>

* [**osmdata**](https://docs.ropensci.org/osmdata) in Moradi, M. (2020). Evaluating the quality of OSM roads and buildings in the Québec Province. <https://corpus.ulaval.ca/jspui/bitstream/20.500.11794/67232/1/36576.pdf>

* [**osmdata**](https://docs.ropensci.org/osmdata) in Wilkins, E.J. 2020. Using Social Media to Assess the Impact of Weather and Climate on Visitation to Outdoor Recreation Settings. https://digitalcommons.usu.edu/etd/7986

* [**pdftools**](https://docs.ropensci.org/pdftools) in Li, B., Trueman, B. F., Rahman, M. S., & Gagnon, G. A. (2021). Controlling lead release due to uniform and galvanic corrosion — An evaluation of silicate-based inhibitors. Journal of Hazardous Materials, 407, 124707. <https://doi.org/10.1016/j.jhazmat.2020.124707>

* [**pdftools**](https://docs.ropensci.org/pdftools), [**tesseract**](https://docs.ropensci.org/tesseract) in Hines, R. E., Grandage, A. J., & Willoughby, K. G. (2020). Staying Afloat: Planning and Managing Climate Change and Sea Level Rise Risk in Florida’s Coastal Counties. Urban Affairs Review, 107808742098052. <https://doi.org/10.1177/1078087420980526>

* [**phylocomr**](https://docs.ropensci.org/phylocomr), [**brranching**](https://docs.ropensci.org/brranching) in Perez, T. M., Socha, A., Tserej, O., & Feeley, K. J. (2021). Photosystem II heat tolerances characterize thermal generalists and the upper limit of carbon assimilation. Plant, Cell & Environment. <https://doi.org/10.1111/pce.13990>

* [**rfishbase**](https://docs.ropensci.org/rfishbase) in Palacios-Abrantes, J., Reygondeau, G., Wabnitz, C. C. C., & Cheung, W. W. L. (2020). The transboundary nature of the world’s exploited marine species. Scientific Reports, 10(1). doi:10.1038/s41598-020-74644-2

* [**rfishbase**](https://docs.ropensci.org/rfishbase) in Parravicini, V., Casey, J. M., Schiettekatte, N. M. D., Brandl, S. J., Pozas-Schacre, C., Carlot, J., … Stuart-Smith, R. D. (2020). Delineating reef fish trophic guilds with global gut content data synthesis and phylogeny. PLOS Biology, 18(12), e3000702. <https://doi.org/10.1371/journal.pbio.3000702>

* [**rgbif**](https://docs.ropensci.org/rgbif) in Ascensão, F., D’Amico, M., Martins, R. C., Rebelo, R., Barbosa, A. M., Bencatel, J., … Capinha, C. (2021). Distribution of alien tetrapods in the Iberian Peninsula. NeoBiota, 64, 1–21. <https://doi.org/10.3897/neobiota.64.55597>

* [**rgbif**](https://docs.ropensci.org/rgbif) in Freimuth, J., Bossdorf, O., Scheepens, J. F., & Willems, F. M. (2021). Climate warming changes synchrony of plants and pollinators. <https://doi.org/10.1101/2021.01.10.425984>

* [**rgbif**](https://docs.ropensci.org/rgbif) in Liao, H., Li, D., Zhou, T., Huang, B., Zhang, H., Chen, B., & Peng, S. (2020). The role of functional strategies in global plant distribution. Ecography, 44(4), 493–503. <https://doi.org/10.1111/ecog.05476>

* [**rgbif**](https://docs.ropensci.org/rgbif) in Pineda-Munoz, S., Wang, Y., Lyons, S. K., Tóth, A. B., & McGuire, J. L. (2021). Mammal species occupy different climates following the expansion of human impacts. Proceedings of the National Academy of Sciences, 118(2), e1922859118. <https://doi.org/10.1073/pnas.1922859118>

* [**rgbif**](https://docs.ropensci.org/rgbif) in Santos, G. N. dos, Silva, A. C. da, & Higuchi, P. (2020). IMPACT OF CLIMATE CHANGE ON THE GEOGRAPHICAL DISTRIBUTION OF A CLOUD FOREST INDICATOR TREE SPECIES. Revista Árvore, 44. <https://doi.org/10.1590/1806-908820200000032>

* [**rnaturalearth**](https://docs.ropensci.org/rnaturalearth) in Ionela-Andreea, P., & Marian, N. (2020). Cluster Analysis of Regional Research and Development Disparities in Europe. Studies in Business and Economics, 15(3), 303–312. <https://doi.org/10.2478/sbe-2020-0060>

* [**rnaturalearth**](https://docs.ropensci.org/rnaturalearth) in Mari, A., Roloff, T.-C., Stange, M., Soegaard, K. K., Asllanaj, E., Tauriello, G., … Egli, A. (2021). Global surveillance of potential antiviral drug resistance in SARS-CoV-2: proof of concept focussing on the RNA-dependent RNA polymerase. <https://doi.org/10.1101/2020.12.28.20248663>

* [**rnaturalearth**](https://docs.ropensci.org/rnaturalearth) in Pogorevc, N., Simčič, M., Khayatzadeh, N., Soelkner, J., Berger, B., Bojkovski, D., … Horvat, S. (2020). Post-Genotyping Optimization of Dataset Formation Could Affect Genetic Diversity Parameters: An Example of Analyses with Alpine Goat Breeds. <https://doi.org/10.21203/rs.3.rs-133590/v1>

* [**rnaturalearth**](https://docs.ropensci.org/rnaturalearth) in Shaw, E. C., Fowler, R., Ohadi, S., Bayly, M. J., Barrett, R. A., Tibbits, J., … Cousens, R. D. (2020). Explaining the worldwide distributions of two highly mobile species: Cakile edentula and Cakile maritima. Journal of Biogeography, 48(3), 603–615. <https://doi.org/10.1111/jbi.14024>

* [**rotl**](https://docs.ropensci.org/rotl) in Sandoval-Herrera, N. I., Mastromonaco, G. F., Becker, D. J., Simmons, N. B., & Welch, K. C. (2021). Inter- and intra-specific variation in hair cortisol concentrations of Neotropical bats. <https://doi.org/10.1101/2021.01.10.426004>

* [**rredlist**](https://docs.ropensci.org/rredlist), [**rfishbase**](https://docs.ropensci.org/rfishbase) in Murgier, J., McLean, M., Maire, A., Mouillot, D., Loiseau, N., Munoz, F., … Auber, A. (2021). Rebound in functional distinctiveness following warming and reduced fishing in the North Sea. Proceedings of the Royal Society B: Biological Sciences, 288(1942), 20201600. <https://doi.org/10.1098/rspb.2020.1600>

* [**rtweet**](https://docs.ropensci.org/rtweet) in Boehm, F. J., & Hanlon, B. M. (2021). What Is Happening on Twitter? A Framework for Student Research Projects With Tweets. Journal of Statistics and Data Science Education, 29(sup1), S95–S102. <https://doi.org/10.1080/10691898.2020.1848486>

* [**rtweet**](https://docs.ropensci.org/rtweet) in Gutiérrez García-Pardo, I., Guevara Gil, J. A., Gómez González, D., Castro Cantalejo, J., & Espínola Vílchez, R. (2021). Community Detection Problem Based on Polarization Measures. An application to Twitter: the COVID-19 case in Spain. <https://doi.org/10.20944/preprints202101.0080.v1>

* [**rtweet**](https://docs.ropensci.org/rtweet) in Lucas, B., & Landman, T. (2020). Social listening, modern slavery, and COVID-19. Journal of Risk Research, 1–21. <https://doi.org/10.1080/13669877.2020.1864009>

* [**skimr**](https://docs.ropensci.org/skimr) in Behrendt, I., Fasshauer, M., & Eichner, G. (2020). Gluten Intake and All-Cause and Cause-Specific Mortality: Prospective Findings from the UK Biobank. The Journal of Nutrition, 151(3), 591–597. <https://doi.org/10.1093/jn/nxaa387>

* [**taxize**](https://docs.ropensci.org/taxize) in Albery, G. F., Carlson, C. J., Cohen, L. E., Eskew, E. A., Gibb, R., Ryan, S. J., … Becker, D. J. (2021). Urban-adapted mammal species have more known pathogens. <https://doi.org/10.1101/2021.01.02.425084>

* [**taxize**](https://docs.ropensci.org/taxize) in Janssen, J., & Gomez, L. (2021). An examination of the import of live reptiles from Indonesia by the United States from 2000 to 2015. Journal for Nature Conservation, 59, 125949. <https://doi.org/10.1016/j.jnc.2020.125949>

* [**taxize**](https://docs.ropensci.org/taxize) in Meireles, J. E., Cavender‐Bares, J., Townsend, P. A., Ustin, S., Gamon, J. A., Schweiger, A. K., … O’Meara, B. C. (2020). Leaf reflectance spectra capture the evolutionary history of seed plants. New Phytologist, 228(2), 485–493. <https://doi.org/10.1111/nph.16771>

* [**treeio**](https://docs.ropensci.org/treeio) in Gates, M. W., Zhang, Y. M., & Buffington, M. L. (2020). The great greenbriers gall mystery resolved? New species of Aprostocetus Westwood (Hymenoptera, Eulophidae) gall inducer and two new parasitoids (Hymenoptera, Eurytomidae) associated with Smilax L. in southern Florida, USA. Journal of Hymenoptera Research, 80, 71–98. <https://doi.org/10.3897/jhr.80.59466>

* [**treeio**](https://docs.ropensci.org/treeio) in Maruyama, H., Masago, A., Nambu, T., Mashimo, C., Takahashi, K., & Okinaga, T. (2020). Inter-site and interpersonal diversity of salivary and tongue microbiomes, and the effect of oral care tablets. F1000Research, 9, 1477. <https://doi.org/10.12688/f1000research.27502.1>

* [**treeio**](https://docs.ropensci.org/treeio) in Oswald, K. N., Lee, A. T. K., & Smit, B. (2021). Seasonal metabolic adjustments in an avian evolutionary relict restricted to mountain habitat. Journal of Thermal Biology, 95, 102815. <https://doi.org/10.1016/j.jtherbio.2020.102815>

* [**treeio**](https://docs.ropensci.org/treeio) in Toparslan, E., Karabag, K., & Bilge, U. (2020). A workflow with R: Phylogenetic analyses and visualizations using mitochondrial cytochrome b gene sequences. PLOS ONE, 15(12), e0243927. <https://doi.org/10.1371/journal.pone.0243927>

* [**UCSCXenaTools**](https://docs.ropensci.org/UCSCXenaTools) in Cui, Y., Hunt, A., Li, Z., Birkin, E., Lane, J., Ruge, F., & Jiang, W. G. (2021). Lead DEAD/H box helicase biomarkers with the therapeutic potential identified by integrated bioinformatic approaches in lung cancer. Computational and Structural Biotechnology Journal, 19, 261–278. <https://doi.org/10.1016/j.csbj.2020.12.007>

* [**webchem**](https://docs.ropensci.org/webchem) in Hammoud, Z., & Kramer, F. (2020). Multipath: An R Package to Generate Integrated Reproducible Pathway Models. Biology, 9(12), 483. <https://doi.org/10.3390/biology9120483>

* [**webchem**](https://docs.ropensci.org/webchem) in Su, Q.-Z., Vera, P., Nerín, C., Lin, Q.-B., & Zhong, H.-N. (2021). Safety concerns of recycling postconsumer polyolefins for food contact uses: Regarding (semi-)volatile migrants untargetedly screened. Resources, Conservation and Recycling, 167, 105365. <https://doi.org/10.1016/j.resconrec.2020.105365>

Thank you for citing our tools!

## Use cases



Three use cases of our packages and resources have been reported since we sent the last newsletter.

* [Scraping Google Play Reviews with RSelenium](https://discuss.ropensci.org/t/scraping-google-play-reviews-with-rselenium/2449). Reported by jlaw.

* [Easily analyzing tweets using rtweet](https://discuss.ropensci.org/t/easily-analyzing-tweets-using-rtweet/2454). Reported by Amit Arora.

* [Most tweeted words each month: a year snapshot](https://discuss.ropensci.org/t/most-tweeted-words-each-month-a-year-snapshot/2461). Reported by Soraya Campbell.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

There's no open call for new maintainers at this point but you can refer to our [contributing guide](https://contributing.ropensci.org/) for finding ways to get involved!
As the maintainer of an rOpenSci package, feel free to contact us on Slack or email `info@ropensci.org` to get your call for maintainer featured in the next newsletter. 

## Package development corner

Some useful tips for R package developers. :eyes:

Sometimes you find yourself documenting internal functions with roxygen2 without really wanting everyone to get to see the docs.
Do you know the [**difference between the `@internal` and `@NoRd` tags**](https://community.rstudio.com/t/keywords-internal-vs-nord/35119/3)?
* Keyword [`@internal`](https://roxygen2.r-lib.org/articles/rd.html#indexing) means there will be a manual page for the function but it won't be in the documentation index. " `@keywords internal` is useful because it removes the function from the documentation index; it’s useful for functions aimed primarily at other developers, not typical users of the package."
* `@NoRd` means there won't even be a manual page so the roxygen2 documentation of that function only lives in the R script. 
We at rOpenSci strongly encourage documentation of internal functions, and advise doing so within code itself rather than as separate manual pages -- that is, [using `@noRd` and not `@internal`](https://devguide.ropensci.org/building.html). It is also recommended in the [tidyverse style guide](https://style.tidyverse.org/documentation.html#internal-functions).

Speaking of documentation, when writing **examples**, do you know the difference between **`\dontrun{}`**, **`\donttest{}`** and **`\dontshow{}`**?
(Is this newsletter section turning into a quizz? :sweat_smile:)
The roxygen2 docs feature [a  table](https://roxygen2.r-lib.org/articles/rd.html#functions) explaining when different types of examples are run depending on the context (in `example()`,	`help()`, `R CMD check`, `R CMD check –as-cran`) which is very useful when you wonder how to safeguard your package examples on e.g. CRAN.
The same documentation section introduces the very handy **`@examplesIf`** roxygen2 tag that you can use for finer control.

Now on to **code archaeology**!
Do you want to ["pinpoint the version at which a certain argument appeared in a specific function of a package (or that its default value changed)"](https://twitter.com/JennyBryan/status/1343636610982662144), e.g. to figure out the minimal version required?
You might like the [**apicheck package** by David Hugh-Jones](https://github.com/hughjonesd/apicheck), that helps you "explore the historical API of functions in CRAN packages"; and [**rcheology** by the same author](https://github.com/hughjonesd/rcheology) for data on base packages.
Related to this are:

* [Using **git blame on the package NAMESPACE** to see when a function appeared](https://twitter.com/JennyBryan/status/1387439721157038080),
* The R-hub's [**CRAN source code mirror**](https://docs.r-hub.io/#cran-source-code-mirror): each repo is a CRAN package, each commit is the change between two versions of that package.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
