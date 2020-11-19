---
slug: moving-away-travis
title: 'Moving away from Travis CI'
date: '2020-11-19'
author:
  - Jeroen Ooms
  - Maëlle Salmon
tags:
  - CI
  - Travis
  - packages
---

At rOpenSci, we encourage R package developers to take advantage of Continuous Integration services to automatically check the package on different platforms, with different versions of R. The [rOpenSci dev guide](https://devguide.ropensci.org/ci.html) dedicates chapter 2 to the topic of *Continuous Integration Best Practices*, and recommends a few common CI vendors, including [Travis CI](https://travis-ci.com/).

Travis CI has been a pioneer in free public CI services, and made the concept popular in the open source community. The service started to get wide adoption in 2012, and [native support for R](https://github.com/travis-ci/travis-build/commit/c697bb2240cfc1abb92a95f57d2e72c151104431) was added by Craig Citro in 2015, with more contributions from [current maintainers](https://github.com/travis-ci/travis-build/blob/master/lib/travis/build/script/r.rb#L1-L3) Jim Hester and later Jeroen. In 2016 we wrote a [blog post](https://ropensci.org/blog/2016/07/12/travis-osx/) about using a build-matrix in order to check your packages on multiple versions of Linux and MacOS, which is super powerful for R package development.

![travis-image](https://ropensci.org/assets/blog-images/travis.png)

## A Change of Management

Sadly, good times came to an end. In 2019 the company [was sold](https://news.ycombinator.com/item?id=18978251) to a private equity firm, and soon after the acquisition, a large portion of the senior engineer staff was [layed off](https://news.ycombinator.com/item?id=19218036). Under the new management, open-source users started suffering from significant outages and backlogs, while being pushed towards the new enterprise product travis-ci.com (the original Travis service was hosted on travis-ci.org).

The big blow came earlier this month, when Travis announced a [new pricing model](https://blog.travis-ci.com/2020-11-02-travis-ci-new-billing) which no longer has a generous free tier for open source projects, and also fully [shutting down](https://mailchi.mp/3d439eeb1098/travis-ciorg-is-moving-to-travis-cicom) the old travis-ci.org product by December 31. It is still unclear what exactly the new product will look like, perhaps it can still be useful, but with the direction the company is heading, we recommend exploring other options.

## GitHub Actions

Fortunately, there are many other companies offering free CI for open source projects these days. Some popular vendors include [AppVeyor](https://www.appveyor.com/), [Circle-CI](https://circleci.com/), [Azure Pipelines](https://azure.microsoft.com/en-us/services/devops/pipelines/), and [Gitlab CI](https://docs.gitlab.com/ee/ci/), but the biggest new player is [GitHub Actions](https://github.com/features/actions): the native CI/CD system from GitHub.

The GitHub Actions (GHA) platform was introduced only recently, but has quickly taken over the open-source world. The system is extremely flexible, allowing you to run any combination of scripts, containers, and imported actions from other users. The native integration with GitHub this takes away the annoying authentication dance that is required for 3rd party services, making the setup completely seamless. Very generous free build resources are provided for open source projects, but if you need something else, GHA also allows you to plug in [self-hosted runners](https://docs.github.com/en/free-pro-team@latest/actions/hosting-your-own-runners/about-self-hosted-runners), giving you complete control of your hardware and build environment.

To get started with GHA for R, the [r-lib/actions](https://github.com/r-lib/actions) repo has a number of preconfigured actions and example configurations written by Jim Hester (again), for installing R, running checks, etc. Simply copy the [check-standard.yaml](https://github.com/r-lib/actions/blob/master/examples/check-standard.yaml) file into the `.github/workflows/` folder of your R package, then push, and see the magic happening. Note that Jim's scripts are only one example: GHA will let you run any script in the OS or container your choice, allowing you to fully customize what happens on each new push, pull request, opened issue, etc. 


## Thank you Travis !

{{< figure src = "https://travis-ci.org/images/logos/TravisCI-Mascot-1.png" width = "200" alt = "Travis worker" class = "pull-right" >}}

We will likely only start seeing more of GitHub actions, as it becomes the default CI for open-source. But for now I would like to thank the Travis team, especially the initial founders and engineers, for bringing massive free CI to the open source world.

I remember the first time installing Travis on a project, and seeing commits and pull requests automatically get built and checked, without having to do anything. I was blown away, it really brought the concept of pull requests to life. In no time, CI became an integral part of development, providing an efficient workflow to test new features and review pull requests. I could never maintain the number of projects that I do today, if I would have to test all those pull requests manually!

The R community certainly is not alone in this. A user in the [above hackernews](https://news.ycombinator.com/item?id=19218036) topic comments:

> Free CI really did provide a massive boost to collaborative open source projects.
As a user, it did a lot to increase software quality: not just catching inadvertent bugs, but also ensuring that there was at least some reproducible way to get the code working, that didn't depend on some implicit configuration of the authors system. As a maintainer, accepting simple pull requests becomes much easier when you can quickly look over the code and check the CI status, and not have to try it out locally yourself. It was certainly critical to the "social coding" idea behind GitHub.

Of course the open-source community is sad to see Travis become an enterprise-first product. But in all honesty, the system is no longer state-of-the-art, and probably won't be able to compete with the new GitHub/Microsoft products. 

Also we are very aware that it is very difficult to find a sustainable business model around open source, and hope the company will survive by refocusing on specialized enterprise CI needs. Nevertheless, as we transition towards a new generation of CI systems, we won't forget the revolutionary role that Travis played in taking open-source collaboration to the next level. Thank you!
