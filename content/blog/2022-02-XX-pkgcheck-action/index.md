---
slug: pkgcheck-action
title: 'pkgcheck is now available as a GitHub action'
date: '2022-02-XX'
author:
  - Jacob Wujciak-Jens
  - Mark Padgham
featured: false
description: 'All packages submitted for peer-review with rOpenSci's are checked by our {pkgcheck} package. This post describes a new GitHub action which can be used to run {pkgcheck}.'
tags:
  - ropensci-review-bot
  - pkgcheck
  - tech notes
---


## What is pkgcheck?

The [{pkgcheck} package](https://github.com/ropensci-review-tools/pkgcheck) has
been developed by rOpenSci to automate the process of checking all packages on
submission. The `ropensci-review-bot` automatically runs {pkgcheck} on all submissions, and checks can also be called at any time by editors using the command:

```r
@ropensci-review-bot check package
```

The bot will return a list of checks which should ideally look like this:

![example pkgcheck](frictionless-pkgcheck.png)

To be ready for peer review, {pkgcheck} should return a series of &#10004;,
indiciating successful checks, and there shouldn't be any &#10008; symbols,
which indicate failed checks. Anybody preparing a package to submit is
recommended to ["use
pkgcheck"](https://devguide.ropensci.org/authors-guide.html) to confirm that a
package is indeed ready to submit. Until now, this has only been possible
through locally [installing the package and running the `pkgcheck()`
command](https://devguide.ropensci.org/authors-guide.html). Local checks suffer
two important disadvantages:

1. Results may only be reproducible on a local system, rather than be generally reproducible; and
2. The checks run by {pkgcheck} include all checks run by [the {rcmdcheck} package](https://r-lib.github.io/rcmdcheck/) which may take quite some time to run.

Just like the [GitHub {rcmdcheck} action](https://github.com/r-lib/actions/blob/v2-branch/examples/check-standard.yaml) which can be easily installed with one of [the `use_github_action_check_...` functions from the `usethis` package](https://usethis.r-lib.org/reference/github_actions.html), {pkgcheck} now also has a GitHub action which overcomes both of these disadvantages through running remotely (on GitHub), and generating reproducible results.

## The GitHub {pkgcheck-action}

This post is the "official" release announcement of {pkgcheck-action}, a GitHub
action which enables checks to be run everytime code is pushed to GitHub. The
action was developed by one of us (Jacob), and can be found at [on GitHub at
ropensci-review-tools/pkgcheck-action](https://github.com/ropensci-review-tools/pkgcheck-action).
The easiest way to use this action in your own repository is to install [the
{pkgcheck} package](https://docs.ropensci.org/pkgcheck/#installation), and run
[the `use_github_action_pkgcheck()`
function](https://docs.ropensci.org/pkgcheck/reference/use_github_action_pkgcheck.html).
That will place a new file in the `.github/workflows` directory of your package
called "pkgcheck.yaml", an example of which is shown on [the main REAMDE of the
{pkgcheck-action}
repository](https://github.com/ropensci-review-tools/pkgcheck-action#usage). The action consists of the single job expressed in the final lines:

```yaml
jobs:
  check:
    runs-on: ubuntu-latest
    steps:
      - uses: ropensci-review-tools/pkgcheck-action@main
```

There are several parameters also described in that main README, which can
either be passed as parameters to the `use_github_action_pkgcheck()` function,
or added to the YAML workflow file as also described in the README.

### Posting {pkgcheck} results to a GitHub issue

In addition to the workflow printing the full details returned by the main
{pkgcheck} function, the output of {pkgcheck} can also be posted to a GitHub
issue, where it will appear precisely like the example shown above. Once the
workflow has finished, you'll receive a notification, and be able to view the
check results (with a `summary-only` parameter determining whether only a
summary of results like shown above will be posted to the issue, or whether
full results will be posted which include the summary followed by quite a bit
more detail). The workflow will only succeed when all {pkgcheck} checks have been passed. You can also put a {pkgcheck} badge in your README by inserting a modified version of these lines:

```md
[![pkgcheck](https://github.com/<org>/<repo>/workflows/pkgcheck/badge.svg)](https://github.com/<org>/<repo>/actions?query=workflow%3Apkgcheck)
```

That badge will then appear like:

[![pkgcheck](https://github.com/hypertidy/geodist/workflows/pkgcheck/badge.svg)](https://github.com/hypertidy/geodist/actions?query=workflow%3Apkgcheck)
