---
slug: "news-august-2026"
title: rOpenSci News Digest, August 2026
author:
  - The rOpenSci Team
date: '2026-08-28'
tags:
  - newsletter
description: New editors; champions program; Sovereign Tech Fellowship; Quinceañera; new packages and package news
params:
  last_newsletter: '2026-06-30'
  doi: "10.59350/4chwm-mtm35"
rmd_hash: 7405f4fe4d6e7df9

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2026/08/28/news-august-2026). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Champions Program update

Our Champions are making great progress! 🌟 

They’ve now completed the training on good open source software development practices, package development, and peer review, and are moving on to explore community building and communications.

Meanwhile, mentoring is underway, with monthly meetings helping Champions move their projects forward. We’re already starting to see some exciting results: first versions of packages are taking shape, and some Champions will soon be sharing their work at LatinR!

Stay tuned for more updates as their projects continue to grow! 🚀

### R-Universe updates

:muscle: R-universe has started building and checking packages for Windows ARM64. Read more in our [tech note](/blog/2026/08/06/r-universe-winarm/).

:dna: R-universe is now part of the infrastructure of the [Bioconductor submission process](https://blog.bioconductor.org/posts/2026-06-15-new-submission-process-with-Runiverse/).

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

- Tuesday September 1st, 14:00 Europe Central (12:00 UTC) ["Getting to Know SORTEE"](/events/coworking-2026-09/), with [Steffi LaZerte](/author/steffi-lazerte) and cohost [Ed Ivimey-Cook](/author/ed-ivimey-cook/).
  - Visit [SORTEE](https://sortee.org/) (Society for Open, Reliable, and Transparent Ecology and Evolutionary Biology).
  - Meet co-host, Ed Ivimey-Cook, and learn more about SORTEE and how you might get involved.

And remember, you can always cowork independently on work related to R, work on packages that tend to be neglected, or work on what ever you need to get done!

## Software :package:





The following two packages recently became a part of our software suite:



- [pvEBayes](https://docs.ropensci.org/pvEBayes), developed by Yihao Tan together with Marianthi Markatou, Saptarshi Chakraborty, and Raktim Mukhopadhyay: A suite of empirical Bayes methods to use in pharmacovigilance. Contains various model fitting and post-processing functions. For more details see Tan et al. (2025) <https://doi.org/10.1002/sim.70195>, <https://doi.org/10.48550/arXiv.2512.01057>; Koenker and Mizera (2014) <https://doi.org/10.1080/01621459.2013.869224>; Efron (2016) <https://doi.org/10.1093/biomet/asv068>. It has been [reviewed](https://github.com/ropensci/software-review/issues/760) by Kathryn Doering and Collin Cademartori.

- [nycOpenData](https://docs.ropensci.org/nycOpenData), developed by Christian Martinez: Provides a unified set of helper functions to access datasets from the NYC Open Data platform <https://opendata.cityofnewyork.us/>. Functions return results as tidy tibbles and support optional filtering, sorting, and row limits via the Socrata API. The package includes endpoints for 311 service requests, DOB job applications, juvenile justice metrics, school safety, environmental data, event permitting, and additional citywide datasets. It has been [reviewed](https://github.com/ropensci/software-review/issues/750) by Haolin Dong and Michael Pascale.

  

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions





The following seventeen packages have had an update since the last newsletter: [weathercan](https://docs.ropensci.org/weathercan "Download Weather Data from Environment and Climate Change Canada") ([`v1.0.0`](https://github.com/ropensci/weathercan/releases/tag/v1.0.0)), [occCite](https://docs.ropensci.org/occCite "Querying and Managing Large Biodiversity Occurrence Datasets") ([`v0.6.2`](https://github.com/ropensci/occCite/releases/tag/v0.6.2)), [lightr](https://docs.ropensci.org/lightr "Read Spectrometric Data and Metadata") ([`v2.0.0`](https://github.com/ropensci/lightr/releases/tag/v2.0.0)), [gutenbergr](https://docs.ropensci.org/gutenbergr "Download and Process Public Domain Works from Project Gutenberg") ([`v0.5.2`](https://github.com/ropensci/gutenbergr/releases/tag/v0.5.2)), [slopes](https://docs.ropensci.org/slopes "Calculate Slopes of Roads, Rivers and Trajectories") ([`v2.0.0`](https://github.com/ropensci/slopes/releases/tag/v2.0.0)), [qualtRics](https://docs.ropensci.org/qualtRics "Download Qualtrics Survey Data") ([`v3.3.0`](https://github.com/ropensci/qualtRics/releases/tag/v3.3.0)), [srr](https://docs.ropensci.org/srr "rOpenSci Software Review Roclets") ([`v1.0.0`](https://github.com/ropensci-review-tools/srr/releases/tag/v1.0.0)), [goodpractice](https://docs.ropensci.org/goodpractice "Advice on R Package Building") ([`v1.1`](https://github.com/ropensci-review-tools/goodpractice/releases/tag/v1.1)), [pkgmatch](https://docs.ropensci.org/pkgmatch "Find R Packages Matching Either Descriptions or Other R Packages") ([`v0.5.4`](https://github.com/ropensci-review-tools/pkgmatch/releases/tag/v0.5.4)), [pkgstats](https://docs.ropensci.org/pkgstats "Metrics of R Packages") ([`v0.2.3`](https://github.com/ropensci-review-tools/pkgstats/releases/tag/v0.2.3)), [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (CFF) Metadata for R Packages") ([`v1.4.1`](https://github.com/ropensci/cffr/releases/tag/v1.4.1)), [dfms](https://docs.ropensci.org/dfms "Dynamic Factor Models") ([`v1.0.1`](https://github.com/ropensci/dfms/releases/tag/v1.0.1)), [osmdata](https://docs.ropensci.org/osmdata "Import OpenStreetMap Data as Simple Features or Spatial Objects") ([`v0.4.0`](https://github.com/ropensci/osmdata/releases/tag/v0.4.0)), [aRxiv](https://docs.ropensci.org/aRxiv "Interface to the arXiv API") ([`0.20`](https://github.com/ropensci/aRxiv/releases/tag/0.20)), [Athlytics](https://docs.ropensci.org/Athlytics "A Reproducible Framework for Endurance Data Analysis") ([`v1.0.6`](https://github.com/ropensci/Athlytics/releases/tag/v1.0.6)), [ReLTER](https://docs.ropensci.org/ReLTER "An Interface for the eLTER Community") ([`3.1.1`](https://github.com/ropensci/ReLTER/releases/tag/3.1.1)), and [read.abares](https://docs.ropensci.org/read.abares "Read Australian Agricultural Data from Government Agencies") ([`v3.0.0`](https://github.com/ropensci/read.abares/releases/tag/v3.0.0)).

The writexl package has a [new maintainer](https://github.com/ropensci/writexl/pull/98#issuecomment-4191858158), Bill Denney. NLMR is now maintained by [Jakub Nowosad](https://github.com/ropensci/NLMR/issues/116#issuecomment-4280937012).

## Software Peer Review



There are eighteen recently closed and active submissions and 4 submissions on hold. Issues are at different stages:

- Four at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%226/approved%22):

  - [pvEBayes](https://github.com/ropensci/software-review/issues/760), Empirical Bayes Methods for Pharmacovigilance. Submitted by [Yihao Tan](https://github.com/YihaoTancn). (Stats).

  - [nycOpenData](https://github.com/ropensci/software-review/issues/750), Convenient Access to NYC Open Data API Endpoints. Submitted by [Christian Martinez](https://github.com/martinezc1).

  - [ernest](https://github.com/ropensci/software-review/issues/730), A Toolkit for Nested Sampling. Submitted by [Kyle Dewsnap](https://github.com/kylesnap). (Stats).

  - [pkgmatch](https://github.com/ropensci/software-review/issues/671), Find R Packages Matching Either Descriptions or Other R Packages. Submitted by [mark padgham](https://mpadge.github.io).

- Two at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%225/awaiting-reviewer(s)-response%22):

  - [lakefetch](https://github.com/ropensci/software-review/issues/762), Calculate Fetch and Wave Exposure for Lake Sampling Points. Submitted by [jeremylfarrell](https://github.com/jeremylfarrell).

  - [priorsense](https://github.com/ropensci/software-review/issues/704), Prior Diagnostics and Sensitivity Analysis. Submitted by [Noa Kallioinen](https://github.com/n-kall). (Stats).

- Five at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%224/review(s)-in-awaiting-changes%22):

  - [RAQSAPI](https://github.com/ropensci/software-review/issues/744), A Simple Interface to the US EPA Air Quality System Data Mart API. Submitted by [mccroweyclinton-EPA](https://github.com/mccroweyclinton-EPA).

  - [RAMEN](https://github.com/ropensci/software-review/issues/743), RAMEN: Regional Association of Methylome variability with the Exposome and geNome. Submitted by [Erick Navarro-Delgado](https://erick-navarrodelgado.netlify.app).

  - [logolink](https://github.com/ropensci/software-review/issues/741), An Interface for Running NetLogo Simulations. Submitted by [Daniel Vartanian](https://danielvartan.com).

  - [rcrisp](https://github.com/ropensci/software-review/issues/718), Automate the Delineation of Urban River Spaces. Submitted by [Claudiu Forgaci](https://github.com/cforgaci). (Stats).

  - [galamm](https://github.com/ropensci/software-review/issues/615), Generalized Additive Latent and Mixed Models. Submitted by [Øystein Sørensen](https://osorensen.no). (Stats).

- Two at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%223/reviewer(s)-assigned%22):

  - [ciecl](https://github.com/ropensci/software-review/issues/765), International Classification of Diseases ICD-10/ICD-11 for Chile. Submitted by [Rodolfo Tasso](https://github.com/Rodotasso).

  - [EpiStrainDynamics](https://github.com/ropensci/software-review/issues/763), Infer temporal trends of multiple pathogens. Submitted by [Saras Windecker](https://www.smwindecker.com). (Stats).

- Two at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%222/seeking-reviewer(s)%22):

  - [fcmconfr](https://github.com/ropensci/software-review/issues/740), Fuzzy Cognitive Map Analysis in R. Submitted by [benroston](https://github.com/bhroston). (Stats).

  - [coevolve](https://github.com/ropensci/software-review/issues/717), Fit Bayesian Generalized Dynamic Phylogenetic Models using Stan. Submitted by [Scott Claessens](https://scottclaessens.github.io/). (Stats).

- Three at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A%221/editor-checks%22):

  - [grumpy](https://github.com/ropensci/software-review/issues/775), Read NumPy .npy and .npz Files. Submitted by [Hugo Gruson](https://hugogruson.fr/).

  - [metasurvey](https://github.com/ropensci/software-review/issues/752), Reproducible Survey Data Processing with Step Pipelines. Submitted by [Mauro Loprete](https://github.com/mauroloprete).

  - [LBDiscoverAnalysis](https://github.com/ropensci/software-review/issues/725), Co-occurrence Discovery Models and Visualization for Biomedical LBD. Submitted by [Chao Liu](https://github.com/chaoliu-cl).

    

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



### Software Review

- [Ronny Hernandez Mora, Joel Nitta, and Nick Tierney Join rOpenSci Software Peer Review Editorial Team](/blog/2026/06/11/neweditorsQ22026) by Ronny Hernandez Mora, Joel Nitta, Nicholas Tierney, and Yanina Bellini Saibene. Introducing three new editors for rOpenSci software peer review.

- [Celebrating Our Maintainers during Maintainers Month](/blog/2026/06/19/maintainers-month) by Yanina Bellini Saibene. A Look Back at our Maintainer Month 2026 social media campaign.

- [Our goodpractice Package Has New Superpowers](/blog/2026/06/01/goodpractice) by Mark Padgham and Athanasia Mo Mowinckel. We have worked hard over the past few months on major upgrades to our goodpractice package. Checks are now grouped into categories, making it easier to control which checks are run. The biggest change has been adding over 100 new checks, from new lints to many new CRAN checks.

- [A New Guide: Organizing Events for First-time Contributors](/blog/2026/06/02/ftc-guide) by Steffi LaZerte and Yanina Bellini Saibene. We introduce our Guide book for organizing events to support first-time contributors to FOSS.

- [Five recent R-universe features you might have missed](/blog/2026/06/07/r-universe-updates) by Jeroen Ooms. In this technote we look at a few recent additions that make R-universe a little nicer, faster, or more convenient to use.

- [Eleven Latin American Voices for Open Science: The New Cohort of Champions rOpenSci 2026](/blog/2026/06/09/champions-2026) by Bastián Olea Herrera, Denisse Fierro Arcos, Durga Valentina Linares Herrera, Evelia Lorena Coss Navarrete, Gladys Choque Ulloa, José Daniel Conejeros, Linda Cabrera Orellana, María Florencia Tames, Marina Cecilia Cock, Patricia A. Loto, Estefania Torrejón, and Yanina Bellini Saibene. Introducing 11 new rOpenSci Champions. Other languages: <a href='/es/blog/2026/06/09/champions-2026' lang='es'>Once voces latinoamericanas para la ciencia abierta: la nueva cohorte de Campeon(a\|e)s rOpenSci 2026 (es)</a>.



## Calls for contributions

### Calls for maintainers

If you're interested in maintaining any of the R packages below, you might enjoy reading our blog post [What Does It Mean to Maintain a Package?](/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).

- [charlatan](https://docs.ropensci.org/charlatan), create fake data in R. [Issue for volunteering](https://github.com/ropensci/charlatan/issues/150).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful information for R package developers. :eyes:

## From Rd files to Quarto

Edgar Ruiz from Posit released [pkgsite](https://opensource.posit.co/blog/2026-06-18_pkgsite-0-1-0/), a package for converting your package's `.Rd` files to Quarto. It creates qmd files that you can integrate as you want in a Quarto website.

## Mutation testing, fuzzy testing

First of all, a reminder in case you confuse the two concepts...

👽️ Mutation testing: you run tests on mutated version of the *code*.

🚮 Fuzzy testing: you run tests with all sorts of *inputs* to the code.

At useR! 2026, both topics were covered:

- mutation testing in [Beyond Code Coverage: Mutation Testing in R with mutator](https://docs.google.com/presentation/d/1T5iK0gRBFF869Q6eirtmYVV-5ABD4EN-WBJI5gl5EUY/edit?slide=id.g3efebd0f55a_0_99#slide=id.g3efebd0f55a_0_99) by Assanali Amandykov, Pierre Donat-Bouillud.
- fuzzy testing in [Fuzz-testing R-based research software for robustness](https://events.digital-research.academy/event/109/contributions/430/attachments/187/407/slides-v2.pdf) by Marco Colombo.

## roxyreqs

Also at useR!, Moritz Lang and collaborators introduced [roxyreqs](https://github.com/mnlang/roxyreqs), a package for adding roxygen2-like documentation to testthat. [Slides](https://events.digital-research.academy/event/109/contributions/471/attachments/69/201/roxyreqs-user2026.pdf).

## checktor, a new helper for CRAN submissions

If you want to submit your package to CRAN, you can get help through the [CRAN cookbook](https://contributor.r-project.org/cran-cookbook/), the [collaborative list maintained by ThinkR](https://github.com/ThinkR-open/prepare-for-cran) and now a new package, checktor by James Balamuta! Read more in [James' post](https://blog.thecoatlessprofessor.com/programming/r/the-check-passed-the-reviewer-didnt/).

## Interesting AI reads

- [Recommendations When Using LLM-backed Generative AI Systems for FOSS Contributions](https://sfconservancy.org/llm-gen-ai/llm-backed-generative-ai-recommendations.html) by Software Freedom Conservancy, shared by Will Gearty.
- [Who cleans up after the vibe-coding party?](https://www.ft.com/content/cec8df9e-b43b-4cd1-8feb-c07e804e8d33) by Sam Learner in the Financial Times.
- [AI Tooling and Open Source](https://niccrane.com/posts/ai-tooling-open-source/) in which Nic Crane discusses "how AI tooling affects open source, the actions maintainers have been taking to address the less positive aspects, and emerging policies that open source projects are implementing around the topic of AI-generated pull requests".

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org). This guide will help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways such as through sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so though our signup form](/news/). Until it's time for our next newsletter, you can keep in touch with us through our [website](/), [Mastodon](https://hachyderm.io/@rOpenSci), or [LinkedIn](https://www.linkedin.com/company/ropensci/). See you soon!





