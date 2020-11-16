---
title: 'Selecting the Best Inference Model'
author:
  - richelbilderbeek
date: '2020-12-01'
slug: mcbette-selecting-the-best-inference-model
categories:
  - blog
tags:
  - Software Peer Review
  - packages
  - R
  - community
  - phylogenetics
  - Bayesian
  - model selection
package_version: 0.1.0
description: How to pick the best evolutionary model for your DNA
twitterImg: blog/2019/06/04/post-template/name-of-image.png
output:
  html_document:
    keep_md: yes
---








With this blog post, I show how to use the `mcbette` R package 
in an informal way.
A more formal introduction on `mcbette` 
can be found in the Journal of Open Source Science [^1]. 
After introducing a concrete problem, I will show how `mcbette`
can be used to solve it. 

After discussing `mcbette`, I will conclude with
why I think rOpenSci is important and how enjoyable 
my experiences have been so far.

## The problem

Imagine you are a field biologist. All around the world, you captured
multiple bird species of which you obtained a blood sample.
From the blood, you have extracted the DNA. Using DNA, one can
determine how these species are evolutionarily related. The problem is,
which model of evolution you assume for your birds?

To illustrate the problem of picking the right model of evolution,
we start from the DNA sequences of primates (we will abandon birds here). 
DNA consists out of a long
string of four different elements called nucleotides, 
resulting in a four letter alphabet encoding for the proteins a cell needs. 
In our case, we do not have the full DNA sequence of all primates, 
but 'only' 898 nucleoides. Here I show the DNA sequences:

```r 
dna_sequences <- ape::read.FASTA(fasta_filename)
ape::image.DNAbin(dna_sequences)
```
{{<figure src="unnamed-chunk-1-1.png" >}}

From this DNA alignment, we can use the R package `babette` [^2][^3]
to estimate the evolutionary history of these species.

First, we'll load `babette`:

```r 
library(babette)
```

```
Loading required package: beautier
```

```
Loading required package: beastier
```

```
Loading required package: mauricer
```

```
Loading required package: tracerer
```

Here, we estimate the evolutionary history of these species:

```r 
out <- bbt_run_from_model(fasta_filename)
```

An evolutionary history can be visualized by a tree-like
structure called a phylogeny. `babette`, however, creates multiple
phylogenies of which the more likelier ones show up more often. This results in a visualization that also shows the uncertainty of the inferred phylogenies: 

```r 
babette::plot_densitree(
  out$primates_trees[9000:10000],
  alpha = 0.01
)
```
{{<figure src="unnamed-chunk-4-1.png" alt="the estimated evolutionary history of primates" caption="the estimated evolutionary history of primates" width="300">}}

## The problem?

As we have observed, inferring the evolutionary history
from DNA sequences is easy. The open question is: have we used 
the best evolutionary model?

This is where `mcbette` can help out. `mcbette` is an abbreviation of
'Model Comparison using `babette`' and it helps to pick
the best evolutionary model, where 'best' is defined 
as 'the evolutionary model that has been most likely to have generated the alignment, from a set of models'. 
The addition of 'from a set of models' is important, 
as there are infinitely many evolutionary models to choose from.

Up so for, we used `babette`'s default evolutionary model.
An evolutionary model consists out of, among others, three most important parts,
which are the site, clock and tree model. The site model encompasses the way
the (in our case) DNA sequence changes through time. The clock model
embodies the rate of change over the different (in our case) species.
The tree model specifies the (in our case) speciation model, that is
how the branches of the trees are formed.

Let's figure out what a default `babette` evolutionary model assumes:

```r 
default_model <- create_inference_model()
print(
  paste0(
    "Site model: ", default_model$site_model$name, ". ",
    "Clock model: ", default_model$clock_model$name, ". ",
    "Tree model: ", default_model$tree_prior$name
  )
)
```

```
[1] "Site model: JC69. Clock model: strict. Tree model: yule"
```
Apparently, the default site model embeds a Jukes-Cantor nucleotide 
substitution model (i.e. all nucleotide mutations are equally likely), 
the default clock model is strict (i.e. all DNA sequences change at the same
rate), and the speciation model is Yule (i.e. speciation rates are constant
and extinction rate is zero. These default settings are picked for a reason:
these are the simplest site, clock and tree model.

The question is if this default evolutionary model is the most likely
to have actually resulted in the original alignment. It is easy to argue
that the site, clock and tree model are overly simplistic (they are!).

## The competing model

In this example, I will let the default evolutionary model compete
with only one other evolutionary model. 
For this, there are plenty of options! Tip: to get an overview of
all inference models, view the `inference models` vignette of the `beautier` 
package (which is part of `babette`),
or go to URL [https://cran.r-project.org/web/packages/beautier/vignettes/inference_models.html](https://cran.r-project.org/web/packages/beautier/vignettes/inference_models.html).

Here, I create the competing model:

```r 
competing_model <- create_inference_model(
  clock_model = create_rln_clock_model()  
)
```

The competing model has a different clock model: 'rln' stands for 'relaxed
log-normal', which denotes that the different species can have different
mutation rates, where these mutation rates for a log-normal distribution.

We must modify our inference model first, to prepare them for model
comparison:

```r 
default_model$mcmc <- beautier::create_ns_mcmc()
competing_model$mcmc <- beautier::create_ns_mcmc()
```

```r 
library(mcbette)
marg_liks <- est_marg_liks(
  fasta_filename = fasta_filename,
  inference_models = list(
    default_model,
    competing_model
  )
)
knitr::kable(marg_liks)
```


|site_model_name |clock_model_name   |tree_prior_name | marg_log_lik| marg_log_lik_sd|    weight|      ess|
|:---------------|:------------------|:---------------|------------:|---------------:|---------:|--------:|
|JC69            |strict             |yule            |    -6466.837|        5.589052| 0.9999999|  8.16456|
|JC69            |relaxed_log_normal |yule            |    -6483.102|        6.533320| 0.0000001| 13.08743|

The most important column to look at here is the `weight` column. 




## Notes
The figure paths in the resulting Markdown will already be valid so you won't need to edit the Markdown file.

## Section heading in sentence case

Citation of the primary literature[^1]. 

Citation of a website[^2]. 

Citation of an R package[^3].

### Subsection heading

We recommend the use of [Hugo shortcodes](https://gohugo.io/content-management/shortcodes/) to include images, tweets, videos, gists, etc. In the Rmd file they need to be between `<!--html_preserve-->` and `<!--/html_preserve-->`.

**Add an image** by using a Hugo shortcode. The image is saved under `/content/blog/YYYY-MM-DD-slug/name-of-image.png`.

<!--html_preserve-->
{{< figure src = "name-of-image.png" width = "400" alt = "this is the alternative text" >}}
<!--/html_preserve-->

Consult the Technical Guidelines for tips on changing image size, alignment, and for advice on alternative text.

Below is another image, a plot generated by a code chunk, so you might see how to add alternative text and other options in this case. You can also use [all options documented for the figure shortcode](https://gohugo.io/content-management/shortcodes/#figure) except for `src` that will be created automatically when knitting.

```r 
plot(1:10)
```
{{<figure src="chunkname-1.png" alt="alternative text please make it informative" caption="this is what this image shows, write it here or in the paragraph after the image as you prefer" width="300">}}

Once this file is knitted the plot above will be inserted with the correct syntax.


**Embed a tweet** by using a Hugo shortcode. 

<!--html_preserve-->
{{< tweet 1138216112808529920 >}}
<!--/html_preserve-->


**Tweak code highlighting** Below you can see how to use Hugo [Chroma code highlighting options](https://gohugo.io/content-management/syntax-highlighting/#highlight-shortcode): highlight the 1st and 4th to 6th code lines, number lines as a table starting from 199.

```r {linenos=table,hl_lines=[1,"4-6"],linenostart=199}
a <- 1
a <- 1
a <- 1
a <- 1
a <- 1
a <- 1
a <- 1
```

**Add citation or footnote** text by using the format below 

[^1]: Bilderbeek (2020) mcbette: model comparison using babette. Journal of Open Source Software, 5(54), 2762. <https://doi.org/10.21105/joss.02762>
[^2]: Bilderbeek and Etienne (2018) babette: BEAUti 2, BEAST2 and Tracer for R. Methods in Ecology and Evolution 9, no. 9: 2034-2040. <https://doi.org/10.1111/2041-210X.13032>
[^3]: Bilderbeek (2020) Call BEAST2 for Bayesian evolutionary analysis from R. rOpenSci blog post. <https://ropensci.org/blog/2020/01/28/babette/>
