---
slug: "news-august-2026"
title: rOpenSci News Digest, August 2026
author:
  - The rOpenSci Team
date: '2026-08-28'
tags:
  - newsletter
description: Champions Program; R-Universe update; Quinceañera; new packages and package news
params:
  last_newsletter: '2026-06-30'
  doi: "10.59350/4chwm-mtm35"
rmd_hash: bd6046ecdfe4126f

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2026/08/28/news-august-2026). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Champions Program update

Our Champions are making great progress! 🌟 They've now completed the training on good open source software development practices, package development, and peer review, and are moving on to explore community building and communications. Meanwhile, mentoring is underway with monthly meetings helping Champions move their projects forward. We're already starting to see some exciting results: first versions of packages are taking shape, and some Champions will soon be sharing their work at LatinR! Stay tuned for more updates as their projects continue to grow! 🚀

### R-Universe updates

:muscle: R-Universe has started building and checking packages for Windows ARM64. Read more in our [tech note](/blog/2026/08/06/r-universe-winarm/).

:dna: R-Universe is now part of the infrastructure of the [Bioconductor submission process](https://blog.bioconductor.org/posts/2026-06-15-new-submission-process-with-Runiverse/).

## We're still celebrating our 15th anniversary! 🎉

In July, we started to share stories from members of our community about their experiences with rOpenSci. Our first story features [Eunseop Kim](/author/eunseop-kim/) and his connection with rOpenSci. Read it on our blog: [From Peer Review to Mentorship: My rOpenSci Story](/blog/2026/07/14/15yo-eunseop-kim/) Stay tuned for more stories from our community as we continue celebrating 15 years of rOpenSci!

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

- Tuesday September 1st, 14:00 Europe Central (12:00 UTC) ["Getting to Know SORTEE"](/events/coworking-2026-09/), with [Steffi LaZerte](/author/steffi-lazerte) and co-host [Ed Ivimey-Cook](/author/ed-ivimey-cook/).

  - Visit [SORTEE](https://sortee.org/) (Society for Open, Reliable, and Transparent Ecology and Evolutionary Biology).
  - Meet co-host, Ed Ivimey-Cook, and learn more about SORTEE and how you might get involved.

- Tuesday October 6th, 09:00 Americas Pacific (16:00 UTC) ["Writing Tests & Testing in R"](/events/), with [Yanina Bellini Saibene](/author/yanina-bellini-saibene) and co-host Olivier Leroy.

  - Explore how to write tests for R and add some tests to your work or packages
  - Meet co-host, Olivier Leroy, and chat about testing

- Tuesday November 3rd, 09:00 Australia Western (01:00 UTC) [TBA](/events/), with [Steffi LaZerte](/author/steffi-lazerte) and co-host TBA.

- Tuesday December 8th, 14:00 Europe Central (12:00 UTC) ["Code Linting in R"](/events/), with [Steffi LaZerte](/author/steffi-lazerte) and co-host [Etienne Bacher](/author/etienne-bacher/).

  - Read up on Code Linting and apply some linters to your R code
  - Meet co-host, Etienne Bacher, and discuss code linting in general, or flir and Jarl in particular \* Note that December coworking is a week later than usual

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:





The following four packages recently became a part of our software suite:



- [lakefetch](https://docs.ropensci.org/lakefetch), developed by Jeremy Lynch Farrell: Calculates fetch (open water distance) and wave exposure metrics for lake sampling points. Downloads lake boundaries from OpenStreetMap, calculates directional fetch using a ray-casting approach, and optionally integrates National Hydrography Dataset (NHD) data <https://www.usgs.gov/national-hydrography> for hydrological context including outlet and inlet locations. Can estimate lake depth from surface area using empirical relationships, and integrate historical weather data for cumulative wave energy calculations. Includes an optional interactive shiny application for visualization. It has been [reviewed](https://github.com/ropensci/software-review/issues/762) by Jorrit Mesman and Kelly Hondula.

- [galamm](https://docs.ropensci.org/galamm), developed by Øystein Sørensen: Estimates generalized additive latent and mixed models using maximum marginal likelihood, as defined in Sorensen et al. (2023) <https://doi.org/10.1007/s11336-023-09910-z>, which is an extension of Rabe-Hesketh and Skrondal (2004)s unifying framework for multilevel latent variable modeling <https://doi.org/10.1007/BF02295939>. Efficient computation is done using sparse matrix methods, Laplace approximation, and automatic differentiation. The framework includes generalized multilevel models with heteroscedastic residuals, mixed response types, factor loadings, smoothing splines, crossed random effects, and combinations thereof. Syntax for model formulation is close to lme4 (Bates et al. (2015) <https://doi.org/10.18637/jss.v067.i01>) and PLmixed' (Rockwood and Jeon (2019) <https://doi.org/10.1080/00273171.2018.1516541>). It has been [reviewed](https://github.com/ropensci/software-review/issues/615) by Nicholas Clark and David Lawrence Miller.

- [EpiStrainDynamics](https://docs.ropensci.org/EpiStrainDynamics), developed by Saras Windecker together with Oliver Eales, James McCaw, and Freya Shearer: EpiStrainDynamics is a statistical framework developed for inferring temporal trends of multiple pathogens from routinely collected surveillance data. It has been [reviewed](https://github.com/ropensci/software-review/issues/763) by Sangeeta Bhatia and Joshua Lambert.

- [RAMEN](https://docs.ropensci.org/RAMEN), developed by Erick I. Navarro-Delgado together with Keegan Korthauer and Michael S. Kobor: Using population data, RAMEN identifies which genetic (G), environmental (E), additive (G+E) or interaction (GxE) model better explains DNA methylation levels in genome-wide locations with high DNA methylation variability. It has been [reviewed](https://github.com/ropensci/software-review/issues/743) by Lluís Revilla Sancho and Ulduz Vafadarshamasbi.

  

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions





The following twenty-five packages have had an update since the last newsletter: [DataSpaceR](https://docs.ropensci.org/DataSpaceR "Interface to the CAVD DataSpace") ([`v1.0.2`](https://github.com/ropensci/DataSpaceR/releases/tag/v1.0.2)), [RAMEN](https://docs.ropensci.org/RAMEN "RAMEN: Regional Association of Methylome variability with the Exposome and geNome") ([`v2.1.1`](https://github.com/ropensci/RAMEN/releases/tag/v2.1.1)), [frictionless](https://docs.ropensci.org/frictionless "Read and Write Frictionless Data Packages") ([`v1.3.0`](https://github.com/frictionlessdata/frictionless-r/releases/tag/v1.3.0)), [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (CFF) Metadata") ([`v1.4.2`](https://github.com/ropensci/cffr/releases/tag/v1.4.2)), [nodbi](https://docs.ropensci.org/nodbi "Document NoSQL Database DBI Connector") ([`v0.15.0`](https://github.com/ropensci/nodbi/releases/tag/v0.15.0)), [reviser](https://docs.ropensci.org/reviser "Analyzing Revisions in Real-Time Time Series Vintages") ([`v0.2.0`](https://github.com/ropensci/reviser/releases/tag/v0.2.0)), [writexl](https://docs.ropensci.org/writexl "Export Data Frames to Excel xlsx Format") ([`v2.0.1`](https://github.com/ropensci/writexl/releases/tag/v2.0.1)), [rangr](https://docs.ropensci.org/rangr "Mechanistic Simulation of Species Range Dynamics") ([`v1.0.10`](https://github.com/ropensci/rangr/releases/tag/v1.0.10)), [lightr](https://docs.ropensci.org/lightr "Read Spectrometric Data and Metadata") ([`v2.1.0`](https://github.com/ropensci/lightr/releases/tag/v2.1.0)), [gert](https://docs.ropensci.org/gert "Simple Git Client for R") ([`v2.4.1`](https://github.com/r-lib/gert/releases/tag/v2.4.1)), [c14bazAAR](https://docs.ropensci.org/c14bazAAR "Download and Prepare C14 Dates from Different Source Databases") ([`5.3.0`](https://github.com/ropensci/c14bazAAR/releases/tag/5.3.0)), [landscapetools](https://docs.ropensci.org/landscapetools "Landscape Utility Toolbox") ([`v0.6.3`](https://github.com/ropensci/landscapetools/releases/tag/v0.6.3)), [comtradr](https://docs.ropensci.org/comtradr "Interface with the United Nations Comtrade API") ([`v1.0.6`](https://github.com/ropensci/comtradr/releases/tag/v1.0.6)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.26`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.26)), [textreuse](https://docs.ropensci.org/textreuse "Detect Text Reuse and Document Similarity") ([`v1.0.2`](https://github.com/ropensci/textreuse/releases/tag/v1.0.2)), [sofa](https://docs.ropensci.org/sofa "Connector to CouchDB") ([`v0.4.2`](https://github.com/ropensci/sofa/releases/tag/v0.4.2)), [pkgstats](https://docs.ropensci.org/pkgstats "Metrics of R Packages") ([`v0.2.4`](https://github.com/ropensci-review-tools/pkgstats/releases/tag/v0.2.4)), [refsplitr](https://docs.ropensci.org/refsplitr "author name disambiguation, author georeferencing, and mapping of coauthorship networks with Web of Science data") ([`v1.2.3`](https://github.com/ropensci/refsplitr/releases/tag/v1.2.3)), [npi](https://docs.ropensci.org/npi "Access the U.S. National Provider Identifier Registry API") ([`v0.3.0`](https://github.com/ropensci/npi/releases/tag/v0.3.0)), [rerddap](https://docs.ropensci.org/rerddap "General Purpose Client for ERDDAP™ Servers") ([`v1.3.0`](https://github.com/ropensci/rerddap/releases/tag/v1.3.0)), [stantargets](https://docs.ropensci.org/stantargets "Targets for Stan Workflows") ([`0.1.3`](https://github.com/ropensci/stantargets/releases/tag/0.1.3)), [openalexR](https://docs.ropensci.org/openalexR "Getting Bibliographic Records from OpenAlex Database Using DSL API") ([`v3.1.0`](https://github.com/ropensci/openalexR/releases/tag/v3.1.0)), [ernest](https://docs.ropensci.org/ernest "A Toolkit for Nested Sampling") ([`v1.2.5`](https://github.com/ropensci/ernest/releases/tag/v1.2.5)), [mregions2](https://docs.ropensci.org/mregions2 "Access Data from Marineregions.org: Gazetteer & Data Products") ([`v1.1.3`](https://github.com/ropensci/mregions2/releases/tag/v1.1.3)), and [spiro](https://docs.ropensci.org/spiro "Manage Data from Cardiopulmonary Exercise Testing") ([`v0.2.4`](https://github.com/ropensci/spiro/releases/tag/v0.2.4)).

## Software Peer Review



There are eighteen recently closed and active submissions and 5 submissions on hold. Issues are at different stages:

- Five at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

  - [EpiStrainDynamics](https://github.com/ropensci/software-review/issues/763), Infer temporal trends of multiple pathogens. Submitted by [Saras Windecker](https://www.smwindecker.com). (Stats).

  - [lakefetch](https://github.com/ropensci/software-review/issues/762), Calculate Fetch and Wave Exposure for Lake Sampling Points. Submitted by [jeremylfarrell](https://github.com/jeremylfarrell).

  - [RAMEN](https://github.com/ropensci/software-review/issues/743), RAMEN: Regional Association of Methylome variability with the Exposome and geNome. Submitted by [Erick Navarro-Delgado](https://erick-navarrodelgado.netlify.app).

  - [priorsense](https://github.com/ropensci/software-review/issues/704), Prior Diagnostics and Sensitivity Analysis. Submitted by [Noa Kallioinen](https://github.com/n-kall). (Stats).

  - [galamm](https://github.com/ropensci/software-review/issues/615), Generalized Additive Latent and Mixed Models. Submitted by [Øystein Sørensen](https://osorensen.no). (Stats).

- One at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%225/awaiting-reviewer(s)-response%22):

  - [RAQSAPI](https://github.com/ropensci/software-review/issues/744), A Simple Interface to the US EPA Air Quality System Data Mart API. Submitted by [mccroweyclinton-EPA](https://github.com/mccroweyclinton-EPA).

- Three at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

  - [ciecl](https://github.com/ropensci/software-review/issues/765), International Classification of Diseases ICD-10/ICD-11 for Chile. Submitted by [Rodolfo Tasso](https://github.com/Rodotasso).

  - [rcrisp](https://github.com/ropensci/software-review/issues/718), Automate the Delineation of Urban River Spaces. Submitted by [Claudiu Forgaci](https://github.com/cforgaci). (Stats).

  - [coevolve](https://github.com/ropensci/software-review/issues/717), Fit Bayesian Generalized Dynamic Phylogenetic Models using Stan. Submitted by [Scott Claessens](https://scottclaessens.github.io/). (Stats).

- Two at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

  - [brapiR2](https://github.com/ropensci/software-review/issues/792), A Tidyverse-Native Client for the BrAPI v2 (Breeding API) Specification. Submitted by [Ayo](https://orcid.org/0009-0007-1642-0172).

  - [ibger](https://github.com/ropensci/software-review/issues/787), Access the IBGE Aggregate Data API from R. Submitted by [Andre Leite Wanderley](https://castlab.org).

- Three at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%222/seeking-reviewer(s)%22):

  - [grumpy](https://github.com/ropensci/software-review/issues/775), Read NumPy .npy and .npz Files. Submitted by [Hugo Gruson](https://hugogruson.fr/).

  - [tezr](https://github.com/ropensci/software-review/issues/774), Access Thesis Metadata from Turkiye's National Thesis Center. Submitted by [Emrah Er](https://emraher.com).

  - [rfastlowess](https://github.com/ropensci/software-review/issues/769), High-Performance LOWESS Smoothing for R. Submitted by [Amir Valizadeh](https://github.com/thisisamirv). (Stats).

- Four at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

  - [camtrapReport](https://github.com/ropensci/software-review/issues/799), Camera-Trap Report Generator. Submitted by [Elham Ebrahimi](https://www.uu.nl/staff/EEbrahimi).

  - [nert](https://github.com/ropensci/software-review/issues/785), Curated Access to TERN Environmental Raster Data. Submitted by [Max Moldovan](https://scholar.google.com.au/citations?user=zG1uKrcAAAAJ&hl=en).

  - [OptSurvCutR](https://github.com/ropensci/software-review/issues/777), Optimal Survival Cut-Point Discovery for Time-to-Event Analysis with OptSurvCutR. Submitted by [Payton Yau](https://github.com/paytonyau). (Stats).

  - [HydraR](https://github.com/ropensci/software-review/issues/766), Stateful Agentic Orchestration for Scientific Reproducibility. Submitted by [Ignatius Pang](https://www.mq.edu.au/research/research-centres-groups-and-facilities/facilities/australian-proteome-analysis-facility).

    

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Software Review

- [From Peer Review to Mentorship: My rOpenSci Story](/blog/2026/07/14/15yo-eunseop-kim) by Eunseop Kim. From submitting a package, to reviewing one, to mentoring a Champion: my path with rOpenSci.

- [FOSS Tools for Lazy Editors](/blog/2026/07/02/editor-tools) by Steffi LaZerte. How we streamlined the editing of our blog posts using 4 open-source tools that you could adopt too.

- [The Journey of {nycOpenData}: From Classroom to Community](/blog/2026/08/06/the-journey-of-nycopendata-from-classroom-to-community) by Christian Martinez.

- [From Census Data to Demographic Analysis with ARcenso: A Reproducible Workflow in R](/blog/2026/08/10/analisis-demografico-con-arcenso) by Andrea Gomez Vargas and Emanuel Ciardullo. How to Access and Process the 1970 and 1980 Argentine Censuses Using R. Other languages: <a href='/es/blog/2026/08/10/analisis-demografico-con-arcenso' lang='es'>De datos censales a análisis demográficos con ARcenso: un flujo de trabajo reproducible en R (es)</a>.

{{< figure class="center" src="https://ropensci.org/es/blog/2026/08/10/analisis-demografico-con-arcenso/portada-blog.es.png" alt="Hex logo de ARcenso sobre documentos históricos de censos argentinos de 1970 y 1980" width="400" >}}


### Tech Notes

- [An API for Everything There Is to Know About Packages](/blog/2026/07/08/r-universe-apis-use-cases) by Maëlle Salmon. Use cases of the R-Universe APIs.

- [Windows ARM64 comes to R-universe](/blog/2026/08/06/r-universe-winarm) by Jeroen Ooms.



## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

- [charlatan](https://docs.ropensci.org/charlatan), create fake data in R. [Issue for volunteering](https://github.com/ropensci/charlatan/issues/150).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful information for R package developers. :eyes:

### From Rd files to Quarto

Edgar Ruiz from Posit released [pkgsite](https://opensource.posit.co/blog/2026-06-18_pkgsite-0-1-0/), a package for converting your package's `.Rd` files to Quarto. It creates qmd files that you can integrate as you want in a Quarto website.

### Mutation testing, fuzzy testing

First of all, a reminder in case you confuse the two concepts...

👽️ Mutation testing: you run tests on mutated version of the *code*.

🚮 Fuzzy testing: you run tests with all sorts of *inputs* to the code.

At useR! 2026, both topics were covered:

- mutation testing in [Beyond Code Coverage: Mutation Testing in R with mutator](https://docs.google.com/presentation/d/1T5iK0gRBFF869Q6eirtmYVV-5ABD4EN-WBJI5gl5EUY/edit?slide=id.g3efebd0f55a_0_99#slide=id.g3efebd0f55a_0_99) by Assanali Amandykov, Pierre Donat-Bouillud.
- fuzzy testing in [Fuzz-testing R-based research software for robustness](https://events.digital-research.academy/event/109/contributions/430/attachments/187/407/slides-v2.pdf) by Marco Colombo.

### roxyreqs

Also at useR!, Moritz Lang and collaborators introduced [roxyreqs](https://github.com/mnlang/roxyreqs), a package for adding roxygen2-like documentation to testthat. [Slides](https://events.digital-research.academy/event/109/contributions/471/attachments/69/201/roxyreqs-user2026.pdf).

### checktor, a new helper for CRAN submissions

If you want to submit your package to CRAN, you can get help through the [CRAN cookbook](https://contributor.r-project.org/cran-cookbook/), the [collaborative list maintained by ThinkR](https://github.com/ThinkR-open/prepare-for-cran) and now a new package, checktor by James Balamuta! Read more in [James' post](https://blog.thecoatlessprofessor.com/programming/r/the-check-passed-the-reviewer-didnt/).

### Interesting AI reads

- [Recommendations When Using LLM-backed Generative AI Systems for FOSS Contributions](https://sfconservancy.org/llm-gen-ai/llm-backed-generative-ai-recommendations.html) by Software Freedom Conservancy, shared by Will Gearty.
- [Who cleans up after the vibe-coding party?](https://www.ft.com/content/cec8df9e-b43b-4cd1-8feb-c07e804e8d33) by Sam Learner in the Financial Times.
- [AI Tooling and Open Source](https://niccrane.com/posts/ai-tooling-open-source/) in which Nic Crane discusses "how AI tooling affects open source, the actions maintainers have been taking to address the less positive aspects, and emerging policies that open source projects are implementing around the topic of AI-generated pull requests".

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org). This guide will help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways such as through sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so though our signup form](/news/). Until it's time for our next newsletter, you can keep in touch with us through our [website](/), [Mastodon](https://hachyderm.io/@rOpenSci), or [LinkedIn](https://www.linkedin.com/company/ropensci/). See you soon!





