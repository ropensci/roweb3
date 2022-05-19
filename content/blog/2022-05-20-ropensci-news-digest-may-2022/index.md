---
title: rOpenSci News Digest, May 2022
author:
  - The rOpenSci Team
date: '2022-05-20'
slug: ropensci-news-digest-may-2022
categories: []
tags:
  - newsletter
description: R-universe new features! Co-working sessions. New packages and package news.
output: hugodown::md_document
params:
  last_newsletter: '2022-04-22'
rmd_hash: f979871ba44f32c9

---

<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup! <!-- blabla --> You can read this post [on our blog](/blog/2022/05/20/ropensci-news-digest-may-2022). Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

### R-universe prominently displays more information on packages!

We have extended the [r-universe.dev](https://r-universe.dev) platform to provide even more real-time information and metadata about R packages to help users quickly find and compare relevant software for a given topic, maintainer or organization:

{{< tweet user="opencpu" id="1525063398903402498" >}}

In addition to descriptive information about the package and its authors, the dashboard now shows some basic usage metrics, such as the number of GitHub stars, (transitive) dependencies, and dependents, and an overall score that we use to rank search results (similar to pagerank).

{{< figure src="search.png" alt="Package card on R-universe, including a count of github stars, (transitive) dependencies / dependent packages and an overall score of the package (similar to pagerank)" link="https://r-universe.dev/search/#imputation" >}}

You will see these numbers both in the search results and in package individual pages (we'll be posting a more detailed technote about the search ranking soon).

{{< figure src="vroom1.png" alt="Top of a package individual pages featuring the same badges." link="https://tidyverse.r-universe.dev/ui#package:vroom" >}}

These metrics are not the only improvement to package individual pages: You might have also noticed readme content and installation instructions:

{{< figure src="vroom2.png" alt="Installation instructions on a package individual page, ready to be copy-pasted." link="https://tidyverse.r-universe.dev/ui#package:vroom" >}}

And towards the bottom of the page you can find information about the commit and release activity, contributors, and reverse dependencies of the package:

{{< figure src="vroom3.png" alt="List of 'users' of a package, that is a list of links to reverse dependencies." link="https://tidyverse.r-universe.dev/ui#package:vroom" >}}

Happy space travels! :rocket: Please report bugs or feature requests to [our central station](https://github.com/r-universe-org/help).

### Next coworking sessions

Join us for social coworking & office hours monthly on 1st Tuesdays! Hosted by Steffi LaZerte and various community hosts. Everyone welcome. No RSVP needed. Consult our [Events](/events) page to find your local time and how to join.

-   [Tuesday, 07 June 2022 9 AM Australian Western / 1:00 UTC](/events/coworking-2022-06/) "Tackle something you've always wanted to learn" *Hosted by community host Nick Tierney and [Steffi LaZerte](/author/steffi-lazerte/)*
    -   Cowork on a project of your choice;
    -   Take this time to tackle something you've always wanted to learn;
    -   Or talk to [Nick Tierney](https://ropensci.org/author/nicholas-tierney/) and discuss what it is you want to learn, and get some tips and resources to get yourself started!

Find out about more [events](/events).

## Software :package:

### New packages

<div class="highlight">

</div>

The following four packages recently became a part of our software suite:

<div class='highlight'>

-   [gitcellar](https://docs.ropensci.org/gitcellar), developed by Maëlle Salmon together with Jeroen Ooms: Provide functionality to download archives (backups) for all repositories in a GitHub organization (useful for backups!).

-   [EDIutils](https://docs.ropensci.org/EDIutils), developed by Colin Smith: A client for the Environmental Data Initiative repository REST API. The EDI data repository <https://portal.edirepository.org/nis/home.jsp> is for publication and reuse of ecological data with emphasis on metadata accuracy and completeness. It is built upon the PASTA+ software stack <https://pastaplus-core.readthedocs.io/en/latest/index.html#> and was developed in collaboration with the US LTER Network <https://lternet.edu/>. EDIutils includes functions to search and access existing data, evaluate and upload new data, and assist other data management tasks common to repository users. It has been [reviewed](https://github.com/ropensci/software-review/issues/498) by Jasmine Lai, and Rodrigo Pires.

-   [ReLTER](https://docs.ropensci.org/ReLTER), developed by Alessandro Oggioni together with Micha Silver, Paolo Tagliolato, and Luigi Ranghetti: ReLTER provides access to DEIMS-SDR (<https://deims.org/>), and allows interaction with data and software implemented by eLTER Research Infrastructure (RI) thus improving data sharing among European LTER projects. ReLTER uses the R language to access and interact with the DEIMS-SDR archive of information shared by the Long Term Ecological Research (LTER) network. This package grew within eLTER H2020 as a major project that will help advance the development of European Long-Term Ecosystem Research Infrastructures (eLTER RI - <https://elter-ri.eu>). The ReLTER package functions in particular allow to: - retrieve the information about entities (e.g. sites, datasets, and activities) shared by DEIMS-SDR (see e.g. get_site_info function); - interact with the [ODSEurope](maps.opendatascience.eu) starting with the dataset shared by [DEIMS-SDR](https://deims.org/) (see e.g. [get_site_ODS](https://docs.ropensci.org/ReLTER/reference/get_site_ODS.html) function); - use the eLTER site informations to download and crop geospatial data from other platforms (see e.g. get_site_ODS function); - improve the quality of the dataset (see e.g. get_id_worms). Functions currently implemented are derived from discussions of the needs among the eLTER users community. The ReLTER package will continue to follow the progress of eLTER-RI and evolve, adding new tools and improvements as required.

-   [unifir](https://docs.ropensci.org/unifir), developed by Michael Mahoney: Functions for the creation and manipulation of scenes and objects within the Unity 3D video game engine (<https://unity.com/>). Specific focuses include the creation and import of terrain data and GameObjects as well as scene management. It is available on [CRAN](https://CRAN.R-project.org/package=unifir). It has been [reviewed](https://github.com/ropensci/software-review/issues/521) by Will Jones, and Tan Tran.

    </div>

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions

<div class="highlight">

</div>

The following eleven packages have had an update since the last newsletter: [EML](https://docs.ropensci.org/EML "Read and Write Ecological Metadata Language Files") ([`v2.0.6`](https://github.com/ropensci/EML/releases/tag/v2.0.6)), [GSODR](https://docs.ropensci.org/GSODR "Global Surface Summary of the Day (GSOD) Weather Data Client") ([`3.1.5`](https://github.com/ropensci/GSODR/releases/tag/3.1.5)), [jagstargets](https://docs.ropensci.org/jagstargets "Targets for JAGS Workflows") ([`1.0.2`](https://github.com/ropensci/jagstargets/releases/tag/1.0.2)), [lightr](https://docs.ropensci.org/lightr "Read Spectrometric Data and Metadata") ([`v1.7.0`](https://github.com/ropensci/lightr/releases/tag/v1.7.0)), [mctq](https://docs.ropensci.org/mctq "Tools to Process the Munich ChronoType Questionnaire (MCTQ)") ([`v0.2.0`](https://github.com/ropensci/mctq/releases/tag/v0.2.0)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.7.1`](https://github.com/ropensci/nodbi/releases/tag/v0.7.1)), [opencv](https://docs.ropensci.org/opencv "Bindings to OpenCV Computer Vision Library") ([`v0.2.2`](https://github.com/ropensci/opencv/releases/tag/v0.2.2)), [skimr](https://docs.ropensci.org/skimr "Compact and Flexible Summaries of Data") ([`v2.1.4`](https://github.com/ropensci/skimr/releases/tag/v2.1.4)), [stplanr](https://docs.ropensci.org/stplanr "Sustainable Transport Planning") ([`v0.9.0`](https://github.com/ropensci/stplanr/releases/tag/v0.9.0)), [terrainr](https://docs.ropensci.org/terrainr "Landscape Visualizations in R and Unity") ([`v0.7.0`](https://github.com/ropensci/terrainr/releases/tag/v0.7.0)), and [unifir](https://docs.ropensci.org/unifir "A Unifying API for Calling the Unity 3D Video Game Engine") ([`v0.2.1`](https://github.com/ropensci/unifir/releases/tag/v0.2.1)).

## Software Peer Review

<div class='highlight'>

There are seventeen recently closed and active submissions and 4 submissions on hold. Issues are at different stages:

-   Two at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

    -   [unifir](https://github.com/ropensci/software-review/issues/521), A Unifying API for Calling Unity from R. Submitted by [Michael Mahoney](https://mm218.dev/).

    -   [ReLTER](https://github.com/ropensci/software-review/issues/485), An interface to the eLTER for the R statistical programming environment. Submitted by [Alessandro Oggioni](https://www.cnr.it/people/alessandro.oggioni).

-   Five at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

    -   [npi](https://github.com/ropensci/software-review/issues/505), Access the U.S. National Provider Identifier Registry API. Submitted by [Frank Farach](https://frankfarach.com).

    -   [tidyqpcr](https://github.com/ropensci/software-review/issues/470), Quantitative PCR Analysis with the Tidyverse. Submitted by [Edward Wallace](https://scholar.google.co.uk/citations?user=7FLIJBAAAAAJ&hl=en).

    -   [phruta](https://github.com/ropensci/software-review/issues/458), Phylogenetic Reconstruction and Time-dating. Submitted by [Cristian Román-Palacios](http://cromanpa94.github.io/cromanpa/).

    -   [epair](https://github.com/ropensci/software-review/issues/418), Grabs data from EPA API, simplifies getting pollutant data. Submitted by [Leo Orozco-Mulfinger](https://github.com/GLOrozcoM).

    -   [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com).

-   Six at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

    -   [datefixR](https://github.com/ropensci/software-review/issues/533), Fix Really Messy Dates. Submitted by [Nathan Constantine-Cooke](http://constantine-cooke.com).

    -   [yfR](https://github.com/ropensci/software-review/issues/523), Downloads and Organizes Financial Data from Yahoo Finance. Submitted by [Marcelo S. Perlin](https://www.msperlin.com/blog/).

    -   [octolog](https://github.com/ropensci/software-review/issues/502), Better Github Action Logging. Submitted by [Jacob Wujciak-Jens](https://github.com/assignUser).

    -   [canaper](https://github.com/ropensci/software-review/issues/475), Categorical Analysis of Neo- And Paleo-Endemism. Submitted by [Joel Nitta](https://joelnitta.com). (Stats).

    -   [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com). (Stats).

    -   [ROriginStamp](https://github.com/ropensci/software-review/issues/433), Interface to OriginStamp API to Obtain Trusted Time Stamps. Submitted by [Rainer M Krug](https://github.com/rkrug).

-   Three at ['2/seeking-reviewer(s)'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A2/seeking-reviewer(s)):

    -   [aorsf](https://github.com/ropensci/software-review/issues/532), Accelerated Oblique Random Survival Forests. Submitted by [Byron](https://github.com/bcjaeger).

    -   [hudr](https://github.com/ropensci/software-review/issues/524), A R interface for accessing HUD (US Department of Housing and Urban Development) APIs. Submitted by [Emmet Tam](https://github.com/etam4260).

    -   [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](http://jounihelske.netlify.app). (Stats).

-   One at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

    -   [rdbhapi](https://github.com/ropensci/software-review/issues/443), Interface to DBH-API. Submitted by [Marija Ninic](https://hkdir.no/).
        </div>

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->

<div class="highlight">

</div>

<div class="highlight">

### Tech Notes

-   [Don't Lose your HEAD over Default Branches](/blog/2022/04/29/don-t-lose-your-head-over-default-branches) by Maëlle Salmon. Use "HEAD" instead of the default branch name in links to files on GitHub, as it will work for any default branch name.

</div>

## Use cases

<div class="highlight">

</div>

One use case of our packages and resources has been reported since we sent the last newsletter.

<div class='highlight'>

-   [Estimating leaf temperatures worldwide](https://discuss.ropensci.org/t/estimating-leaf-temperatures-worldwide/2908). Reported by Paul Melloy.
    </div>

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

We're looking for a new maintainer, or a new maintainer *team*, for each of the following packages:

-   [phylotaR](https://docs.ropensci.org/phylotaR/), Automated Retrieval of Orthologous DNA Sequences from GenBank. [Issue for volunteering](https://github.com/ropensci/phylotaR/issues/57).

-   [outsider](https://docs.ropensci.org/outsider/), Install and run programs, outside of R, inside of R. [Issue for volunteering](https://github.com/ropensci/outsider/issues/16).

-   [hddtools](https://docs.ropensci.org/hddtools/), Hydrological Data Discovery Tools. [Issue for volunteering](https://github.com/ropensci/hddtools/issues/31).

-   [gistr](https://docs.ropensci.org/gistr/), Work with GitHub Gists. [Issue for volunteering](https://github.com/ropensci/gistr/issues/85).

If you're interested, please comment in the issues or email `info@ropensci.org`.

For more info, see

-   [our guidance on *Changing package maintainers*](https://devguide.ropensci.org/changing-maintainers.html);
-   [our *Package Curation Policy*](https://devguide.ropensci.org/curationpolicy.html).

## Package development corner

Some useful tips for R package developers. :eyes:

### Documentation: HTML \> PDF

This paragraph is not about LaTeX, but about screen-reader users! Please take time to read this [email by Jonathan Godfrey on R-pkg-devel](https://stat.ethz.ch/pipermail/r-package-devel/2022q2/007953.html).

> Please consider the HTML alternative to any pdf, in any context, but especially in anything relating to R.

Community member Lluís Revilla Sancho also highlighted that [search.r-project.org](https://search.r-project.org/) provides HTML documentation for all CRAN documentation.

### Twelve quick tips for software design

You might enjoy the article ["Twelve quick tips for software design"](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1009809) by Greg Wilson. It is not R specific but is relevant to package development. "Design with everyone in mind" can for instance remind of the previous point about HTML documentation.

### Renaming the default branch

If you've been considering renaming the default branch from master (oppressive language) to main, do not miss the Tidyverse blog post Jenny Bryan wrote in October 2021 ["Renaming the default branch"](https://www.tidyverse.org/blog/2021/10/renaming-default-branch/), especially as it features useful usethis functions!

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).

