---
title: 'eDNAjoint: a Modeling Tool for Environmental DNA Data'
author:
  - Abby Keller
date: '2025-04-10'
slug: ednajoint-a-modeling-tool-for-environmental-dna-data
tags:
  - eDNAjoint
  - community
  - packages
  - Software Peer Review
  - environmental DNA
  - Bayesian
  - Stan
  - contributors
package_version: 0.3.1
socialImg: blog/2025/04/10/ednajoint-a-modeling-tool-for-environmental-dna-data/eDNAjoint_logo.png
socialAlt: eDNAjoint logo.
description: A look at the new eDNAjoint package for joint modelling of eDNA and traditional species survey methods.
editor: Steffi LaZerte
params: 
  doi: "10.59350/qmd7j-7e427"
---


{{< imgtxt src = "eDNAjoint_logo.png" alt = "eDNAjoint logo" width = "400">}}


In 2024, the version 0.2 of [eDNAjoint](https://docs.ropensci.org/eDNAjoint/) was [peer-reviewed](https://github.com/ropensci/software-review/issues/642#issuecomment-2328265662) and approved by rOpenSci, and a few months later, a [manuscript about the package](https://doi.org/10.1111/2041-210X.70000) was published in *Methods in Ecology and Evolution*. Reflecting on my experience, I detail below the reasons why I wrote **eDNAjoint**, provide an example of how to use the package, and make a call to action for anyone interested in helping me expand the package further. 


{{</ imgtxt >}}


## Why did I create eDNAjoint?

Environmental DNA (eDNA) - the genetic material left by organisms in their environment - is increasingly used as an efficient and cost-effective method in surveys of species distribution and abundance. This emerging data type presents new opportunities and new challenges, particularly around interpretation and [fear of false positive detections](https://doi.org/10.1111/jfb.14218). Often eDNA samples are collected at locations that coincide with surveys using "traditional" methods, like visual counts or fishing catches, yet understanding how these two data types should inform each other can be difficult.

During the publication of my [master’s thesis](https://doi.org/10.1002/eap.2561) about tracking an invasion front with environmental DNA, one of the reviewers suggested that the model developed in the research would make a good R package. There was a clear need for this package in the eDNA field: the ubiquity of eDNA data had outpaced software designed specifically for interpreting this increasingly common data type. The model provided a quantitative framework for integrating eDNA data with observations from “traditional” surveys, estimating the probability of a false positive eDNA detection, and comparing the relative sensitivities of the two survey methods. This felt like an opportunity to make the results of my research impactful and empower a broader set of users to confidently interpret eDNA data.

I had no experience developing software, but three years later and now as a PhD candidate, I can proudly share that the package is on CRAN and has found its way to my target audience. Resources like Hadley Wickham and Jennifer Bryan’s book on building [R packages](https://r-pkgs.org/) and the [rstantools](https://mc-stan.org/rstantools/) vignette [Step by step guide for creating a package that depends on RStan](https://mc-stan.org/rstantools/articles/minimal-rstan-package.html) helped me get started, and the rOpenSci resources and review process showed me how to make a package that follows best practices.
Developing the package involved making the model more generalizable by allowing for more variations, embedding pre-compiled Bayesian models written in [Stan](https://mc-stan.org/) into the package, and adding additional functions to help with interpretation of model results. Importantly, I have been generating a [user guide](https://ednajoint.netlify.app/) that I hope will make the package usable and accessible.

## How do you use eDNAjoint?

The package eDNAjoint is useful for interpreting observations from paired or semi-paired environmental DNA (eDNA) and traditional surveys. The package runs a Bayesian model that integrates these two data streams to “jointly” estimate model parameters. Optional variations allow inclusion of site-level covariates that scale the sensitivity of eDNA sampling relative to traditional sampling, as well as estimation of scaling coefficients when multiple traditional survey methods with different catch efficiencies are used.

Below is an example of fitting the joint model to data from paired, replicated eDNA qPCR and seine sampling observations of endangered tidewater gobies
(*Eucyclogobius newberryi*) from a study by Schmelzle and Kinziger
(2016)[^1]. The following variation of the joint model includes site-level
covariates that scale the sensitivity of eDNA sampling relative to
traditional sampling.


``` r
library(eDNAjoint)
data(goby_data)

# run the joint model with two covariates
goby_fit <- joint_model(data = goby_data, cov = c("Filter_time", "Salinity"), 
                        family = "poisson", p10_priors = c(1, 20), q = FALSE)
```

And then this model fit can be accessed to do things like summarize the
posterior distribution for the probability of a false positive
detection, *p<sub>10</sub>*


``` r
# summarize p10 posterior
joint_summarize(goby_fit$model, par = "p10")
```

```
##      mean se_mean    sd  2.5% 97.5%    n_eff Rhat
## p10 0.003       0 0.001 0.001 0.007 11948.38    1
```

Or to find the number of eDNA samples and traditional survey samples
necessary to detect presence of the species at a given expected catch
rate:


``` r
# find the number of samples necessary to detect presence with 0.9 probability
detection_calculate(goby_fit$model, mu = c(0.1, 0.5, 1), 
                    cov_val = c(0, 0), probability = 0.9)
```

```
##       mu n_traditional n_eDNA
## [1,] 0.1            24     14
## [2,] 0.5             5      4
## [3,] 1.0             3      2
```

## Call to action

While I certainly have received a lot of help along the way (see acknowledgements below), the development of this package has been largely a solo endeavor. While this independence has been empowering, if the software were to grow, I would likely need some more hands on deck. I have many ideas for expansion, and any potential collaborations could take multiple forms. 

**Are you familiar with Stan?** Growth could come from further developing the code; for example, the package currently does not handle some missing data in a way that is optimal.

**Do you have eDNA domain expertise?** We could further build out the modeling infrastructure. For example, we could add another level of hierarchy to the models where the probability of a false positive eDNA detection is informed by negative control data. New functionality could handle continuous, rather than just binary eDNA data. We could expand to include metabarcoding data, where a single model is built for multiple species.

**Do you enjoy communicating statistical concepts?** The model is formulated in a Bayesian framework, and a basic understanding of Bayesian statistics and MCMC methods is useful for using the package. I anticipate that the user base of the package could be quite broad and include users who are relatively unfamiliar with statistics. How do we effectively build out the [user guide](https://ednajoint.netlify.app/) to make the package as accessible as possible? 

I have already benefitted greatly from the rOpenSci community and [software peer review process](https://github.com/ropensci/software-review/issues/642#issuecomment-2328265662), and I would be eager to have eDNAjoint be a landing spot for folks interested in [getting involved with rOpenSci](https://ropensci.org/events/coworking-2025-03/).

**Are you interested in collaborating?** Open an [issue on Github](https://github.com/ropensci/eDNAjoint/issues) or send me an email (agkeller@berkeley.edu)!

## Acknowledgements

Thanks to [Mark Padgham](/author/mark-padgham/) ([@mpadge](https://github.com/mpadge)) for helping me at every stop along the rOpenSci review process, the rOpenSci reviewers Saras Windecker ([@smwindecker](https://github.com/smwindecker)), Chitra M Saraswati ([@chitrams](https://github.com/chitrams)) and editor [Emi Tanaka](/author/emi-tanaka/) ([@emitanaka](https://github.com/emitanaka)), my PhD advisor [Carl Boettiger](/author/carl-boettiger/) ([@cboettig](https://github.com/cboettig)) who has answered many small questions along the way, and the many early users who have been valuable beta testers and sources of encouragement.

[^1]: Schmelzle, M.C. and Kinziger, A.P. (2016). Using occupancy modelling to compare environmental DNA to traditional field methods for regional-scale monitoring of an endangered aquatic species. *Molecular Ecology Resources*. 16(4): 895-908. https://doi.org/10.1111/1755-0998.12501
