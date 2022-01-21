---
slug: "ropensci-news-digest-january-2022"
title: rOpenSci News Digest, January 2022
author:
  - The rOpenSci Team
date: '2022-01-21'
tags:
  - newsletter
description: keywords from the content
output:
  html_document:
    keep_md: yes
params:
  last_newsletter: "2021-11-30"
---


<!-- Before sending DELETE THE INDEX_CACHE and re-knit! -->

Dear rOpenSci friends, it's time for our monthly news roundup!
<!-- blabla -->
You can read this post [on our blog](/blog/2022/01/21/ropensci-news-digest-january-2022).
Now let's dive into the activity at and around rOpenSci!

## rOpenSci HQ

<!-- to be curated manually -->

### Co-working events
<!-- Can use same coworking text every month and ping Steffi to ask if there are any special guests to add -->
Join us for social coworking & office hours monthly on 1st Tuesdays! Hosted by Steffi LaZerte and Nick Tierney. Everyone welcome. No RSVP needed. Consult our [Events](/events) page to find your local time and how to join.

Our next sessions are:

* [Monday, 31 January 2022 17:00 PST](/events/coworking-2022-02/) (Tuesday, Feb 1st 09:00 Australian Western);
* [Tuesday, 01 March 2022 09:00 PST](/events/coworking-2022-03/) (17:00 UTC).

Find out about more [events](/events).

### Community Management transition for rOpenSci

The fantastic Stefanie Butland has moved on from her position as rOpenSci's community manager.
Her [blog post](/blog/2022/01/14/msg-from-stefanie/) summarized the incredible work she's done over the last 5.5 years.
As for rOpenSci's future new community manager, it might be you: keep an eye out for a job posting in February and even before that, email info@ropensci.org if you think you might be interested.

### An update on R-universe

We are making steady progress on the development of [R-universe](https://r-universe.dev), rOpenSci’s open platform for publishing and discovering R packages and other research material. Currently R-universe is tracking 3548 R packages and 3602 [articles](https://r-universe.dev/articles/) from 851 [maintainers](https://r-universe.dev/maintainers/) in 384 [cranlike repositories](https://r-universe.dev/organizations/). Over the past months we have added several new API's and front-end features, including [support for badges](/blog/2021/10/14/runiverse-badges/), [rss feeds](/blog/2021/11/24/runiverse-badges/), [orcid links](https://twitter.com/opencpu/status/1468323209770582018), and [support for renv](/blog/2022/01/06/runiverse-renv/) to restore packages from R-universe for reproducibility purposes.

Under the hood we made a [fundamental change](https://twitter.com/opencpu/status/1468323209770582018) to give maintainers a more central role in R-universe: the dashboards and APIs for [`https://{user}.r-universe.dev`](https://hadley.r-universe.dev) now also include packages and articles from other organizations that are maintained by that user, while cross-linking maintainers and organizations. This should make it easier to browse content help you discover interesting researchers and material.


## Software :package:

### New packages




The following  package recently became a part of our software suite:

+ [gittargets](https://docs.ropensci.org/gittargets), developed by William Michael Landau: Pipelines with the targets R package (2021, <doi:10.21105/joss.02959>) skip steps that are up to already date. Although this behavior reduces the runtime of subsequent runs, it comes at the cost of overwriting previous results. So if the pipeline source code is under version control, and if you revert to a previous commit or branch, the data will no longer be up to date with the code you just checked out. Ordinarily, you would need to rerun the pipeline in order to recover the targets you had before. However, gittargets preserves historical output, creating version control snapshots of data store. Each data snapshot remembers the contemporaneous Git commit of the pipeline source code, so you can recover the right data when you navigate the Git history. In other words, gittargets makes it possible to switch commits or branches without invalidating the pipeline. You can simply check out the up-to-date targets from the past instead of taking the time to recompute them from scratch.  It is available on [CRAN]( https://CRAN.R-project.org/package=gittargets). It has been [reviewed](https://github.com/ropensci/software-review/issues/486) by Saras Windecker, and David Neuzerling.

Discover [more packages](/packages), read more about [Software Peer Review](/software-review).

### New versions



The following twenty-two packages have had an update since the last newsletter: [rotemplate](https://docs.ropensci.org/rotemplate "pkgdown template and utilities for rOpenSci docs") ([`bs3-final`](https://github.com/ropensci-org/rotemplate/releases/tag/bs3-final)), [aRxiv](https://docs.ropensci.org/aRxiv "Interface to the arXiv API") ([`0.6`](https://github.com/ropensci/aRxiv/releases/tag/0.6)), [cffr](https://docs.ropensci.org/cffr "Generate Citation File Format (cff) Metadata for R Packages") ([`v0.2.1`](https://github.com/ropensci/cffr/releases/tag/v0.2.1)), [chirps](https://docs.ropensci.org/chirps "API Client for CHIRPS and CHIRTS") ([`v0.1.4`](https://github.com/ropensci/chirps/releases/tag/v0.1.4)), [essurvey](https://docs.ropensci.org/essurvey "Download Data from the European Social Survey on the Fly") ([`v1.0.8`](https://github.com/ropensci/essurvey/releases/tag/v1.0.8)), [excluder](https://docs.ropensci.org/excluder "Checks for Exclusion Criteria in Online Data") ([`v0.3.3`](https://github.com/ropensci/excluder/releases/tag/v0.3.3)), [fingertipsR](https://docs.ropensci.org/fingertipsR "Fingertips Data for Public Health") ([`v1.0.8`](https://github.com/ropensci/fingertipsR/releases/tag/v1.0.8)), [gittargets](https://docs.ropensci.org/gittargets "Data Version Control for the Targets Package") ([`0.0.1`](https://github.com/ropensci/gittargets/releases/tag/0.0.1)), [jagstargets](https://docs.ropensci.org/jagstargets "Targets for JAGS Workflows") ([`1.0.1`](https://github.com/ropensci/jagstargets/releases/tag/1.0.1)), [lingtypology](https://docs.ropensci.org/lingtypology "Linguistic Typology and Mapping") ([`v1.1.8`](https://github.com/ropensci/lingtypology/releases/tag/v1.1.8)), [nasapower](https://docs.ropensci.org/nasapower "NASA POWER API Client") ([`v4.0.3`](https://github.com/ropensci/nasapower/releases/tag/v4.0.3)), [nodbi](https://docs.ropensci.org/nodbi "NoSQL Database Connector") ([`v0.7.0`](https://github.com/ropensci/nodbi/releases/tag/v0.7.0)), [opentripplanner](https://docs.ropensci.org/opentripplanner "Setup and connect to OpenTripPlanner") ([`0.4.0`](https://github.com/ropensci/opentripplanner/releases/tag/0.4.0)), [riem](https://docs.ropensci.org/riem "Accesses Weather Data from the Iowa Environment Mesonet") ([`v2.0.0`](https://github.com/ropensci/riem/releases/tag/v2.0.0)), [rotl](https://docs.ropensci.org/rotl "Interface to the Open Tree of Life API") ([`v3.0.12`](https://github.com/ropensci/rotl/releases/tag/v3.0.12)), [tarchetypes](https://docs.ropensci.org/tarchetypes "Archetypes for Targets") ([`0.4.1`](https://github.com/ropensci/tarchetypes/releases/tag/0.4.1)), [targets](https://docs.ropensci.org/targets "Dynamic Function-Oriented Make-Like Declarative Workflows") ([`0.10.0`](https://github.com/ropensci/targets/releases/tag/0.10.0)), [terrainr](https://docs.ropensci.org/terrainr "Landscape Visualizations in R and Unity") ([`v0.5.1`](https://github.com/ropensci/terrainr/releases/tag/v0.5.1)), [tesseract](https://docs.ropensci.org/tesseract "Open Source OCR Engine") ([`v5.0.0`](https://github.com/ropensci/tesseract/releases/tag/v5.0.0)), [tic](https://docs.ropensci.org/tic "CI-Agnostic Workflow Definitions") ([`v0.11.3`](https://github.com/ropensci/tic/releases/tag/v0.11.3)), [weathercan](https://docs.ropensci.org/weathercan "Download Weather Data from Environment and Climate Change Canada") ([`v0.6.2`](https://github.com/ropensci/weathercan/releases/tag/v0.6.2)), and [webchem](https://docs.ropensci.org/webchem "Chemical Information from the Web") ([`v1.1.2`](https://github.com/ropensci/webchem/releases/tag/v1.1.2)).

## Software Peer Review

There are nineteen recently closed and active submissions and 4 submissions on hold. Issues are at different stages: 

* One at ['6/approved'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A6/approved):

     * [gittargets](https://github.com/ropensci/software-review/issues/486), Data Version Control for the Targets Package. Submitted by [Will Landau](https://wlandau.github.io). 

* Two at ['5/awaiting-reviewer(s)-response'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A5/awaiting-reviewer(s)-response):

     * [rfema](https://github.com/ropensci/software-review/issues/484), Access the openFEMA API. Submitted by [Dylan Turner](http://dylanturner.org). 

    * [gendercoder](https://github.com/ropensci/software-review/issues/435), Recodes Sex/Gender Descriptions Into A Standard Set. Submitted by [Emily Kothe](http://emilykothe.com). 

* Four at ['4/review(s)-in-awaiting-changes'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A4/review(s)-in-awaiting-changes):

     * [phruta](https://github.com/ropensci/software-review/issues/458), Phylogenetic Reconstruction and Time-dating. Submitted by [Cristian Román-Palacios](http://cromanpa94.github.io/cromanpa/). 

    * [epair](https://github.com/ropensci/software-review/issues/418), Grabs data from EPA API, simplifies getting pollutant data. Submitted by [Leo Orozco-Mulfinger](https://github.com/GLOrozcoM). 

    * [tidytags](https://github.com/ropensci/software-review/issues/382), Simple Collection and Powerful Analysis of Twitter Data. Submitted by [Dr. Bret Staudt Willet](http://bretsw.com). 

    * [healthdatacsv](https://github.com/ropensci/software-review/issues/358), Access data in the healthdata.gov catalog. Submitted by [iecastro](http://iecastro.netlify.com). 

* Eight at ['3/reviewer(s)-assigned'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A3/reviewer(s)-assigned):

     * [frictionless](https://github.com/ropensci/software-review/issues/495), Read and Write Frictionless Data Packages. Submitted by [Peter Desmet](https://orcid.org/0000-0002-8442-8025). 

    * [gbifdb](https://github.com/ropensci/software-review/issues/492), Local Database Interface to GBIF. Submitted by [Carl Boettiger](http://carlboettiger.info). 

    * [canaper](https://github.com/ropensci/software-review/issues/475), Categorical Analysis of Neo- And Paleo-Endemism. Submitted by [Joel Nitta](https://joelnitta.com).  (Stats).

    * [qualR](https://github.com/ropensci/software-review/issues/474), An R package to download Sao Paulo and Rio de Janeiro air pollution data. Submitted by [Mario Gavidia Calderón](http://randroll.wordpress.com). 

    * [OmicsMetaData](https://github.com/ropensci/software-review/issues/471), OmicsMetaData: an R-package for interoperable and re-usable biodiversity 'omics (meta)data. Submitted by [Maxime Sweetlove](https://github.com/msweetlove). 

    * [tsbox](https://github.com/ropensci/software-review/issues/464), Class-Agnostic Time Series. Submitted by [Christoph Sax](http://www.cynkra.com).  (Stats).

    * [ROriginStamp](https://github.com/ropensci/software-review/issues/433), Interface to OriginStamp API to Obtain Trusted Time Stamps. Submitted by [Rainer M Krug](https://github.com/rkrug). 

    * [occCite](https://github.com/ropensci/software-review/issues/407), Querying and Managing Large Biodiversity Occurrence Datasets. Submitted by [Hannah Owens](http://hannahlowens.weebly.com/). 

* Four at ['1/editor-checks'](https://github.com/ropensci/software-review/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc+label%3A1/editor-checks):

     * [EDIutils](https://github.com/ropensci/software-review/issues/498), An API Client for the Environmental Data Initiative Repository. Submitted by [Colin Smith](https://github.com/clnsmth). 

    * [bssm](https://github.com/ropensci/software-review/issues/489), Bayesian Inference of Non-Linear and Non-Gaussian State Space. Submitted by [Jouni Helske](http://jounihelske.netlify.app).  (Stats).

    * [ReLTER](https://github.com/ropensci/software-review/issues/485), An interface to the eLTER for the R statistical programming environment. Submitted by [Alessandro Oggioni](https://www.cnr.it/people/alessandro.oggioni). 

    * [rdbhapi](https://github.com/ropensci/software-review/issues/443), Interface to DBH-API. Submitted by [Marija Ninic](https://hkdir.no/). 

Find out more about [Software Peer Review](/software-review) and how to get involved.

## On the blog

<!-- Do not forget to rebase your branch! -->



* [Thank You to the rOpenSci Community, 2021](/blog/2021/12/17/thank-you-2021) by Stefanie Butland, and Steffi LaZerte. Thank you for another amazing year at rOpenSci.

* [rOpenSci Announces $400k Award from the Chan Zuckerberg Initiative to Empower Historically Excluded Groups as Community Leaders in Scientific Open Source Projects](/blog/2021/12/20/inclusive-leadership-program) by Stefanie Butland, Karthik Ram, Noam Ross, and Maëlle Salmon. Funding for new rOpenSci community champions program for historically excluded groups.

* [Gather on the rOpenSci Forum](/blog/2022/01/11/ropensci-forum) by The rOpenSci Team. Why and how participate in the rOpenSci forum; descriptions of current categories.{{< figure src="convo.jpg" alt="Two paper message balloons on a pink background" width="400" >}}



* [rOpenSci Code of Conduct Annual Review](/blog/2022/01/13/conduct2022) by Stefanie Butland, Mark Padgham, Kara Woo, and Megan Carter. Updates for version 2.3 of rOpenSci's Code of Conduct.

* [rOpenSci 2021 Code of Conduct Transparency Report](/blog/2022/01/13/transparency2021) by Stefanie Butland, Mark Padgham, and Kara Woo. No Code of Conduct incidents reported in 2021.

* [Community Management Transition for rOpenSci. A Message from Stefanie Butland](/blog/2022/01/14/msg-from-stefanie) by Stefanie Butland.



### Tech Notes

* [How renv restores packages from r-universe for reproducibility or production](/blog/2022/01/06/runiverse-renv) by Jeroen Ooms. The latest version of renv now supports restoring packages that were installed from r-universe. In this post we explain how this works, and why it has to work this way.

## Use cases



One use cases of our packages and resources have been reported since we sent the last newsletter.

* [Evaluating semi-parametric nowcasts of COVID-19 hospital admissions in Germany](https://discuss.ropensci.org/t/evaluating-semi-parametric-nowcasts-of-covid-19-hospital-admissions-in-germany/2715). Reported by Sam Abbott.

Explore [other use cases](/usecases) and [report your own](https://discuss.ropensci.org/c/usecases/10)!

## Call for maintainers

There are no open calls for new maintainers at this point but you can refer to our [contributing guide](https://contributing.ropensci.org/) for finding ways to get involved!
As the maintainer of an rOpenSci package, feel free to contact us on Slack or email `info@ropensci.org` to get your call for maintainer featured in the next newsletter. 

## Package development corner

Some useful tips for R package developers. :eyes:

### To quote or not to quote (non-existing words in DESCRIPTION)?

To avoid spelling NOTEs, it is recommended to [_"Put the names of R packages, software, and APIs inside single quotes."_ in `DESCRIPTION`](https://r-pkgs.org/description.html) (as phrased in the R packages book by Hadley Wickham and Jenny Bryan).

Now, there is a hack allowing you to not add the quotes, as seen in e.g. [RPostgres](https://github.com/cran/RPostgres/tree/master/.aspell).
Say you use the non-existing words "changelog" and "versioning" in the `DESCRIPTION` of your package `coolstuff`.
Two steps!

* Run `saveRDS(c("versioning", "changelog"), file = ".aspell/coolstuff.rds", version = 2)` which will create a file with these words!
* Add a script `.aspell/defaults.R` that will refer to both the standard dictionary ("en_stats") and the one you just created ("coolstuff").

```r
Rd_files <- vignettes <- R_files <- description <-
    list(encoding = "UTF-8",
         language = "en",
         dictionaries = c("en_stats", "coolstuff"))
```

Voilà, goodbye quotes in `DESCRIPTION`!
Thanks to [Jim Hester and Kirill Müller](https://github.com/cynkra/fledge/pull/171#discussion_r762045958) for this cool trick that's not [used a lot](https://github.com/search?q=user%3Acran+extension%3Ards+path%3A.aspell&type=Code&l=&l=) (yet?).
It _is_ documented in R, see the sentence beginning with "Suitable values for" in https://stat.ethz.ch/R-manual/R-patched/library/utils/html/aspell-utils.html

### potools: Translate your package user-facing communications like messages, warnings, and errors

Your package might be used by people at ease in different languages than the one you initially wrote e.g. error messages in.
The [potools package](https://michaelchirico.github.io/potools/index.html) maintained by [Michael Chirico](https://github.com/MichaelChirico) provides "Tools for Portability and Internationalization of R packages".
It features great vignettes including one for [package developers](https://michaelchirico.github.io/potools/articles/developers.html) and one for [package translators](https://michaelchirico.github.io/potools/articles/translators.html).
The potools package is used in particular in the pkgdown package ([user-facing docs for the language option](https://pkgdown.r-lib.org/articles/pkgdown.html?q=language#language)).

### How to provide tibbles only to those who like them

"Only use tibbles if tibble installed": this sounds great, doesn't it?
It's the title of a [PR by Hadley Wickham](https://github.com/allisonhorst/palmerpenguins/pull/25) to the palmerpenguins package maintained by Allison Horst.
Key to this PR is the use of `delayedAssign()` in `data/penguins.R`.
The code changes are small enough to make this a really cool trick!

<!-- To be curated by hand -->

## Last words

Thanks for reading! If you want to get involved with rOpenSci, check out our [Contributing Guide](https://contributing.ropensci.org) that can help direct you to the right place, whether you want to make code contributions, non-code contributions, or contribute in other ways like sharing use cases.

If you haven't subscribed to our newsletter yet, you can [do so via a form](/news/). Until it's time for our next newsletter, you can keep in touch with us via our [website](/) and [Twitter account](https://twitter.com/ropensci).
