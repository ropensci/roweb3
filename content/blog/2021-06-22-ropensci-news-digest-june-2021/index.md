---
title: rOpenSci News Digest, June 2021
author:
  - The rOpenSci Team
date: '2021-06-22'
slug: ropensci-news-digest-june-2021
tags:
  - newsletter
description: keywords from the content
output:
  html_document:
    keep_md: yes
params:
  last_newsletter: '2021-05-21'
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2021/06/22/ropensci-news-digest-june-2021).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### R-universe

Video and resources from our past community call about [**rOpenSci's R-universe Project**](/commcalls/may2021-r-universe/) were posted. The R-universe platform is a new umbrella project under which rOpenSci experiments with new ideas for improving publication and discovery of research software packages in R. In this 1-hour community call, **Jeroen Ooms** explained the basic steps of setting up your own universe, and getting started with publishing packages (including experimental software, development versions, [research compendia](https://ropensci.org/blog/2021/04/09/r-universe-articles/)) and articles on your [personal subdomain](https://jeroen.r-universe.dev).

As a consequence of the call, a dedicated place for **getting help with R-universe** was created: the [R-universe category](https://discuss.ropensci.org/c/r-universe/30) on our forum.

### rOpenSci at useR! 2021

[Registration](https://user2021.r-project.org/participation/registration/) for the **useR! 2021 conference** closes June 25th! 
Early Bird rates now apply until Registration closes.
useR! conferences are non-profit conferences organized by community volunteers for the community, supported by the R Foundation.
useR! 2021 will take place online.

Important note, you can view the [conference schedule](https://user2021.r-project.org/program/overview/) in the timezone of your choice.

Get excited for four contributions by rOpenSci staff members:

* **Jeroen Ooms**, rOpenSci Lead Infrastructure Engineer, will give a [**keynote talk**](https://www.conftool.org/user2021/index.php?page=browseSessions&form_session=34#paperID355) about **the R-universe project** on Friday, July the 9th at 12:30PM - 1:30PM UTC.

* **Stefanie Butland**, rOpenSci community manager, will present on [**rOpenSci's Model for Managing a Federated Open Source Software Community**](https://www.conftool.org/user2021/index.php?page=browseSessions&form_session=8&presentations=hide) on Monday, July the 5th at 5:05PM UTC in a session starting at 4:45PM UTC.

* **Mark Padgham**, rOpenSci Software Research Scientist, will also give a [regular talk about his original **autotest**](https://www.conftool.org/user2021/index.php?page=browseSessions&form_session=14#paperID169) package for automatic testing of packages, on Tuesday, July the 6th at 8:45AM UTC (right at the beginning of the session).

* **Maëlle Salmon**, Research Software Engineer with rOpenSci, will give a [tutorial](https://user2021.r-project.org/program/tutorials/), _**GET better at testing your R package!**_ on Wednesday, July the 7th at 7-10AM UTC. This tutorial is about advanced testing of R packages, with HTTP testing as a case study. The tutorial has no spots left, but it will be recorded and [materials are available online](https://http-testing-r.netlify.app/).

Also very exciting is community member **Lluís Revilla Sancho**'s talk about _**Packages submission and reviews; how does it work?**_ using data about review process of three archives of R packages, CRAN, Bioconductor and rOpenSci.
That talk will happen in the same session as Stefanie Butland's presentation.

Find out about more [events](/events).

## Software :package:

### New packages




The following six packages recently became a part of our software suite:

+ [autotest](https://docs.ropensci.org/autotest), developed by Mark Padgham: Automatic testing of R packages via a simple YAML schema. 

+ [pkgcheck](https://docs.ropensci.org/pkgcheck), developed by Mark Padgham: Check whether a package is ready for submission to rOpenSci’s peer review system. 

+ [pkgstats](https://docs.ropensci.org/pkgstats), developed by Mark Padgham: Metrics of R packages. 

+ [roreviewapi](https://docs.ropensci.org/roreviewapi), developed by Mark Padgham: Plumber API to report package structure and function. 

+ [srr](https://docs.ropensci.org/srr), developed by Mark Padgham: Companion package to rOpenSci statistical software review project. 

+ [dataspice](https://docs.ropensci.org/dataspice), developed by Bryce Mecum together with Carl Boettiger, Scott Chamberlain, Auriel Fournier, Kelly Hondula, Anna Krystalli, Maëlle Salmon, Kate Webbink, Kara Woo: The goal of dataspice is to make it easier for researchers to create basic, lightweight, and concise metadata files for their datasets. These basic files can then be used to make useful information available during analysis, create a helpful dataset "README" webpage, and produce more complex metadata formats to aid dataset discovery. Metadata fields are based on the Schema.org and Ecological Metadata Language standards.  It is available on [CRAN]( https://CRAN.R-project.org/package=dataspice). It has been [reviewed](https://github.com/ropensci/software-review/issues/426) by T D James,  Abby Bratt.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following seventeen packages have had an update since the latest newsletter: [pkgstats](https://docs.ropensci.org/pkgstats "Metrics of R Packages") ([`p5.9.20210530.0-mac`](https://github.com/ropensci-review-tools/pkgstats/releases/tag/p5.9.20210530.0-mac)), [beastier](https://docs.ropensci.org/beastier "Call BEAST2") ([`v2.4.2`](https://github.com/ropensci/beastier/releases/tag/v2.4.2)), [beautier](https://docs.ropensci.org/beautier "BEAUti from R") ([`v2.6`](https://github.com/ropensci/beautier/releases/tag/v2.6)), [clifro](https://docs.ropensci.org/clifro "Easily Download and Visualise Climate Data from CliFlo") ([`v3.2-5`](https://github.com/ropensci/clifro/releases/tag/v3.2-5)), [dataaimsr](https://docs.ropensci.org/dataaimsr "AIMS Data Platform API Client") ([`v1.0.3`](https://github.com/ropensci/dataaimsr/releases/tag/v1.0.3)), [fulltext](https://docs.ropensci.org/fulltext "Full Text of Scholarly Articles Across Many Data Sources") ([`v2.0`](https://github.com/ropensci/fulltext/releases/tag/v2.0)), [mauricer](https://docs.ropensci.org/mauricer "Work with BEAST2 Packages") ([`v2.5.1`](https://github.com/ropensci/mauricer/releases/tag/v2.5.1)), [osmextract](https://docs.ropensci.org/osmextract "Download and Read OpenStreetMap Data Extracts") ([`v0.3.0`](https://github.com/ropensci/osmextract/releases/tag/v0.3.0)), [plotly](https://docs.ropensci.org/plotly "Create Interactive Web Graphics via plotly.js") ([`v4.9.4`](https://github.com/ropensci/plotly/releases/tag/v4.9.4)), [rgbif](https://docs.ropensci.org/rgbif "Interface to the Global Biodiversity Information Facility API") ([`v3.6.0`](https://github.com/ropensci/rgbif/releases/tag/v3.6.0)), [scrubr](https://docs.ropensci.org/scrubr "Clean Biological Occurrence Records") ([`v0.4.0`](https://github.com/ropensci/scrubr/releases/tag/v0.4.0)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Workflows") ([`0.5.0`](https://github.com/ropensci/targets/releases/tag/0.5.0)), [terrainr](https://docs.ropensci.org/terrainr "Landscape Visualizations in R and Unity") ([`v0.4.1`](https://github.com/ropensci/terrainr/releases/tag/v0.4.1)), [tracerer](https://docs.ropensci.org/tracerer "Tracer from R") ([`v2.2.2`](https://github.com/ropensci/tracerer/releases/tag/v2.2.2)), [vcr](https://docs.ropensci.org/vcr "Record HTTP Calls to Disk") ([`v1.0.2`](https://github.com/ropensci/vcr/releases/tag/v1.0.2)), [weathercan](https://docs.ropensci.org/weathercan "Download Weather Data from Environment and Climate Change Canada") ([`v0.6.1`](https://github.com/ropensci/weathercan/releases/tag/v0.6.1)), [wellknown](https://docs.ropensci.org/wellknown "Convert Between WKT and GeoJSON") ([`v0.7.4`](https://github.com/ropensci/wellknown/releases/tag/v0.7.4)).

## Software Peer Review

There are thirteen recently closed and active submissions and 5 submissions on hold. Issues are at different stages: 

* Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [stantargets](https://github.com/ropensci/software-review/issues/430), Targets for Stan Workflows. Submitted by [Will Landau](https://wlandau.github.io).

    * [awardFindR](https://github.com/ropensci/software-review/issues/432), QDR awardFindR. Submitted by [Michael C. McCall](http://mccall.cc).

* Four at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [gendercoder](https://github.com/ropensci/software-review/issues/435), Recodes Sex/Gender Descriptions Into A Standard Set. Submitted by [Emily Kothe](http://emilykothe.com).

    * [slopes](https://github.com/ropensci/software-review/issues/420), Calculate Slopes of Roads, Rivers and Trajectories. Submitted by [RFlx](http://www.rosafelix.bike).

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com).

    * [chemspiderapi](https://github.com/ropensci/software-review/issues/329), R Wrapper for ChemSpider's API Services. Submitted by [Raoul Wolf](https://github.com/RaoulWolf).

* Six at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [rsat](https://github.com/ropensci/software-review/issues/437), Tools for Downloading, Customizing, and Processing Time Series of Satellite Images from Landsat, MODIS, and Sentinel. Submitted by [Unai Pérez-Goya](https://unai-perez.github.io/).

    * [allodb](https://github.com/ropensci/software-review/issues/436), Tree Biomass Estimation at Extratropical Forest Plots. Submitted by [Erika Gonzalez-Akre](https://sites.google.com/site/forestecoclimlab/home).

    * [mctq](https://github.com/ropensci/software-review/issues/434), An R Package for the Munich ChronoType Questionnaire. Submitted by [Daniel Vartanian](https://orcid.org/0000-0001-7782-759X).

    * [ROriginStamp](https://github.com/ropensci/software-review/issues/433), Interface to OriginStamp API to Obtain Trusted Time Stamps. Submitted by [Rainer M Krug](https://github.com/rkrug).

    * [jagstargets](https://github.com/ropensci/software-review/issues/425), Targets for JAGS Workflows. Submitted by [Will Landau](https://wlandau.github.io).

    * [occCite](https://github.com/ropensci/software-review/issues/407), Querying and Managing Large Biodiversity Occurrence Datasets. Submitted by [Hannah Owens](http://hannahlowens.weebly.com/).

* One at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [rdbhapi](https://github.com/ropensci/software-review/issues/443), Interface to DBH-API. Submitted by [Marija Ninic](https://nsd.no/).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Other topics

* [Celebrating World Ocean Day rOpenSci Style](/blog/2021/06/08/world-ocean-day) by Steffi LaZerte. A celebration of World Ocean Day showcasing how rOpenSci packages can be used to explore ocean data.

{{< figure src="unnamed-chunk-10-1.png" alt="Plot of the arctic with multi-coloured layers showing the sea ice extent in each year (decreasing from 1980 through to 2021)" width="400" >}}

## Citations



Below are the citations recently added to our database of 1334 articles, that you can explore on our [citations page](/citations).
We found use of...

* [**biomartr**](https://docs.ropensci.org/biomartr) in Tjeldnes, H., Labun, K., Cleuren, Y. T., Chyżyńska, K., Świrski, M., & Valen, E. (2021). ORFik: a comprehensive R toolkit for the analysis of translation. doi:10.1101/2021.01.16.426936

* [**c14bazAAR**](https://docs.ropensci.org/c14bazAAR) in Crema, E. R., & Shoda, S. (2021). A Bayesian approach for fitting and comparing demographic growth models of radiocarbon dates: A case study on the Jomon-Yayoi transition in Kyushu (Japan). PLOS ONE, 16(5), e0251695. doi:10.1371/journal.pone.0251695

* [**CoordinateCleaner**](https://docs.ropensci.org/CoordinateCleaner) in BELLO, A., MUKHTAR, F. B., & MUELLNER-RIEHL, A. N. (2021). <strong>DIVERSITY AND DISTRIBUTION OF NIGERIAN LEGUMES (FABACEAE)</strong>. Phytotaxa, 480(2), 103–124. doi:10.11646/phytotaxa.480.2.1

* [**CoordinateCleaner**](https://docs.ropensci.org/CoordinateCleaner) in Delso, A., Muñoz, J., & Fajardo, J. (2021). Protected Area Networks Do Not Represent Unseen Diversity. doi:10.21203/rs.3.rs-145219/v1

* [**CoordinateCleaner**](https://docs.ropensci.org/CoordinateCleaner) in Ryeland, J., Derham, T. T., & Spencer, R. J. (2021). Past and future potential range changes in one of the last large vertebrates of the Australian continent, the emu Dromaius novaehollandiae. Scientific Reports, 11(1). doi:10.1038/s41598-020-79551-0

* [**hunspell**](https://docs.ropensci.org/hunspell) in Garvey, M. D., Samuel, J., & Pelaez, A. (2021). Would you please like my tweet?! An artificially intelligent, generative probabilistic, and econometric based system design for popularity-driven tweet content generation. Decision Support Systems, 144, 113497. doi:10.1016/j.dss.2021.113497

* [**magick**](https://docs.ropensci.org/magick) in Mann, D. C., Fitch, W. T., Tu, H.-W., & Hoeschele, M. (2021). Universal principles underlying segmental structures in parrot song and human speech. Scientific Reports, 11(1). doi:10.1038/s41598-020-80340-y

* [**MODIStsp**](https://docs.ropensci.org/MODIStsp) in Akpoti, K., Dossou-Yovo, E. R., Zwart, S. J., & Kiepe, P. (2021). The potential for expansion of irrigated rice under alternate wetting and drying in Burkina Faso. Agricultural Water Management, 247, 106758. doi:10.1016/j.agwat.2021.106758

* [**MODIStsp**](https://docs.ropensci.org/MODIStsp) in De Andrade, M. D., Delgado, R. C., da Costa de Menezes, S. J. M., de Ávila Rodrigues, R., Teodoro, P. E., da Silva Junior, C. A., & Pereira, M. G. (2021). Evaluation of the MOD11A2 product for canopy temperature monitoring in the Brazilian Atlantic Forest. Environmental Monitoring and Assessment, 193(1). doi:10.1007/s10661-020-08788-z

* [**neotoma**](https://docs.ropensci.org/neotoma) in Teale, C., & Chang, J. (2021). Fabaceae (legume) pollen as an anthropogenic indicator in eastern North America. Vegetation History and Archaeobotany. doi:10.1007/s00334-020-00815-w

* [**NLMR**](https://docs.ropensci.org/NLMR) in Savary, P., Foltête, J., Moal, H., Vuidel, G., & Garnier, S. (2021). Analysing landscape effects on dispersal networks and gene flow with genetic graphs. Molecular Ecology Resources, 21(4), 1167–1185. doi:10.1111/1755-0998.13333

* [**nlrx**](https://docs.ropensci.org/nlrx) in Ghoreishi, M., Razavi, S., & Elshorbagy, A. (2021). Understanding human adaptation to drought: agent-based agricultural water demand modeling in the Bow River Basin, Canada. Hydrological Sciences Journal, 66(3), 389–407. doi:10.1080/02626667.2021.1873344

* [**rdhs**](https://docs.ropensci.org/rdhs) in Fu, H., Lewnard, J. A., Frost, I., Laxminarayan, R., & Arinaminpathy, N. (2021). Modelling the global burden of drug-resistant tuberculosis avertable by a post-exposure vaccine. Nature Communications, 12(1). doi:10.1038/s41467-020-20731-x

* [**rerddap**](https://docs.ropensci.org/rerddap) in Patel, S. H., Winton, M. V., Hatch, J. M., Haas, H. L., Saba, V. S., Fay, G., & Smolowitz, R. J. (2021). Projected shifts in loggerhead sea turtle thermal habitat in the Northwest Atlantic Ocean due to climate change. Scientific Reports, 11(1). doi:10.1038/s41598-021-88290-9

* [**rgbif**](https://docs.ropensci.org/rgbif), [**taxize**](https://docs.ropensci.org/taxize) in Schwery, O., & O’Meara, B. C. (2021). Age, Origin, and Biogeography: Unveiling the Factors Behind the Diversification of Dung Beetles. doi:10.1101/2021.01.26.428346

* [**rnaturalearth**](https://docs.ropensci.org/rnaturalearth) in Changmai, P., Jaisamut, K., Kampuansai, J., Kutanan, W., Altınışık, N. E., Flegontova, O., … Flegontov, P. (2021). Indian genetic heritage in Southeast Asian populations. doi:10.1101/2021.01.21.427591

* [**rnaturalearth**](https://docs.ropensci.org/rnaturalearth) in Lovell, J. T., MacQueen, A. H., Mamidi, S., Bonnette, J., Jenkins, J., Napier, J. D., … Shu, S. (2021). Genomic mechanisms of climate adaptation in polyploid bioenergy switchgrass. Nature, 590(7846), 438–444. doi:10.1038/s41586-020-03127-1

* [**rnaturalearth**](https://docs.ropensci.org/rnaturalearth) in Meca, M. A., Zhadan, A., & Struck, T. H. (2021). The Early Branching Group of Orbiniida Sensu Struck et al., 2015: Parergodrilidae and Orbiniidae. Diversity, 13(1), 29. doi:10.3390/d13010029

* [**rnaturalearth**](https://docs.ropensci.org/rnaturalearth) in Thomas, C. L., Jansen, B., van Loon, E. E., & Wiesenberg, G. L. B. (2021). Transformation of &lt;i&gt;n&lt;/i&gt;-alkanes from plant to soil: a review. doi:10.5194/soil-2020-107

* [**rnoaa**](https://docs.ropensci.org/rnoaa) in Halimubieke, N., Kupán, K., Valdebenito, J. O., Kubelka, V., Carmona-Isunza, M. C., Burgas, D., … Székely, T. (2020). Successful breeding predicts divorce in plovers. Scientific Reports, 10(1). doi:10.1038/s41598-020-72521-6

* [**rotl**](https://docs.ropensci.org/rotl) in Andreu-Sánchez, S., Chen, W., Stiller, J., & Zhang, G. (2021). Multiple origins of a frameshift insertion in a mitochondrial gene in birds and turtles. GigaScience, 10(1). doi:10.1093/gigascience/giaa161

* [**rotl**](https://docs.ropensci.org/rotl) in Dougherty, L. R. (2021). Meta‐analysis shows the evidence for context‐dependent mating behaviour is inconsistent or weak across animals. Ecology Letters, 24(4), 862–875. doi:10.1111/ele.13679

* [**rotl**](https://docs.ropensci.org/rotl) in Murphy, R., Palm, M., Mustonen, V., Warringer, J., Farewell, A., Parts, L., & Moradigaravand, D. (2021). Genomic Epidemiology and Evolution of Escherichia coli in Wild Animals in Mexico. mSphere, 6(1). doi:10.1128/msphere.00738-20

* [**rredlist**](https://docs.ropensci.org/rredlist) in DE LA TORRE, G. M., & CAMPIÃO, K. M. (2021). Bird habitat preferences drive hemoparasite infection in the Neotropical region. Integrative Zoology. doi:10.1111/1749-4877.12515

* [**RSelenium**](https://docs.ropensci.org/RSelenium) in Simpson, R. B., Gottlieb, J., Zhou, B., Hartwick, M. A., & Naumova, E. N. (2021). Completeness of open access FluNet influenza surveillance data for Pan-America in 2005–2019. Scientific Reports, 11(1). doi:10.1038/s41598-020-80842-9

* [**rtweet**](https://docs.ropensci.org/rtweet) in Adepeju, M., & Jimoh, F. (2021). An Analytical Framework for Measuring Inequality in the Public Opinion on Policing—Assessing the Impacts of COVID-19 Pandemic Using Twitter Data. Journal of Geographic Information System, 13(02), 122–147. doi:10.4236/jgis.2021.132008

* [**rtweet**](https://docs.ropensci.org/rtweet) in Heyerdahl, L. W., Vray, M., Leger, V., Le Fouler, L., Antouly, J., Troit, V., & Giles-Vernick, T. (2021). Evaluating the motivation of Red Cross Health volunteers in the COVID-19 pandemic: a mixed-methods study protocol. BMJ Open, 11(1), e042579. doi:10.1136/bmjopen-2020-042579

* [**rtweet**](https://docs.ropensci.org/rtweet) in Nkonde, M., Rodriguez, M. Y., Cortana, L., Mukogosi, J. K., King, S., Serrato, R., … Malik, M. M. (2021). Disinformation creep: ADOS and the strategic weapon-ization of breaking news. Harvard Kennedy School Misinformation Review. doi:10.37016/mr-2020-52

* [**spocc**](https://docs.ropensci.org/spocc) in Lozano, V. (2021). Distribution of Five Aquatic Plants Native to South America and Invasive Elsewhere under Current Climate. Ecologies, 2(1), 27–42. doi:10.3390/ecologies2010003

* [**spocc**](https://docs.ropensci.org/spocc), [**CoordinateCleaner**](https://docs.ropensci.org/CoordinateCleaner) in Escobar, S., Helmstetter, A. J., Jarvie, S., Montúfar, R., Balslev, H., & Couvreur, T. L. P. (2021). Pleistocene climatic fluctuations promoted alternative evolutionary histories in Phytelephas aequatorialis, an endemic palm from western Ecuador. Journal of Biogeography, 48(5), 1023–1037. doi:10.1111/jbi.14055

* [**stplanr**](https://docs.ropensci.org/stplanr), [**opentripplanner**](https://docs.ropensci.org/opentripplanner) in Lovelace, R. (2021). Open source tools for geographic analysis in transport planning. Journal of Geographical Systems. doi:10.1007/s10109-020-00342-2

* [**taxize**](https://docs.ropensci.org/taxize) in Durso, A. M., Bolon, I., Kleinhesselink, A. R., Mondardini, M. R., Fernandez-Marquez, J. L., Gutsche-Jones, F., … Ruiz de Castañeda, R. (2021). Crowdsourcing snake identification with online communities of professional herpetologists and avocational snake enthusiasts. Royal Society Open Science, 8(1), 201273. <https://doi.org/10.1098/rsos.201273>

* [**taxize**](https://docs.ropensci.org/taxize) in Gibb, R., Albery, G. F., Becker, D. J., Brierley, L., Connor, R., Dallas, T. A., … Poisot, T. (2021). Data proliferation, reconciliation, and synthesis in viral ecology. doi:10.1101/2021.01.14.426572

* [**taxize**](https://docs.ropensci.org/taxize) in Herzog, S. A., & Latvis, M. (2021). Examining the utility of DNA barcodes for the identification of tallgrass prairie flora. Applications in Plant Sciences, 9(1). doi:10.1002/aps3.11405

* [**taxize**](https://docs.ropensci.org/taxize) in Vizentin-Bugoni, J., Sperry, J. H., Kelley, J. P., Gleditsch, J. M., Foster, J. T., Drake, D. R., … Tarwater, C. E. (2021). Ecological correlates of species’ roles in highly invaded seed dispersal networks. Proceedings of the National Academy of Sciences, 118(4), e2009532118. <https://doi.org/10.1073/pnas.2009532118>

* [**tidyhydat**](https://docs.ropensci.org/tidyhydat) in Laceby, J. P., Batista, P. V. G., Taube, N., Kruk, M. K., Chung, C., Evrard, O., … Kerr, J. G. (2021). Tracing total and dissolved material in a western Canadian basin using quality control samples to guide the selection of fingerprinting parameters for modelling. CATENA, 200, 105095. <https://doi.org/10.1016/j.catena.2020.105095>

* [**treeio**](https://docs.ropensci.org/treeio) in Vozdova, M., Kubickova, S., Martínková, N., Galindo, D. J., Bernegossi, A. M., Cernohorska, H., … Rubes, J. (2021). Satellite DNA in Neotropical Deer Species. Genes, 12(1), 123. doi:10.3390/genes12010123

* [**treeio**](https://docs.ropensci.org/treeio), [**magick**](https://docs.ropensci.org/magick) in Sellés Vidal, L., Ayala, R., Stan, G.-B., & Ledesma-Amaro, R. (2021). rfaRm: An R client-side interface to facilitate the analysis of the Rfam database of RNA families. PLOS ONE, 16(1), e0245280. doi:10.1371/journal.pone.0245280

* [**weathercan**](https://docs.ropensci.org/weathercan) in Layton, K. K. S., Snelgrove, P. V. R., Dempson, J. B., Kess, T., Lehnert, S. J., Bentzen, P., … Bradbury, I. R. (2021). Genomic evidence of past and future climate-linked loss in a migratory Arctic fish. Nature Climate Change, 11(2), 158–165. doi:10.1038/s41558-020-00959-7

* [**webchem**](https://docs.ropensci.org/webchem) in Su, Q.-Z., Vera, P., Nerín, C., Lin, Q.-B., & Zhong, H.-N. (2021). Safety concerns of recycling postconsumer polyolefins for food contact uses: Regarding (semi-)volatile migrants untargetedly screened. Resources, Conservation and Recycling, 167, 105365. <https://doi.org/10.1016/j.resconrec.2020.105365>

Thank you for citing our tools!

## Use cases



Two use cases of our packages and resources have been reported since we sent the last newsletter.

* [Using tabulizer to extract tabular data from daily COVID-19 reports](https://discuss.ropensci.org/t/using-tabulizer-to-extract-tabular-data-from-daily-covid-19-reports/2487). Reported by Steffi LaZerte.

* [Using rotl to create phylogenetic trees](https://discuss.ropensci.org/t/using-rotl-to-create-phylogenetic-trees/2498). Reported by Denise.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers


There's no open call for new maintainers at this point but you can refer to our [contributing guide](https://contributing.ropensci.org/) for finding ways to get involved!
As the maintainer of an rOpenSci package, feel free to contact us on Slack or email `info@ropensci.org` to get your call for maintainer featured in the next newsletter.

## Package development corner

Some useful tips for R package developers. :eyes:

### Dependency analysis

Have you ever wondered why package Y needed package X, i.e. what the dependency relation between them is?
Whilst there are base R tools for finding this out, the pak package by Gábor Csárdi provides a [nice function for doing just that](https://www.mail-archive.com/r-package-devel@r-project.org/msg06956.html), [pkg_deps_explain()](https://pak.r-lib.org/dev/reference/pkg_deps_explain.html).
E.g.

- if you wonder, why is curl needed to use pkgdown?

- you type `pak::pkg_deps_explain("pkgdown", "curl")`

- you get: `pkgdown -> httr -> curl`

You can even use the local package or a GitHub package as [first argument](https://twitter.com/GaborCsardi/status/1401817431950168064).
Also worth mentioning is [`pkg_deps_tree()`](https://pak.r-lib.org/dev/reference/pkg_deps_tree.html) for drawing the dependency tree of a package.
Note that this is all in [pak development version](https://pak.r-lib.org/dev/index.html#installation).

### Reducing the complexity of code

When trying to reduce the complexity of your code (for making it easier to maintain and review), check out the [cyclocomp](https://cran.r-project.org/web/packages/cyclocomp/index.html) package, also by Gábor Csárdi, as reminded by [Lluís Revilla Sancho](https://llrs.dev/) in [rOpenSci semi-open slack](https://contributing.ropensci.org/resources.html#channels): it will help you find functions that are too complex.

Another package that might help you clean your code is the rOpenSci peer-reviewed [Rclean package](/blog/2020/04/21/rclean/) by M.K. Lau.

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
