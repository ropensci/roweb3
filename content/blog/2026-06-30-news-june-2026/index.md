---
slug: "news-june-2026"
title: rOpenSci News Digest, June 2026
author:
  - The rOpenSci Team
date: '2026-06-30'
tags:
  - newsletter
description: New editors; champions program; Sovereign Tech Fellowship; Quinceañera; new packages and package news
params:
  last_newsletter: '2026-05-28'
  doi: "10.59350/312sy-1dt83"
rmd_hash: bbc49c1ca9ee47b3

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2026/06/30/news-june-2026). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### Champions Program update

We have two concurrent cohorts, both in Spanish.

The 2025--2026 cohort is nearing the end of its participation in the program, so we are organizing the closing meeting and the overall evaluation.

The 2026--2027 cohort is continuing their training activities, meeting with their mentors, and starting to work on their packages, and they have been formally introduced on our blog! Read all about the [11 new Champions](/blog/2026/06/09/champions-2026/).

### New editors Ronny Hernandez Mora, Joel Nitta, and Nick Tierney

We're thrilled to [introduce](/blog/2026/06/11/neweditorsq22026/) new editors Ronny Hernandez Mora, Joel Nitta, and Nick Tierney. An official welcome and thank you to all three!

### A new guide: Organizing Events for First-time Contributors

Steffi LaZerte and Yanina Bellini Saibene released a fantastic new rOpenSci guide! Learn how to organize events for first-time contributors such as mini-hackathons and mini-translathons. Read more in the [release announcement](/blog/2026/06/02/ftc-guide/).

### R-Universe updates

"Five recent R-Universe features you might have missed": A clickbait title for a blog post you don't want to miss! :wink: Jeroen Ooms [describes five recent additions](/blog/2026/06/07/r-universe-updates/) to the R-Universe platform:

- Social media cards that actually look good
- PACKAGES.rds support (or: implementing R internals in JavaScript)
- Fancy sort/filter bars in the WebUI
- For the impatient: trigger a sync manually
- Making check results easier to find and share

In other news, R-universe user Tom Palmer also wrote about five things: ["Five tips for managing your R-universe 🚀"](https://remlapmot.github.io/post/2026/runiverse-tips/). You won't believe the fifth one. :wink:

### Yanina Joins the 2026 Sovereign Tech Fellowship

We're excited to share that our Community Manager, Yanina Bellini Saibene, [has been selected as a 2026 Sovereign Tech Fellow](https://www.sovereign.tech/news/meet-the-2026-sovereign-tech-fellows). During the fellowship, she will focus on making open source more accessible through improved contribution guidance, newcomer-focused mini-hackathons, multilingual training resources, and more sustainable localization practices across communities in the R ecosystem. These efforts will build on and extend rOpenSci's work in community building, mentorship, and open science.

### *Quinceañera*: celebrating 15 years together

In June, we held two community events and a co-working session to mark rOpenSci's 15th anniversary. Across all three sessions, people shared memories of their first contribution, discussed ideas for the next 15 years, and reminded us of how genuinely welcoming rOpenSci *and* it's community are. There's more to come :-) Keep an eye out for what we have planned for the rest of the year.

### Software Peer-Review updates

Community member [Athanasia Mo Mowinckel](/author/athanasia-mo-mowinckel/) has started a new AI agent "skills" repo at [`ropensci-review-tools/ropensci-skills`](https://github.com/ropensci-review-tools/ropensci-skills). The repo holds a variety of "skills", which are human-readable markdown files, for AI agents to assist in preparing software for peer-review. Anybody thinking about using AI systems to prepare software for peer-review is encouraged to try out these experimental skills, and to help us improve them for others by opening issues or pull requests in [the GitHub repo](https://github.com/ropensci-review-tools/ropensci-skills).

Our recent updates to the [goodpractice package](/blog/2026/06/01/goodpractice/) have also been enhanced with an all-new AI "skill". [This skill](https://github.com/ropensci-review-tools/goodpractice/blob/main/inst/skills/goodpractice4agents.md) instructs agents to edit and improve your package's code to comply with the full suite of goodpractice checks. You can try it out with the package's new [`use_skill_gp()` function](https://docs.ropensci.org/goodpractice/reference/use_skill_gp.html).

### Coworking

Read [all about coworking](/blog/2023/06/21/coworking/)!

- Tuesday July 7nd 2026, 09:00 Americas Pacific (16:00 UTC) ["Debugging in R"](/events/coworking-2026-07/), with [Yanina Bellini Saibene](/author/yanina-bellini-saibene/) and cohost [Shannon Pileggi](/author/shannon-pileggi).
  - Read up on debugging in R.
  - Meet community host, Shannon Pileggi, and discuss tips and tricks for debugging in R.
- Tuesday August 4th, 09:00 Australia Western (01:00 UTC) ["Vale and Text Linting"](/events/coworking-2026-08/), with [Steffi LaZerte](/author/steffi-lazerte) and cohost [Jonathan Carroll](/author/jonathan-carroll/).
  - Read up on text linting.
  - Setup a linting framework for your projects.
  - Meet co-host, Jonathan Carroll, and discuss Vale and text linting.
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

- [hddtools](https://docs.ropensci.org/hddtools), Tools to discover hydrological data, accessing catalogues and databases from various data providers. [Issue for volunteering](https://github.com/ropensci/hddtools/issues/36).

### Calls for contributions

Refer to our [help wanted page](/help-wanted/) -- before opening a PR, we recommend asking in the issue whether help is still needed.

## Package development corner

Some useful information for R package developers. :eyes:

### goodpractice's new features and behind-the-scene notes

Software Review Lead Mark Padgham and long-time community member [Athanasia Mo Mowinckel](/author/athanasia-mo-mowinckel/) have written a blog post particularly relevant to package developers for two reasons:

- Learn how goodpractice, which helps make your package better, has improved.
- Read how Mark and Mo collaborated, including their use of LLMs in the development process.

### Dumb Ways for an Open Source Project to Die

If you're interested in open-source software projects' survivability, you'll enjoy this [write-up by Andrew Nesbitt](https://nesbitt.io/2026/05/19/dumb-ways-for-an-open-source-project-to-die.html) shared by Yanina Bellini Saibene.

### Refactoring with Jarl: unused functions and more

Hannah Frick and Maëlle Salmon wrote ["Refactoring with Jarl: a coffee chat"](https://blog.r-hub.io/2026/06/02/jarl/) on the R-hub blog.

### A strategy for recovering data on request interruption

Gábor Csárdi summarized [recent changes to the gh package](https://gaborcsardi.org/2026/gh-1-6-0-recover-from-interruption/). Especially interesting is his strategy for [interruptions](https://gaborcsardi.org/2026/gh-1-6-0-recover-from-interruption/#Interrupts): the user starts a long query then interrupts the process... how to not lose the data that's already been received? The solution is to make it accessible through [`rlang::last_error()`](https://rlang.r-lib.org/reference/last_error.html). More details in the [post](https://gaborcsardi.org/2026/gh-1-6-0-recover-from-interruption/#Interrupts).

### curl summer of bliss

The curl project [announced](https://daniel.haxx.se/blog/2026/06/15/curl-summer-of-bliss/) that it will not accept any vulnerability report during the month of July this year. This is both the opportunity for maintainers to take a break, and to advertise paid curl support, in which there will be no interruption of service.

### To conventionally commit or not

Sumner Evans wrote an interesting post [criticizing the conventional commits convention](https://sumnerevans.com/posts/software-engineering/stop-using-conventional-commits/) (starting commits with e.g. `fix:` for bug fixes, `feat:` for new features, etc).

### More than .gitignore

Nelson Figueroa wrote a useful [overview](https://nelson.cloud/.gitignore-isnt-the-only-way-to-ignore-files-in-git/) of the different ways to make Git ignore some files.

### How to work with LLMs without losing your skills

Vicki Boykis wrote an insightful post ["We should be more tired than the model"](https://vickiboykis.com/2026/05/28/we-should-be-more-tired-than-the-model/) including pratical tips such as "Starting to use the agent only after I've spent 20 minutes on the problem" or "Discussing an agent's proposed implementation with another person instead".

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org). This guide will help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways such as through sharing use cases. You can also support our work through [donations](/donate).

If you haven't subscribed to our newsletter yet, you can [do so though our signup form](/news/). Until it's time for our next newsletter, you can keep in touch with us through our [website](/), [Mastodon](https://hachyderm.io/@rOpenSci), or [LinkedIn](https://www.linkedin.com/company/ropensci/). See you soon!





