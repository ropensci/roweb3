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
Such data can be encountered in many social science applications such as when analysing register data or cohort studies (for example). 
Often the aim is to perform causal inference based on such observational data (instead of randomized control trials).

A new [rOpensci-reviewed](https://github.com/ropensci/software-review/issues/554) R package [dynamite](https://docs.ropensci.org/dynamite) available on CRAN implements a new class of panel models called the Bayesian dynamic multivariate panel model (DMPM) which supports 
* Joint modelling of multiple response variables potentially from mixed distributions (e.g. Gaussian and categorical responses)
* Time-varying regression coefficients modelled as splines
* Group-level random effects (coming soon)
* Probabilistic posterior predictive simulations for long-term causal effect estimation, including not only the average causal effects but the full interventional distributions of interest (i.e. the distribution of the response variable after an intervention).

The theory regarding the model and the subsequent causal effect estimation for panel data, with some examples, can be found in the [SocArxiv preprint](https://osf.io/preprints/socarxiv/mdwu5/)[^1] and the package [vignette](https://docs.ropensci.org/dynamite/articles/dynamite.html). 
In this post, I will illustrate the use of dynamite for causal inference in a non-panel setting (i.e. we have time series data on only a single "individual").

The idea of the following example is similar to a synthetic control approach for time series causal inference, originally suggested by Abadie et al.[^2], and further extended and popularized by Brodersen et al.[^3] and their [CausalImpact](https://CRAN.R-project.org/package=CausalImpact) package. 

The basic idea of the synthetic control method is that you have a time series of interest `\(y_1,\ldots,y_T\)`, for example daily sales of some product, and an intervention was made at some time point `\(t<T\)` (e.g., change in the value-added tax, VAT). 
You would then like to know what was the effect of the intervention on `\(y_{t},\ldots,y_{T}\)`, for example how much did the sales increase due to the decrease or removal of the VAT.
Typically you also have one or more "control times series" `\(x\)` which predict the behaviour of `\(y\)` but for which the intervention did not affect (e.g. some time-varying properties of the product, the demographic variables of the market, or sales of the product in some other markets). 
You then build a statistical model for `\(y_1,\ldots, y_{t-1}\)` using the control series for the same time points, use your estimated model to predict the values of `\(y\)` in the intervention period `\(t, \ldots, T\)` using the observed control series and compare these predictions to the observed values of `\(y_t,\ldots, y_T\)`.

In the synthetic control approach one of the key assumptions is that the control series itself are not affected by the intervention. 
In the sales example above, using sales data of some distant market could be suitable control, but the change in VAT could have an effect on the sales in the neighboring markets as well, so using such time series as control would then violate this assumption.
While applicable also to valid synthetic control cases, the dynamite package can be used also in cases where not only the main response variable of interest (i.e. sales in the above example) but also the other control series (sales of neighboring markets) are affected by the intervention. This is done by jointly modelling both the main response variable of interest as well as the control time series (it could be argued that they should not be called control series in this case). 

## Data generation

Load some packages:
```r 
library(dynamite)
library(dplyr)     # Data manipulation
library(ggplot2)   # Figures
library(patchwork) # Combining Figures
```

I will consider the following true data generating process (DGP):
$$
`\begin{aligned}
x_t & \sim N(-0.5 y_{t-1} + x_{t-1} + z_{t-1}, 0.3^2)\\
y_t & \sim N(0.7x_{t-1}, 0.3^2)\\
\end{aligned}`
$$
for `\(t=2, \ldots, 100\)`, where the initial values `\(x_1\)` and `\(y_1\)` are drawn from the standard normal distribution (in subsequent modelling we condition on these first observations, i.e. they are treated as fixed data).

Variable `\(z_t\)` is our intervention variable, which I fixed to zero for the first 80 time points, and to one for the the last 20 time points, i.e. the intervention starts at time `\(t=81\)`.
Following the terminology in the DMPM paper, this is a recurring intervention, in contrast to an atomic intervention where `\(z_{81}=1\)` and zero otherwise.
Naturally it would be possible to also consider interventions such as `\(z_t=1\)` for `\(80<t<90\)` and `\(z_t=0\)` otherwise (e.g. a ad campaign starts at time 81 and ends at time 89).

Our hypothetical research question is how does `\(z\)` affect `\(y\)`? 
Looking at our data generating process it is clear that `\(z_t\)` does not affect `\(y_t\)`, but it still affects `\(y_{t+1},y_{t+2},\ldots\)` via `\(x_t,x_{t+1},\ldots\)`. 
Note that I chose this model just to exemplify the modelling, and these coefficients clearly does not reflect the sales example in the introduction.

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
{{<figure src="data-1.png" alt="Line plot with a pink line labelled x and a blue line labelled y. The axes are Value on the Y and Time on the X. The two lines follow each other fluctuating around zero, and both jump to fluctuating around 2.5 after time 80.">}}
## Causal inference based on synthetic control with dynamite

While in the data generation the `\(y_t\)` variable did not depend on the lagged value `\(y_{t-1}\)` and `\(z_t\)`, I will nevertheless estimate a model where both `\(x_t\)` and `\(y_t\)` depend on the `\(x_{t-1}\)` and `\(y_{t-1}\)`, as well as `\(z\)`, mimicking the fact that I'm not sure about the true causal graph (structure of DGP). 
The model formula for the main function of the package, [`dynamite()`](https://docs.ropensci.org/dynamite/reference/dynamite.html), is defined by calling a special function [`obs()`](https://docs.ropensci.org/dynamite/reference/dynamiteformula.html) once for each "channel", i.e. response variable. 
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

The actual estimation is delegated to [Stan](https://mc-stan.org) using either [rstan](https://cran.r-project.org/package=rstan) (default) or [cmdstanr](https://github.com/stan-dev/cmdstanr) backend. 
The last arguments are passed to `rstan::sampling()` which runs the Markov chain Monte Carlo for us. 
While rstan is the default backend as it is available at CRAN, we recommend often more efficient cmdstanr or the latest development version of rstan, available at [Stan's repo for R packages](https://mc-stan.org/r-packages/).

Let's see some results:
```r 
options(width = 90) # expand the width so that the column names are not cut off
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
chain:1  3.402  3.804
chain:2  3.489  3.977
chain:3  3.409  3.434
chain:4  3.548  3.703

Summary statistics of the time-invariant parameters:
# A tibble: 10 × 10
   variable          mean   median     sd    mad      q5     q95  rhat ess_bulk ess_tail
   <chr>            <dbl>    <dbl>  <dbl>  <dbl>   <dbl>   <dbl> <dbl>    <dbl>    <dbl>
 1 alpha_x        0.0117   0.0113  0.0307 0.0307 -0.0386  0.0638  1.00    5735.    2877.
 2 alpha_y       -0.00498 -0.00489 0.0327 0.0317 -0.0587  0.0486  1.00    5929.    2990.
 3 beta_x_x_lag1  0.987    0.987   0.0576 0.0569  0.894   1.08    1.00    2366.    2482.
 4 beta_x_y_lag1 -0.570   -0.570   0.0692 0.0697 -0.684  -0.457   1.00    2855.    2686.
 5 beta_x_z       1.23     1.23    0.137  0.135   1.00    1.45    1.00    3148.    2310.
 6 beta_y_x_lag1  0.656    0.656   0.0608 0.0601  0.558   0.755   1.00    2539.    2293.
 7 beta_y_y_lag1  0.0867   0.0868  0.0705 0.0699 -0.0288  0.203   1.00    3187.    2877.
 8 beta_y_z      -0.0135  -0.0148  0.147  0.142  -0.252   0.228   1.00    3613.    2855.
 9 sigma_x        0.278    0.277   0.0206 0.0206  0.246   0.313   1.00    4001.    2866.
10 sigma_y        0.290    0.289   0.0214 0.0207  0.257   0.327   1.00    4172.    2822.
```

The coefficient estimates are pretty much in line with the data generation, but notice the relatively large posterior standard errors of the coefficients related to `\(z\)`; this is due to the fact that we have only a single series and single changepoint at time `\(t=81\)`.

We can now perform some posterior predictive checks. First, we can check how well the posterior samples of our one-step-ahead predictions match with the observations by using the [`fitted()`](https://docs.ropensci.org/dynamite/reference/fitted.dynamitefit.html) method and visualizing these posterior predictive distributions (I'll one plot the estimates for the variable y for simplicity):

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

{{<figure src="unnamed-chunk-5-1.png" alt="Figure showing the one-step ahead predictions (fitted values) of variable y of the model.">}}
Note that these are not real out-of-sample predictions as the posterior samples of model parameters used for these predictions are based on all our observations, which would be especially problematic for a model containing time-varying components (e.g., splines). A more "honest" (and time consuming) approach would be to use approximate leave-future-out cross-validation via dynamite's [`lfo()`](https://docs.ropensci.org/dynamite/reference/lfo.html) function.

Given the posterior samples of the model parameters, I can also make some counterfactual predictions (how `\(y_{81},\ldots,y_{100}\)` would have looked like if no intervention was made, i.e. if `\(z_t\)` was zero for all `\(t\)`). 
First I create a new data frame where `\(z=0\)` for all time points, and where `\(y\)` and `\(x\)` are set to missing values starting from `\(t=81\)` (the time point where started our intervention `\(z=1\)`):
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
1  0.03791882 -0.4215726      1   81     1 0 NA NA
2 -0.02275811 -0.4106880      1   82     1 0 NA NA
3 -0.26964846 -0.2841355      1   83     1 0 NA NA
4  0.03939759 -0.3496896      1   84     1 0 NA NA
5 -0.20351175 -0.4124529      1   85     1 0 NA NA
6 -0.06739320 -0.2791586      1   86     1 0 NA NA
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

And some figures, following similar visualization style as popularized by the CausalImpact package, consisting of the actual predictions, difference compared to observed values, and cumulative differences of these:
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
`summarise()` has grouped output by '.draw'. You can override using the `.groups`
argument.
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
{{<figure src="preds-1.png" alt="Three stacked line plots, each with time as the x axis. From top to bottom, the y-axes are Value, Predicted minus Observed value, and Cumulative differences. The top figure shows a pink ribbon deviating from a black line in the 80-100 time range. The middle figure shows a fluctuating pink ribbon. The bottom figure shows an increasing ribbon.">}}

In the top figure, we see the predictions for the counterfactual case where no intervention was done ($z_t=0$ for all `\(t\)`; pink ribbon/red line), whereas in the middle figure I have drawn the difference between predicted values and the actual observations for times `\(t=81,\ldots,100\)`, which show clear effect of intervention (the difference between between observations and predictions do not fluctuate around zero). 
In the bottom figure we see the cumulative difference between observations and our predictions, which emphasise how the cumulative effect keeps increasing during the whole study period instead of tapering off or disappearing completely.

Finally we can consider a case where we assume that the intervention affects only a single response variable, `\(y\)`, and `\(x\)` does not depend on `\(y\)`, Which, since we created this data, we know would be incorrect. 
This is essentially same as treating `\(x\)` as exogenous and estimating a single-response model for `\(y\)`.
But in our case we can also proceed with our original model, and just modify the previous simulation so that the variable `\(x\)` is fixed to its observed values:
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
`summarise()` has grouped output by '.draw'. You can override using the `.groups`
argument.
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
{{<figure src="fixed_x-1.png" alt="Three stacked line plots, each with time as the x axis. From top to bottom, the y-axes are Value, Predicted minus Observed value, and Cumulative differences. The top figure shows a pink ribbon matching a black line in the 80-100 time range. The middle figure shows a fluctuating pink ribbon. The bottom figure shows a ribbon funnelling wider around zero.">}}

As expected, because we treated variable `\(x\)` as fixed, and the intervention only affects `\(y\)` only via `\(x\)`, we see that the counterfactual predictions and the observed series are very similar and would  (incorrecly) conclude that our original intervention did not affect `\(y\)`.

## Future directions

In future, we plan to also support group-specific effects for time-invariant effects, and more distributions such as Weibull, multinomial, and `\(t\)`-distribution for the response variables. 
We would also be very interested in hearing how the package is used in various applications, especially if you can share your data openly.
[Pull requests](https://github.com/ropensci/dynamite) and other contributions are very welcome.


## Acknowledgements

The package was created by [Santtu Tikka](https://github.com/santikka) and [Jouni Helske](https://github.com/helske) as part of [PREDLIFE](https://sites.utu.fi/predlife/en/) project, funded by the Academy of Finland.
The package was [reviewed](https://github.com/ropensci/software-review/issues/554) by [Nicholas Clark](https://github.com/nicholasjclark) and [Lucy D'Agostino McGowan](https://github.com/LucyMcGowan).

[^1]: Helske J, Tikka S (2022). Estimating Causal Effects from Panel Data with Dynamic Multivariate Panel
  Models. SocArxiv Preprint. doi.org/10.31235/osf.io/mdwu5.
[^2]: Abadie, A, Gardeazabal, J (2003). The Economic Costs of Conflict: A Case Study of the Basque Country. The American Economic Review, 93(1), 113–132. doi.org/10.1257/000282803321455188
[^3]: Brodersen KH, Gallusser F, Koehler J, Remy N, and Scott SL (2015). Annals of Applied Statistics. Inferring causal impact using Bayesian structural time-series models. doi.org/10.1214/14-AOAS788

