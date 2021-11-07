---
title: 'cffr: Create a CITATION.cff File for your R Package'
author:
  - Diego Hernangómez
date: '2021-11-23'
tags:
  - cffr
  - citations
  - codemeta
  - community
  - cran
  - github
  - metadata
  - packages
  - R
  - Software Peer Review
  - zenodo
slug: cffr
package_version: 0.1.1
description: cffr, a package for creating valid CITATION.cff files using the metadata
  of any R package.
twitterImg: blog/2021/11/23/cffr/brain-network.png
twitterAlt: The cffr package
tweet: The cffr package by @dhernangomez
output:
  html_document:
    keep_md: yes
---



<!--html_preserve-->
{{< figure src = "logo.png" width = "150" alt = "Hex sticker for the cffr package" class = "pull-right" link = "https://docs.ropensci.org/cffr/">}}
<!--/html_preserve-->

A new R package, [cffr](https://docs.ropensci.org/cffr/), has been [developed](https://github.com/ropensci/cffr), [peer-reviewed](https://github.com/ropensci/software-review/issues/463) by rOpenSci and accepted by [CRAN](https://CRAN.R-project.org/package=cffr).
This package has a single purpose: to create a valid CITATION.cff file using the metadata of any R package.

## What is a CITATION.cff file and why it matters?

A [Citation File Format (CFF)](https://citation-file-format.github.io/) is a plain text file with human- and machine-readable citation information for software (and datasets)[^1].

[^1]: Druskat, S., Spaaks, J. H., Chue Hong, N., Haines, R., Baker, J., Bliven, S., Willighagen, E., Pérez-Suárez, D., & Konovalov, A.
    (2021).
    Citation File Format (Version 1.2.0) \[Computer software\].
    <https://doi.org/10.5281/zenodo.5171937>

Under the hood, a CFF file is a YAML file. YAML presents the advantage of being easily understood by any user, and can be also easily converted to another data serialization languages, such as JSON or XML.
This is an example of the minimal content of a valid CITATION.cff file:

``` yaml
cff-version: 1.2.0
message: 'To cite package "cffr" in publications use:'
title: 'cffr: Generate Citation File Format (''cff'') Metadata for R Packages'
authors:
- family-names: Hernangómez
  given-names: Diego
```

On the previous example, the identification of the software and the author is
quite straightforward, as it is provided by the fields `title` and `authors`.
The information that can be included on a CFF file can be further enriched with
additional fields (like `version`, `year` or `doi`), as the [Citation File
Format schema version
1.2.0](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md#valid-keys)
accepts [21 different keys](#valid-keys).

### Why it matters?

Citing a book, an article or a thesis is not difficult. The title, authors and
publication date are easily identifiable in most of the cases. However, software
is rarely cited on research projects. One of that reasons is "*the lack of a
clear citation information from package developers"*, as already mentioned on a
previous post ([Make Your R Package Easier to
Cite](/blog/2021/02/16/package-citation/)). Developers spend thousand of hours
on developing new and exciting software or adding new features to existing ones,
so citing software is a matter of [giving credit where credit is
due](https://www.esciencecenter.nl/news/code-citation-was-made-possible-by-research-software-engineers-in-germany-and-the-netherlands/).

In July 2021, GitHub announced a [built-in citation
feature](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files)
that enables any software user to cite any repository on
[APA](https://apastyle.apa.org/style-grammar-guidelines/references/examples/journal-article-references#1)
or [BibTeX](http://www.bibtex.org/Using/) style.

<!--html_preserve-->
{{< tweet user="natfriedman" id="1420122675813441540" >}}
<!--/html_preserve-->

That built-in feature heavily relies on the CFF format, effectively rendering
the information of the CITATION.cff file onto the aforementioned styles.

This announcement was, in my very personal opinion, a game-changer on the
citation ecosystem for software. As a proof of that, on the two following days
[Zenodo](https://zenodo.org/) and [Zotero](https://www.zotero.org/) announced
support for CITATION.cff files in their GitHub integration:

<!--html_preserve-->
{{< tweet user="zenodo_org" id="1420357001490706442" >}}
{{< tweet user="zotero" id="1420515377390530560" >}}
<!--/html_preserve-->

The integration with Zenodo implies that when creating a Digital Object
Identifier ([DOI](https://www.doi.org/)) of a GitHub repository via Zenodo, the
DOI would be generated according to the metadata included on the CITATION.cff
file of the repository. This feature saves developers some extra efforts on
making both DOI and software consistent in terms of metadata. See an example of
the [DOI of cffr](https://www.doi.org/10.5281/zenodo.5646626), whose title,
description and author has been gathered from the [cffr CITATION.cff
file](https://github.com/ropensci/cffr/blob/main/CITATION.cff).

<!--html_preserve-->
{{< imgtxt src = "zotero.png" width ="188" alt = "Screenshot of Zotero importing a GitHub repo">}}
<!--/html_preserve-->

In the case of Zotero (a reference management software), the information of the CITATION.cff file of any repository is detected when adding that repository to a library from a url.

This handy feature implies that a GitHub repository can effectively behave as a DOI, ISBN or arXiv ID.
Zotero would recognize the author, title, date and other relevant metadata of the repository, including it on the personal library of the user.

<!--html_preserve-->
{{</ imgtxt >}}
<!--/html_preserve-->

And there is still more!
[CiteAs](https://citeas.org/) service also supports CFF files[^2], and in the future, more platforms as [JabRef](https://github.com/JabRef/jabref/issues/7945) or [GitLab](https://gitlab.com/gitlab-org/gitlab/-/issues/337368)[^3] may add support to CITATION.cff files, (and , why not [CRAN and BioConductor](https://twitter.com/egonwillighagen/status/1456322595096170503)?)
.

[^2]: Du, C., Cohoon, J., Priem, J., Piwowar, H., Meyer, C., & Howison, J.
    (2021, October 23).
    CiteAs: Better Software through Sociotechnical Change for Better Software Citation.
    *Companion Publication of the 2021 Conference on Computer Supported Cooperative Work and Social Computing*.
    ACM.
    <http://doi.org/10.1145/3462204.3482889>

[^3]: Druskat, Stephan.
    (2021, September 27).
    Making software citation easi(er) - The Citation File Format and its integrations.
    *Zenodo*.
    <https://doi.org/10.5281/zenodo.5529914>

### Other software citation projects

The [CodeMeta Project](https://codemeta.github.io/)[^4] creates a concept vocabulary that can be used to standardize the exchange of software metadata across repositories and organizations.
One of the many uses of a codemeta.json file is to provide citation metadata such as title, authors, publication year or version.
The [codemetar](https://docs.ropensci.org/codemetar/) package[^5] allows to generate codemeta.json files from R packages metadata
.

[^4]: Matthew B. Jones, Carl Boettiger, Abby Cabunoc Mayes, Arfon Smith, Peter Slaughter, Kyle Niemeyer, Yolanda Gil, Martin Fenner, Krzysztof Nowak, Mark Hahnel, Luke Coy, Alice Allen, Mercè Crosas, Ashley Sands, Neil Chue Hong, Patricia Cruse, Daniel S. Katz, Carole Goble.
    2017.
    CodeMeta: an exchange schema for software metadata.
    Version 2.0.
    KNB Data Repository.
    <https://doi.org/10.5063/schema/codemeta-2.0>

[^5]: Carl Boettiger and Maëlle Salmon (2021).
    codemetar: Generate 'CodeMeta' Metadata for R Packages.
    <https://github.com/ropensci/codemetar>, <https://docs.ropensci.org/codemetar/>

## Using cffr

Getting started with cffr is pretty easy.
There is a main function (and likely to be the only one you would need on a in-development package) named [`cff_write()`](https://docs.ropensci.org/cffr/reference/cff_write.html) that extract the metadata of your package (already included in your DESCRIPTION and inst/CITATION files), convert it into a CITATION.cff file and validates it against the latest [CFF validation schema](https://github.com/citation-file-format/citation-file-format/blob/main/schema.json) using [jsonvalidate](https://docs.ropensci.org/jsonvalidate/)[^6]:

[^6]: Rich FitzJohn, Rob Ashton, Mathias Buus and Evgeny Poberezkin (2021).
    jsonvalidate: Validate 'JSON' Schema.
    *R package version 1.3.2*.
    <https://CRAN.R-project.org/package=jsonvalidate>

``` r
library(cffr)
 
# For in-development packages
cff_write()
```

    #> 
    #> CITATION.cff generated
    #>
    #> cff_validate results-----
    #> Congratulations! This .cff file is valid

### Working with `cff` objects

It is possible also to create a `cff` object (a regular R list with a custom printing method included with the package) of any package installed locally on your machine.
In the next example I create a `cff` object for the [rtweet](https://docs.ropensci.org/jsonvalidate/)[^7] package:

[^7]: Kearney, M.
    (2019, October 24).
    rtweet: Collecting and analyzing Twitter data.
    *Journal of Open Source Software*.
    The Open Journal.
    <http://doi.org/10.21105/joss.01829>


```r
library(cffr)

cff_rtweet <- cff_create("rtweet")

cff_rtweet
```

```
#> cff-version: 1.2.0
#> message: 'To cite package "rtweet" in publications use:'
#> type: software
#> license: MIT
#> title: 'rtweet: Collecting Twitter Data'
#> version: 0.7.0
#> doi: 10.21105/joss.01829
#> abstract: 'An implementation of calls designed to collect and organize Twitter data
#>   via Twitter''s REST and stream Application Program Interfaces (API), which can be
#>   found at the following URL: <https://developer.twitter.com/en/docs>. This package
#>   has been peer-reviewed by rOpenSci (v. 0.6.9).'
#> authors:
#> - family-names: Kearney
#>   given-names: Michael W.
#>   email: kearneymw@missouri.edu
#>   orcid: https://orcid.org/0000-0002-0730-4694
#> preferred-citation:
#>   type: article
#>   title: 'rtweet: Collecting and analyzing Twitter data'
#>   authors:
#>   - family-names: Kearney
#>     given-names: Michael W.
#>   year: '2019'
#>   journal: Journal of Open Source Software
#>   volume: '4'
#>   number: '42'
#>   pages: '1829'
#>   doi: 10.21105/joss.01829
#>   url: https://joss.theoj.org/papers/10.21105/joss.01829
#> repository: https://CRAN.R-project.org/package=rtweet
#> repository-code: https://github.com/ropensci/rtweet
#> url: https://CRAN.R-project.org/package=rtweet
#> date-released: '2020-01-08'
#> contact:
#> - family-names: Kearney
#>   given-names: Michael W.
#>   email: kearneymw@missouri.edu
#>   orcid: https://orcid.org/0000-0002-0730-4694
```

There is a special field, [`preferred-citation`](https://github.com/citation-file-format/citation-file-format/blob/main/schema-guide.md#preferred-citation) that would be used to generate the citation information on GitHub.
If this field is not present, GitHub would reuse other keys of the file to auto-generate a citation reference.

As already mentioned, cffr uses the information of the DESCRIPTION (via the desc[^8] package) and the inst/CITATION file to extract the metadata.
I will focus now on the comparison of the citation info of rtweet and the information generated by cffr:

[^8]: Gábor Csárdi, Kirill Müller and Jim Hester (2021).
    desc: Manipulate DESCRIPTION Files.
    *R package version 1.4.0*.
    <https://CRAN.R-project.org/package=desc>


```r
toBibtex(citation("rtweet"))
```

```
#> @Article{rtweet-package,
#>   title = {rtweet: Collecting and analyzing Twitter data},
#>   author = {Michael W. Kearney},
#>   year = {2019},
#>   note = {R package version 0.7.0},
#>   journal = {Journal of Open Source Software},
#>   volume = {4},
#>   number = {42},
#>   pages = {1829},
#>   doi = {10.21105/joss.01829},
#>   url = {https://joss.theoj.org/papers/10.21105/joss.01829},
#> }
```

```r
cff_rtweet$`preferred-citation`
```

```
#> type: article
#> title: 'rtweet: Collecting and analyzing Twitter data'
#> authors:
#> - family-names: Kearney
#>   given-names: Michael W.
#> year: '2019'
#> journal: Journal of Open Source Software
#> volume: '4'
#> number: '42'
#> pages: '1829'
#> doi: 10.21105/joss.01829
#> url: https://joss.theoj.org/papers/10.21105/joss.01829
```

We can check that the core information of the rtweet citation has been also included on the `cff` object.
Let's check also some of the fields included on the DESCRIPTION file of rtweet:


```r
packageDescription("rtweet",
  fields = c(
    "Title", "Description", "Author", "Version", "URL"
  )
)
```

```
#> Title: Collecting Twitter Data
#> Description: An implementation of calls designed to collect and organize Twitter data via
#>           Twitter's REST and stream Application Program Interfaces (API), which can be
#>           found at the following URL: <https://developer.twitter.com/en/docs>.  This
#>           package has been peer-reviewed by rOpenSci (v. 0.6.9).
#> Author: Michael W. Kearney [aut, cre] (<https://orcid.org/0000-0002-0730-4694>), Andrew
#>           Heiss [rev] (<https://orcid.org/0000-0002-3948-3914>), Francois Briatte [rev]
#> Version: 0.7.0
#> URL: https://CRAN.R-project.org/package=rtweet
#> 
#> -- File: C:/Users/diego/Documents/R/win-library/4.1/rtweet/Meta/package.rds 
#> -- Fields read: Title, Description, Author, Version, URL
```

On the next chunk I compare it with the corresponding fields on the `cff` object:


```r
as.cff(cff_rtweet[
  c("title", "abstract", "authors", "version", "url")
])
```

```
#> title: 'rtweet: Collecting Twitter Data'
#> abstract: 'An implementation of calls designed to collect and organize Twitter data
#>   via Twitter''s REST and stream Application Program Interfaces (API), which can be
#>   found at the following URL: <https://developer.twitter.com/en/docs>. This package
#>   has been peer-reviewed by rOpenSci (v. 0.6.9).'
#> authors:
#> - family-names: Kearney
#>   given-names: Michael W.
#>   email: kearneymw@missouri.edu
#>   orcid: https://orcid.org/0000-0002-0730-4694
#> version: 0.7.0
#> url: https://CRAN.R-project.org/package=rtweet
```

### Valid keys {#valid-keys}

Here I show the list of all the valid keys of the CFF schema.
Most of them have an explicit mapping with the fields (or a combination of fields) of the DESCRIPTION and inst/CITATION files:


|              |                   |                    |
|:-------------|:------------------|:-------------------|
|abstract      |identifiers        |repository          |
|authors       |keywords           |repository-artifact |
|cff-version   |license            |repository-code     |
|commit        |license-url        |title               |
|contact       |message            |type                |
|date-released |preferred-citation |url                 |
|doi           |references         |version             |

The cffr package includes also an extensive [vignette](https://docs.ropensci.org/cffr/articles/crosswalk.html) describing how these fields are computed with several examples.

### Validating a `cff` object

Once that we have created an `cff` objects, we can check its validity using the `cff_validate()` function.
This function can be with `cff` objects and with CITATION.cff files, and on error would display some messages that would help us debugging our object:


```r
cff_validate(cff_rtweet)
```

```
#> 
#> cff_validate results-----
```

```
#> Congratulations! This cff object is valid
```

```r
# Creating a CITATION.cff file from an cff object and validating it
cff_rtweet %>%
  # Write it to a tempfile
  cff_write(tempfile("CITATION", fileext = ".cff"),
    verbose = FALSE,
    validate = FALSE
  ) %>%
  cff_validate()
```

```
#> 
#> cff_validate results-----
#> Congratulations! This cff object is valid
```

```r
# Create a deliberated error and use the validator
# Override the defaults with keys param

wrong_keys <- list(
  url = "I am not an url",
  doi = "I am not a doi"
)

cff_create("rtweet", keys = wrong_keys) %>%
  cff_validate()
```

```
#> 
#> cff_validate results-----
```

```
#> Oops! This  cff object has the following errors:
```

```
#>      field                          message
#> 1 data.doi referenced schema does not match
#> 2 data.url referenced schema does not match
```

The validation of the initial `cff` object is satisfactory, as displayed on the messages.
On the second case, where I forced some invalid values using the `keys` parameter, We can check that the `doi` and `url` field are flagged as errors, as the text strings does not correspond with the expected patterns for those fields (e.g "http\*" for urls and "10XXXX/XXXX" for DOIs).

## Conclussion

On the last few months, support of CITATION.cff files has increasingly grown on the scientific citation ecosystem.
The cffr package allows any R-package developer to easily integrate the citation information with a wide variety of services via the creation of a CITATION.cff file leveraging on the support introduced by GitHub.

## Acknowledgments

I would like to thank [Carl Boettiger](/author/carl-boettiger/), [Maëlle Salmon](/author/ma%C3%ABlle-salmon/) and the rest of contributors of the [codemetar](https://docs.ropensci.org/codemetar/) package.
This package was the primary inspiration for developing cffr and shares a common goal of increasing awareness on the efforts of software developers.

I would like also to thank [João Martins](https://zambujo.github.io/) and [Scott Chamberlain](/author/scott-chamberlain/) for thorough reviews, that helps improving the package and the documentation as well as [Emily Riederer](https://emilyriederer.netlify.com/) for handling the [review process](https://github.com/ropensci/software-review/issues/463).
