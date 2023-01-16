---
title: Dynamite for Causal Inference from Panel Data using Dynamic Multivariate Panel
  Models
author: "Jouni Helske"
date: "2022-12-15"
slug: "dynamite-r-package"
tags:
- dynamite
- Bayesian
- panel data
- causal inference
- tech notes
- Software Peer Review
- packages
- R
- community
package_version: 1.0.2
description: Dynamite is a new R package for Bayesian modelling of complex panel data
  using dynamic multivariate panel models.
tweet: A post about {dynamite} R package by @jouni_helske!
---



## Introduction


Panel data contains measurements from multiple subjects measured over multiple time points. 
Such data can be encountered for example in many social science applications such as when analysing register data or cohort studies. 
Often the aim is to perform causal inference based on such observational data (instead of randomized control trials).

A new [rOpensci-approved](https://github.com/ropensci/software-review/issues/554) R package [dynamite](https://docs.ropensci.org/dynamite) implements a new class of panel models called the Bayesian dynamic multivariate panel model (DMPM) which supports 
* Joint modelling of multiple response variables potentially from mixed distributions (e.g. Gaussian and categorical responses)
* Time-varying regression coefficients modelled as splines
* Probabilistic posterior-predictive simulations for long-term causal effect estimation (including not only the average causal effects but the full interventional distributions of interest)

The theory regarding the model and the subsequent causal effect estimation for panel data, with some examples, can be found in the [SocArxiv preprint](https://osf.io/preprints/socarxiv/mdwu5/)[^1] and the package [vignette](https://docs.ropensci.org/dynamite/articles/dynamite.html). 
In this post, I will illustrate the use of `dynamite` for a synthetic control approach popularized by the [`CausalImpact`](https://CRAN.R-project.org/package=CausalImpact)[^2] package in univariate time series setting where we have data only on a single "individual".


## Data generation

Load some packages:
```r 
library(dynamite)
library(dplyr)
library(ggplot2)
library(patchwork)
```

I will consider the following true data generating process (DGP):
$$
`\begin{aligned}
x_t & \sim N(-0.5 y_{t-1} + x_{t-1} + z_{t-1}, 0.3^2)\\
y_t & \sim N(0.7x_{t-1}, 0.3^2)\\
\end{aligned}`
$$
for `\(t=2, \ldots, 100\)`, where the initial values `\(x_1\)` and `\(y_1\)` are drawn from the standard normal distribution (in subsequent modelling we condition on these first observations, i.e. they are treated as fixed data).

For `\(z_t\)`, I fix the first 80 time points to zero, and the last 20 to one. 
Our hypothetical research question is how does `\(z\)` affect `\(y\)`? 
Looking at our data generating process it is clear that `\(z_t\)` does not affect `\(y_t\)`, but it still affects `\(y_{t+1},y_{t+2},\ldots\)` via `\(x_t,x_{t+1},\ldots\)`.

I will first simulate some data according to our true model:
```r 
set.seed(1)
n <- 100
x <- y <- numeric(n)
z <- rep(0:1, times = c(80, 20))
x[1] <- rnorm(1)
y[1] <- rnorm(1)
for(i in 2:n) {
    x[i] <- rnorm(1, -0.5 * y[i-1] + x[i-1] + z[i], 0.3)
    y[i] <- rnorm(1, 0.7 * x[i-1], 0.3)
}
d <- data.frame(y = y, x = x, z = z, time = 1:n) 
ggplot(d, aes(time)) + 
    geom_line(aes(y = y, colour = "y")) + 
    geom_line(aes(y = x, colour = "x")) +
    scale_colour_discrete("Series") +
    ylab("Value") + xlab("Time") +
    theme_bw()
```
{{<figure src="data-1.png" alt="Figure showing the simulated x and y variables.">}}

## Causal inference based on synthetic control with dynamite

While in the data generation the `\(y_t\)` variable did not depend on the lagged value `\(y_{t-1}\)`and `\(z_t\)`, I will nevertheless estimate a model where both `\(x_t\)` and `\(y_t\)` depend on the `\(x_{t-1}\)` and `\(y_{t-1}\)`, as well as `\(z\)`, mimicking the fact that I'm not sure about the true causal graph (structure of DGP). 
The model formula for the main function of the package, [`dynamite()`](https://docs.ropensci.org/dynamite/reference/dynamite.html) is defined using special functions [`obs()`](https://docs.ropensci.org/dynamite/reference/dynamiteformula.html), one for each "channel", i.e. response variable. 
The lagged variables can be defined in the formula as `lag(y)`, but here I use a special function [`lags()`](https://docs.ropensci.org/dynamite/reference/lags.html) which by default adds lagged values of all channels to each channel:
```r 
f <- obs(y ~ z, family = "gaussian") + obs(x ~ z, family = "gaussian") + lags()
## same as 
# f <- obs(y ~ z + lag(y) + lag(x), "gaussian) + 
#   obs(x ~ z + lag(y) + lag(x), "gaussian)
```

We can now estimate our model with `dynamite` for which we need to define the data, the variable in the data defining the time index (argument `time`), and the grouping variable (argument `group`), which can be ignored in this univariate case:
```r 
fit <- dynamite(f,
  data = d,
  time = "time",
  chains = 4, cores = 4, refresh = 0)
```

```
Compiling Stan model.
```

The actual estimation delegated to [Stan](mc-stan.org) using either [rstan](https://cran.r-project.org/package=rstan) (default) or [cmdstanr](https://github.com/stan-dev/cmdstanr) backend. 
The last arguments are passed to `rstan:sampling` which runs the Markov chain Monte Carlo for us. 
While `rstan` is the default backend as it is available at CRAN, we recommend often more efficient `cmdstanr` or the latest development version of `rstan``, available at [Stan's repo for R packages](http://mc-stan.org/r-packages/).

Let's see some results:
```r 
fit
```

```
Model:
  Family   Formula
y gaussian y ~ z  
x gaussian x ~ z  

Lagged responses added as predictors with: k = 1
Data: d (Number of observations: 198)
Grouping variable: .group (Number of groups: 1)
Time index variable: time (Number of time points: 100)

Smallest bulk-ESS: 2366 (beta_x_x_lag1)
Smallest tail-ESS: 2293 (beta_y_x_lag1)
Largest Rhat: 1.003 (sigma_y)

Elapsed time (seconds):
        warmup sample
chain:1  4.482  4.090
chain:2  4.545  4.381
chain:3  4.252  3.778
chain:4  4.333  4.139

Summary statistics of the time-invariant parameters:
# A tibble: 10 × 10
   varia…¹     mean   median     sd    mad      q5     q95  rhat ess_b…² ess_t…³
   <chr>      <dbl>    <dbl>  <dbl>  <dbl>   <dbl>   <dbl> <dbl>   <dbl>   <dbl>
 1 alpha_x  0.0117   0.0113  0.0307 0.0307 -0.0386  0.0638  1.00   5735.   2877.
 2 alpha_y -0.00498 -0.00489 0.0327 0.0317 -0.0587  0.0486  1.00   5929.   2990.
 3 beta_x…  0.987    0.987   0.0576 0.0569  0.894   1.08    1.00   2366.   2482.
 4 beta_x… -0.570   -0.570   0.0692 0.0697 -0.684  -0.457   1.00   2855.   2686.
 5 beta_x…  1.23     1.23    0.137  0.135   1.00    1.45    1.00   3148.   2310.
 6 beta_y…  0.656    0.656   0.0608 0.0601  0.558   0.755   1.00   2539.   2293.
 7 beta_y…  0.0867   0.0868  0.0705 0.0699 -0.0288  0.203   1.00   3187.   2877.
 8 beta_y… -0.0135  -0.0148  0.147  0.142  -0.252   0.228   1.00   3613.   2855.
 9 sigma_x  0.278    0.277   0.0206 0.0206  0.246   0.313   1.00   4001.   2866.
10 sigma_y  0.290    0.289   0.0214 0.0207  0.257   0.327   1.00   4172.   2822.
# … with abbreviated variable names ¹​variable, ²​ess_bulk, ³​ess_tail
```

The coefficient estimates are pretty much in line with the data generation, but notice the relatively large posterior standard errors of the coefficients related to `\(z\)`; this is due to the fact that we have only a single series and single changepoint at time `\(t=81\)`.

We can now perform some posterior predictive checks. First, we can check how well the posterior samples of our one-step-ahead predictions match with the observations by using the [`fitted()`](https://docs.ropensci.org/dynamite/reference/fitted.dynamitefit.html) method and visualizing these posterior predictive distributions:

```r 
out <- fitted(fit) |> 
  group_by(time) |>
  summarise(
    mean = mean(y_fitted),
    lwr80 = quantile(y_fitted, 0.1, na.rm = TRUE), # na.rm as t = 1 is fixed
    upr80 = quantile(y_fitted, 0.9, na.rm = TRUE),
    lwr95 = quantile(y_fitted, 0.025, na.rm = TRUE),
    upr95 = quantile(y_fitted, 0.975, na.rm = TRUE))
ggplot(out, aes(time, mean)) +
  geom_ribbon(aes(ymin = lwr95, ymax = upr95), alpha = 0.3, fill = "#ED3535") +
  geom_ribbon(aes(ymin = lwr80, ymax = upr80), alpha = 0.3, fill = "#ED3535") +
  geom_line(colour = "#ED3535") +
  geom_line(data = d, aes(y = y), colour = "black") +
  xlab("Time") + ylab("Value") +
  theme_bw()
```

```
Warning: Removed 1 row(s) containing missing values (geom_path).
```

{{<figure src="unnamed-chunk-5-1.png" >}}
Note that these are not real out-of-sample predictions as the posterior samples of model parameters used for these predictions are based on all our observations, which would be especially problematic for a model containing time-varying components (e.g., splines). More "honest" (and time consuming) approach would be to use approximate leave-future-out cross-validation via [`lfo()`](https://docs.ropensci.org/dynamite/reference/lfo.html) function.

Given the posterior samples of the model parameters, I can also make some counterfactual predictions. 
First I create new data frame where `\(z=0\)` for all time points, and where `\(y\)` and `\(x\)` are set to missing values starting from `\(t=81\)` (the time point where started our intervention `\(z=1\)`):
```r 
newdata <- d
newdata$z <- 0
newdata$y[81:100] <- NA
newdata$x[81:100] <- NA
```

I then input this new data to the [`predict()`](https://docs.ropensci.org/dynamite/reference/predict.dynamitefit.html) method and define that I want posterior samples of expected values instead of new observations by using `type = "mean"` (new observations are still simulated behind the scenes in order to move forward in time):
```r 
pred <- predict(fit, newdata = newdata, type = "mean") |> 
  filter(time > 80)
head(pred)
```

```
        y_mean     x_mean .group time .draw z  y  x
1  0.095638896 -0.4543729      1   81     1 0 NA NA
2 -0.001717773 -0.5486151      1   82     1 0 NA NA
3 -0.420702197 -0.4444779      1   83     1 0 NA NA
4 -0.042682583 -0.5119842      1   84     1 0 NA NA
5 -0.332072878 -0.5593297      1   85     1 0 NA NA
6 -0.193385491 -0.4175845      1   86     1 0 NA NA
```

From these I compute the posterior mean, 80% and 95% intervals for each time point:
```r 
sumr <- pred |> 
  group_by(time) |>
  summarise(
    mean = mean(y_mean),
    lwr80 = quantile(y_mean, 0.1),
    upr80 = quantile(y_mean, 0.9),
    lwr95 = quantile(y_mean, 0.025),
    upr95 = quantile(y_mean, 0.975))
```

And some figures following similar visualization style as popularized by the `CausalImpact` consisting of the actual predictions, difference compared to observed values, and cumulative differences of these:
```r 
p1 <- ggplot(sumr, aes(time, mean)) +
  geom_ribbon(aes(ymin = lwr95, ymax = upr95), alpha = 0.3, fill = "#ED3535") +
  geom_ribbon(aes(ymin = lwr80, ymax = upr80), alpha = 0.3, fill = "#ED3535") +
  geom_line(colour = "#ED3535") +
  geom_line(data = d, aes(y = y), colour = "black") +
  xlab("Time") + ylab("Value") +
  theme_bw()

sumr$y_obs <- y[81:100]
p2 <- sumr |> 
  mutate(
    y_obs_diff = y_obs - mean, 
    lwr_diff80 = y_obs - lwr80, 
    upr_diff80 = y_obs - upr80,
    lwr_diff95 = y_obs - lwr95, 
    upr_diff95 = y_obs - upr95
  ) |>
  ggplot(aes(time, y_obs_diff)) +
  geom_ribbon(aes(ymin = lwr_diff95, ymax = upr_diff95), 
    alpha = 0.3, fill = "#ED3535") +
  geom_ribbon(aes(ymin = lwr_diff80, ymax = upr_diff80), 
    alpha = 0.3, fill = "#ED3535") +
  geom_line(colour = "#ED3535") +
  xlab("Time") + ylab("Predicted value - observed value") +
  theme_bw()

cs_sumr <- pred |> 
  group_by(.draw) |>
  summarise(
    cs = cumsum(d$y[81:n] - y_mean), across()) |>
  group_by(time) |>
  summarise(mean = mean(cs),
    lwr = quantile(cs, 0.025, na.rm = TRUE),
    upr = quantile(cs, 0.975, na.rm = TRUE))
```

```
`summarise()` has grouped output by '.draw'. You can override using the
`.groups` argument.
```

```r 
p3 <- ggplot(cs_sumr, aes(time, mean)) +
  geom_ribbon(aes(ymin = lwr, ymax = upr), alpha = 0.3, fill = "#ED3535") +
  geom_line(colour = "#ED3535") +
  xlab("Time") + 
  ylab("Cumulative difference") +
  theme_bw()
p1 + p2 + p3 + plot_layout(ncol = 1)
```
{{<figure src="preds-1.png" alt="Figure showing the causal effect estimates, the actual predictions, difference with the observations, and cumulative differences.">}}

In the top figure, we see the actual predictions in the counterfactual (synthetic control) case where no intervention was done ($z_t=0$ for all `\(t\)`), whereas in the middle figure I have drawn the difference between predicted values and the actual observations for times `\(t=81,\ldots,100\)`. 
In the bottom figure we see the cumulative difference between observations and our predictions, which show clear effect of intervention.

Finally we can consider a case where we assume that the intervention affects only variable `\(y\)` (this is also what is assumed in `CausalImpact`). 
For this purpose, I repeat the previous simulation but I keep variable `\(x\)` fixed to its observed values:
```r 
newdata <- d
newdata$z <- 0
newdata$y[81:100] <- NA
pred_fixed_x <- predict(fit, newdata = newdata, type = "mean") |> 
  filter(time > 80)
sumr_fixed_x <- pred_fixed_x |> 
  group_by(time) |>
  summarise(
    mean = mean(y_mean),
    lwr80 = quantile(y_mean, 0.1),
    upr80 = quantile(y_mean, 0.9),
    lwr95 = quantile(y_mean, 0.025),
    upr95 = quantile(y_mean, 0.975))

p1 <- ggplot(sumr_fixed_x, aes(time, mean)) +
  geom_ribbon(aes(ymin = lwr95, ymax = upr95), alpha = 0.3, fill = "#ED3535") +
  geom_ribbon(aes(ymin = lwr80, ymax = upr80), alpha = 0.3, fill = "#ED3535") +
  geom_line(colour = "#ED3535") +
  geom_line(data = d, aes(y = y), colour = "black") +
  xlab("Time") + ylab("Value") +
  theme_bw()

sumr_fixed_x$y_obs <- y[81:100]
p2 <- sumr_fixed_x |> 
mutate(
    y_obs_diff = y_obs - mean, 
    lwr_diff80 = y_obs - lwr80, 
    upr_diff80 = y_obs - upr80,
    lwr_diff95 = y_obs - lwr95, 
    upr_diff95 = y_obs - upr95
  ) |>
  ggplot(aes(time, y_obs_diff)) +
  geom_ribbon(aes(ymin = lwr_diff95, ymax = upr_diff95), 
    alpha = 0.3, fill = "#ED3535") +
  geom_ribbon(aes(ymin = lwr_diff80, ymax = upr_diff80), 
    alpha = 0.3, fill = "#ED3535") +
  geom_line(colour = "#ED3535") +
  xlab("Time") + ylab("Predicted value - observed value") +
  theme_bw()

cs_sumr_fixed_x <- pred_fixed_x |> 
  group_by(.draw) |>
  summarise(
    cs = cumsum(d$y[81:n] - y_mean), across()) |>
  group_by(time) |>
  summarise(mean = mean(cs),
    lwr = quantile(cs, 0.025, na.rm = TRUE),
    upr = quantile(cs, 0.975, na.rm = TRUE))
```

```
`summarise()` has grouped output by '.draw'. You can override using the
`.groups` argument.
```

```r 
p3 <- ggplot(cs_sumr_fixed_x, aes(time, mean)) +
  geom_ribbon(aes(ymin = lwr, ymax = upr), alpha = 0.3, fill = "#ED3535") +
  geom_line(colour = "#ED3535") +
  xlab("Time") + 
  ylab("Cumulative difference") +
  theme_bw()
p1 + p2 + p3 + plot_layout(ncol = 1)
```
{{<figure src="fixed_x-1.png" alt="Figure showing the incorrect causal effect estimates with fixed x.">}}

As expected, the (wrong) conclusion would be that our original intervention did not affect `\(y\)`.

## Future directions

In future, we plan to also support group-specific effects for time-invariant effects, and more distributions such as Weibull, multinomial, and `\(t\)`-distribution for the response variables. 
We would also be very interested in hearing how the package is used in various applications, especially if you can share your data openly.
Pull requests and other contributions are very welcome.


## Acknowledgements

The package was created by [Santtu Tikka](https://github.com/santikka) and [Jouni Helske](https://github.com/helske) as part of [PREDLIFE](https://sites.utu.fi/predlife/en/) project, funded by the Academy of Finland.
The package was [reviewed](https://github.com/ropensci/software-review/issues/554) by [Nicholas Clark](https://github.com/nicholasjclark) and [Lucy D'Agostino McGowan](https://github.com/LucyMcGowan).

[^1]: Helske J, Tikka S (2022). Estimating Causal Effects from Panel Data with Dynamic Multivariate Panel
  Models. https://osf.io/preprints/socarxiv/mdwu5/.
[^2]: Brodersen et al., 2015, Annals of Applied Statistics. Inferring causal impact using Bayesian
  structural time-series models. https://research.google/pubs/pub41854/

