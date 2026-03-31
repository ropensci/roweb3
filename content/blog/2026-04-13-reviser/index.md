---
slug: reviser
title: "reviser: Analyzing Real-Time Data Revisions in R"
package_version: 0.1.0.9001
author:
  - Marc Burri
date: '2026-04-13'
tags:
  - Software Peer Review
  - tech notes
  - community
  - packages
  - reviser
  - R
  - Economics
description: A short introduction to reviser for analyzing real-time data vintages and revisions in R.
editor: ~
---



Economic data are rarely static.
GDP, inflation, employment, and other official statistics arrive as early estimates, then get revised as new source data arrive, seasonal adjustment is updated, or benchmarking changes are applied.
Those revisions matter because they can change the narrative around turning points, policy mistakes, and forecast performance.

`reviser` is an R package for working with these vintage datasets directly.
It gives you a consistent workflow to:

- reshape release vintages between wide and tidy formats;
- extract revisions relative to earlier or final releases;
- summarize bias, dispersion, and serial dependence in revisions;
- identify the first release that is statistically close to the eventual benchmark;
- nowcast future revisions with state-space models.

The package is aimed at users who already work with real-time macroeconomic data and want tools that go beyond plotting revision triangles by hand.
One design goal is to keep that workflow in pure R.

`reviser` was reviewed through [rOpenSci statistical software peer review](https://github.com/ropensci/software-review/issues/709).
Many thanks to reviewers [Alex Gibberd](https://github.com/AlexGibberd), and [Tanguy Barthelemy](https://github.com/TanguyBarthelemy), and to editor [Rebecca Killick](https://github.com/rkillick), for feedback that improved the package.

## Why revision analysis deserves its own workflow

Revisions are not just measurement noise.
They encode how information enters the data-production process.

- Some revisions reflect genuinely new information.
- Others reflect noise that could, in principle, have been reduced earlier.
- Still others come from methodological changes or benchmark updates.

That distinction matters if you are evaluating early data releases, building nowcasts, or asking whether first releases are already efficient summaries of the available information.

The `reviser` vignettes organize this workflow into three layers:

1. Structure vintages consistently.
2. Measure and test revision properties.
3. Model the revision process when you want to predict future changes.

## A compact example with GDP vintages

The package ships with a GDP example dataset in long vintage format.
Suppose we want to focus on U.S. GDP growth, visualize how estimates moved during the financial crisis, and then ask whether early releases were systematically biased relative to a later benchmark.

```r 
library(reviser)
library(dplyr)
library(tsbox)

gdp_us <- gdp |>
  filter(id == "US") |>
  tsbox::ts_pc() |>
  tsbox::ts_span(start = "1980-01-01")

gdp_wide <- vintages_wide(gdp_us)
gdp_long <- vintages_long(gdp_wide, keep_na = FALSE)
```

```r 
plot_vintages(
  gdp_long |>
    filter(
      pub_date >= as.Date("2009-01-01"),
      pub_date < as.Date("2010-01-01"),
      time > as.Date("2008-01-01"),
      time < as.Date("2010-01-01")
    ),
  type = "line",
  title = "Revisions of GDP during the financial crisis",
  subtitle = "qoq growth rates"
)
```
{{< figure src="gdp-example-plot-1.svg" alt="Multiple vintage paths for U.S. GDP growth, highlighting how estimates published in 2009 changed over time." caption="GDP growth vintages for the United States during the financial crisis." width="100%">}}

This first step is mainly about making the release history visible.
During volatile periods, the vintage paths can diverge enough that the story told by the first release is noticeably different from the story told a year later.

Once the data are in tidy vintage form, you can compare a set of early releases to a later benchmark release.

```r 
final_release <- get_nth_release(gdp_long, n = 10)
early_releases <- get_nth_release(gdp_long, n = 0:6)

summary_tbl <- get_revision_analysis(early_releases, final_release)
```

```
Warning: Both 'release' and 'pub_date' columns are present in 'df.
      The 'release' column will be used for grouping.
```

```r 
summary_tbl |>
  select(id, release, `Bias (mean)`, `Bias (robust p-value)`, `Noise/Signal`)
```

```

=== Revision Analysis Summary ===

# A tibble: 7 × 5
  id    release   `Bias (mean)` `Bias (robust p-value)` `Noise/Signal`
  <chr> <chr>             <dbl>                   <dbl>          <dbl>
1 US    release_0        -0.014                   0.52           0.22 
2 US    release_1        -0.015                   0.425          0.202
3 US    release_2        -0.013                   0.507          0.205
4 US    release_3        -0.003                   0.851          0.194
5 US    release_4        -0.014                   0.326          0.157
6 US    release_5        -0.021                   0.181          0.152
7 US    release_6        -0.018                   0.202          0.13 

=== Interpretation ===

id=US, release=release_0:
  • No significant bias detected (p = 0.52 )
  • Moderate revision volatility (Noise/Signal = 0.22 )

id=US, release=release_1:
  • No significant bias detected (p = 0.425 )
  • Moderate revision volatility (Noise/Signal = 0.202 )

id=US, release=release_2:
  • No significant bias detected (p = 0.507 )
  • Moderate revision volatility (Noise/Signal = 0.205 )

id=US, release=release_3:
  • No significant bias detected (p = 0.851 )
  • Moderate revision volatility (Noise/Signal = 0.194 )

id=US, release=release_4:
  • No significant bias detected (p = 0.326 )
  • Moderate revision volatility (Noise/Signal = 0.157 )

id=US, release=release_5:
  • No significant bias detected (p = 0.181 )
  • Moderate revision volatility (Noise/Signal = 0.152 )

id=US, release=release_6:
  • No significant bias detected (p = 0.202 )
  • Moderate revision volatility (Noise/Signal = 0.13 )
```

This is where `reviser` moves beyond a reshape-and-plot package.
The revision summary reports quantities that applied work often needs but usually rebuilds ad hoc: mean bias, quantiles, volatility, noise-to-signal ratios, and hypothesis tests for bias, serial correlation, and news-versus-noise interpretations.

In the bundled example, the early U.S. GDP releases over this sample show little evidence of systematic bias relative to the later benchmark.
The package also supports efficient-release diagnostics, where the question is not only whether revisions exist, but when additional revisions stop adding meaningful information.

```r 
efficient_release <- get_first_efficient_release(early_releases, final_release)
summary(efficient_release)
```

```
Efficient release:  0 

Model summary: 

Call:
stats::lm(formula = formula, data = df_wide)

Residuals:
     Min       1Q   Median       3Q      Max 
-0.89186 -0.12669  0.02046  0.11475  0.97986 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  0.00299    0.02223   0.134    0.893    
release_0    0.97412    0.01692  57.567   <2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 0.2518 on 166 degrees of freedom
  (10 observations deleted due to missingness)
Multiple R-squared:  0.9523,	Adjusted R-squared:  0.952 
F-statistic:  3314 on 1 and 166 DF,  p-value: < 2.2e-16


Test summary: 

Linear hypothesis test:
(Intercept) = 0
release_0 = 1

Model 1: restricted model
Model 2: final ~ release_0

Note: Coefficient covariance matrix supplied.

  Res.Df Df      F Pr(>F)
1    168                 
2    166  2 1.9283 0.1486
```

That is exactly the kind of result that is hard to see from a revision triangle alone but straightforward to formalize once the workflow is standardized.

## From descriptive analysis to revision nowcasting

For many users, revision summaries will be the main use case.
But `reviser` also includes model-based tools for users who want to treat revisions as an explicit latent-data problem.

Two vignettes walk through nowcasting revisions with:

- the generalized Kishor-Koenig family via `kk_nowcast()`;
- the Jacobs-Van Norden model via `jvn_nowcast()`.

Both approaches cast the revision problem into state-space form, which makes it possible to estimate the dynamics of news and noise in successive data releases.
For technical users, this is the part of the package that turns revision analysis from retrospective diagnosis into a forecasting problem.

Here is a compact `kk_nowcast()` example following the Kishor-Koenig workflow from the vignette.
The key idea is to first identify an efficient release `e`, then estimate the revision system on the corresponding panel of releases.

```r 
gdp_ea <- reviser::gdp |>
  tsbox::ts_pc() |>
  dplyr::filter(
    id == "EA",
    time >= min(pub_date),
    time <= as.Date("2020-01-01")
  )

releases <- get_nth_release(gdp_ea, n = 0:14)
final_release <- get_nth_release(gdp_ea, n = 15)

efficient_release <- get_first_efficient_release(releases, final_release)

fit_kk <- kk_nowcast(
  df = efficient_release$data,
  e = efficient_release$e,
  model = "KK",
  method = "MLE"
)

summary(fit_kk)
```

```

=== Kishor-Koenig Model ===

Convergence: Success 
Log-likelihood: 125.7 
AIC: -231.41 
BIC: -198.23 

Parameter Estimates:
 Parameter Estimate Std.Error
        F0    0.633     0.131
      G0_0    0.950     0.031
      G0_1   -0.037     0.152
      G0_2   -0.181     0.220
      G1_0   -0.009     0.011
      G1_1    0.594     0.061
      G1_2    0.194     0.092
        v0    0.380     0.068
      eps0    0.008     0.001
      eps1    0.001     0.000
```

```r 
plot(fit_kk)
```
{{< figure src="kk-nowcast-example-1.svg" alt="Diagnostic plot from a Kishor-Koenig nowcast model for euro area GDP revisions, summarizing the fitted revision dynamics." caption="Diagnostic plot from the Kishor-Koenig nowcast example." width="100%">}}

The fitted object contains estimated parameters, filtered and smoothed latent states, and plotting methods for the implied efficient-release path.
That gives you a direct route from descriptive revision analysis to a state-space nowcast of future revisions.

## What reviser adds

What stands out in `reviser` is not a single function, but the coherence of the workflow:

- the package has explicit conventions for vintage data;
- descriptive revision analysis and formal testing sit in the same API;
- efficient-release analysis connects directly to applied questions about which release to trust;
- nowcasting tools extend the same workflow rather than forcing a separate modeling stack.

If you work with real-time macroeconomic data, that combination is useful because revision analysis is usually fragmented across custom scripts, one-off spreadsheets, and package combinations that do not share a common data structure.

## Try it and push it further

You can install the package from the rOpenSci R-universe:

```r 
install.packages(
  "reviser",
  repos = c("https://ropensci.r-universe.dev", "https://cloud.r-project.org")
)
```

Then start with the package site and vignettes:

- docs: <https://docs.ropensci.org/reviser>
- source: <https://github.com/ropensci/reviser>

If you have a real-time dataset with a different release structure, that is a good stress test for the package.
If you find gaps in the workflow or have a use case to share, open an issue or contribute an example.
Revision analysis gets more useful as it becomes easier to compare workflows across datasets rather than rebuilding them from scratch each time.
