---
slug: runiverse-discovering
title: 'Finding the best R packages with r-universe'
date: '2023-02-16'
author: Jeroen Ooms
description: 'The goal of r-universe is to provide a central place for browsing through the R ecosystem to discover what is out there, get a sense of the purpose and quality of individual packages, and help you get started in seconds.'
photogallery: true
featured: true
tags:
  - r-universe
  - registry
  - search
  - packages
  - dashboard
---

## Finding the right tool for the job

The hardest part about effectively using R is finding the best packages for the problem you are trying to solve. I think this is even more important than being fluent in the language itself, which you will pick up along the way, as you start using R more frequently. However, building your work on solid foundations from the start is essential to getting reliable results, and very difficult to fix later on in your project.

There are about 20.000 packages on CRAN alone, many more on other networks such as BioConductor and GitHub, and new packages are released every day. These packages are developed by volunteers, ranging from professional software engineers to students and hobbyist. The quality and scope varies enourmously, which can make it difficult to get a sense of what tools are available for a certain task.

The goal of r-universe is to help you effectively browse through the R ecosystem to discover what is out there, get a sense of the purpose and quality of individual packages and their developers, and get started using them immediately without any hassle.

## Three levels of navigation in r-universe

To browse through R packages, we roughly distinguish three levels of navigation:

 1. The global ecosystem level: search through all packages by topic, keyword, ranking, etc.
 2. The maintainer/organization level: browse all work from a given group or researcher.
 3. The individual package level: information on everything there is to know about a single package, and instructions to get started using it in R.

If you are exploring packages for a new project, you may start by searching everything that is out there using the r-universe search engine.

Once you become more familiar with the domain, you may get interested to zoom in further, and learn more about the suite of packages from a given organization, and the details of individual projects.


## Level 1: search through the entire R ecosystem

The landing page on https://r-universe.dev takes you directly to the global search engine. Here you can perform free-text search for a keyword, which is matched against package names, descriptions, topics, and titles of manual pages, vignettes, and so on. Results are ranked using a combination of a matching score (how often, and where, the search term appears in the package), and a quality score.

{{< figureforgallery src="search1.png" alt="Screenshot of r-universe search engine" >}}

The landing page above also shows a shuffeling list of organizations publishing packages (sorted by recent activity), that you can explore to discover what is currently being developed in the R ecosystem.

{{< gallery >}}
{{< figureforgallery src="search2.png" alt="screenshot of simple search results" >}}
{{< figureforgallery src="search3.png" alt="screenshot of advanced search results" >}}
{{< figureforgallery src="search4.png" alt="screenshot of advanced search results" >}}
{{< /gallery >}}

Finally, the right side of the search box contains an expand button which reveals powersearch filters. Here you can enter advanced search criteria, in order to specifically match specific fields. For example you can search for packages from a given author, or have a specific function or dependency.



## Level 2: browse content by maintainer or organization


## Level 3: dive into individual packages

