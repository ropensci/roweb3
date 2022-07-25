---
title: New Package yfR 
author:
  - Marcelo S. Perlin
date: '2022-07-11'
slug: package-yfr
categories: []
tags:
  - yfR
  - yahoo-finance
  - stocks
  - community
  - packages
  - data-access
  - data-extraction
  - software-peer-review
package_version: 1.0.0
description: A simple tutorial for package yfR
twitterImg: blog/2022-07-11-package-yfr/manystocks-1.png
twitterAlt: Data downloaded with yfR
tweet: New package yfR by @msperlin!
output:
  html_document:
    keep_md: yes
---




Package `yfR` was recently approved in the peer review process of [rOpenSci](https://github.com/ropensci/software-review/issues/523) and is all about downloading stock price data from [Yahoo Finance (YF)](https://finance.yahoo.com/). I wrote this package to solve a particular problem I had as a teacher: I needed a large volume of clean stock price data to use in my classes. While there are several R packages to import raw data from YF, none solved my problem. 

Package `yfR` facilitates the importation of data, organizing it in the `tidy` format and speeding up the process using a cache system and parallel computing. `yfR` is a backwards-incompatible substitute of [BatchGetSymbols](https://CRAN.R-project.org/package=BatchGetSymbols),  released in 2016 (see vignette [yfR and BatchGetSymbols](https://docs.ropensci.org/yfR/articles/diff-batchgetsymbols.html) for details). 


# The data

[YF](https://finance.yahoo.com/) provides a vast repository of stock price data around the globe. It covers a significant number of markets and assets, being used extensively in academic research and teaching. In order to import the financial data from YF, all you need is a ticker (id of a stock, e.g. "GM" for [General Motors](https://finance.yahoo.com/quote/GM?p=GM&.tsrc=fin-srch)) and a time period -- first and last date. 

## Available columns

The main function of the package, `yfR::yf_get`, returns a dataframe with the financial data. All price data is measured at the unit of the financial exchange. For example, price data for GM (NASDAQ/US) is measured in dollars, while price data for PETR3.SA (B3/BR) is measured in Reais (Brazilian currency).

The returned data contains the following columns:

**ticker**: The requested tickers (ids of stocks);

**ref_date**: The reference day (this can also be year/month/week when using argument freq_data);

**price_open**: The opening price of the day/period;

**price_high**: The highest price of the day/period;

**price_close**: The close/last price of the day/period;

**volume**: The financial volume of the day/period, in the unit of the exchange;

**price_adjusted**: The stock price adjusted for corporate events such as 
splits, dividends and others -- this is usually what you want/need for studying 
stocks as it represents the **real** financial performance of stockholders;

**ret_adjusted_prices**: The arithmetic or log return (see input type_return) for the adjusted stock 
prices;

**ret_adjusted_prices**: The arithmetic or log return (see input type_return) for the closing stock 
prices;

**cumret_adjusted_prices**: The accumulated arithmetic/log return for the period (starts at 100%).


# Installation

```
# CRAN (stable)
install.packages('yfR')

# Github (dev version)
devtools::install_github('ropensci/yfR')

# rOpenSci
install.packages("yfR", repos = "https://ropensci.r-universe.dev")
```

# Features of `yfR`

Package `yfR` distinguishes itself from others due to the following features:

- Fetches daily/weekly/monthly/annual stock prices/returns from yahoo finance and outputs a dataframe (tibble) in the long format (stacked data);

- A feature called **collections** facilitates download of multiple tickers from a particular market/index. You can, for example, download data for all stocks in the SP500 index with a simple call to `yf_collection_get("SP500")`;

- A session-persistent smart cache system is available by default. This means that the data is saved locally and only missing portions are downloaded, if needed.

- All dates are compared to a benchmark index such as SP500 (^GSPC) and, whenever an individual asset does not have a sufficient number of dates, the software drops it from the output. This means you can choose to ignore tickers with a high proportion of missing dates.

- A customized function called `yf_convert_to_wide()` can transform the long dataframe into a wide format (tickers as columns), much used in portfolio optimization. The output is a list where each element is a different target variable (prices, returns, volumes).

- Parallel computing with package `furrr` is available, speeding up the data importation process.


# Examples of usage

## The SP500 historical performance 

In this example we are going to download price data for the SP500 index from 1950 to today (2022-07-15), analyze its financial performance and also visualize its prices using `ggplot2`.

```r 
if (!require(yfR)) install.packages('yfR')

# set options for algorithm
my_ticker <- '^GSPC'
first_date <- "1950-01-01"
last_date <- Sys.Date()

# fetch data
df_yf <- yfR::yf_get(tickers = my_ticker, 
                     first_date = first_date,
                     last_date = last_date)

# output is a tibble with data
dplyr::glimpse(df_yf)
```

```
Rows: 18,251
Columns: 11
$ ticker                 <chr> "^GSPC", "^GSPC", "^GSPC", "^GSPC", "^GSPC", "^…
$ ref_date               <date> 1950-01-03, 1950-01-04, 1950-01-05, 1950-01-06…
$ price_open             <dbl> 16.66, 16.85, 16.93, 16.98, 17.08, 17.03, 17.09…
$ price_high             <dbl> 16.66, 16.85, 16.93, 16.98, 17.08, 17.03, 17.09…
$ price_low              <dbl> 16.66, 16.85, 16.93, 16.98, 17.08, 17.03, 17.09…
$ price_close            <dbl> 16.66, 16.85, 16.93, 16.98, 17.08, 17.03, 17.09…
$ volume                 <dbl> 1260000, 1890000, 2550000, 2010000, 2520000, 21…
$ price_adjusted         <dbl> 16.66, 16.85, 16.93, 16.98, 17.08, 17.03, 17.09…
$ ret_adjusted_prices    <dbl> NA, 0.0114045618, 0.0047477745, 0.0029533373, 0…
$ ret_closing_prices     <dbl> NA, 0.0114045618, 0.0047477745, 0.0029533373, 0…
$ cumret_adjusted_prices <dbl> 1.000000, 1.011405, 1.016206, 1.019208, 1.02521…
```

The output of `yfR` is a tibble (dataframe) with the stock price data. We can use it to 1) get the number of years within the data, and 2) calculate the annual financial performance of the index:

```r 
n_years <- lubridate::interval(min(df_yf$ref_date), 
                               max(df_yf$ref_date))/lubridate::years(1)

total_return <- dplyr::last(df_yf$price_adjusted)/dplyr::first(df_yf$price_adjusted) - 1

cli::cli_alert_info(
  "n_years = {n_years} | total_return = {total_return}"
  )
```

```
ℹ n_years = 72.5260273972603 | total_return = 226.5137984994
```

In 1950-01-03, the index was valued at 16.66. Today (2022-07-15), after roughly 72 years, the value of the index is 3790.379883. The total return for the SP500, without accounting for inflation, is equivalent to an impressive 22 651%! Overall, anyone holding stocks for that long  has done very well financially.

Additionally, we can also calculate performance as the compounded annual return, which is the usual figure reported when looking stocks in the long rum:

```r 
ret_comp <- (1 + total_return)^(1/n_years)  - 1

cli::cli_alert_info("Comp Return = {scales::percent(ret_comp, accuracy = 0.01)}")
```

```
ℹ Comp Return = 7.77%
```

Over the 72 of existence, the SP500 index returned an annual compounded interest of 7.78%. This is quite in line with the roughly 8% per year reported in the media.

To visualize the data, we can use a log plot and see the value of the SP500 index over time:

```r 
require(ggplot2)
```

```
Loading required package: ggplot2
```

```r 
p <- ggplot(df_yf, aes(x = ref_date, y = price_adjusted)) + 
  geom_line() +
  labs(
    title = paste0("SP500 Index Value (", 
                   lubridate::year(min(df_yf$ref_date)), ' - ',
                   lubridate::year(max(df_yf$ref_date)), ")"
    ),
    x = "Time", 
    y = "Index Value",
    caption = "Data from Yahoo Finance <https://finance.yahoo.com/>") + 
  theme_light() + 
  scale_y_log10() 

p
```
{{<figure src="sp500-01-1.png" alt="SP500 index (log axis) value since 1950" caption="SP500 index value since 1950" width="300">}}

## Performance of many stocks

In this second example, instead of using a single stock/index, we will investigate the financial performance of a set of ten stocks using `dplyr`. First, let's download the current composition of the SP500 index and select 10 random stocks.

```r 
set.seed(20220713)

n_tickers <- 10
df_sp500 <- yfR::yf_index_composition("SP500")
```

```
✔ Got SP500 composition with 503 rows
```

```r 
rnd_tickers <- sample(df_sp500$ticker, n_tickers)

paste0("The selected tickers are: ", paste0(rnd_tickers, collapse = ", "))
```

```
[1] "The selected tickers are: AAPL, DHI, AMZN, CMS, FCX, NRG, EXR, CFG, CI, AWK"
```

And now we fetch the data using `yfR::yf_get`:

```r 
df_yf <- yfR::yf_get(tickers = rnd_tickers,
                     first_date = '2010-01-01',
                     last_date = Sys.Date())
```

Out of the 10 stocks, one was left out due to the high number of missing days. Internally, `yf_get` compares every ticker to a benchmark time series, in this case the SP500 index itself (see input `bench_ticker`). Whenever the proportion of missing days is higher than the default case (`thresh_bad_data = 0.75`), the algorithm drops the ticker from the output. In the end, we are left with just nine stocks.

First, let's look at their accumulated return over time:

```r 
require(ggplot2)

p <- ggplot(df_yf, 
            aes(x = ref_date, 
                y = cumret_adjusted_prices, 
                color = ticker)) + 
  geom_line() +
  labs(
    title = paste0("SP500 Index Value (", 
                   lubridate::year(min(df_yf$ref_date)), ' - ',
                   lubridate::year(max(df_yf$ref_date)), ")"
    ),
    x = "Time", 
    y = "Accumulated Return (from 100%)",
    caption = "Data from Yahoo Finance <https://finance.yahoo.com/>") + 
  theme_light() + 
  scale_y_log10() 

p
```
{{<figure src="manystocks-1.png" alt="Accumulated Return of 10 stocks" caption="Accumulated Return of 10 stocks" width="300">}}

As we can see, some stocks, such as AMZN and AAPL, did much better than others. We can check this numerically by reporting their compounded return over the period:

```r 
require(dplyr)
```

```
Loading required package: dplyr
```

```

Attaching package: 'dplyr'
```

```
The following objects are masked from 'package:stats':

    filter, lag
```

```
The following objects are masked from 'package:base':

    intersect, setdiff, setequal, union
```

```r 
tab_perf <- df_yf |>
  group_by(ticker) |>
  summarise(
    n_years = lubridate::interval(min(ref_date), 
                                  max(ref_date))/lubridate::years(1),
    total_ret = last(price_adjusted)/first(price_adjusted) - 1,
    ret_comp = (1 + total_ret)^(1/n_years) - 1
  )

tab_perf |> 
  gt::gt() |>
  gt::fmt_percent(columns = c("total_ret", "ret_comp"))
```

```{=html}
<div id="qwoyymgqdo" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#qwoyymgqdo .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#qwoyymgqdo .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#qwoyymgqdo .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#qwoyymgqdo .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#qwoyymgqdo .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#qwoyymgqdo .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#qwoyymgqdo .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#qwoyymgqdo .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#qwoyymgqdo .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#qwoyymgqdo .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#qwoyymgqdo .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#qwoyymgqdo .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#qwoyymgqdo .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#qwoyymgqdo .gt_from_md > :first-child {
  margin-top: 0;
}

#qwoyymgqdo .gt_from_md > :last-child {
  margin-bottom: 0;
}

#qwoyymgqdo .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#qwoyymgqdo .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#qwoyymgqdo .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#qwoyymgqdo .gt_row_group_first td {
  border-top-width: 2px;
}

#qwoyymgqdo .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#qwoyymgqdo .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#qwoyymgqdo .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#qwoyymgqdo .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#qwoyymgqdo .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#qwoyymgqdo .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#qwoyymgqdo .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#qwoyymgqdo .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#qwoyymgqdo .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#qwoyymgqdo .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#qwoyymgqdo .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#qwoyymgqdo .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#qwoyymgqdo .gt_left {
  text-align: left;
}

#qwoyymgqdo .gt_center {
  text-align: center;
}

#qwoyymgqdo .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#qwoyymgqdo .gt_font_normal {
  font-weight: normal;
}

#qwoyymgqdo .gt_font_bold {
  font-weight: bold;
}

#qwoyymgqdo .gt_font_italic {
  font-style: italic;
}

#qwoyymgqdo .gt_super {
  font-size: 65%;
}

#qwoyymgqdo .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
}

#qwoyymgqdo .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#qwoyymgqdo .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#qwoyymgqdo .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#qwoyymgqdo .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#qwoyymgqdo .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">ticker</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">n_years</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">total_ret</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">ret_comp</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">AAPL</td>
<td class="gt_row gt_right">12.52329</td>
<td class="gt_row gt_right">2,171.89%</td>
<td class="gt_row gt_right">28.32%</td></tr>
    <tr><td class="gt_row gt_left">AMZN</td>
<td class="gt_row gt_right">12.52329</td>
<td class="gt_row gt_right">1,552.43%</td>
<td class="gt_row gt_right">25.10%</td></tr>
    <tr><td class="gt_row gt_left">AWK</td>
<td class="gt_row gt_right">12.52329</td>
<td class="gt_row gt_right">765.72%</td>
<td class="gt_row gt_right">18.81%</td></tr>
    <tr><td class="gt_row gt_left">CI</td>
<td class="gt_row gt_right">12.52329</td>
<td class="gt_row gt_right">652.54%</td>
<td class="gt_row gt_right">17.49%</td></tr>
    <tr><td class="gt_row gt_left">CMS</td>
<td class="gt_row gt_right">12.52329</td>
<td class="gt_row gt_right">531.37%</td>
<td class="gt_row gt_right">15.85%</td></tr>
    <tr><td class="gt_row gt_left">DHI</td>
<td class="gt_row gt_right">12.52329</td>
<td class="gt_row gt_right">647.39%</td>
<td class="gt_row gt_right">17.42%</td></tr>
    <tr><td class="gt_row gt_left">EXR</td>
<td class="gt_row gt_right">12.52329</td>
<td class="gt_row gt_right">2,014.66%</td>
<td class="gt_row gt_right">27.59%</td></tr>
    <tr><td class="gt_row gt_left">FCX</td>
<td class="gt_row gt_right">12.52329</td>
<td class="gt_row gt_right">&minus;20.26%</td>
<td class="gt_row gt_right">&minus;1.79%</td></tr>
    <tr><td class="gt_row gt_left">NRG</td>
<td class="gt_row gt_right">12.52329</td>
<td class="gt_row gt_right">84.38%</td>
<td class="gt_row gt_right">5.01%</td></tr>
  </tbody>
  
  
</table>
</div>
```

# Final thoughts

Package `yfR` was created to facilitate the importation and organization of YF data sets. In the examples of this post, we can see how easy it is to download the data and do some simple performance statistics. We only scratched the surface, there are many ways to analyze stock data, not just financial performance. 


# Acknowledgements

Package `yfR` was [reviewed](https://github.com/ropensci/software-review/issues/523) by [Alexander Fischer](https://github.com/s3alfisc) and [Nic Crane](https://github.com/thisisnic), and I'm very grateful for their feedback, which improved the package significantly. I'm also grateful to [Joshua Ulrich](https://www.quantmod.com/), the maintainer of [quantmod](https://www.quantmod.com/), which wrote `quantmod::getSymbols`, the main function used by `yfR::yf_get`
