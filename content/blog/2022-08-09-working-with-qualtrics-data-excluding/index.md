---
title: 'Working with Qualtrics Data--Part 2: Excluding Data'
author:
  - Jeffrey R. Stevens
date: '2022-08-09'
slug: working-with-qualtrics-data-excluding
categories: []
tags:
  - community
  - data munging
  - excluder
  - packages
  - Software Peer Review
  - survey data
package_version: 0.4.0
description: "This post summarizes how to use the excluder package to exclude survey data."
tweet: "Exclude problematic survey data with the excluder R package by @JeffStevensADML!"
output: hugodown::md_document
rmd_hash: ebda4526b8349799

---

In the last post, we used the [qualtRics](https://docs.ropensci.org/qualtRics/)[^1] package to import survey data directly from [Qualtrics](https://www.qualtrics.com/) accounts. I often use Qualtrics for survey data collected via [Amazon's Mechanical Turk](https://www.mturk.com/), which is an automated system that connects online respondents to paid surveys. However, sometimes those data are not super useful because the quality of the data is poor. In the anonymous, large-scale market of online survey respondents, the financial incentives for completing surveys attract respondents who blast through the study just to collect the money or, worse, automated bots programmed to act like humans and reap the incentives. As a scientist, I'm collecting survey data to understand human nature, so I'm looking for honest responses. But low-quality data can be common in online surveys, and not just on Mechanical Turk[^2].

There are some cues that data may come from bots, such as entries originating from outside of your specified country or multiple entries coming from the same IP address. Cues of inattentive human participants include not completing the survey, completing it very quickly or slowly, or ignoring your requests to use specific types of devices (e.g., desktop computers not phones or tablets). I call these kinds of cues *metadata* because they are not direct responses from the respondents but are information about *how* the respondent took the survey. After repeatedly creating filters to deal with these problematic metadata, I formalized them into my first R package called [excluder](https://docs.ropensci.org/excluder/)[^3].

In Part 2 of this series, we'll use excluder to remove potentially problematic metadata. First, we'll learn how to set up your Qualtrics survey to collect the relevant information. Then we'll learn how to mark, check, and exclude observations based on the metadata. Finally, we'll clean up our data sets by deidentifying them.

## Before collecting your data

As a reminder, excluder focuses on *metadata* about an entry rather than the actual responses. If you have particular questions from your specific survey that you want to use to exclude data (for example, attention check questions), you should use regular subset/filter functions from [base R](https://rdrr.io/r/base/subset.html) or [dplyr](https://dplyr.tidyverse.org/reference/filter.html). Here, we're focusing on metadata collected about your survey respondents.

But to use this metadata, you must first collect it! Though the excluder package can work with metadata from other survey systems, we'll focus on data coming from Qualtrics surveys. There are two options in Qualtrics that allow you to collect the metadata that excluder can work with.

### Anonymous vs. non-anonymous data

First, Qualtrics can collect either anonymous or non-anonymous data. Non-anonymous data includes IP address, geolocation, and contact information provided by you (if you have Qualtrics email your respondents). To collect non-anonymous data, you must toggle the switch *Off* under *Survey* \> *Options* \> *Security* \> [*Anonymize responses*](https://www.qualtrics.com/support/survey-platform/survey-module/survey-options/survey-protection/#AnonymizingResponses). If you collect non-anonymous data, just make sure that respondents know that you're collecting their IP address and location[^4].

{{< figure src = "qualtrics_anonymize.png" width = "600" alt = "A screenshot of Qualtrics Survey > Options > Security tab." class = "center" >}}

### Computer metadata

In addition to IP address and location, Qualtrics can also collect information about the computer environment that respondents use to take your survey, such as operating system, browser type and version, and screen resolution. But you will need to set this up in advance. To collect the [computer metadata](https://www.qualtrics.com/support/survey-platform/survey-module/editing-questions/question-types-guide/advanced/meta-info-question/), you must create a question in your survey in a block that already has another question. Click *Add a new question* and select the *Meta info* question type.

{{< figure src = "qualtrics_metadata.png" width = "600" alt = "A screenshot of adding a Meta info question to a Qualtrics survey." class = "center" >}}

## Dealing with problematic data rows

Now that we've collected the proper metadata, we can use it to deal with potentially problematic data.

### Metadata

There are seven types of metadata that excluder works with, along with their tags that are used in excluder functions.

-   **Qualtrics preview status** (`preview`): Qualtrics records data when your [preview your survey](https://www.qualtrics.com/support/survey-platform/survey-module/preview-survey/) before deploying it. You probably always want to remove preview data.
-   **Survey progress** (`progress`): Qualtrics tracks how much of the survey the respondent completes. By default, excluder detects less than 100% completion, but any level of completion percentage can be set to detect.
-   **Survey completion time** (`duration`): Qualtrics records the number of seconds that the respondent works on the survey. excluder can detect completion times that are too fast or that take too long.
-   **IP address country** (`ip`)<sup>\*</sup>: If the data are non-anonymous, IP addresses are available, which can determine the country of origin for the respondent. excluder can detect IP addresses outside of a specified country. Note, however, that VPNs can use IP addresses outside of the country of origin, so you must weigh the possibility of false alarms in detecting IP addresses in other countries.
-   **Geolocation in US** (`location`)<sup>\*</sup>: Qualtrics determines geolocation (latitude and longitude) through GPS or IP addresses. excluder can detect if location originates from outside of the United States but cannot detect this for other countries at the moment.
-   **Duplicate IP address** (`duplicates`)<sup>\*</sup>: Automated bots may spam your survey from the same IP address. excluder detect if the same IP address shows up repeatedly in your data. Note, however, that duplicate IP addresses may be legitimately different respondents using the same computer or recycled IP address in the same household, dormitory, or business. So you must weigh the costs of losing good data against the benefits of removing bad data.
-   **Screen resolution** (`resolution`)<sup>\*\*</sup>: Sometimes, you may request that respondents use a particular kind of device for your survey, such as a desktop computer rather than a phone or tablet. excluder can assess screen resolution to detect respondents who may be using the wrong type of device.

<sup>\*</sup> You must have enabled [non-anonymized data](https://www.qualtrics.com/support/survey-platform/survey-module/survey-options/survey-protection/#AnonymizingResponses) in Qualtrics to collect these metadata.

<sup>\*\*</sup> You must have included the [computer metadata question](https://www.qualtrics.com/support/survey-platform/survey-module/editing-questions/question-types-guide/advanced/meta-info-question/) in Qualtrics to collect these metadata.

### Marking rows

OK, now that we know what kind of metadata we can work with, what do we do with them? The excluder package can do three actions on the metadata: mark, check, or exclude. The `mark` functions are the backbone of the package. Mark functions make new columns with the metadata criteria output appended to the existing data frame. So you pass a data frame to the mark functions to see which rows meet the metadata criteria. Mark function names simple prepend `mark_` to the metadata tag. So, for example, the function that marks preview metadata (`preview`) is [`mark_preview()`](https://docs.ropensci.org/excluder/reference/mark_preview.html).

Before we start marking, let's look at an example data set that we can work with. The `qualtrics_text` data set includes both non-anonymous and computer metadata. We'll just look at the first six rows by piping to [`head()`](https://rdrr.io/r/utils/head.html).

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='kr'><a href='https://rdrr.io/r/base/library.html'>library</a></span><span class='o'>(</span><span class='nv'><a href='https://docs.ropensci.org/excluder/'>excluder</a></span><span class='o'>)</span></span>
<span><span class='nv'>qualtrics_text</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://rdrr.io/r/utils/head.html'>head</a></span><span class='o'>(</span><span class='o'>)</span></span><span><span class='c'>#&gt;             StartDate             EndDate         Status    IPAddress Progress</span></span>
<span><span class='c'>#&gt; 1 2020-12-11 12:06:52 2020-12-11 12:10:30 Survey Preview         &lt;NA&gt;      100</span></span>
<span><span class='c'>#&gt; 2 2020-12-11 12:06:43 2020-12-11 12:11:27 Survey Preview         &lt;NA&gt;      100</span></span>
<span><span class='c'>#&gt; 3 2020-12-11 12:17:22 2020-12-11 12:21:41     IP Address   73.23.43.0      100</span></span>
<span><span class='c'>#&gt; 4 2020-12-11 12:17:41 2020-12-11 12:22:07     IP Address 16.140.105.0      100</span></span>
<span><span class='c'>#&gt; 5 2020-12-11 12:19:45 2020-12-11 12:23:16     IP Address 107.57.244.0      100</span></span>
<span><span class='c'>#&gt; 6 2020-12-11 12:37:51 2020-12-11 12:43:09     IP Address 15.232.167.0      100</span></span>
<span><span class='c'>#&gt;   Duration (in seconds) Finished        RecordedDate        ResponseId</span></span>
<span><span class='c'>#&gt; 1                   465     TRUE 2020-12-11 12:10:30 R_xLWiuPaNuURSFXY</span></span>
<span><span class='c'>#&gt; 2                   545     TRUE 2020-12-11 12:11:27 R_Q5lqYw6emJQZx2o</span></span>
<span><span class='c'>#&gt; 3                   651     TRUE 2020-12-11 12:21:42 R_fbYBeNscosfzN9L</span></span>
<span><span class='c'>#&gt; 4                   409     TRUE 2020-12-11 12:22:07 R_yyG1HGXOMNPfWDn</span></span>
<span><span class='c'>#&gt; 5                   140     TRUE 2020-12-11 12:23:16 R_9dnzH1VI9mf8gle</span></span>
<span><span class='c'>#&gt; 6                   213     TRUE 2020-12-11 12:43:09 R_1BoPF5igdMw536H</span></span>
<span><span class='c'>#&gt;   LocationLatitude LocationLongitude UserLanguage Browser      Version</span></span>
<span><span class='c'>#&gt; 1         29.73694         -94.97599           EN  Chrome 88.0.4324.41</span></span>
<span><span class='c'>#&gt; 2         39.74107        -121.82490           EN  Chrome 88.0.4324.50</span></span>
<span><span class='c'>#&gt; 3         34.03852        -118.25739           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt; 4         44.96581         -93.07187           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt; 5         27.98064         -82.78531           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt; 6         29.76499         -95.36156           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt;   Operating System Resolution</span></span>
<span><span class='c'>#&gt; 1  Windows NT 10.0   1366x768</span></span>
<span><span class='c'>#&gt; 2        Macintosh  1680x1050</span></span>
<span><span class='c'>#&gt; 3  Windows NT 10.0   1366x768</span></span>
<span><span class='c'>#&gt; 4  Windows NT 10.0   1536x864</span></span>
<span><span class='c'>#&gt; 5  Windows NT 10.0   1536x864</span></span>
<span><span class='c'>#&gt; 6  Windows NT 10.0   1366x768</span></span></code></pre>

</div>

By looking at the `Status` column, we can already see that the first two rows are previews. Let's see what [`mark_preview()`](https://docs.ropensci.org/excluder/reference/mark_preview.html) does by applying it to the `qualtrics_text` data.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'><a href='https://docs.ropensci.org/excluder/reference/mark_preview.html'>mark_preview</a></span><span class='o'>(</span><span class='nv'>qualtrics_text</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span> </span>
<span>  <span class='nf'><a href='https://rdrr.io/r/utils/head.html'>head</a></span><span class='o'>(</span><span class='o'>)</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 2 rows were collected as previews. It is highly recommended to exclude these rows before further processing.</span></span><span><span class='c'>#&gt;             StartDate             EndDate         Status    IPAddress Progress</span></span>
<span><span class='c'>#&gt; 1 2020-12-11 12:06:52 2020-12-11 12:10:30 Survey Preview         &lt;NA&gt;      100</span></span>
<span><span class='c'>#&gt; 2 2020-12-11 12:06:43 2020-12-11 12:11:27 Survey Preview         &lt;NA&gt;      100</span></span>
<span><span class='c'>#&gt; 3 2020-12-11 12:17:22 2020-12-11 12:21:41     IP Address   73.23.43.0      100</span></span>
<span><span class='c'>#&gt; 4 2020-12-11 12:17:41 2020-12-11 12:22:07     IP Address 16.140.105.0      100</span></span>
<span><span class='c'>#&gt; 5 2020-12-11 12:19:45 2020-12-11 12:23:16     IP Address 107.57.244.0      100</span></span>
<span><span class='c'>#&gt; 6 2020-12-11 12:37:51 2020-12-11 12:43:09     IP Address 15.232.167.0      100</span></span>
<span><span class='c'>#&gt;   Duration (in seconds) Finished        RecordedDate        ResponseId</span></span>
<span><span class='c'>#&gt; 1                   465     TRUE 2020-12-11 12:10:30 R_xLWiuPaNuURSFXY</span></span>
<span><span class='c'>#&gt; 2                   545     TRUE 2020-12-11 12:11:27 R_Q5lqYw6emJQZx2o</span></span>
<span><span class='c'>#&gt; 3                   651     TRUE 2020-12-11 12:21:42 R_fbYBeNscosfzN9L</span></span>
<span><span class='c'>#&gt; 4                   409     TRUE 2020-12-11 12:22:07 R_yyG1HGXOMNPfWDn</span></span>
<span><span class='c'>#&gt; 5                   140     TRUE 2020-12-11 12:23:16 R_9dnzH1VI9mf8gle</span></span>
<span><span class='c'>#&gt; 6                   213     TRUE 2020-12-11 12:43:09 R_1BoPF5igdMw536H</span></span>
<span><span class='c'>#&gt;   LocationLatitude LocationLongitude UserLanguage Browser      Version</span></span>
<span><span class='c'>#&gt; 1         29.73694         -94.97599           EN  Chrome 88.0.4324.41</span></span>
<span><span class='c'>#&gt; 2         39.74107        -121.82490           EN  Chrome 88.0.4324.50</span></span>
<span><span class='c'>#&gt; 3         34.03852        -118.25739           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt; 4         44.96581         -93.07187           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt; 5         27.98064         -82.78531           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt; 6         29.76499         -95.36156           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt;   Operating System Resolution exclusion_preview</span></span>
<span><span class='c'>#&gt; 1  Windows NT 10.0   1366x768           preview</span></span>
<span><span class='c'>#&gt; 2        Macintosh  1680x1050           preview</span></span>
<span><span class='c'>#&gt; 3  Windows NT 10.0   1366x768                  </span></span>
<span><span class='c'>#&gt; 4  Windows NT 10.0   1536x864                  </span></span>
<span><span class='c'>#&gt; 5  Windows NT 10.0   1536x864                  </span></span>
<span><span class='c'>#&gt; 6  Windows NT 10.0   1366x768</span></span></code></pre>

</div>

There are two important outputs. First, we have an informational message telling us that *2 rows were collected as previews*. Each mark function will output this kind of message letting us know how many rows meet each metadata criterion. Second, we now have a new column called `exclusion_preview` appended to the data frame. Notice that the first two rows of that column have `preview` values while the rest of the rows are blank. We have now marked which rows meet this metadata criterion.

Of course, you may want to mark your data for multiple metadata criteria. To do this, you simply have to connect multiple mark functions with a pipe (either [base R's `|>`](https://rdrr.io/r/base/pipeOp.html) or [magrittr's %\>%](https://magrittr.tidyverse.org/reference/pipe.html)). So if we want to mark preview data and all rows where the completion duration is less than 200 seconds or more than 600 seconds, we just chain these together. In fact, we can also pull the data frame out of functions as well. Note that I'm going to show just a subset of columns and rows for clarity (ignore from [`dplyr::select()`](https://dplyr.tidyverse.org/reference/select.html) on).

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>qualtrics_text</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://docs.ropensci.org/excluder/reference/mark_preview.html'>mark_preview</a></span><span class='o'>(</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://docs.ropensci.org/excluder/reference/mark_duration.html'>mark_duration</a></span><span class='o'>(</span>min_duration <span class='o'>=</span> <span class='m'>200</span>, max_duration <span class='o'>=</span> <span class='m'>600</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'>dplyr</span><span class='nf'>::</span><span class='nf'><a href='https://dplyr.tidyverse.org/reference/select.html'>select</a></span><span class='o'>(</span><span class='nv'>Status</span>, <span class='nv'>`Duration (in seconds)`</span>, <span class='nv'>exclusion_preview</span>, <span class='nv'>exclusion_duration</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://rdrr.io/r/utils/head.html'>head</a></span><span class='o'>(</span><span class='o'>)</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 2 rows were collected as previews. It is highly recommended to exclude these rows before further processing.</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 23 out of 100 rows took less time than 200.</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 8 out of 100 rows took more time than 600.</span></span><span><span class='c'>#&gt;           Status Duration (in seconds) exclusion_preview exclusion_duration</span></span>
<span><span class='c'>#&gt; 1 Survey Preview                   465           preview                   </span></span>
<span><span class='c'>#&gt; 2 Survey Preview                   545           preview                   </span></span>
<span><span class='c'>#&gt; 3     IP Address                   651                        duration_slow</span></span>
<span><span class='c'>#&gt; 4     IP Address                   409                                     </span></span>
<span><span class='c'>#&gt; 5     IP Address                   140                       duration_quick</span></span>
<span><span class='c'>#&gt; 6     IP Address                   213</span></span></code></pre>

</div>

Now we have three messages regarding rows that meet the criteria: one for previews, one for short completion times, and one for long completion times. We also now have a new `exclusion_duration` column added that marks rows that are too quick or too slow.

You can pipe together as many mark functions as you would like to get a feel for which data rows meet your different criteria. But adding a new column for each criterion can make it difficult to visualize everything together. If you want to combine all of your criteria into a single column, add the [`unite_exclusions()`](https://docs.ropensci.org/excluder/reference/unite_exclusions.html) function at the end of the chain. Rows meeting multiple criteria will separate those criteria with commas.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>qualtrics_text</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://docs.ropensci.org/excluder/reference/mark_preview.html'>mark_preview</a></span><span class='o'>(</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://docs.ropensci.org/excluder/reference/mark_duration.html'>mark_duration</a></span><span class='o'>(</span>min_duration <span class='o'>=</span> <span class='m'>200</span>, max_duration <span class='o'>=</span> <span class='m'>600</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://docs.ropensci.org/excluder/reference/unite_exclusions.html'>unite_exclusions</a></span><span class='o'>(</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'>dplyr</span><span class='nf'>::</span><span class='nf'><a href='https://dplyr.tidyverse.org/reference/select.html'>select</a></span><span class='o'>(</span><span class='nv'>Status</span>, <span class='nv'>`Duration (in seconds)`</span>, <span class='nv'>exclusions</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://rdrr.io/r/utils/head.html'>head</a></span><span class='o'>(</span><span class='o'>)</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 2 rows were collected as previews. It is highly recommended to exclude these rows before further processing.</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 23 out of 100 rows took less time than 200.</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 8 out of 100 rows took more time than 600.</span></span><span><span class='c'>#&gt;           Status Duration (in seconds)     exclusions</span></span>
<span><span class='c'>#&gt; 1 Survey Preview                   465        preview</span></span>
<span><span class='c'>#&gt; 2 Survey Preview                   545        preview</span></span>
<span><span class='c'>#&gt; 3     IP Address                   651  duration_slow</span></span>
<span><span class='c'>#&gt; 4     IP Address                   409               </span></span>
<span><span class='c'>#&gt; 5     IP Address                   140 duration_quick</span></span>
<span><span class='c'>#&gt; 6     IP Address                   213</span></span></code></pre>

</div>

### Checking rows

The mark functions are nice to view rows that meet all of your different criteria, but it can be unwieldy to use this if you have large data sets or sparse cases that meet criteria. The `check` functions help with this by extracting only the rows that meet the criterion. So you can view just the problematic data. Here we use [`check_progress()`](https://docs.ropensci.org/excluder/reference/check_progress.html) to extract the rows with completion percentages less than 100.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>qualtrics_text</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://docs.ropensci.org/excluder/reference/check_progress.html'>check_progress</a></span><span class='o'>(</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://rdrr.io/r/utils/head.html'>head</a></span><span class='o'>(</span><span class='o'>)</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 6 out of 100 rows did not complete the study.</span></span><span><span class='c'>#&gt;             StartDate             EndDate     Status    IPAddress Progress</span></span>
<span><span class='c'>#&gt; 1 2020-12-17 15:40:53 2020-12-17 15:43:25 IP Address   22.51.31.0       99</span></span>
<span><span class='c'>#&gt; 2 2020-12-17 15:40:56 2020-12-17 15:46:23 IP Address 71.146.112.0        1</span></span>
<span><span class='c'>#&gt; 3 2020-12-17 15:41:52 2020-12-17 15:46:37 IP Address   15.223.0.0       13</span></span>
<span><span class='c'>#&gt; 4 2020-12-17 15:41:27 2020-12-17 15:46:45 IP Address  19.127.87.0       48</span></span>
<span><span class='c'>#&gt; 5 2020-12-17 15:49:42 2020-12-17 15:51:50 IP Address 40.146.247.0        5</span></span>
<span><span class='c'>#&gt; 6 2020-12-17 15:49:28 2020-12-17 15:55:06 IP Address   2.246.67.0       44</span></span>
<span><span class='c'>#&gt;   Duration (in seconds) Finished        RecordedDate        ResponseId</span></span>
<span><span class='c'>#&gt; 1                   879    FALSE 2020-12-17 15:43:25 R_AkQyJypPyjgribz</span></span>
<span><span class='c'>#&gt; 2                   627    FALSE 2020-12-17 15:46:23 R_1cvaTAoXO7XW1vi</span></span>
<span><span class='c'>#&gt; 3                    40    FALSE 2020-12-17 15:46:37 R_Dx6w74UfhnGhAmj</span></span>
<span><span class='c'>#&gt; 4                    74    FALSE 2020-12-17 15:46:46 R_ewyyOOPADLGo9xZ</span></span>
<span><span class='c'>#&gt; 5                   307    FALSE 2020-12-17 15:51:50 R_HFKclPO5wWGNsFs</span></span>
<span><span class='c'>#&gt; 6                   355    FALSE 2020-12-17 15:55:06 R_UfSQq1VXYkVcxdJ</span></span>
<span><span class='c'>#&gt;   LocationLatitude LocationLongitude UserLanguage Browser      Version</span></span>
<span><span class='c'>#&gt; 1         37.28265        -120.50248           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt; 2         34.03605        -117.04066           EN    &lt;NA&gt;         &lt;NA&gt;</span></span>
<span><span class='c'>#&gt; 3         34.77804         -84.96198           DE  Chrome 83.0.4103.61</span></span>
<span><span class='c'>#&gt; 4         33.66715        -117.82543           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt; 5         29.29882         -81.04289           EN Firefox         81.0</span></span>
<span><span class='c'>#&gt; 6         37.79058        -121.96737           EN  Chrome 87.0.4280.67</span></span>
<span><span class='c'>#&gt;   Operating System Resolution</span></span>
<span><span class='c'>#&gt; 1  Windows NT 10.0   1366x768</span></span>
<span><span class='c'>#&gt; 2             &lt;NA&gt;       &lt;NA&gt;</span></span>
<span><span class='c'>#&gt; 3  Windows NT 10.0   1366x768</span></span>
<span><span class='c'>#&gt; 4  Windows NT 10.0   1188x668</span></span>
<span><span class='c'>#&gt; 5  Windows NT 10.0   1366x768</span></span>
<span><span class='c'>#&gt; 6        Macintosh   1280x800</span></span></code></pre>

</div>

The check functions are useful for viewing rows meeting individual criteria. But you probably do not want to pipe multiple check functions together because each function outputs only the subset of the data that meets that criterion. So piping multiple check functions returns the rows that meet all of the criteria at once (the *intersection* of the criteria in set theory lingo).

{{< figure src = "check_venn.png" width = "400" alt = "A Venn diagram of multiple check functions overlapping with an arrow pointing to the intersection." class = "center" >}}

### Excluding rows

After marking and/or checking our data, we may have decided which rows we want to remove. For this, we use the `exclude` functions. For instance to exclude all rows that come from the same IP address, we use the [`exclude_duplicates()`](https://docs.ropensci.org/excluder/reference/exclude_duplicates.html) function.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>qualtrics_text</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://docs.ropensci.org/excluder/reference/exclude_duplicates.html'>exclude_duplicates</a></span><span class='o'>(</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://rdrr.io/r/utils/head.html'>head</a></span><span class='o'>(</span><span class='o'>)</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 10 out of 100 duplicate rows were excluded, leaving 90 rows.</span></span><span><span class='c'>#&gt;             StartDate             EndDate         Status    IPAddress Progress</span></span>
<span><span class='c'>#&gt; 1 2020-12-11 12:06:52 2020-12-11 12:10:30 Survey Preview         &lt;NA&gt;      100</span></span>
<span><span class='c'>#&gt; 2 2020-12-11 12:06:43 2020-12-11 12:11:27 Survey Preview         &lt;NA&gt;      100</span></span>
<span><span class='c'>#&gt; 3 2020-12-11 12:17:22 2020-12-11 12:21:41     IP Address   73.23.43.0      100</span></span>
<span><span class='c'>#&gt; 4 2020-12-11 12:17:41 2020-12-11 12:22:07     IP Address 16.140.105.0      100</span></span>
<span><span class='c'>#&gt; 5 2020-12-11 12:19:45 2020-12-11 12:23:16     IP Address 107.57.244.0      100</span></span>
<span><span class='c'>#&gt; 6 2020-12-11 12:37:51 2020-12-11 12:43:09     IP Address 15.232.167.0      100</span></span>
<span><span class='c'>#&gt;   Duration (in seconds) Finished        RecordedDate        ResponseId</span></span>
<span><span class='c'>#&gt; 1                   465     TRUE 2020-12-11 12:10:30 R_xLWiuPaNuURSFXY</span></span>
<span><span class='c'>#&gt; 2                   545     TRUE 2020-12-11 12:11:27 R_Q5lqYw6emJQZx2o</span></span>
<span><span class='c'>#&gt; 3                   651     TRUE 2020-12-11 12:21:42 R_fbYBeNscosfzN9L</span></span>
<span><span class='c'>#&gt; 4                   409     TRUE 2020-12-11 12:22:07 R_yyG1HGXOMNPfWDn</span></span>
<span><span class='c'>#&gt; 5                   140     TRUE 2020-12-11 12:23:16 R_9dnzH1VI9mf8gle</span></span>
<span><span class='c'>#&gt; 6                   213     TRUE 2020-12-11 12:43:09 R_1BoPF5igdMw536H</span></span>
<span><span class='c'>#&gt;   LocationLatitude LocationLongitude UserLanguage Browser      Version</span></span>
<span><span class='c'>#&gt; 1         29.73694         -94.97599           EN  Chrome 88.0.4324.41</span></span>
<span><span class='c'>#&gt; 2         39.74107        -121.82490           EN  Chrome 88.0.4324.50</span></span>
<span><span class='c'>#&gt; 3         34.03852        -118.25739           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt; 4         44.96581         -93.07187           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt; 5         27.98064         -82.78531           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt; 6         29.76499         -95.36156           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt;   Operating System Resolution</span></span>
<span><span class='c'>#&gt; 1  Windows NT 10.0   1366x768</span></span>
<span><span class='c'>#&gt; 2        Macintosh  1680x1050</span></span>
<span><span class='c'>#&gt; 3  Windows NT 10.0   1366x768</span></span>
<span><span class='c'>#&gt; 4  Windows NT 10.0   1536x864</span></span>
<span><span class='c'>#&gt; 5  Windows NT 10.0   1536x864</span></span>
<span><span class='c'>#&gt; 6  Windows NT 10.0   1366x768</span></span></code></pre>

</div>

This leave all rows except the ones that meet the criterion, in this case, the 10 rows out of 100 that have duplicate IP addresses. The exclude functions are like the opposite of the check functions. Therefore, we can pipe multiple exclude functions together to remove data based on multiple metadata criteria.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>qualtrics_text</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://docs.ropensci.org/excluder/reference/exclude_preview.html'>exclude_preview</a></span><span class='o'>(</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://docs.ropensci.org/excluder/reference/exclude_progress.html'>exclude_progress</a></span><span class='o'>(</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://docs.ropensci.org/excluder/reference/exclude_duplicates.html'>exclude_duplicates</a></span><span class='o'>(</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://docs.ropensci.org/excluder/reference/exclude_duration.html'>exclude_duration</a></span><span class='o'>(</span>min_duration <span class='o'>=</span> <span class='m'>100</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://docs.ropensci.org/excluder/reference/exclude_resolution.html'>exclude_resolution</a></span><span class='o'>(</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://docs.ropensci.org/excluder/reference/exclude_ip.html'>exclude_ip</a></span><span class='o'>(</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://docs.ropensci.org/excluder/reference/exclude_location.html'>exclude_location</a></span><span class='o'>(</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://rdrr.io/r/utils/head.html'>head</a></span><span class='o'>(</span><span class='o'>)</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 2 out of 100 preview rows were excluded, leaving 98 rows.</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 6 out of 98 rows with incomplete progress were excluded, leaving 92 rows.</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 9 out of 92 duplicate rows were excluded, leaving 83 rows.</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 2 out of 83 rows of short and/or long duration were excluded, leaving 81 rows.</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 3 out of 81 rows with unacceptable screen resolution were excluded, leaving 78 rows.</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 2 out of 78 rows with IP addresses outside of US were excluded, leaving 76 rows.</span></span><span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> 4 out of 76 rows outside of the US were excluded, leaving 72 rows.</span></span><span><span class='c'>#&gt;             StartDate             EndDate     Status    IPAddress Progress</span></span>
<span><span class='c'>#&gt; 1 2020-12-11 12:17:22 2020-12-11 12:21:41 IP Address   73.23.43.0      100</span></span>
<span><span class='c'>#&gt; 2 2020-12-11 12:17:41 2020-12-11 12:22:07 IP Address 16.140.105.0      100</span></span>
<span><span class='c'>#&gt; 3 2020-12-11 12:19:45 2020-12-11 12:23:16 IP Address 107.57.244.0      100</span></span>
<span><span class='c'>#&gt; 4 2020-12-11 12:37:51 2020-12-11 12:43:09 IP Address 15.232.167.0      100</span></span>
<span><span class='c'>#&gt; 5 2020-12-11 12:37:04 2020-12-11 12:45:50 IP Address  98.75.201.0      100</span></span>
<span><span class='c'>#&gt; 6 2020-12-11 13:22:34 2020-12-11 13:35:19 IP Address 17.163.199.0      100</span></span>
<span><span class='c'>#&gt;   Duration (in seconds) Finished        RecordedDate        ResponseId</span></span>
<span><span class='c'>#&gt; 1                   651     TRUE 2020-12-11 12:21:42 R_fbYBeNscosfzN9L</span></span>
<span><span class='c'>#&gt; 2                   409     TRUE 2020-12-11 12:22:07 R_yyG1HGXOMNPfWDn</span></span>
<span><span class='c'>#&gt; 3                   140     TRUE 2020-12-11 12:23:16 R_9dnzH1VI9mf8gle</span></span>
<span><span class='c'>#&gt; 4                   213     TRUE 2020-12-11 12:43:09 R_1BoPF5igdMw536H</span></span>
<span><span class='c'>#&gt; 5                   662     TRUE 2020-12-11 12:45:51 R_6OZ4weICjHVtEkg</span></span>
<span><span class='c'>#&gt; 6                   277     TRUE 2020-12-11 13:35:19 R_ed0N9zgbymHSLLd</span></span>
<span><span class='c'>#&gt;   LocationLatitude LocationLongitude UserLanguage Browser      Version</span></span>
<span><span class='c'>#&gt; 1         34.03852        -118.25739           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt; 2         44.96581         -93.07187           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt; 3         27.98064         -82.78531           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt; 4         29.76499         -95.36156           EN  Chrome 87.0.4280.88</span></span>
<span><span class='c'>#&gt; 5         29.41433         -98.50342           EN    Edge  84.0.522.52</span></span>
<span><span class='c'>#&gt; 6         33.41401        -111.55062           EN Firefox         83.0</span></span>
<span><span class='c'>#&gt;   Operating System Resolution</span></span>
<span><span class='c'>#&gt; 1  Windows NT 10.0   1366x768</span></span>
<span><span class='c'>#&gt; 2  Windows NT 10.0   1536x864</span></span>
<span><span class='c'>#&gt; 3  Windows NT 10.0   1536x864</span></span>
<span><span class='c'>#&gt; 4  Windows NT 10.0   1366x768</span></span>
<span><span class='c'>#&gt; 5  Windows NT 10.0  1920x1080</span></span>
<span><span class='c'>#&gt; 6  Windows NT 10.0   1440x900</span></span></code></pre>

</div>

As we exclude, the messages tell us how many rows are returned from each functions, so we can see how the data frame gets smaller at each step. While the order of the functions shouldn't influence the final data frame output, it might make sense to use criteria with many exclusions early to speed processing of subsequent exclusions.

## Deidentifying data

Congratulations---we have now removed all of our problematic data! However, those data frames may still have identifying information included in them (e.g., IP addresses and geolocation). Before we pass on the data set to others or post it publicly, we probably want to remove those identifying columns. excluder has a [`deidentify()`](https://docs.ropensci.org/excluder/reference/deidentify.html) function that quickly removes either all metadata columns.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'><a href='https://docs.ropensci.org/excluder/reference/deidentify.html'>deidentify</a></span><span class='o'>(</span><span class='nv'>qualtrics_text</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://rdrr.io/r/utils/head.html'>head</a></span><span class='o'>(</span><span class='o'>)</span></span><span><span class='c'>#&gt;             StartDate             EndDate         Status Progress</span></span>
<span><span class='c'>#&gt; 1 2020-12-11 12:06:52 2020-12-11 12:10:30 Survey Preview      100</span></span>
<span><span class='c'>#&gt; 2 2020-12-11 12:06:43 2020-12-11 12:11:27 Survey Preview      100</span></span>
<span><span class='c'>#&gt; 3 2020-12-11 12:17:22 2020-12-11 12:21:41     IP Address      100</span></span>
<span><span class='c'>#&gt; 4 2020-12-11 12:17:41 2020-12-11 12:22:07     IP Address      100</span></span>
<span><span class='c'>#&gt; 5 2020-12-11 12:19:45 2020-12-11 12:23:16     IP Address      100</span></span>
<span><span class='c'>#&gt; 6 2020-12-11 12:37:51 2020-12-11 12:43:09     IP Address      100</span></span>
<span><span class='c'>#&gt;   Duration (in seconds) Finished        RecordedDate        ResponseId</span></span>
<span><span class='c'>#&gt; 1                   465     TRUE 2020-12-11 12:10:30 R_xLWiuPaNuURSFXY</span></span>
<span><span class='c'>#&gt; 2                   545     TRUE 2020-12-11 12:11:27 R_Q5lqYw6emJQZx2o</span></span>
<span><span class='c'>#&gt; 3                   651     TRUE 2020-12-11 12:21:42 R_fbYBeNscosfzN9L</span></span>
<span><span class='c'>#&gt; 4                   409     TRUE 2020-12-11 12:22:07 R_yyG1HGXOMNPfWDn</span></span>
<span><span class='c'>#&gt; 5                   140     TRUE 2020-12-11 12:23:16 R_9dnzH1VI9mf8gle</span></span>
<span><span class='c'>#&gt; 6                   213     TRUE 2020-12-11 12:43:09 R_1BoPF5igdMw536H</span></span></code></pre>

</div>

You can also use the `strict = FALSE` argument to only remove the non-anonymous columns, leaving the computer metadata.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'><a href='https://docs.ropensci.org/excluder/reference/deidentify.html'>deidentify</a></span><span class='o'>(</span><span class='nv'>qualtrics_text</span>, strict <span class='o'>=</span> <span class='kc'>FALSE</span><span class='o'>)</span> <span class='o'><a href='https://magrittr.tidyverse.org/reference/pipe.html'>%&gt;%</a></span></span>
<span>  <span class='nf'><a href='https://rdrr.io/r/utils/head.html'>head</a></span><span class='o'>(</span><span class='o'>)</span></span><span><span class='c'>#&gt;             StartDate             EndDate         Status Progress</span></span>
<span><span class='c'>#&gt; 1 2020-12-11 12:06:52 2020-12-11 12:10:30 Survey Preview      100</span></span>
<span><span class='c'>#&gt; 2 2020-12-11 12:06:43 2020-12-11 12:11:27 Survey Preview      100</span></span>
<span><span class='c'>#&gt; 3 2020-12-11 12:17:22 2020-12-11 12:21:41     IP Address      100</span></span>
<span><span class='c'>#&gt; 4 2020-12-11 12:17:41 2020-12-11 12:22:07     IP Address      100</span></span>
<span><span class='c'>#&gt; 5 2020-12-11 12:19:45 2020-12-11 12:23:16     IP Address      100</span></span>
<span><span class='c'>#&gt; 6 2020-12-11 12:37:51 2020-12-11 12:43:09     IP Address      100</span></span>
<span><span class='c'>#&gt;   Duration (in seconds) Finished        RecordedDate        ResponseId Browser</span></span>
<span><span class='c'>#&gt; 1                   465     TRUE 2020-12-11 12:10:30 R_xLWiuPaNuURSFXY  Chrome</span></span>
<span><span class='c'>#&gt; 2                   545     TRUE 2020-12-11 12:11:27 R_Q5lqYw6emJQZx2o  Chrome</span></span>
<span><span class='c'>#&gt; 3                   651     TRUE 2020-12-11 12:21:42 R_fbYBeNscosfzN9L  Chrome</span></span>
<span><span class='c'>#&gt; 4                   409     TRUE 2020-12-11 12:22:07 R_yyG1HGXOMNPfWDn  Chrome</span></span>
<span><span class='c'>#&gt; 5                   140     TRUE 2020-12-11 12:23:16 R_9dnzH1VI9mf8gle  Chrome</span></span>
<span><span class='c'>#&gt; 6                   213     TRUE 2020-12-11 12:43:09 R_1BoPF5igdMw536H  Chrome</span></span>
<span><span class='c'>#&gt;        Version Operating System Resolution</span></span>
<span><span class='c'>#&gt; 1 88.0.4324.41  Windows NT 10.0   1366x768</span></span>
<span><span class='c'>#&gt; 2 88.0.4324.50        Macintosh  1680x1050</span></span>
<span><span class='c'>#&gt; 3 87.0.4280.88  Windows NT 10.0   1366x768</span></span>
<span><span class='c'>#&gt; 4 87.0.4280.88  Windows NT 10.0   1536x864</span></span>
<span><span class='c'>#&gt; 5 87.0.4280.88  Windows NT 10.0   1536x864</span></span>
<span><span class='c'>#&gt; 6 87.0.4280.88  Windows NT 10.0   1366x768</span></span></code></pre>

</div>

## Conclusion

Before the fun part of analyzing data, we often need to perform some more tedious steps. The [qualtRics](https://docs.ropensci.org/qualtRics/) package is a huge help in automating the import of data into R. As we learned in Part 1 of this post, after connecting to the Qualtrics API, we can quickly (and powerfully) import our Qualtrics data with the `fetch_survey()` function. Once those data are imported, we can use the [excluder](https://docs.ropensci.org/excluder/) package to deal with potentially problematic online survey data based on respondent metadata using the mark, check, and exclude functions. Then we can deidentify our data set before continuing to work with it or passing it on to others. Combined, these two packages can improve your data workflow by automating import and early cleaning processes, leaving the fun part of data processing up to you!

{{< figure src = "happy_data.jpg" width = "600" alt = "A woman sitting on a black couch with a laptop is looking left and smiling. Photo by Brooke Cagle on Unsplash." class = "center" >}}

If you have ideas for improvements or find bugs, please [submit an issue](https://github.com/ropensci/excluder/issues) on the [excluder GitHub repo](https://github.com/ropensci/excluder/).

## Acknowledgments

In developing the excluder package, I thank [Francine Goh](https://orcid.org/0000-0002-7364-4398) and Billy Lim for comments on an early version of the package, as well as the insightful feedback during [peer review](https://github.com/ropensci/software-review/issues/455) from [rOpenSci](/) editor [Mauro Lepore](/author/mauro-lepore/) and reviewers [Joseph O'Brien](https://orcid.org/0000-0001-9851-5077) and [Julia Silge](/author/julia-silge/). This work was funded by US National Science Foundation grant NSF-1658837.

[^1]: Ginn J, Silge J (2022). qualtRics: Download 'Qualtrics' Survey Data. R package version 3.1.6, <https://CRAN.R-project.org/package=qualtRics>

[^2]: Eyal, P., David, R., Andrew, G., Zak, E., & Ekaterina, D. (2021). Data quality of platforms and panels for online behavioral research. Behavior Research Methods. <https://doi.org/10.3758/s13428-021-01694-3>

[^3]: Stevens, J. R. (2021). excluder: An R package that checks for exclusion criteria in online data. *Journal of Open Source Software*, 6(67), 3893. <https://doi.org/10.21105/joss.03893>

[^4]: In some cases, the default in Qualtrics is to collect non-anonymous data, so always check that this option is set to your desired selection for each survey.

