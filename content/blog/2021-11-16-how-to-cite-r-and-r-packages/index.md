---
title: How to Cite R and R Packages
author:
  - Steffi LaZerte
date: '2021-11-16'
slug: how-to-cite-r-and-r-packages
tags:
  - citations
  - packages
  - reproducibility
  - repeatability
description: A short primer on how to cite R and R packages to support developers and ensure repeatable science!
tweet: How to cite R and R packages? by @steffilazerte!
output:
  html_document:
    keep_md: yes
---

I teach R to a lot of scientists, those that are new to science (i.e. students) 
as well as more established scientists, new to R. 
I find that after all their struggles of dealing with dates, 
or remembering where to put the comma, they're so grateful to actual have an analysis, 
that they often forget or aren't aware of the next steps.  

Many scientists don't know that they should be citing R packages let alone R, 
and, if they do know, they often struggle with how.
So here's a short primer on why and how to get started!

## Why cite?

It's extremely important to cite both R and R packages for several reasons:

1) **Developer Credit**  
Many developers of R packages for science are themselves scientists.
They may be developing packages in their own time, or are trying to fit it into a busy schedule. 
Without citations, most scientists don't get credit for their work. 
This makes it hard to prioritize work on open software projects. 
If we want to ensure that high-quality open software continues, 
it's important that the developers get credit for their work[^1].

2) **Repeatable Science**  
If it isn't clear how you did a thing or how/where you got your data, your work isn't repeatable. 
The lack of citations of software in scientific publications has become a problem to the extent that working groups, such as [FORCE11 Software Citation Implementation Working Group](https://www.force11.org/group/software-citation-implementation-working-group), have been created to establish guidelines[^2] and standards[^3] for citing software.
Software (like R), R packages, and their versions are important information to include in a manuscript.
It not only helps other scientists understand and repeat your work, but helps share important and useful tools. 
Including versions is also really important as a way of recording the context of your manuscript 
when software changes.  

**Note:** *Repeatability* isn't the same as *reproducibility*.
If you're interested in ensuring your *analysis is reproducible* (as opposed to your *research being repeatable*, you should look into more rigorous ways of keeping track 
of software dependencies (see below, [Reproducible science](#reproducible-science)).


3) **Gratitude**  
Citing developer's work is also a way of showing gratitude and thanks for (often) unpaid hard work. 
I know that every citation I get for my [weathercan](https://docs.ropensci.org/weathercan) package warms my heart 😻 (and helps my CV)!
R packages have made my life so much easier, and it makes me happy to know that at least I can publicly acknowledge the hard work of the developers by citing them in my manuscripts. 



## Which packages should I cite?

A question I often hear is, "Okay, I understand I should cite R packages, but do I cite them all?".
This is a tricky question, and to be honest, I'm not really sure of the best answer, 
and sometimes it may depend on many factors.

I always advise citing statistical packages, no question, and any package that is specific to a scientific domain or methodology (i.e. if you used [magick](https://docs.ropensci.org/magick) to process images before analysis,
or if you used [tidyhydat](https://docs.ropensci.org/tidyhydat) to retrieve hydrology data, definitely cite those packages). 

The tricky bit is packages that are used generally, like data munging packages, 
or packages like [osfr](https://docs.ropensci.org/osfr) which are used as part of the scientific process 
(i.e. connecting to [OSF, the Open Science Framework](https://osf.io/)), 
but not necessarily for the analysis specifically.
In an ideal world, everything we use would be cited, but with word and reference limits and editors less aware of the importance of citing software, it's often hard to justify citing everything in a manuscript. 

The general advice by the by the [FORCE11 Software Citation Implementation Working Group](https://peerj.com/articles/cs-86/#discussion) is to include software important to the research outcome. 
I would also add that it's not a bad thing to cite open-source software that was a major part of your workflow (for the purposes of credit, if not repeatability). 
Anything else, try to make sure it's prominently displayed in your scripts and if possible include your scripts as supplemental to the manuscript. This way any curious readers will be exposed to the packages if nothing else. For packages like osfr, you could share your OSF page/doi, and perhaps mention that it was managed with osfr.
However, it's important to note that it *is not* sufficient to mention packages in supplemental materials, but if that's all you can do, this makes the best of a bad situation. 

Now that I've convinced you of the importance of citing packages, and you've had a chance to consider which ones you want to cite,
the next step is gathering citations.
Luckily, there are standard ways of citing R packages, most of which you can access directly from your R console!

## How to cite R

Citing R is pretty straightforward.


```r
citation()
```

```
## 
## To cite R in publications use:
## 
##   R Core Team (2021). R: A language and environment for statistical
##   computing. R Foundation for Statistical Computing, Vienna, Austria.
##   URL https://www.R-project.org/.
## 
## A BibTeX entry for LaTeX users is
## 
##   @Manual{,
##     title = {R: A Language and Environment for Statistical Computing},
##     author = {{R Core Team}},
##     organization = {R Foundation for Statistical Computing},
##     address = {Vienna, Austria},
##     year = {2021},
##     url = {https://www.R-project.org/},
##   }
## 
## We have invested a lot of time and effort in creating R, please cite it
## when using it for data analysis. See also 'citation("pkgname")' for
## citing R packages.
```

The next thing you'll want is the version of R.


```r
version$version.string
```

```
## [1] "R version 4.1.2 (2021-11-01)"
```


In the text of a manuscript, I generally suggest something like the following.

> All analyses were performed using R Statistical Software 
> (v4.1.2; R Core Team 2021)


## How to cite R packages

Citation information for R packages can also be accessed through R.

Some developers have books or articles that they want you to use as the citation.


```r
citation("weathercan")
```

```
## 
## To cite 'weathercan' in publications, please use:
## 
##   LaZerte, Stefanie E and Sam Albers (2018). weathercan: Download and
##   format weather data from Environment and Climate Change Canada. The
##   Journal of Open Source Software 3(22):571. doi:10.21105/joss.00571.
## 
## A BibTeX entry for LaTeX users is
## 
##   @Article{,
##     title = {{weathercan}: {D}ownload and format weather data from Environment and Climate Change Canada},
##     author = {Stefanie E LaZerte and Sam Albers},
##     journal = {The Journal of Open Source Software},
##     volume = {3},
##     number = {22},
##     pages = {571},
##     year = {2018},
##     url = {https://joss.theoj.org/papers/10.21105/joss.00571},
##   }
```

Some have you cite the software directly.


```r
citation("magick")
```

```
## 
## To cite package 'magick' in publications use:
## 
##   Jeroen Ooms (2021). magick: Advanced Graphics and Image-Processing in
##   R. R package version 2.7.3. https://CRAN.R-project.org/package=magick
## 
## A BibTeX entry for LaTeX users is
## 
##   @Manual{,
##     title = {magick: Advanced Graphics and Image-Processing in R},
##     author = {Jeroen Ooms},
##     year = {2021},
##     note = {R package version 2.7.3},
##     url = {https://CRAN.R-project.org/package=magick},
##   }
```

You can get version information with the `packageVersion()` function.


```r
packageVersion("weathercan")
```

```
## [1] '0.6.2'
```

```r
packageVersion("magick")
```

```
## [1] '2.7.3'
```

For R packages, I generally recommend text along these lines in a manuscript.

> All analyses were performed using R Statistical Software 
> (v4.1.2; R Core Team 2021).
> Temperature data was obtained from Environment and Climate Change Canada
> via the weathercan R package (v0.6.2; LaZerte and Albers 2018).
> Vegetation photos were simplified and processed prior to analysis using the magick R package (v2.7.3; Ooms 2021).


## Reproducible workflow for managing citations

Being ready to cite the packages you've used will be so much easier if you keep 
track of packages and package versions as part of your workflow.

Consider keeping compiled reports of your analysis scripts 
(either rendering your scripts with the [RStudio's Compile Report](https://rmarkdown.rstudio.com/articles_report_from_r_script.html) button,
'spinning' your scripts via rmarkdown and knitr[^4], 
or using Rmd files and knitting them.)

This way you can include a call to `sessionInfo()` or `devtools::session_info()`,
at the end of your script. 


```r
devtools::session_info()
```

```
## ─ Session info ───────────────────────────────────────────────────────────────
##  setting  value                       
##  version  R version 4.1.2 (2021-11-01)
##  os       Ubuntu 20.04.3 LTS          
##  system   x86_64, linux-gnu           
##  ui       X11                         
##  language en_CA:en                    
##  collate  en_CA.UTF-8                 
##  ctype    en_CA.UTF-8                 
##  tz       America/Winnipeg            
##  date     2021-11-09                  
## 
## ─ Packages ───────────────────────────────────────────────────────────────────
##  package     * version    date       lib source                     
##  assertthat    0.2.1      2019-03-21 [1] CRAN (R 4.1.0)             
##  bslib         0.3.0      2021-09-02 [1] CRAN (R 4.1.1)             
##  cachem        1.0.6      2021-08-19 [1] CRAN (R 4.1.1)             
##  callr         3.7.0      2021-04-20 [1] CRAN (R 4.1.0)             
##  cli           3.1.0      2021-10-27 [1] CRAN (R 4.1.2)             
##  crayon        1.4.2      2021-10-29 [1] CRAN (R 4.1.2)             
##  desc          1.4.0      2021-09-28 [1] CRAN (R 4.1.1)             
##  devtools      2.4.1      2021-05-05 [1] CRAN (R 4.1.0)             
##  digest        0.6.28     2021-09-23 [1] CRAN (R 4.1.1)             
##  ellipsis      0.3.2      2021-04-29 [1] CRAN (R 4.1.0)             
##  emo           0.0.0.9000 2021-06-04 [1] Github (hadley/emo@3f03b11)
##  evaluate      0.14       2019-05-28 [1] CRAN (R 4.1.0)             
##  fastmap       1.1.0      2021-01-25 [1] CRAN (R 4.1.0)             
##  fs            1.5.0      2020-07-31 [1] CRAN (R 4.1.0)             
##  generics      0.1.0      2020-10-31 [1] CRAN (R 4.1.0)             
##  glue          1.5.0      2021-11-07 [1] CRAN (R 4.1.2)             
##  htmltools     0.5.2      2021-08-25 [1] CRAN (R 4.1.1)             
##  jquerylib     0.1.4      2021-04-26 [1] CRAN (R 4.1.0)             
##  jsonlite      1.7.2      2020-12-09 [1] CRAN (R 4.1.0)             
##  knitr         1.36       2021-09-29 [1] CRAN (R 4.1.2)             
##  lifecycle     1.0.1      2021-09-24 [1] CRAN (R 4.1.1)             
##  lubridate     1.8.0      2021-10-07 [1] CRAN (R 4.1.1)             
##  magrittr      2.0.1      2020-11-17 [1] CRAN (R 4.1.0)             
##  memoise       2.0.0      2021-01-26 [1] CRAN (R 4.1.0)             
##  pkgbuild      1.2.0      2020-12-15 [1] CRAN (R 4.1.0)             
##  pkgload       1.2.3      2021-10-13 [1] CRAN (R 4.1.1)             
##  prettyunits   1.1.1      2020-01-24 [1] CRAN (R 4.1.0)             
##  processx      3.5.2      2021-04-30 [1] CRAN (R 4.1.0)             
##  ps            1.6.0      2021-02-28 [1] CRAN (R 4.1.0)             
##  purrr         0.3.4      2020-04-17 [1] CRAN (R 4.1.0)             
##  R6            2.5.1      2021-08-19 [1] CRAN (R 4.1.1)             
##  remotes       2.4.0      2021-06-02 [1] CRAN (R 4.1.0)             
##  rlang         0.4.12     2021-10-18 [1] CRAN (R 4.1.1)             
##  rmarkdown     2.11       2021-09-14 [1] CRAN (R 4.1.2)             
##  rprojroot     2.0.2      2020-11-15 [1] CRAN (R 4.1.0)             
##  rstudioapi    0.13       2020-11-12 [1] CRAN (R 4.1.0)             
##  sass          0.4.0      2021-05-12 [1] CRAN (R 4.1.0)             
##  sessioninfo   1.1.1      2018-11-05 [1] CRAN (R 4.1.0)             
##  stringi       1.7.5      2021-10-04 [1] CRAN (R 4.1.1)             
##  stringr       1.4.0      2019-02-10 [1] CRAN (R 4.1.0)             
##  testthat      3.1.0      2021-10-04 [1] CRAN (R 4.1.1)             
##  usethis       2.1.3      2021-10-27 [1] CRAN (R 4.1.2)             
##  withr         2.4.2      2021-04-18 [1] CRAN (R 4.1.0)             
##  xfun          0.28       2021-11-04 [1] CRAN (R 4.1.2)             
##  yaml          2.2.1      2020-02-01 [1] CRAN (R 4.1.0)             
## 
## [1] /home/steffi/R/x86_64-pc-linux-gnu-library/4.1
## [2] /usr/local/lib/R/site-library
## [3] /usr/lib/R/site-library
## [4] /usr/lib/R/library
```


Your compiled report will then have a complete record of your workflow, packages, 
results *and* package versions.

If you want to get even fancier, you can add specific `print()` commands to the
end of your script which will output the citations themselves (but note that you'll 
probably still need `session_info()` for package versions). 


```r
print(citation("weathercan"), style = "text")
```

```
## LaZerte S, Albers S (2018). "weathercan: Download and format weather
## data from Environment and Climate Change Canada." _The Journal of Open
## Source Software_, *3*(22), 571. <URL:
## https://joss.theoj.org/papers/10.21105/joss.00571>.
```

Or do a bunch of packages:

```r
library(purrr)

c("weathercan", "magick", "tidyhydat") %>%
  map(citation) %>%
  print(style = "text")
```

```
## [[1]]
## LaZerte S, Albers S (2018). "weathercan: Download and format weather
## data from Environment and Climate Change Canada." _The Journal of Open
## Source Software_, *3*(22), 571. <URL:
## https://joss.theoj.org/papers/10.21105/joss.00571>.
## 
## [[2]]
## Ooms J (2021). _magick: Advanced Graphics and Image-Processing in R_. R
## package version 2.7.3, <URL:
## https://CRAN.R-project.org/package=magick>.
## 
## [[3]]
## Albers S (2017). "tidyhydat: Extract and Tidy Canadian Hydrometric
## Data." _The Journal of Open Source Software_, *2*(20). doi:
## 10.21105/joss.00511 (URL: https://doi.org/10.21105/joss.00511), <URL:
## http://dx.doi.org/10.21105/joss.00511>.
```


You may also consider using the `cite_packages()` function from the super cool [grateful](https://github.com/Pakillo/grateful) package to create a formatted bibliography of all the packages used in a project.

### Reproducible science

Finally, if you're getting **serious** about ensuring your work is not only *repeatable* but
also *reproducible*[^5], you might want to check out R packages that help control
package versions like [renv](https://rstudio.github.io/renv/), 
or [Docker images](https://journal.r-project.org/archive/2020/RJ-2020-007/index.html),
which help control your build environment.


## Doing more with citations

- If you want to go next level and start managing your citations in R, checkout
the post [A Roundup of R Tools for Handling BibTeX](/blog/2020/05/07/rmd-citations/)[^6]

- Stay tuned for an upcoming blog post on the recently reviewed [cffr](https://docs.ropensci.org/cffr) package for working with the [CFF citation file format](https://citation-file-format.github.io/) for your package or in general.

- Are you a package developer who would like to see their packages cited more readily?
Check out the post [Make Your R Package Easier to Cite](/blog/2021/02/16/package-citation/) 
for tips and tricks.

## Final thoughts

Free and Open Source Software (FOSS) is a magical thing. 
It equalizes financial disparity among scientific institutions and allows the
development of highly specialized analysis in really specific domains. 
Citing R and R packages is not only important for complete and repeatable science, but is oh so meaningful to software developers. 

If we want them to keep doing what they do, the least we can do is cheer them on!


[^1]: "Every great open source math library is built on the ashes of someone's 
academic career" - https://njt-rse-unsw.netlify.app/#24

[^2]: Software Citation Checklist for Authors <https://zenodo.org/record/3479199#.YYmfT73MKAk>

[^3]: Smith AM, Katz DS, Niemeyer KE, FORCE11 Software Citation Working Group. 2016. Software citation principles. PeerJ Computer Science 2:e86 <https://doi.org/10.7717/peerj-cs.86>

[^4]: This is my favourite method as I can use a custom `rmarkdown::render()` 
to make sure that the reports are dated and moved to a `results` folder. 
For example:<br>
`rmarkdown::render(input = "Scripts/02_analysis.R",
                   output_dir = "Results",
                   output_file = paste0("02_analysis_", Sys.Date(), '.html'))`  
Also see [Dean Attali's blog post](https://deanattali.com/2015/03/24/knitrs-best-hidden-gem-spin/) on the subject.

[^5]: Repeatable means others can *repeat* an experiment and get the same results.
Reproducible means others can *reproduce* the same analysis exactly. See https://www.nationalacademies.org/news/2019/09/reproducibility-and-replicability-in-research

[^6]: Also checkout the corresponding [Twitter thread](https://twitter.com/rOpenSci/status/1258413143480365059) listing even more tools!
