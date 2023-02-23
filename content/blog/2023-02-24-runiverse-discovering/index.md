---
slug: runiverse-discovering
title: 'Discovering and learning everything there is to know about R packages using r-universe'
date: '2023-02-24'
author: Jeroen Ooms
description: 'The goal of r-universe is to provide a central place for browsing through the R ecosystem to discover what is out there, get a sense of the purpose and quality of individual packages, and help you get started in seconds.'
photogallery: true
featured: true
tags:
  - r-universe
  - tech notes
  - registry
  - search
  - packages
  - dashboard
---

## Finding the right tool for the job

The hardest part about effectively using R is finding the best packages for the problem you are trying to solve. I think this is even more important than being fluent in the language itself, which you will pick up along the way as you start using R more frequently. However, building your code on reliable foundations is essential for good results, and difficult to fix later on in a project.

There are about 20.000 packages on CRAN, and more on other networks such as BioConductor and GitHub. New packages are released every day. The developers are a mix of volunteers, ranging from professional software engineers to students and hobbyist. The quality and scope of packages varies enormously, which can make it difficult to judge which tools are the best choice for a given task.

The ultimate goal of r-universe is to help you effectively navigate the R ecosystem to discover what is out there, get a sense of the purpose and quality of individual packages, their developers, and get started using packages immediately and without any hassle.

## Three levels of navigation in r-universe

We can distinguish three levels of navigation in r-universe when shopping for R packages:

 1. Search the global ecosystem: find packages, by topic, keyword, ranking, etc.
 2. Browse by maintainer/organization: explore all work from a given group or researcher.
 3. The individual package: get detailed information on everything there is to know about a project and instructions how to start using it.

If you are new to R or are exploring packages for a certain task, you may start by searching everything that is out there using the r-universe search engine. Once you become more familiar with the ecosystem, you may get interested to zoom in to a specific suite of packages from a given maintainer or organization, and eventually learn more about the details of some particular packages.

## Level 1: searching the entire R ecosystem

The landing page on https://r-universe.dev takes you directly to the global search engine. Here you can perform free-text search for a keyword, which is matched against package names, descriptions, topics, and titles of manual pages, vignettes, and so on. Results are ordered using a combination of a matching score (how often and where the search term appears), and a quality ranking[^1].

{{< figureforgallery src="search1.png" alt="Screenshot of r-universe search engine landing page." >}}

Moreover the search page also shows a shuffeling list of organizations (sorted by recent activity) which is fun to discover what is currently being developed in the R ecosystem.

{{< gallery >}}
{{< figureforgallery src="search2.png" alt="Screenshot of r-universe simple search results." >}}
{{< figureforgallery src="search3.png" alt="Screenshot of r-universe advanced search query." >}}
{{< figureforgallery src="search4.png" alt="Screenshot of r-universe advanced search results." >}}
{{< /gallery >}}

Finally, the right side of the search box contains an expand button which reveals powersearch filters. Here you can enter advanced search criteria, in order to specifically match specific fields. For example you can search for packages from a given author, or have a specific function or dependency.


## Level 2: browsing work from a maintainer or organization

Each user and organization in r-universe has a unique subdomain under `r-universe.dev` with a personal cran-like package repository from where packages can directly be installed. For example, the packages and information from rOpenSci can be found on https://ropensci.r-universe.dev, and packages maintained by me are listed at https://jeroen.r-universe.dev (these two sets overlap).

{{< figureforgallery src="user1.png" alt="Screenshot of builds tab of a repository." >}}

The top tabs allow you to explore different resources within universe. The __builds__ tab shows  the current state of the repository: a table with the name and version of each package, including the commit date, author, and build status. Clicking on the package name in the table sends you to the homepage of the package (more on this below), and the maintainer name links to the subdomain of that maintainer, listing other projects maintained by this person.

The __packages__ tab lists descriptions from all packages in the repository, and the __articles__ tab shows all articles (e.g. vignettes). The __contributors__ tab shows a chart with contributor statistics for the organization or maintainer. Clicking on the a bar in the chart sends you to this other universe where you can explore more work by this person.

{{< gallery >}}
{{< figureforgallery src="user2.png" alt="Screenshot of packages tab of a repository." >}}
{{< figureforgallery src="user3.png" alt="Screenshot of articles tab of a repository." >}}
{{< figureforgallery src="user4.png" alt="Screenshot of contributors tab of a repository." >}}
{{< /gallery >}}

The same subdomain hosts the actual cran-like package repository for this user or organization. Hence in order to list or install packages from ropensci in R, you would use:

```r
# List available packages
available.packages(repos = "https://ropensci.r-universe.dev")

# Install a package
install.packages("magick", repos = "https://ropensci.r-universe.dev")
```

## Level 3: individual package information

Finally we arrive at the individual package level. Clicking on a package in search results or in a universe overview will lead you to homepage for that package. We can also link to this page directly via the url `https://{owner}.r-universe.dev/{package}` for example https://r-spatial.r-universe.dev/sf below.

{{< figureforgallery src="package1.png" alt="Screenshot of r-universe package homepage" >}}

These package pages are generated automatically and provide detailed information about each project, and all the information and resources to quickly install and try the package locally in R.

### Package desciptives

The initial section of the homepage shows descriptive data and links to resources from this package, such as source/binary files, the package manual and NEWS file. Further down we show installation instructions to install the package in R. Installation is quick and easy because we provide pre-compiled binaries for Windows and MacOS, so no special tools or setup is required on your end.

{{< gallery >}}
{{< figureforgallery src="package2.png" alt="Screenshot of r-universe package homepage with annotations." >}}
{{< figureforgallery src="package21.png" alt="Screenshot of r-universe package badges and statistics." >}}
{{< figureforgallery src="package4.png" alt="Screenshot of r-universe package: how to cite the package." >}}
{{< /gallery >}}

You can also find more information derived by the build system, such as which system libraries the package builds on, topics, and if the package is on CRAN. The badges underneath show statistics about the package, such as dependencies, reverse dependencies, and GitHub stars. Clicking on the 'exports' badge will show all functions and datasets exported by the package, which again link to the respective sections in the manual page. If available, we also show how the package should be cited in papers.

### All the documentation

To let you start using packages as quickly as possible, r-universe renders all available documentation and presents this as clear and concisely as possible on the homepage.

Most R packages have 3 forms of documentation: a readme file, a reference manual (help pages), and a number of articles (vignettes). These articles are often a good place to get started, and are listed on the package homepage right under the descriptives. From here you can view both the rendered html/pdf document, as well as the rmarkdown source file used to (re)produce the artcile.

{{< gallery >}}
{{< figureforgallery src="package3.png" alt="Screenshot of r-universe package, listing included articles." >}}
{{< figureforgallery src="package5.png" alt="Screenshot of r-universe package showing example readme content." >}}
{{< figureforgallery src="package6.png" alt="Screenshot of r-universe package showing reference manual index." >}}
{{< /gallery >}}

Further down the page you can see the content from the package readme. Most packages these days include a README.md file which can nicely be rendered into HTML.

After the readme follows a section named "reference manual" containing a table with all the help pages. These link to the respective chapters in the html reference manual[^2], which provide the most extensive documentation for each function in the package, including descriptions, parameters, examples, etc.

{{< figureforgallery src="refman.png" alt="Screenshot of a chapter in the HTML reference manual for a package, showing descriptions, parameters, and examples for a function." >}}


### Usage and development activity

Besides familiarizing yourself with what the package does, you may be interested in who is working on it, who else is using it, and if it is still actively developed.

The "development and contributors" section shows a bar chart with the number of commits per week for the last year, and who the main contributors are. Finally the section "usage by other packages" shows other packages on r-universe depending on this package, grouped by owner. This gives you some indication on how active the project is, and who are involved.

{{< figureforgallery src="package7.png" alt="Screenshot of recent development activity and users of a package." >}}


## Conclusion


[^1]: More information about this ranking: [how is the package-rank score calculated](https://github.com/r-universe-org/help#how-is-the-package-rank-score-calculated)
[^2]: Blog post: [postdoc 1.0: minimal and uncluttered HTML package manuals](/blog/2022/11/29/postdoc-docs/).
