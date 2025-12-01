---
title: Computo - A Journal for Transparent and Reproducible Research in Statistics and Machine Learning
author:
- Julien Chiquet
- François-David Collin
- Marie-Pierre Etienne
- Pierre Neuvial
- Aymeric Stamm
- Nelle Varoquaux
slug: computo-journal-reproducible-research-statistics-machine-learning
date: '2025-11-06'
tags:
- software-peer-review
- reproducible research
- open science
- statistics
- machine learning
- R
- community
description: "[Computo](https://computo-journal.org) is a journal promoting methodological, computational, and algorithmic contributions in statistics and machine learning that provide a better understanding of which models or methods are most appropriate to answer specific scientific questions. Computo leverages modern tools in programming and scientific reporting to support more transparent, interactive, and reproducible research outputs."
socialImg: https://computo-journal.org/assets/img/logo_text_vertical.svg
socialAlt: Computo logo
editor: Steffi LaZerte
params: 
  doi: "10.59350/6pnct-5cj35"
---

{{< imgtxt src="https://computo-journal.org/assets/img/logo_text_vertical.svg" alt="Computo logo" link="https://computo-journal.org/site/about.html" >}}
[Computo](https://computo-journal.org) is a journal promoting methodological, computational, and algorithmic contributions in statistics and machine learning that provide a better understanding of which models or methods are most appropriate to answer specific scientific questions. Computo leverages modern tools in programming and scientific reporting to support more transparent, interactive, and reproducible research outputs. We're excited to introduce Computo to the rOpenSci community as a complementary road to publishing reproducible research alongside rOpenSci's software peer review initiatives.
{{</ imgtxt >}}

## Why we created Computo

The idea of Computo was born out of a desire to foster a deeper scientific understanding as well as a need to address several challenges in the current scientific publishing landscape, especially within statistics and machine learning. In particular the reproducibility crisis is a significant concern, and the increasing volume of publications straining the review process is potentially impacting quality of scientific publications[^1].

The rapid proliferation of new methods in machine learning and statistics can make it difficult to establish a clear state of the art of statistical approaches that address specific scientific questions. There is often a lack of established, subject-specific benchmark datasets, and the pressure to demonstrate the superiority of novel methods can sometimes lead to less-than-objective performance evaluations. Furthermore, publishing negative results (e.g. failure to demonstrate a statistically significant improvement), which are crucial for scientific progress, remains challenging.

Computo was created to promote methodological and algorithmic contributions that not only are reproducible but also provide a better understanding of which models or methods are most appropriate to answer specific scientific questions. We believe that building up solid scientific knowledge requires both the reproducibility of published results and a clear articulation of their scientific implications. While many journals now require code and data, these are often insufficient on their own to ensure true reproducibility or to fully grasp the scientific contribution.

[^1]: Hanson, M. A., Barreiro, P. G., Crosetto, P., & Brockington, D. (2024). The strain on scientific publishing. Quantitative Science Studies, 5(4), 823-843.

## What Computo offers

Computo differs from other existing journals both in its scope and in the centrality given to reproducibility and open science.

### Scope

Computo welcomes a range of contributions in statistics and machine learning:

- New methods with original stats/ML developments, or numerical studies that illustrate theoretical results in stats/ML;

- Case studies or surveys on stats/ML methods to address a specific (type of) question in data analysis, neutral comparison studies that provide insight into when, how, and why the compared methods perform well or less well;

- Software/tutorial papers to present implementations of stats/ML algorithms or to feature the use of a package/toolbox. For such papers we expect not only the description of an existing implementation but also the study of a concrete use case. If applicable, a comparison to related works and appropriate benchmarking are also expected.

### Reproducibility and open science

By combining open access, reproducibility, and methodological clarity, Computo aims to support the scientific community in making informed and transparent choices in data analysis:

- Computo is an online-only journal, under the [diamond open access](https://en.wikipedia.org/wiki/Diamond_open_access "diamond open access") publication model, free for authors and readers;

- Computo systematically makes all exchanges between authors and reviewers available: reviews are often very useful to readers, and making them available is also a recognition of the important work done by reviewers. To address the fear of some prospective authors that an overly negative review could undermine the chances of later publication, we have chosen to make the reviews available upon publication. Moreover, the reviewers may choose to remain anonymous, as some reviewers do not feel comfortable lifting their anonymity;

- Computo uses an original publication format that guarantees the reproducibility of results: articles are submitted as notebooks integrating text, code, equations and bibliographic references. Thanks to [Quarto](https://quarto.org/), we are able to support R, Python and Julia. A submission is associated with a git repository (hosted on [GitHub](https://github.com)) configured to demonstrate, dynamically and durably, the reproducibility of the contribution. HTML and PDF versions of the article are automatically built through GitHub Actions. Templates to prepare a new submission are available from the [Computo submission page](https://computo-journal.org/site/guidelines-authors.html "Computo submission page").

### Where we are at

Since its inception in late 2022, we have created a robust ecosystem for reproducible science. As of July 2025, we have published 17 articles, and 4 are under review. An example of published paper is given below:

{{< quote footer="Giorgi et al." cite="[Efficient simulation of individual-based population models, **Computo**, 2024.](https://computo-journal.org/published-202412-giorgi-efficient/)" >}}
{{< figure src="https://codimd.math.cnrs.fr/uploads/upload_3627015bebde47d40c656be41d76c014.png" alt="Efficient simulation of individual-based population models" >}}
{{< /quote >}}

### Collaboration and challenges

We use [GitHub to host our repositories](https://github.com/computorg) and Quarto for document creation, ensuring that all code and data are openly available (contributions for GitLab support are welcome!). This collaborative approach has allowed us to overcome numerous challenges, from technical hurdles to ensuring the quality and reproducibility of published work.

One significant challenge has been refining our peer-review process to balance rigor with accessibility. We\'ve explored various platforms and are currently considering a future move towards a more community-driven and transparent system to enhance engagement.

A more fundamental challenge lies in defining and evaluating the true reproducibility of scientific work. We distinguish between "editorial reproducibility" – the ability to re-run the provided code and obtain the same outputs – and "scientific reproducibility," which delves deeper into the robustness and generalizability of the findings. Establishing clear guidelines and policies for this, especially in complex fields like Deep Learning, has been a continuous effort. For instance, evaluating a Deep Learning paper where retraining a model might be infeasible or beyond the scope of the submitted work requires careful consideration of what constitutes a "reproducible" contribution from a scientific standpoint, beyond just code execution.

## The future of Computo

With a shared focus on improving the quality of scientific contributions, rOpenSci and Computo offer complementary approaches to fostering reproducible research. rOpenSci (and by extension pyOpenSci for the Python side) focuses on the reliability and robustness of software tools through a transparent, community-driven peer review process. Computo, in turn, ensures that these tools are used in transparent and fully reproducible computational scientific articles, preserving code, data, and environment specifications.

Looking ahead, we aim to further enhance the dissemination of scientific knowledge by moving towards greater interactivity, richer data visualizations, and exploring innovative communication models, drawing inspiration from initiatives like the former [distill.pub](https://distill.pub). Our approach is to progressively engage all stakeholders: editors, engineers, authors, and the wider scientific community in this evolution.

Our concrete next steps focus on:

*   **Streamlining Workflows and Tools:** Consolidating our editorial process, potentially within a more community-focused environment, and expanding authoring tools with user-friendly computational environments for pre-submission.
*   **Ensuring Long-Term Access and Innovation:** Deploying a robust platform for long-term reproducibility, including on-the-fly container creation and archiving, while continuing to explore and integrate novel ways to present and interact with scientific findings.

We look forward to continuing our journey with the support of our community and like-minded organizations like rOpenSci.
