---
slug: ropensci-news
title: Latest rOpenSci News Digest
author:
  - The rOpenSci Team
date: '2021-03-15'
tags:
  - newsletter
description: R-universe page, Statistical software review comm call, new packages and package news.
output:
  html_document:
    keep_md: yes
params:
  last_newsletter: "2021-02-08"
---



Dear rOpenSci friends, it's time for our monthly news roundup!
Some housekeeping first:
We've been changing the infrastructure of our newsletter a bit so please update your RSS and JSON feeds to `https://ropensci.org/tags/newsletter/index.xml` and `https://ropensci.org/tags/newsletter/index.json`, respectively.
You can read this post [on our blog](/blog/2021/03/15/ropensci-news).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

Our R-universe project now has [its own page on our website](/r-universe/)! :rocket:

Regarding another exciting project of ours... We've run the first comm call of our series on [statistical software review project](/stat-software-review/)! [rOpenSci Statistical Software Testing and Peer Review](/commcalls/feb2021-statsreview/) took place on March the 2d. The video recording (including closed captions) and resources have been posted.

Find out about more [events](/events).

## Software :package:

### New packages




The following  package recently became a part of our software suite:

+ [terrainr](https://docs.ropensci.org/terrainr), developed by Michael Mahoney: Functions for the retrieval, manipulation, and visualization of geospatial data, with an aim towards producing 3D landscape visualizations in the Unity 3D rendering engine. Functions are also provided for retrieving elevation data and base map tiles from the USGS National Map (<https://apps.nationalmap.gov/services/>).  It is available on [CRAN]( https://CRAN.R-project.org/package=terrainr). It has been [reviewed](https://github.com/ropensci/software-review/issues/416) by Mike Johnson, Sydney Foks.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following sixteen packages have had an update since the latest newsletter: [crul](https://docs.ropensci.org/crul "HTTP Client") ([`v1.1.0`](https://github.com/ropensci/crul/releases/tag/v1.1.0)), [eia](https://docs.ropensci.org/eia "API Wrapper for US Energy Information Administration Open Data") ([`v0.3.7`](https://github.com/ropensci/eia/releases/tag/v0.3.7)), [epubr](https://docs.ropensci.org/epubr "Read EPUB File Metadata and Text") ([`v0.6.2`](https://github.com/ropensci/epubr/releases/tag/v0.6.2)), [fulltext](https://docs.ropensci.org/fulltext "Full Text of Scholarly Articles Across Many Data Sources") ([`v1.7.0`](https://github.com/ropensci/fulltext/releases/tag/v1.7.0)), [opencage](https://docs.ropensci.org/opencage "Geocode with the OpenCage API") ([`v0.2.2`](https://github.com/ropensci/opencage/releases/tag/v0.2.2)), [osmextract](https://docs.ropensci.org/osmextract "Download and Read OpenStreetMap Data Extracts") ([`v0.2.1`](https://github.com/ropensci/osmextract/releases/tag/v0.2.1)), [parzer](https://docs.ropensci.org/parzer "Parse Messy Geographic Coordinates") ([`v0.4.0`](https://github.com/ropensci/parzer/releases/tag/v0.4.0)), [phonfieldwork](https://docs.ropensci.org/phonfieldwork "Linguistic Phonetic Fieldwork Tools") ([`v0.0.11`](https://github.com/ropensci/phonfieldwork/releases/tag/v0.0.11)), [rerddap](https://docs.ropensci.org/rerddap "General Purpose Client for ERDDAP Servers") ([`v0.7.4`](https://github.com/ropensci/rerddap/releases/tag/v0.7.4)), [rinat](https://docs.ropensci.org/rinat "Access iNaturalist Data Through APIs") ([`v0.1.7`](https://github.com/ropensci/rinat/releases/tag/v0.1.7)), [rnoaa](https://docs.ropensci.org/rnoaa "NOAA Weather Data from R") ([`v1.3.2`](https://github.com/ropensci/rnoaa/releases/tag/v1.3.2)), [rplos](https://docs.ropensci.org/rplos "Interface to the Search API for PLoS Journals") ([`v1.0.0`](https://github.com/ropensci/rplos/releases/tag/v1.0.0)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.1.0`](https://github.com/ropensci/tarchetypes/releases/tag/0.1.0)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Workflows") ([`0.2.0`](https://github.com/ropensci/targets/releases/tag/0.2.0)), [terrainr](https://docs.ropensci.org/terrainr "Landscape Visualizations in R and Unity") ([`v0.3.1`](https://github.com/ropensci/terrainr/releases/tag/v0.3.1)), [tiler](https://docs.ropensci.org/tiler "Create Geographic and Non-Geographic Map Tiles") ([`v0.2.5`](https://github.com/ropensci/tiler/releases/tag/v0.2.5)).

## Software Peer Review

There are seventeen recently closed and active submissions and 2 submissions on hold. Issues are at different stages: 

* Four at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [terrainr](https://github.com/ropensci/software-review/issues/416), Retrieve Data from the USGS National Map and Transform it for 3D Landscape Visualizations. Submitted by [Michael Mahoney](https://www.mikemahoney218.com/).

    * [pixelclasser](https://github.com/ropensci/software-review/issues/406), A Package for Classifying Pixels by Colour. Submitted by [Carlos Real Rodríguez](https://github.com/CarlosRealR).

    * [coder](https://github.com/ropensci/software-review/issues/381), Deterministic Categorization of Items Based on External Code Data. Submitted by [Erik Bülow](https://github.com/eribul).

    * [SymbiotaR2](https://github.com/ropensci/software-review/issues/373), Downloading data from Symbiota2 portals into R. Submitted by [Austin Koontz](https://akoontz11.github.io/).

* Two at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [censo2017](https://github.com/ropensci/software-review/issues/414), Base de Datos de Facil Acceso del Censo 2017 de Chile. Submitted by [Pachamaltese](https://pacha.dev).

    * [pathviewR](https://github.com/ropensci/software-review/issues/409), Wrangle, Analyze, and Visualize Animal Movement Data. Submitted by [Vikram Baliga](https://www.vikram-baliga.com/).

* Two at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com).

    * [circle](https://github.com/ropensci/software-review/issues/356), R Client Package for Circle CI. Submitted by [Patrick Schratz](https://pat-s.me).

* Five at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [stantargets](https://github.com/ropensci/software-review/issues/430), Targets for Stan Workflows. Submitted by [Will Landau](https://wlandau.github.io).

    * [dataaimsr](https://github.com/ropensci/software-review/issues/428), AIMS Data Platform API Client. Submitted by [Diego Barneche](https://www.diegobarneche.com/).

    * [dataspice](https://github.com/ropensci/software-review/issues/426), Create Lightweight Schema.org Descriptions of Data. Submitted by [Bryce Mecum](https://brycemecum.com).

    * [chemspiderapi](https://github.com/ropensci/software-review/issues/329), R Wrapper for ChemSpider's API Services. Submitted by [Raoul Wolf](https://github.com/RaoulWolf).

    * [exoplanets](https://github.com/ropensci/software-review/issues/309), Provides access to NASA's Exoplanet Archive, see <https://exoplanetarchive.ipac.caltech.edu/index.html>. Submitted by [Tyler Littlefield](http://tylerlittlefield.com).

* One at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

     * [occCite](https://github.com/ropensci/software-review/issues/407), Querying and Managing Large Biodiversity Occurrence Datasets. Submitted by [Hannah Owens](http://hannahlowens.weebly.com/).

* Three at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [slopes](https://github.com/ropensci/software-review/issues/420), Calculate Slopes of Roads, Rivers and Trajectories. Submitted by [RFlx](http://www.rosafelix.bike).

    * [epair](https://github.com/ropensci/software-review/issues/418), Grabs data from EPA API, simplifies getting pollutant data. Submitted by [Leo Orozco-Mulfinger](https://github.com/GLOrozcoM).

    * [tidytags](https://github.com/ropensci/software-review/issues/382), Simple Collection and Powerful Analysis of Twitter Data. Submitted by [Bret Staudt Willet](http://bretsw.com).

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog



### Software Review

* [coder Makes Medical Coding less Messy](/blog/2021/02/09/coder) by Erik Bülow. The coder package helps to summarize and interpret (medical) coding in R (think ICD, ATC and more).{{< figure src="hex.png" alt="Hex sticker for the coder package" width="400" >}}



* [rOpenSci Dev Guide 0.6.0: Updates](/blog/2021/02/23/devguide-0.6.0) by Maëlle Salmon, Brooke Anderson, Laura DeCicco, Julia Gustavsen, Anna Krystalli, Mauro Lepore, Karthik Ram, Noam Ross, Melina Vidoni. Updates in version 0.6.0 of the online book 'rOpenSci Packages: Development, Maintenance, and Peer Review rOpenSci Packages: Development, Maintenance, and Peer Review'.{{< figure src="cover.png" alt="" width="400" >}}



### Other topics

* [Make Your R Package Easier to Cite](/blog/2021/02/16/package-citation) by Maëlle Salmon, Scott Chamberlain, Karthik Ram. Some tips to promote scientific citations of your work.



### Tech Notes

* [A first look at the R-universe build infrastructure](/blog/2021/03/04/r-universe-buildsystem) by Jeroen Ooms.

## Citations



Below are the citations recently added to our database of 1255 articles, that you can explore on our [citations page](/citations).
We found use of...

* [**baRcodeR**](https://docs.ropensci.org/baRcodeR) in Walker, V. K., Das, P., Li, P., Lougheed, S. C., Moniz, K., Schott, S., … Koch, I. (2020). Identification of Arctic Food Fish Species for Anthropogenic Contaminant Testing Using Geography and Genetics. Foods, 9(12), 1824. <https://doi.org/10.3390/foods9121824>

* [**CoordinateCleaner**](https://docs.ropensci.org/CoordinateCleaner), [**rnaturalearth**](https://docs.ropensci.org/rnaturalearth) in Farooq, H., Azevedo, J. A. R., Soares, A., Antonelli, A., & Faurby, S. (2020). Mapping Africa’s Biodiversity: More of the Same Is Just Not Good Enough. Systematic Biology. <https://doi.org/10.1093/sysbio/syaa090>

* [**magick**](https://docs.ropensci.org/magick) in Ball, J. (2020). Food Classification with Convolutional Neural Networks and Multi-Class Linear Discernment Analysis. arXiv preprint arXiv:2012.03170. <https://arxiv.org/pdf/2012.03170>

* [**magick**](https://docs.ropensci.org/magick) in Hillary, R. F., & Marioni, R. E. (2020). MethylDetectR: a software for methylation-based health profiling. Wellcome Open Research, 5, 283. <https://doi.org/10.12688/wellcomeopenres.16458.1>

* [**magick**](https://docs.ropensci.org/magick) in Liang, X., Hu, Y., Yan, C., & Xu, K. (2020). i2d: an R package for simulating data from images and the implications in biomedical research. Bioinformatics. <https://doi.org/10.1093/bioinformatics/btaa991>

* [**magick**](https://docs.ropensci.org/magick) in Loser, D., Schaefer, J., Danker, T., Möller, C., Brüll, M., Suciu, I., … Kraushaar, U. (2020). Human neuronal signaling and communication assays to assess functional neurotoxicity. Archives of Toxicology, 95(1), 229–252. <https://doi.org/10.1007/s00204-020-02956-3>

* [**magick**](https://docs.ropensci.org/magick) in Wang, J., Wang, X., Gao, Y., Lin, Z., Chen, J., Gigantelli, J., … Pierre, S. V. (2020). Stress Signal Regulation by Na/K-ATPase As a New Approach to Promote Physiological Revascularization in a Mouse Model of Ischemic Retinopathy. Investigative Opthalmology & Visual Science, 61(14), 9. <https://doi.org/10.1167/iovs.61.14.9>

* [**NLMR**](https://docs.ropensci.org/NLMR) in Braziunas, K. H., Seidl, R., Rammer, W., & Turner, M. G. (2020). Can we manage a future with more fire? Effectiveness of defensible space treatment depends on housing amount and configuration. Landscape Ecology, 36(2), 309–330. <https://doi.org/10.1007/s10980-020-01162-x>

* [**osmdata**](https://docs.ropensci.org/osmdata) in Padgham, M., Lovelace, R., Salmon, M., & Rudis, B. (2017). osmdata. The Journal of Open Source Software, 2(14), 305. <https://doi.org/10.21105/joss.00305>

* [**pdftools**](https://docs.ropensci.org/pdftools) in Li, B., Trueman, B. F., Rahman, M. S., & Gagnon, G. A. (2021). Controlling lead release due to uniform and galvanic corrosion — An evaluation of silicate-based inhibitors. Journal of Hazardous Materials, 407, 124707. <https://doi.org/10.1016/j.jhazmat.2020.124707>

* [**phylotaR**](https://docs.ropensci.org/phylotaR) in Crespo, L. C., Silva, I., Enguídanos, A., Cardoso, P., & Arnedo, M. A. (2020). Integrative taxonomic revision of the woodlouse-hunter spider genus Dysdera (Araneae: Dysderidae) in the Madeira archipelago with notes on its conservation status. Zoological Journal of the Linnean Society. <https://doi.org./10.1093/zoolinnean/zlaa089>

* [**refsplitr**](https://docs.ropensci.org/refsplitr) in Smith, T. B., Vacca, R., Krenz, T., & McCarty, C. (2021). Great minds think alike, or do they often differ? Research topic overlap and the formation of scientific teams. Journal of Informetrics, 15(1), 101104. <https://doi.org/10.1016/j.joi.2020.101104>

* [**rfishbase**](https://docs.ropensci.org/rfishbase) in Gandra, M., Assis, J., Martins, M. R., & Abecasis, D. (2020). Reduced Global Genetic Differentiation of Exploited Marine Fish Species. Molecular Biology and Evolution. <https://doi.org/10.1093/molbev/msaa299>

* [**rfishbase**](https://docs.ropensci.org/rfishbase) in Kopf, R. K., Yen, J. D. L., Nimmo, D. G., Brosse, S., & Villéger, S. (2020). Global patterns and predictors of trophic position, body size and jaw size in fishes. Global Ecology and Biogeography, 30(2), 414–428. <https://doi.org/10.1111/geb.13227>

* [**rgbif**](https://docs.ropensci.org/rgbif) in Ludt, W. B., & Myers, C. E. (2020). Distinguishing between dispersal and vicariance: A novel approach using anti‐tropical taxa across the fish Tree of Life. Journal of Biogeography, 48(3), 577–589. <https://doi.org/10.1111/jbi.14021>

* [**rgbif**](https://docs.ropensci.org/rgbif) in Mayani-Parás, F., Botello, F., Castañeda, S., Munguía-Carrara, M., & Sánchez-Cordero, V. (2021). Cumulative habitat loss increases conservation threats on endemic species of terrestrial vertebrates in Mexico. Biological Conservation, 253, 108864. <https://doi.org/10.1016/j.biocon.2020.108864>

* [**rgbif**](https://docs.ropensci.org/rgbif) in Pons, J., Campión, D., Chiozzi, G., Ettwein, A., Grangé, J., Kajtoch, Ł., … Fuchs, J. (2020). Phylogeography of a widespread Palaearctic forest bird species: The White‐backed Woodpecker (Aves, Picidae). Zoologica Scripta, 50(2), 155–172. <https://doi.org/10.1111/zsc.12466>

* [**rgbif**](https://docs.ropensci.org/rgbif) in Zonneveld, M., Kindt, R., Solberg, S. Ø., N’Danikou, S., & Dawson, I. K. (2020). Diversity and conservation of traditional African vegetables: Priorities for action. Diversity and Distributions, 27(2), 216–232. <https://doi.org/10.1111/ddi.13188>

* [**rnaturalearth**](https://docs.ropensci.org/rnaturalearth) in Rose Vineer, H., Morgan, E. R., Hertzberg, H., Bartley, D. J., Bosco, A., Charlier, J., … Rinaldi, L. (2020). Increasing importance of anthelmintic resistance in European livestock: creation and meta-analysis of an open database. Parasite, 27, 69. <https://doi.org/10.1051/parasite/2020062>

* [**rnaturalearthdata**](https://docs.ropensci.org/rnaturalearthdata), [**rnaturalearth**](https://docs.ropensci.org/rnaturalearth) in Bennie, J. A., De Cocker, K., Smith, J. J., & Wiesner, G. H. (2020). The epidemiology of muscle-strengthening exercise in Europe: A 28-country comparison including 280,605 adults. PLOS ONE, 15(11), e0242220. <https://doi.org/10.1371/journal.pone.0242220>

* [**rnoaa**](https://docs.ropensci.org/rnoaa) in Dumitrescu, L., & Schiopu-Kratina, I. (2021). Asymptotic results with estimating equations for time-evolving clustered data. Journal of Statistical Planning and Inference. arXiv preprint. <https://arxiv.org/pdf/2011.14017>

* [**ropenaq**](https://docs.ropensci.org/ropenaq) in Le, V. V., Huynh, T. T., Ölçer, A., Hoang, A. T., Le, A. T., Nayak, S. K., & Pham, V. V. (2020). A remarkable review of the effect of lockdowns during COVID-19 pandemic on global PM emissions. Energy Sources, Part A: Recovery, Utilization, and Environmental Effects, 1–16. <https://doi.org/10.1080/15567036.2020.1853854>

* [**rotl**](https://docs.ropensci.org/rotl) in Dániel-Ferreira, J., Bommarco, R., Wissman, J., & Öckinger, E. (2020). Linear infrastructure habitats increase landscape-scale diversity of plants but not of flower-visiting insects. Scientific Reports, 10(1). <https://doi.org/10.1038/s41598-020-78090-y>

* [**rotl**](https://docs.ropensci.org/rotl) in Kunc, H. P., & Schmidt, R. (2020). Species sensitivities to a global pollutant: A meta‐analysis on acoustic signals in response to anthropogenic noise. Global Change Biology, 27(3), 675–688. <https://doi.org/10.1111/gcb.15428>

* [**rtweet**](https://docs.ropensci.org/rtweet) in Bittermann, A., Batzdorfer, V., Müller, S. M., & Steinmetz, H. (2021). Mining Twitter to detect hotspots in psychology. Zeitschrift für Psychologie. <https://www.psycharchives.org/bitstream/20.500.12034/3956/1/ESM%201_methods.pdf>

* [**stats19**](https://docs.ropensci.org/stats19) in Aguero-Valverde, J., & Jovanis, P. P. (2008). Analysis of Road Crash Frequency with Spatial Models. Transportation Research Record: Journal of the Transportation Research Board, 2061(1), 55–63. <https://doi.org/10.3141/2061-07>

* [**stplanr**](https://docs.ropensci.org/stplanr) in Fitzgerald, D. B., Henderson, A. R., Maloney, K. O., Freeman, M. C., Young, J. A., Rosenberger, A. E., … Smith, D. R. (2021). A Bayesian framework for assessing extinction risk based on ordinal categories of population condition and projected landscape change. Biological Conservation, 253, 108866. <https://doi.org/10.1016/j.biocon.2020.108866>

* [**taxize**](https://docs.ropensci.org/taxize) in Freiberg, M., Winter, M., Gentile, A., Zizka, A., Muellner-Riehl, A. N., Weigelt, A., & Wirth, C. (2020). LCVP, The Leipzig catalogue of vascular plants, a new taxonomic reference list for all known vascular plants. Scientific Data, 7(1). <https://doi.org/10.1038/s41597-020-00702-z>

* [**tesseract**](https://docs.ropensci.org/tesseract) in Candarli, D. (2020). A longitudinal study of multi-word constructions in L2 academic writing: the effects of frequency and dispersion. Reading and Writing. <https://doi.org/10.1007/s11145-020-10108-3>

* [**treeio**](https://docs.ropensci.org/treeio) in Chak, S. T. C., Baeza, J. A., & Barden, P. (2020). Eusociality Shapes Convergent Patterns of Molecular Evolution across Mitochondrial Genomes of Snapping Shrimps. Molecular Biology and Evolution. <https://doi.org/10.1093/molbev/msaa297>

* [**treeio**](https://docs.ropensci.org/treeio) in Wagner, E., Zaiser, A., Leitner, R., Quijada, N. M., Pracser, N., Pietzka, A., … Rychli, K. (2020). Virulence characterization and comparative genomics of Listeria monocytogenes sequence type 155 strains. BMC Genomics, 21(1). <https://doi.org/10.1186/s12864-020-07263-w>

* [**UCSCXenaTools**](https://docs.ropensci.org/UCSCXenaTools) in Gvaldin, D. Y., Pushkin, A. A., Timoshkina, N. N., Rostorguev, E. E., Nalgiev, A. M., & Kit, O. I. (2020). Integrative analysis of mRNA and miRNA sequencing data for gliomas of various grades. Egyptian Journal of Medical Human Genetics, 21(1). <https://doi.org/10.1186/s43042-020-00119-8>

* **monkeylearn** in Dawson, H. A., & Allison, M. (2021). Requirements for Autonomous Underwater Vehicles (AUVs) for scientific data collection in the Laurentian Great Lakes: A questionnaire survey. Journal of Great Lakes Research, 47(1), 259–265. <https://doi.org/10.1016/j.jglr.2020.11.004>

Thank you for citing our tools!

## Use cases



Nine use cases of our packages and resources have been reported since the 1st of January.

* [Using terrainr to retrieve spatial data and make 3D landscape visualizations](https://discuss.ropensci.org/t/using-terrainr-to-retrieve-spatial-data-and-make-3d-landscape-visualizations/2385). Reported by Michael Mahoney.

* [Using dittodb to test database queries](https://discuss.ropensci.org/t/using-dittodb-to-test-database-queries/2322). Reported by Gordon Shotwell.

* [Mapping collaborations in Neotropical Taxonomy with refsplitr](https://discuss.ropensci.org/t/mapping-collaborations-in-neotropical-taxonomy-with-refsplitr/2353). Reported by Emilio M Bruna.

* [Use gert to scan all git repos in a directory](https://discuss.ropensci.org/t/use-gert-to-scan-all-git-repos-in-a-directory/2332). Reported by Danielle Navarro.

* [Shiny apps to search #rstudioglobal or #rstats tweets with rtweet](https://discuss.ropensci.org/t/shiny-apps-to-search-rstudioglobal-or-rstats-tweets-with-rtweet/2324). Reported by Sharon Machlis.

* [pdftools for extracting complex (e.g. text-wrapped/multiline) tables from pdfs](https://discuss.ropensci.org/t/pdftools-for-extracting-complex-e-g-text-wrapped-multiline-tables-from-pdfs/2327). Reported by Lizlaw.

* [Getting and plotting weather and climate data](https://discuss.ropensci.org/t/getting-and-plotting-weather-and-climate-data/2320). Reported by Alex Koiter.

* [Using ghql to analyze all my 2020 GitHub commits](https://discuss.ropensci.org/t/using-ghql-to-analyze-all-my-2020-github-commits/2315). Reported by Frie.

* [Scraping liked posts on Twitter using rtweet](https://discuss.ropensci.org/t/scraping-liked-posts-on-twitter-using-rtweet/2294). Reported by Isabella Velásquez.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call For maintainers

There's no open call for new maintainers at this point but you can refer to our [contributing guide](https://contributing.ropensci.org/) for finding ways to get involved!
As the maintainer of an rOpenSci package, feel free to contact us on Slack or email `info@ropensci.org` to get your call for maintainer featured in the next newsletter.

<!--IF CALL
* [our guidance on _Changing package maintainers_](https://devguide.ropensci.org/changing-maintainers.html)
* [our _Package Curation Policy_](https://devguide.ropensci.org/curationpolicy.html)

IF NO CALL
There's no open call for new maintainers at this point but you can refer to our [contributing guide](https://contributing.ropensci.org/) for finding ways to get involved!
As the maintainer of an rOpenSci package, feel free to contact us on Slack or email `info@ropensci.org` to get your call for maintainer featured in the next newsletter. -->

## Package development corner

Some useful tips for R package developers. :eyes:

Do you have some questions around **licensing of your R package**?
The [license chapter](https://r-pkgs.org/license.html) of the R packages book by Hadley Wickham and Jenny Bryan was [recently](https://twitter.com/hadleywickham/status/1307338435976364032) updated.
A less recent but interesting read is [Colin Fay's Licensing R e-book](https://thinkr-open.github.io/licensing-r/index.html).

**Encoding** can also be a tricky topic for package developers.
Useful resources include [Kevin Ushey's blog post "String encoding and R"](http://kevinushey.github.io/blog/2018/02/21/string-encoding-and-r/), [Irene Steves' blog post "Encoding in R"](https://irene.rbind.io/post/encoding-in-r/), searching for encoding in ["Writing R Extensions"](https://cran.r-project.org/doc/manuals/r-release/R-exts.html#Encoding) (e.g. "_If the DESCRIPTION file is not entirely in ASCII it should contain an ‘Encoding’ field specifying an encoding. This is used as the encoding of the DESCRIPTION file itself and of the R and NAMESPACE files, and as the default encoding of .Rd files._"), some [threads of R-package-devel](https://www.mail-archive.com/r-package-devel@r-project.org/msg06536.html).

Afraid to forget something when you **submit your package to CRAN**?
A check list could help!
You can use [`usethis::use_release_issue()`](https://usethis.r-lib.org/reference/use_release_issue.html), [number one "secret" [of the tidyverse team] for avoiding multiple rounds of review with CRAN](https://twitter.com/hadleywickham/status/1359852335330164737).
Now, if you want to add your own specific bullet e.g. ["Update my brag document"](https://jvns.ca/blog/brag-documents/) or ["Consider writing a tech note for rOpenSci blog"](https://blogguide.ropensci.org/index.html), you can add an [unexported `release_bullets()` function](https://github.com/r-lib/usethis/issues/1183) returning a character vector to your package.

```r
release_bullets <- function() {
  c(
    "Update my brag document.",
    "Contact rOpenSci blog editors to schedule a tech note."
  )
}
```

For inspiration you can search the [CRAN mirror maintained by R-hub](https://github.com/search?p=2&q=release_bullets&type=Code).
For more resources around CRAN, see [Isabella Velásquez's post "You CRAN Do It, What CRAN First-Timers Should Know"](https://ivelasq.rbind.io/blog/you-cran-do-it/).

## Last words

Thanks for reading! If you want to want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or other things like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
