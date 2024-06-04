---
slug: "from-scripts-to-package"
title: From scripts to package. Developing dendroNetwork and learning with rOpenSci
package_version: 0.5.4
author:
  - Ronald Visser
editor:
- Steffi LaZerte
date: 2024-06-06
tags:
  - Software Peer Review
  - packages
  - R
  - dendroNetwork
# The summary below will be used by e.g. Mastodon preview cards
description: "How scripts were transformed into a package and what I learned in the process"
---


Developing [dendroNetwork](https://docs.ropensci.org/dendroNetwork/) as a package was not a goal from the beginning, but looking back, I think that it should have been. I wish someone had suggested making a package to me much earlier. Why? Because of many things, but mostly: reproducibility and transparency. This enables others to also use the method and software. In addition, I really enjoyed the open peer-review process after submitting to rOpenSci, because the reviewers showed me various improvements and how people from outside my discipline viewed the software and documentation. Meeting new people is always nice and a great bonus of the process.

A few years ago I published a method developed to explore patterns in the similarity between tree-ring series using network analysis.[^1] In dendrochronology the pair-wise comparison of tree-ring series is an often used method to look for patterns in, for example, the provenance of the wood, especially for archaeological wood, since we often know where the wooden objects came from, but not where the trees were felled. This type of study often results in a complex set of relations and I think that network analysis is a great method for visualising and analysing these relations without losing the complexity. I developed this method and shared the code with my publication.[^2] Part of the code had been written by others and adapted for the analyses. The fact that Angelo Salatino (The Open University) shared his [code](https://github.com/angelosalatino/CliquePercolationMethod-R) openly and Andy Bunn (Western Washington University) did the [same](https://github.com/AndyBunn/dplR/blob/master/R/rwi.stats.running.R), shows how beneficial openly sharing code is to others and for the progress of research. Further research was performed, refining the method and exploring other avenues, such as looking at wood use within a Roman ship and the provenance of wood used in these ships.[^3] Later, I read a blog post about packaging and how easy it could be. Unfortunately, I do not remember which blog it was, but it inspired me to convert my code into a package, for the benefit of others, but also because I wanted to learn how to do this.

[^1]: Visser, R. M. (2021). Dendrochronological Provenance Patterns. Network Analysis of Tree-Ring Material Reveals Spatial and Economic Relations of Roman Timber in the Continental North-Western Provinces. Journal of Computer Applications in Archaeology, 4(1), 230. [https://doi.org/10.5334/jcaa.79](https://doi.org/10.5334/jcaa.79)

[^2]: Visser, R. M. (2022). *Dendrochronological Provenance Patterns. Code and Data of Network Analysis of Tree-Ring Material* [dataset]. <https://doi.org/10.5281/zenodo.10200361>

[^3]: Visser, R. M., & Vorst, Y. (2022). Connecting Ships: Using Dendrochronological Network Analysis to Determine the Wood Provenance of Roman-Period River Barges Found in the Lower Rhine Region and Visualise Wood Use Patterns. *International Journal of Wood Culture*, *3*(1-3), 123-151. <https://doi.org/10.1163/27723194-bja10014>

    Visser, R., & Vorst, Y. (2022). *Analyses, data and figures related to: 'Connecting ships: using dendrochronological network analysis to determine the wood provenance of Roman-period river barges found in the Lower Rhine region and to visualise patterns of wood use'* [dataset]. <https://doi.org/10.5281/zenodo.7243539>

For me, creating a package from my existing scripts started with these three excellent resources (in random order):

-   <https://devguide.ropensci.org/>

-   <https://r-pkgs.org/>

-   <https://carpentries-incubator.github.io/lesson-R-packaging/>

The easy bit was converting scripts into functions, since this is pretty straight forward programming. However, I never realized how much work writing (good) documentation is. This took me much longer than I expected, also because I was (and am) doing this in my spare time. However, it was also worthwhile to do this and explain what the functions and variables are for. I also learned a lot about the potential for continuous integration, automated testing and checking, especially from the [rOpenSci-documentation](https://devguide.ropensci.org/). A lot of information can be found there, which is really helpful. It takes an effort to read everything, but in the end it can save you a lot of time if you read it *before* you start developing a package!

I really enjoyed the [open peer-review](https://github.com/ropensci/software-review/issues/627) process. After reading all the documentation and making sure that dendroNetwork complied to the standards of rOpenSci, the process of submission was very easy. I enjoyed the feedback I got from the reviewers [Kaija Gahm](https://kaijagahm.netlify.app/) and [Zachary Gajewski](https://github.com/gzach93) and their comments really improved the software in a whole.

I would recommend any research who develops a new method with code to do the following things:

-   Be nice, and share and document your code!

-   Develop functions not scripts.

-   Develop a package from the start, especially when devising a new method(ology).

-   Read the documentation (or: RTFM)

-   Submit to rOpenSci and enjoy!
