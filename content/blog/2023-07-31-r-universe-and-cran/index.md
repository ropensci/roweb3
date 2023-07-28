---
slug: "r-universe-and-cran"
title: My Life with the R-universe
author: Zhian N. Kamvar
date: '2023-08-01'
tags:
  - community
  - r-universe
  - cran
  - carpentries
  - packages
  - github
description: >
  Using the R-universe to rapidly deploy releases, dependencies, and bugfixes
preface: This is cross-posted on [Zhian Kamvar's Blog](https://zkamvar.netlify.app/blog/r-universe-and-cran/)
---

## Summary

Installing a package that has _just_ been released to CRAN is painful for many users on Mac and Windows because often the difference between a 'binary' and a 'source' version is not immediately clear and they end up trying to install the source version, which leads to errors and heartbreak.
When I was designing [The Carpentries Workbench](https://carpentries.github.io/workbench), I needed to make sure that people could reliably install R packages at _any time_ regardless of whether or not they had a compiler set up. 

I use a hybrid model of the R-universe and CRAN to host in-development packages that are not on CRAN alongside their dependencies that are released to CRAN, but also require compilation via their latest release tag on GitHub.
This provides end users with **a repository that will always contain the most up-to-date binary packages that can be easily restored via [renv](https://rstudio.github.io/renv/) without the need of a compiler.** 

In this blog post, I will provide a summary of the following:

1. What is The R-universe and how to set one up
2. How to host your own in-development packages
3. How to use it as an extension of CRAN to provide just-in-time binaries for
   your dependencies
4. How to use it to provide the latest bugfix versions of critical dependencies
   _before_ they hit CRAN

## What is the R-universe?

[The R-universe](/r-universe/) is a project by rOpenSci that serves as a rolling development repository to host R packages that are in development on a git repository such as GitHub.
This has a few benefits from the get-go.

With the R-universe, you can: 

 1. host packages that could never be on CRAN due to size restrictions
 2. provide binary versions of packages that require compilation
 3. deploy quick bugfixes to your package without needing to ask the users to
    install from GitHub
 4. host packages that are not on CRAN that you depend on
 5. query linux system dependencies via its API
 
To [set up a universe](/blog/2021/06/22/setup-runiverse/), you do three things:

 1. create a repository in your GitHub account called "[user].r-universe.dev" (e.g. https://github.com/zkamvar/zkamvar.r-universe.dev)
 2. add the R-universe app to your GitHub account 
 3. add packages to a JSON file called "packages.json" (e.g. https://github.com/zkamvar/zkamvar.r-universe.dev/blob/main/packages.json)
 
After that, your universe will be available for use at `https://[yourname].r-universe.dev/` and anyone can install those packages. 

## Rolling your own {#dev-cran}

Before the R-universe, there were three ways to provide users with your in-development version of a package:

1. have people install from GitHub via `remotes::install_github("user/repo")` or `pak::pkg_install("user/repo")`
2. provide a [drat](https://eddelbuettel.github.io/drat/) repository (I've [posted about auto-building a drat repository previously](https://zkamvar.netlify.app/blog/gh-drat/))
3. host a cran-like repository on your personal site that contains the tarball
   (this is how dev versions of the [ape](http://ape-package.ird.fr/) package used to be distributed)
   
All of these solutions either required an extra package and syntax for your users (option 1) or it involved extra work on your end to build and provide updates for the packages on your server (options 2 and 3).
Unless you happen to have access to a Linux, Windows, and macOS machine, you are only able to serve the source version of the packages.


**The R-universe changes all of that** by allowing us to specify that we want to
deploy releases in our JSON file: 

```json
[
    {
        "package": "pegboard",
        "url": "https://github.com/carpentries/pegboard",
        "branch": "*release"


    },
    {
        "package": "sandpaper",
        "url": "https://github.com/carpentries/sandpaper",
        "branch": "*release"


    },
    {
        "package": "varnish",
        "url": "https://github.com/carpentries/varnish",
        "branch": "*release"


    }
]
```

Because of this, we are able to _deploy releases quickly_ and continue to test development versions when we need to. 

## Using R-universe as an extension for CRAN {#alt-cran}

### Problem

Back in January 2022, [a blog post explaining how renv 0.15.0 interacts with the R-universe](/blog/2022/01/06/runiverse-renv/) was put up on the rOpenSci blog.
It describes the model by which renv will restore package versions in R.
In brief, if renv sees a binary package version that's on CRAN or a CRAN archive, it will use that version, and if it does not find that version there, it will install from the R-universe if the SHA hash matches the package DESCRIPTION, and then from the GitHub hash if it does not match.

We had initially put up our packages on the R-universe because it was a good way to distribute them without taxing the user's GitHub API calls, but there were some issues to hosting only our packages.
Imagine that you are a macOS or Windows user and you find that a new-to-you package has just updated on CRAN.
What happens when you try to install it?

You get this message:

```
 There are binary versions available but the
  source versions are later:
          binary source needs_compilation
httpuv     1.6.4  1.6.5              TRUE

Do you want to install from sources the packages which need compilation?
```

It's clear that [many users simply do not know what to do with this message](https://stackoverflow.com/q/54346839/2752888) and run into problems if they try to install the source version.
The reason for this message is because CRAN can take up to 3 days to build the MacOS and Windows binary versions of a package that is newly released to CRAN.

{{< figure src = "httpuv-cran-2022-01-06.png" alt = "image of the available downloads for the httpuv package showing half of the binary versions at 1.6.5 and the other half at 1.6.4" >}}


So the question is, if your package depends on packages that require a complex setup to install the source version, how do you prevent this situation from happening?
**How can the R-universe provide just-in-time binaries of released versions of packages _that you do not control_**?

### Solution

You can add the development version of this package to your `packages.json` file and _set the branch to `*release`_ so that it will rebuild on the R-universe only when the author generates a release.

```json
[
    {
        "package": "httpuv",
        "url": "https://github.com/rstudio/httpuv",
        "branch": "*release"
    }
]
```

Because the R-universe will build package binaries within an hour, if someone attempts to install a package that was _just_ released to CRAN, they will not see the dialogue above, because R will detect that a binary is available from your R-universe.


There are some caveats with this however:

1. The authors must develop on GitHub.
2. The authors must use the GitHub release mechanism when they submit to CRAN.

If either of these are not met, this solution will not work, but you might be able to link to the repository on the [CRAN mirror in GitHub](https://github.com/cran) without the `*release` tag. 

## Seamless bugfixes ahead of cran {#pre-cran}

In March 2023, renv released version 0.17.0, and subsequently [caused chaos
with lesson workflows using sandpaper](https://github.com/carpentries/sandpaper/issues/406).

Thanks to the rapid response from Kevin Ushey, I was able to get him to provide bugfixes that addressed these issues to the dev version of renv.
However, he was also dealing with other bugfixes before he could resubmit to CRAN, so how was I to deploy these fixes to my community before he submitted the fix to CRAN, which could take days?

I added **the specific bugfix tag/commit**[^commit] from renv to my `packages.json` file:

```json
[
    {
        "package": "renv",
        "url": "https://github.com/rstudio/renv",
        "branch": "0.17.0-38"
    }
]
```

[^commit]: I could have also specified `"branch": "fd9181395e13652d2b3dc942ac1bf807e9564c25"`

When users installed renv from The Carpentries R-universe, they would get version 0.17.0-38 until Kevin pushed the bugfix to CRAN.
Note that Kevin was very diligent about bumping the development version number and adding a tag to every fix, but this would still work as long as the developer used _any form of development version_ on GitHub.

The reason this works is because of the same reason that we can serve binaries before they are built on CRAN: `install.packages()` will always look for the latest version of a package and install that if a binary is available.

## Conclusion

### Benefits for the R Community

One of the best features of R is a packaging ecosystem that, for the most part, "just works." This is largely thanks to CRAN and its volunteers who check every package against the packages that it uses and uses it regularly to make sure that they are all compatible with each other.
The downside of having such a thorough system for checking packages is that the barrier for entry is very high[^cran].
It also means that providing bugfixes can be on the order of days.
The R-universe solves these problems by providing a way for authors and organisations to quickly deploy package suites and dependencies without burdening the users with the task of compiling code or installing extra packages.

### Grace for my past self

When I was a grad student, I wrote my very first R package, [poppr](https://grunwaldlab.github.io/poppr), which I had released to CRAN on 2013-05-26.
In 2014, we released the paper describing poppr and were preparing to give [our first workshop](https://grunwaldlab.github.io/Population_Genetics_in_R/) for plant pathologists at the annual American Phytopathological Meeting.
The only catch: I was working on a new version that would introduce many new features that we wanted to highlight in our workshop.
To get people prepared, I had them to (1) install R, (2) install a C compiler, (3) install [devtools](https://devtools.r-lib.org/), and then (4) use `devtools::install_github("grunwaldlab/poppr@candidate-1.1")`.

My question to you: how do you think that went over? If the answer is: it was a success, then you are correct! But there is a big caveat to this success: it was only because I had asked each of the >40 participants to email me the results of their installation and then I would troubleshoot these installations via email several weeks before the workshop.
**If the R-universe had existed back then**, I would have been able to tell people to (1) install R and (2) run `install.packages("poppr", repos = c("https://zkamvar.r-universe.dev", getOptions("repos")))` without having them to wonder why they needed a C compiler (or what it was) and why they needed devtools.


It's very hard to overstate just how much benefit the R-universe provides to the R community.
It allows developers to rapidly deploy testing versions of their packages to their user-base for feedback, and it is one of the main reasons that we are able to easily maintain [The Carpentries Workbench](https://carpentries.github.io/workbench).
And there are many other benefits that I haven't even mentioned here such as public APIs to get system dependencies, lightweight HTML manuals, articles, and more! So, thank you to rOpenSci for providing and continuing to support this work.


[^cran]: This goes beyond the requirements to pass R CMD Check into gatekeeping behaviour from the CRAN maintainers and seemingly arbitrary policies that are regularly shifting, but that's a discussion for another post.
  The system is flawed, but it's still valuable.
