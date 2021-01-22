---
slug: package-citation
title: Make Your R Package Easier to Cite
date: '2021-03-02'
author:
  - Maëlle Salmon
  - Scott Chamberlain
  - Karthik Ram
description: Some tips to promote scientific citations of your work.
tags:
  - citations
  - metadata
  - packages
---

Scientists rarely cite research software they use as part of a research project. As a consequence, the software and the time spent developing and maintaining it becomes an invisible scholarly contribution. Furthermore, this lack of visibility means that the incentives to produce high quality, sustainable software is missing. Among many reasons why software is not cited, one is the lack of a clear citation information from package developers. In this tech note we provide some tips on how to make it really easy to cite your software.


{{< tweet 1273605411577442304 >}}

In this post, we shall share tips on how to make your R package easy to cite.
We shall also give some insights on hurdles the users of your package might face when wanting to cite your package, as well as a brief presentation of our monitoring of the literature to find use cases of our packages.
We are writing this with the view of complementing our dev guide with the tips... and your feedback, so we are looking forward to your response!

## Clear citation rules for your lil' tool[^liltool]

<!--html_preserve-->
{{< figure src ="pexels-cottonbro-4553166.jpg" alt = "Person wearing a cardboard box on their head" link = "https://www.pexels.com/photo/person-in-white-long-sleeve-shirt-holding-brown-cardboard-box-4553166/" caption = "Why didn't you cite my package?! [cottonbro on Pexels](https://www.pexels.com/photo/person-in-white-long-sleeve-shirt-holding-brown-cardboard-box-4553166/)." class = "center" >}}
<!--/html_preserve-->

To make it really easy for users to cite your package, you should store citation metadata in the expected places and advertise it very clearly.

> "I [advertise the citation info in the README] too, just to make it painfully obvious how to cite the work." [Adam Sparks](/author/adam-sparks/), [rOpenSci forum](https://discuss.ropensci.org/t/should-the-ropensci-dev-guide-include-package-citation-best-practices/1551/18)

* Use the CITATION file, as thousands of R packages have done (3,386 out of 16,002 packages on CRAN as of the 15th of January, 2021[^thxmark]). It's easy to create a boilerplate with `usethis::use_citation()`.
* Archive each release of your GitHub repo on Zenodo and add [Zenodo top-level DOI](https://help.zenodo.org/#versioning) to the CITATION file.
* If your software has a clear research application, you can also publish a paper at the Journal of Open Source Software, Journal of Open Research Software among others. You can append a software publication to your CITATION file.
* Less related to your package itself but to what supports it: if your package wraps a particular resource such as data source or, say, statistical algorithm, remind users of how to cite that resource via e.g. `citHeader()`. [Maybe even add the reference for the thing](https://discuss.ropensci.org/t/citation-of-original-article-when-implementing-specific-methods/2312)?  

[^thxmark]: Thanks to [Mark Padgham](/author/mark-padgham/) for computing this in a CRAN mirror.

As an example see [nasapower CITATION file](https://github.com/ropensci/nasapower/blob/master/inst/CITATION) that refers to both the manual and a paper.
All it lacks is a [Zenodo DOI](https://discuss.ropensci.org/t/should-the-ropensci-dev-guide-include-package-citation-best-practices/1551/15) for the manual -- although most users would probably end up citing the JOSS paper.

```r
citHeader("While nasapower does not redistribute the data in any way,\n",
          "we encourage users to follow the requests of the POWER\n",
          "Project Team:\n",
          "\n",
          "'When POWER data products are used in a publication, we\n",
          "request the following acknowledgment be included:\n",
          "These data were obtained from the NASA Langley Research\n",
          "Center POWER Project funded through the NASA Earth Science\n",
          "Directorate Applied Science Program.'\n",
          "\n",
          "To cite nasapower in publications, please use:")

citEntry(
  entry = "Article",
  author = as.person("Adam H Sparks"),
  title = "nasapower: A NASA POWER Global Meteorology, Surface Solar Energy and Climatology Data Client for R",
  doi = "10.21105/joss.01035",
  year = 2018,
  month = "oct",
  publisher = "The Open Journal",
  volume = 3,
  number = 30,
  pages = 1035,
  journal = "The Journal of Open Source Software",

  textVersion = paste("Sparks, Adam (2018). nasapower: A NASA POWER Global Meteorology, Surface Solar Energy and Climatology Data Client for R. Journal of Open Source Software, 3(30), 1035, https://doi.org/10.21105/joss.01035"))

year <- sub("-.*", "", meta$Date)
note <- sprintf("R package version %s", meta$Version)

bibentry(bibtype = "Manual",
         title = "{nasapower}: NASA-POWER Data from R",
         author = c(person("Adam", "Sparks")),
         year = year,
         note = note,
	 url = "https://CRAN.R-project.org/package=nasapower")

 textVersion = paste0("Adam H Sparks, (", year, ").",
  " nasapower: A NASA POWER Global Meteorology, Surface Solar Energy and Climatology Data Client for R. ",
  note, ".",
  " https://CRAN.R-project.org/package=nasapower")
```

* Direct potential readers to the preferred citation in the README by adding boilerplate text "here's how to cite my package". See e.g. [ecmwfr README](https://github.com/bluegreen-labs/ecmwfr#how-to-cite-this-package-in-your-article).

{{< tweet 1261726909148233728 >}}

Something we at rOpenSci wouldn't recommend is an on load message in interactive sessions, but it's good to know that [some maintainers resort to this strategy](https://twitter.com/d_olivaw/status/1261439521134182406).

## Why is it hard to cite software

Despite your best efforts to encourage users to cite your software, you might still run into challenges. Authors may have limits on the number of references they can cite in a journal or face resistance from their coauthors.

These problems can't be fixed at once by one motivated individual (neither you the developer nor they the user), so more advocacy and [teaching](https://neuropsychology.github.io/psycho.R//2018/08/31/cite_packages.html) is needed. Besides, in the meantime, how do we [adapt software citation guidelines](https://twitter.com/EikoFried/status/1197556604075466753) to realistically accommodate for all situations?

## How rOpenSci tracks package usage

At rOpenSci we monitor the scientific literature to discover use cases of our packages that you can browse on our [citations page](/citations).
As sometimes packages are used but not listed in the references section, we report any usage of the packages in papers.
Here's Scott Chamberlain's workflow.

* Lots of Google Scholar alerts (one per package name, unless that package name will lead to too many false positives) arrive to one gmail address of Scott's.
* Scott uses [gmailr](https://gmailr.r-lib.org/) and [googlesheets4](https://googlesheets4.tidyverse.org/) to push those up to Google sheets.
* He then manually clicks through to each link and look for the given package mention and records if a package is actually used (mentioned in the Methods section, and/or cited).
* He updates [several JSON files of the citations](https://github.com/ropensci-org/ropensci_citations/).
* [One of these JSON citation files](https://github.com/ropensci-org/ropensci_citations/blob/master/citations_all_parts_clean.json) is used to populate the [citations page](/citations) (via a [Hugo data template in a layout file](https://github.com/ropensci/roweb3/blob/master/themes/ropensci/layouts/citations/list.html)). Any update of the ropensci-org/ropensci_citations repo triggers a Netlify build of our website thanks to a Netlify build hook (basically, an URL) and a [GitHub Actions workflow](https://github.com/ropensci-org/ropensci_citations/blob/master/.github/workflows/rebuild-roweb3.yml) (that simply pings this URL)

As part of our new Moore Foundation funded effort, we are building a system to automatically detect R package citations in literature and append them to package records in R-universe. Stay tuned on our blog for more details.

## Conclusion

In this post we shared guidance on how to help your R package land in the references section of the papers that used it.
We also mentioned some hurdles even well-meaning users might face, and explained how we track for usage of our packages in the scientific literature.
We encourage you to share your experience and wisdom in the comments below, as we are planning to consolidate them together with our content, to add a new topic to our dev guide.

Note that this post is not about promoting _usage_ of your package, which is [covered briefly in the dev guide](https://devguide.ropensci.org/marketing.html).

[^f1000]: Katz DS, Chue Hong NP, Clark T et al. Recognizing the value of software: a software citation guide [version 2; peer review: 2 approved]. F1000Research 2021, 9:1257 (https://doi.org/10.12688/f1000research.26932.2)
[^liltool]: This is a slightly snarky title responding to a [tweet](https://twitter.com/sk_emptyset/status/1261729463613693952) (isn't the use of "just" in "just a tool to access data" naive at best?). This lively thread also includes, in another place, an infamous [comparison of the tidyverse to a swivel chair](https://twitter.com/georgemsavva/status/1197122359515373574).
