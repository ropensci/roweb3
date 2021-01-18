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

> Software citation elevates software to the level of a first-class object in the digital scholarly ecosystem, consistent with its immense actual present-day significance. Katz et al., F1000Research 2021. [^f1000]

As a developer you are probably happy to hear about the usage of your package(s), and within academia, even more so if it is done with the usual currency of citations in scientific articles.

{{< tweet 1273605411577442304 >}}

In this post, we shall share tips on how to make your R package easy to cite.
We shall also give some insights on obstacles the users of your package might face, as well as a brief presentation a our own literature surveillance.
We are writing this with the view of complementing our dev guide with the tips... and your feedback, so we are looking forward to your response!

## Clear citation rules for your lil' tool[^liltool]

<!--html_preserve-->
{{< figure src ="pexels-cottonbro-4553166.jpg" alt = "Person wearing a cardboard box on their head" link = "https://www.pexels.com/photo/person-in-white-long-sleeve-shirt-holding-brown-cardboard-box-4553166/" caption = "Why didn't you cite my package?! [cottonbro on Pexels](https://www.pexels.com/photo/person-in-white-long-sleeve-shirt-holding-brown-cardboard-box-4553166/)." class = "center" >}}
<!--/html_preserve-->

To encourage users to cite your package, you need to store citation metadata in the expected places and to advertise it very clearly.

> "I [advertise the citation info in the README] too, just to make it painfully obvious how to cite the work." [Adam Sparks](/author/adam-sparks/), [rOpenSci forum](https://discuss.ropensci.org/t/should-the-ropensci-dev-guide-include-package-citation-best-practices/1551/18)

* Use the CITATION file, as thousands of R packages do (3,386 out of 16,002 packages on CRAN as of the 15th of January, 2021[^thxmark]). Create its boilerplate with `usethis::use_citation()` for instance.
* Archive each release of your GitHub repo in Zenodo and add Zenodo base DOI to the CITATION file.
* If you write a JOSS or some other software publication where you describe the software, then add that citation to the CITATION file as well.
* Less related to your package itself but to what supports it: if your package wraps a particular "thing" such as data source or, say, statistical algorithm, remind users of how to cite the thing via e.g. `citHeader()`. [Maybe even add the reference for the thing](https://discuss.ropensci.org/t/citation-of-original-article-when-implementing-specific-methods/2312)?  

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

Something we at rOpenSci wouldn't recommend is an on load message in interfactive session, but it's good to know that [some maintainers resort to this strategy](https://twitter.com/d_olivaw/status/1261439521134182406).

## Why is it hard to cite software

Even once you have followed the tips above, well-meaning users of your package might stumble upon

* Journals with a limit on the number of references;

{{< tweet 1197192493948907522 >}}

* Co-authors less willing to cite software than they are.

{{< tweet 1197124137078136832 >}}

These problems can't be fixed at once by one motivated individual (neither you the developer nor they the user), so more advocacy and [teaching](https://neuropsychology.github.io/psycho.R//2018/08/31/cite_packages.html) is needed. Besides, in the meantime, how do we [adapt software citation guidelines](https://twitter.com/EikoFried/status/1197556604075466753) to realistically accommodate for all situations?

## How rOpenSci tracks package usage

At rOpenSci we monitor the scientific literature to discover uses cases of our packages, that you can browse on our [citations page](/citations).
As sometimes packages are used but not listed in the references section, we report any usage of the packages in papers.
Here's our, well Scott Chamberlain's, workflow.

* Lots of Google Scholar alerts (one per package name, unless that package name will lead to too many false positives) arrive to one gmail address of Scott's.
* Scott uses [gmailr](https://gmailr.r-lib.org/) and [googlesheets4](https://googlesheets4.tidyverse.org/) to push those up to Google sheets.
* He then manually clicks through to each link and look for the given package mention and records if a package is actually used (mentioned in the Methods section, and/or cited).

## Conclusion

In this post we shared guidance on how to help your R package land in the references section of the papers that used it.
We also mentioned some hurdles even well-meaning users might face, and explained how we track for usage of our packages in the scientific literature.
We encourage you to share your experience and wisdom in the comments below, as we are planning to consolidate them together with our content, to add a new topic to our dev guide.

Note that this post is not about promoting _usage_ of your package, which is [covered briefly in the dev guide](https://devguide.ropensci.org/marketing.html).

[^f1000]: Katz DS, Chue Hong NP, Clark T et al. Recognizing the value of software: a software citation guide [version 2; peer review: 2 approved]. F1000Research 2021, 9:1257 (https://doi.org/10.12688/f1000research.26932.2) 
[^liltool]: This is a slightly snarky title responding to a [tweet](https://twitter.com/sk_emptyset/status/1261729463613693952) (isn't the use of "just" in "just a tool to access data" naive at best?). This lively thread also includes, in another place, an infamous [comparison of the tidyverse to a swivel chair](https://twitter.com/georgemsavva/status/1197122359515373574).