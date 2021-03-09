---
slug: "targets"
title: "targets: Democratizing Reproducible Analysis Pipelines"
package_version: 0.0.2
author:
  - Will Landau
date: 2021-02-03
tags:
  - Software Peer Review
  - packages
  - community
  - reproducible research
  - high performance computing
  - targets
  - drake
  - pipelines
  - workflow-automation
  - workflows
featured: true
description: "A new pipeline tool, a new ecosystem, and how you can help"
twitterImg: blog/2021/02/03/targets/card.png
twitterAlt: "targets hex logo"
output: 
  html_document:
    keep_md: true
---



[Make](https://www.gnu.org/software/make/)[^1]-like pipelines enhance the integrity, transparency, shelf life, efficiency, and scale of large analysis projects.
With pipelines, data science feels smoother and more rewarding, and the results are worthy of more trust.

<!--html_preserve-->
<!-- I thought about following the blog guide's recommendation to use the Hugo shortcode for this tweet, but I feel the media and emojis are a bit much. -->
<blockquote><p lang="en" dir="ltr">...looking to get your project/s organised in the new year? hoping just to distract from feelings of impending doom/crushing loss of hope? I promise workflowing will make you feel better... and <a href="https://twitter.com/wmlandau?ref_src=twsrc%5Etfw">@wmlandau</a> has made it SO EASY.</p>&mdash; Dr Saras Windecker (@smwindecker) <a href="https://twitter.com/smwindecker/status/1347369461943177216?ref_src=twsrc%5Etfw">January 8, 2021</a></blockquote> 

<blockquote><p lang="en" dir="ltr">{targets} and its predecessors are visionary work. I can't imagine making pipelines in a linear script ever again.</p>&mdash; Miles McBain (@MilesMcBain) <a href="https://twitter.com/MilesMcBain/status/1347379570282954756?ref_src=twsrc%5Etfw">January 8, 2021</a></blockquote>
<!--/html_preserve-->

<!--html_preserve--> <h2>targets <a href="https://docs.rOpenSci.org/targets/">{{< figure src = "targets.png" alt = "targets hex logo" height = "139" class = "pull-right" >}}</a></h2> <!--/html_preserve-->

```r 
install.packages("targets")
```

The [`targets`](https://docs.rOpenSci.org/targets/)[^2] package is a new pipeline toolkit for R.
It recently cleared [software review](https://github.com/rOpenSci/software-review/issues/401), and it is now on CRAN. [`targets`](https://docs.rOpenSci.org/targets/) is the long-term successor of [`drake`](https://github.com/rOpenSci/drake)[^3], which in turn succeeded [Rich FitzJohn](/author/rich-fitzjohn/)'s groundbreaking [`remake`](https://github.com/richfitz/remake)[^4] package.
A [chapter in the user manual](https://books.rOpenSci.org/targets/drake.html) explains the future of [`drake`](https://github.com/rOpenSci/drake), the advantages of [`targets`](https://docs.rOpenSci.org/targets/), and how to transition.
The [reference website](https://docs.rOpenSci.org/targets/) explains how to get started, and the [overview vignette](https://docs.rOpenSci.org/targets/articles/overview.html) describes the major features of [`targets`](https://docs.rOpenSci.org/targets/) and its [user manual](https://books.rOpenSci.org/targets/).

## How it works

In [`targets`](https://docs.rOpenSci.org/targets/), a data analysis pipeline is a collection of [target](https://docs.rOpenSci.org/targets/reference/tar_target.html) objects that [express the individual steps](https://books.rOpenSci.org/targets/walkthrough.html) of the workflow, from upstream data processing to downstream [R Markdown reports](https://books.rOpenSci.org/targets/files.html#literate-programming)[^5].
These targets live in a special script called `_targets.R`.

```r 
# _targets.R file
library(targets)
tar_option_set(packages = c("biglm", "dplyr", "ggplot2", "readr"))

# Most workflows have custom functions to support the targets.
read_clean <- function(path) {
  path %>%
    read_csv(col_types = cols()) %>%
    mutate(Ozone = replace_na(Ozone, mean(Ozone, na.rm = TRUE)))
}

fit_model <- function(data) {
  biglm(Ozone ~ Wind + Temp, data)
}

create_plot <- function(data) {
  ggplot(data) +
    geom_histogram(aes(x = Ozone), bins = 12) +
    theme_gray(24)
}

# List of targets.
list(
  # airquality dataset in base R:
  tar_target(raw_data_file, "raw_data.csv", format = "file"),
  tar_target(data, read_clean(raw_data_file)),
  tar_target(fit, fit_model(data)),
  tar_target(hist, create_plot(data))
)
```



[`targets`](https://docs.rOpenSci.org/targets/) inspects your code and constructs a dependency graph.



```r 
# R console
tar_visnetwork()
```

<!--html_preserve-->
<!-- The dots in the src are not ideal, but they get me to the path of the widget -->
<iframe src = "graph-minimal.html" width = "100%" height = "500px" frameBorder="0" scrolling="no" title = "dependency graph of the minimal example"></iframe>
<!--/html_preserve-->

[`tar_make()`](https://docs.rOpenSci.org/targets/reference/tar_make.html) runs the correct targets in the correct order.

```r 
# R console
tar_make()
```

```
#> ● run target raw_data_file
#> ● run target data
#> ● run target fit
#> ● run target hist
#> ● end pipeline
```

Alternatives [`tar_make_clustermq()`](https://docs.rOpenSci.org/targets/reference/tar_make_clustermq.html) and [`tar_make_future()`](https://docs.rOpenSci.org/targets/reference/tar_make_future.html) leverage [`clustermq`](https://mschubert.github.io/clustermq/)[^6] and [`future`](https://github.com/HenrikBengtsson/future)[^7], respectively, to distribute targets on traditional schedulers such as [SLURM](https://slurm.schedmd.com/documentation.html)[^8].
It is only a matter of time before these backends become capable of [sending jobs to the cloud](https://aws.amazon.com/)[^9].

Your can store the results in the [`_targets/`](https://books.rOpenSci.org/targets/files.html#internal-files) folder (default) or [Amazon S3 buckets](https://books.rOpenSci.org/targets/cloud.html#storage).
Either way, loading data back into R is the same.



```r 
# R console
tar_read(hist) # see also tar_load()
```

<!--html_preserve-->
{{< figure src = "histogram.png" alt = "histogram of ozone readings from the airquality dataset in base R">}}
<!--/html_preserve-->

Up-to-date targets do not rerun, which saves countless hours in computationally intense fields like machine learning, Bayesian statistics, and statistical genomics.

```r 
# R console
tar_make()
```

```
#> ✓ skip target raw_data_file
#> ✓ skip target data
#> ✓ skip target fit
#> ✓ skip target hist
#> ✓ skip pipeline
```

## The next challenge

To help workflows scale, [`targets`](https://docs.rOpenSci.org/targets/) adopts the classical, pedantic, function-oriented perspective of the R language.[^10]

<blockquote><p lang="en" dir="ltr">Nearly everything that happens in R results from a function call. Therefore, basic programming centers on creating and refining functions.</p>&mdash; John Chambers</blockquote>

The more often you write your own functions, the nicer your experience becomes.

<!--html_preserve-->
{{< tweet 1339447101487341570 >}}
<!--/html_preserve-->

But if your mind is on the domain knowledge, or if you feel pressure to work fast, then it can be hard to write functions for everything.

## Target factories

The best way to write fewer functions is to write less code.
To write less code, we need abstraction and automation.
Target factories are package functions that return lists of pre-configured target objects, and they make specialized pipelines reusable.

```r 
# script inside example.package

#' @export
read_clean <- function(path) {
  path %>%
    read_csv(col_types = cols()) %>%
    mutate(Ozone = replace_na(Ozone, mean(Ozone, na.rm = TRUE)))
}

#' @export
fit_model <- function(data) {
  biglm(Ozone ~ Wind + Temp, data)
}

#' @export
create_plot <- function(data) {
  ggplot(data) +
    geom_histogram(aes(x = Ozone), bins = 12) +
    theme_gray(24)
}

#' @title Example target factory.
#' @description Concise shorthand to express our example pipeline.
#' @details
#'   Target factories should use `tar_target_raw()`.
#'   `tar_target()` is for users, and `tar_target_raw()` is for developers.
#'   The former quotes its arguments, while the latter evaluates them.
#' @export
biglm_factory <- function(file) {
  list(
    tar_target_raw("raw_data_file", as.expression(file), format = "file"),
    tar_target_raw("data", quote(example.package::read_clean(raw_data_file))),
    tar_target_raw("fit", quote(example.package::fit_model(data))),
    tar_target_raw("hist", quote(example.package::create_plot(data)))
  )
}
```

With the factory above, our long `_targets.R` file suddenly collapses down to three lines.

```r 
# _targets.R file
library(targets)
library(example.package)
biglm_factory("raw_data.csv")
```

And you still have complete freedom to add more targets to the list. 

```r 
# _targets.R file
library(targets)
library(example.package)
run_model2 <- function(data) {...}
list( # Target lists can be arbitrarily nested.
  biglm_factory("raw_data.csv"),
  tar_target(model2, run_model2(data))
)
```

<!--html_preserve-->
<h2>The R Targetopia <a href="https://wlandau.github.io/targetopia/">{{< figure src = "targetopia.png" alt = "R Targetopia hex logos" height = "242" class = "pull-right" >}}</a></h2>
<!--/html_preserve-->

The [R Targetopia](https://wlandau.github.io/targetopia/)[^11] is an emerging ecosystem of packages to bring target factories to specific domains of Statistics and data science.

### stantargets

```r 
library(remotes)
install_github("wlandau/stantargets")
library(cmdstanr)
install_cmdstan()
```

[`stantargets`](https://wlandau.github.io/stantargets/)[^12] abstracts away most of the targets and functions required for a solid Bayesian data analysis with [Stan](https://mc-stan.org)[^13].
With a single [target factory](https://wlandau.github.io/targetopia/contributing.html#target-factories) and a single function to generate data, [`stantargets`](https://wlandau.github.io/stantargets/) can give you an entire sensitivity analysis or an entire [simulation-based calibration study](https://wlandau.github.io/stantargets/articles/mcmc_rep.html).[^14] [^15]

```r 
# _targets.R for simulation-based calibration to validate a Stan model.
library(targets)
library(stantargets)

generate_data <- function() {
  true_beta <- stats::rnorm(n = 1, mean = 0, sd = 1)
  x <- seq(from = -1, to = 1, length.out = n)
  y <- stats::rnorm(n, x * true_beta, 1)
  list(n = n, x = x, y = y, true_beta = true_beta)
}

list(
  tar_stan_mcmc_rep_summary(
    model,
    "model.stan", # We assume you already have a Stan model file.
    generate_data(), # Runs once per rep.
    batches = 25, # Batching reduces per-target overhead.
    reps = 40, # Number of simulation reps per batch.
    data_copy = "true_beta",
    variables = "beta",
    summaries = list(
      ~posterior::quantile2(.x, probs = c(0.025, 0.975))
    )
  )
)
```





```r 
# R console
tar_visnetwork()
```

<!--html_preserve-->
<!-- The dots in the src are not ideal, but they get me to the path of the widget -->
<iframe src = "graph-stantargets.html" width = "100%" height = "500px" frameBorder="0" scrolling="no" title = "stantargets dependency graph"></iframe>
<!--/html_preserve-->

<!--html_preserve--> <h3>tarchetypes <a href="https://docs.rOpenSci.org/tarchetypes/">{{< figure src = "tarchetypes.png" alt = "tarchetypes hex logo" height = "139" class = "pull-right" >}}</a></h3> <!--/html_preserve-->

```r 
install.packages("tarchetypes")
```

The [`tarchetypes`](https://docs.rOpenSci.org/tarchetypes/)[^16] [R Targetopia](https://wlandau.github.io/targetopia/) package is far more general than [`stantargets`](https://wlandau.github.io/stantargets/).
Its target factories include [`tar_rep()`](https://docs.rOpenSci.org/tarchetypes/reference/tar_rep.html) for arbitrary simulation studies, [`tar_render()`](https://books.rOpenSci.org/targets/files.html#literate-programming) for [dependency-aware](https://books.rOpenSci.org/targets/files.html#literate-programming) literate programming, and [`tar_render_rep()`](https://docs.rOpenSci.org/tarchetypes/reference/tar_render_rep.html) for [parameterized R Markdown](https://bookdown.org/yihui/rmarkdown/parameterized-reports.html).
[`tar_plan()`](https://docs.rOpenSci.org/tarchetypes/reference/tar_plan.html) is a [`drake_plan()`](https://docs.rOpenSci.org/drake/reference/drake_plan.html)-like target factory to help [`drake`](https://docs.rOpenSci.org/drake/) users transition to [`targets`](https://docs.rOpenSci.org/targets/).

```r 
# _targets.R file
library(targets)
library(tarchetypes)
tar_plan(
  tar_target(raw_data_file, "raw_data.csv", format = "file"),
  data = read_clean(raw_data_file),
  fit = fit_model(data),
  hist = create_plot(data)
)
```

### You can help!

The [R Targetopia](https://wlandau.github.io/targetopia/) has exciting potential for  [tidymodels](https://www.tidymodels.org/)[^17], [`mlr3`](https://mlr3.mlr-org.com/)[^18], [`keras`](https://keras.rstudio.com/)[^19], [`torch`](https://torch.mlverse.org/)[^20], PK/PD, spatial statistics, and beyond.
If your field needs a friendly pipeline tool, please consider creating an [R Targetopia](https://wlandau.github.io/targetopia/) package of your own.
I am [trying to make it easy](https://wlandau.github.io/targetopia/contributing.html), and I would be eager to get in touch.

## Thanks

Volunteers drive the rOpenSci review process, and each review is an act of altruism.
This was especially true for [`targets`](https://docs.rOpenSci.org/targets/) because of COVID-19, the overlap with the holidays, and the unusually copious workload.
Despite the obstacles, everyone [delivered incredible feedback](https://github.com/rOpenSci/software-review/issues/401) that substantially improved [`targets`](https://docs.rOpenSci.org/targets/) and its documentation.
[Sam Oliver](http://limnoliver.weebly.com) and [TJ Mahr](https://www.tjmahr.com) served as reviewers, and [Mauro Lepore](/author/mauro-lepore/) served as editor.
Sam inspired a [section on getting started](https://docs.rOpenSci.org/targets/index.html#how-to-get-started), an [overview vignette](https://docs.rOpenSci.org/targets/articles/overview.html), [more debugging advice](https://books.rOpenSci.org/targets/debugging.html#interactive-debugging), and a new [`tar_branches()`](https://docs.rOpenSci.org/targets/reference/tar_branches.html) function to show branch provenance.
TJ suggested a new [chapter on functions](https://books.rOpenSci.org/targets/functions.html), helped me [contrast the two styles of branching](https://books.rOpenSci.org/targets/dynamic.html#branching), and raised interesting questions about target names.
Mauro was continuously diligent, responsive, thoughtful, and conscientious as he mediated the review process and ensured a successful outcome.

Thanks also to [Matt Warkentin](https://mattwarkentin.github.io), [Timing Liu](https://timingliu.com), [Miles McBain](/author/miles-mcbain), [Gorka Navarrete](https://github.com/gorkang), [Bruno Carlin](https://twosidesdata.netlify.com/), [Noam Ross](/author/noam-ross), [Kendon Bell](https://github.com/kendonB), and [others](https://github.com/rOpenSci/targets/issues) who adopted [`targets`](https://docs.rOpenSci.org/targets/) early in development, proposed insightful ideas, and influenced the direction and behavior of the package.

My colleague [Richard Payne](https://github.com/rich-payne) was a serious [`drake`](https://docs.rOpenSci.org/drake/) user, and he built a proprietary [`drake_plan()`](https://docs.rOpenSci.org/drake/reference/drake_plan.html) generator for our team.
His package was the major inspiration for target factories and the [R Targetopia](https://wlandau.github.io/targetopia/).

Everyone who contributed to [`drake`](https://github.com/rOpenSci/drake) is part of [`targets`](https://docs.rOpenSci.org/targets/).
Four years of [pull requests](https://github.com/rOpenSci/drake/pulls),  [issues](https://github.com/rOpenSci/drake/issues), [rOpenSci discussions](https://discuss.rOpenSci.org/), [RStudio Community posts](https://community.rstudio.com/), [Stack Overflow threads](https://stackoverflow.com/questions/tagged/drake-r-package) are  materializing in this new suite of tools.

## Disclaimer

The views in this post do not necessarily reflect those of my employer.

## References

[^1]: Stallman, R. (1998). GNU Make, Version 3.77. Free Software Foundation. ISBN: 1882114809
[^2]: Landau, W. M., (2021). The targets R package: a dynamic Make-like function-oriented pipeline toolkit for reproducibility and high-performance computing. Journal of Open Source Software, 6(57), 2959, https://doi.org/10.21105/joss.02959
[^3]: Landau, W. M. (2018). The drake R package: a pipeline toolkit for reproducibility and high-performance computing. Journal of Open Source Software, 3(21), 550. https://doi.org/10.21105/joss.00550
[^4]: Rich FitzJohn (2021). remake: Make-like build management. R package version 0.3.0.
[^5]: JJ Allaire and Yihui Xie and Jonathan McPherson and Javier Luraschi and Kevin Ushey and Aron Atkins and Hadley Wickham and Joe Cheng and Winston Chang and Richard Iannone (2021). rmarkdown: Dynamic Documents for R. R package version 2.6.4. URL https://rmarkdown.rstudio.com
[^6]: Schubert, M. (2019). clustermq enables efficient parallelization of genomic analyses. Bioinformatics, 35(21), 4493–4495. https://doi.org/10.1093/bioinformatics/btz284
[^7]: Bengtsson, H. (2020). A unifying framework for parallel and distributed processing in R using futures. https://arxiv.org/abs/2008.00553
[^8]: Yoo A.B., Jette M.A., Grondona M. (2003) SLURM: Simple Linux Utility for Resource Management. In: Feitelson D., Rudolph L., Schwiegelshohn U. (eds) Job Scheduling Strategies for Parallel Processing. JSSPP 2003. Lecture Notes in Computer Science, vol 2862. Springer, Berlin, Heidelberg. https://doi.org/10.1007/10968987_3
[^9]: Amazon Web Services (2020). Overview of Amazon Web Services. https://d1.awsstatic.com/whitepapers/aws-overview.pdf
[^10]: Chambers, John. 2008. “Software for Data Analysis: Programming with R.” In "Programming with R: The Basics", 37–76. Springer. https://link.springer.com/chapter/10.1007/978-0-387-75936-4_3
[^11]: Landau, W. M., (2021). The R Targetopia: an R package ecosystem for democratized reproducible pipelines at scale. https://wlandau.github.io/targetopia/
[^12]: Landau, W. M., (2021). stantargets: Targets for Stan Workflows. https://wlandau.github.io/stantargets/, https://github.com/wlandau/stantargets.
[^13]: Stan Development Team (2012). Stan: a C++ library for probability and sampling. https://mc-stan.org
[^14]: Cook, Samantha R., Andrew Gelman, and Donald B. Rubin. 2006. “Validation of Software for Bayesian Models Using Posterior Quantiles.” Journal of Computational and Graphical Statistics 15 (3): 675–92. http://www.jstor.org/stable/27594203
[^15]: Talts, Sean, Michael Betancourt, Daniel Simpson, Aki Vehtari, and Andrew Gelman. 2020. “Validating Bayesian Inference Algorithms with Simulation-Based Calibration.” http://arxiv.org/abs/1804.06788
[^16]: Landau, W. M. (2021). tarchetypes: Archetypes for Targets. https://docs.rOpenSci.org/tarchetypes/, https://github.com/rOpenSci/tarchetypes.
[^17]: Kuhn et al., (2020). Tidymodels: a collection of packages for modeling and machine learning using tidyverse principles. https://www.tidymodels.org
[^18]: Lang M, Binder M, Richter J, Schratz P, Pfisterer F, Coors S, Au Q, Casalicchio G, Kotthoff L, Bischl B (2019). mlr3: A modern object-oriented machine learning framework in R. Journal of Open Source Software. https://doi.org/10.21105/joss.01903,  https://joss.theoj.org/papers/10.21105/joss.01903
[^19]: JJ Allaire and François Chollet (2020). keras: R Interface to 'Keras'. R package version 2.3.0.0. https://CRAN.R-project.org/package=keras
[^20]: Daniel Falbel and Javier Luraschi (2020). torch: Tensors and Neural Networks with 'GPU' Acceleration. R package version 0.2.0. https://CRAN.R-project.org/package=torch


