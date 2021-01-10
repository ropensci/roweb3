---
title: Introducing BaseSet
author:
  - Lluís Revilla Sancho
date: '2021-01-14'
slug: introducing-baseset
categories: []
tags:
  - BaseSet
  - Software Peer Review
  - data-munging
  - R
  - packages
  - community
package_version: 0.0.14
description: ""
twitterImg: blog/2021/01/14/introducing-baseset/name-of-image.png
output:
  html_document:
    keep_md: yes
editor_options: 
  chunk_output_type: console
---



On this post I will explain the history behind [BaseSet](https://cran.r-project.org/package=BaseSet "BaseSet on CRAN") then a brief introduction to sets, followed by showing what you can do with [BaseSet](https://docs.ropensci.org/BaseSet/).

## Brief BaseSet history

I work studying diseases to try to find what causes them at a research institute associated with an hospital.
Thanks to recent technological advances we can analyze many things of a single patient's sample.
Having so much information available makes difficult to find the cause of diseases (but is much better than not having enough information!).

In order to make it easier to focus and aggregate knowledge, scientists have been storing what do we know of each gene in several ways.
As more information have been gathered efforts to group these genes started to emerge and being used to focus or discard some genes as cause of different process of interest[^1].
Scientists group the genes according to where they are, what do they do, how they are, with which other genes do they interact, and among these categories there are many different groups.

[^1]: See [this article](https://doi.org/10.1371/journal.pcbi.1002375 "Ten Years of Pathway Analysis: Current Approaches and Outstanding Challenges") reviewing the different methods used.

This has lead to several ways of storing this information, and depending on which database and which method you use you end up with different groups.
This in turn means that we aren't so sure of how to group genes and as new experiments are carried out they might change.

I had previously created a package ([BioCor](https://bioconductor.org/packages/BioCor/ "BioCor: Comparing sets of genes")) to compare these sets and returns a numerical value of how similar two groups of genes are.
But I found out that depending on which database I used I got very different results.
So I wanted to be able to know in which groups a gene was present in several data sources in an easy way and also to unify these database and account for these uncertainty.

So I started experimenting extending a class present on [GSEABase](https://bioconductor.org/packages/GSEABase/) that I used previously to measure and see how could I do that.
I found out that there was also some effort from other people through the [Bioconductor](https://bioconductor.org "Project for high-throughput genomic data") slack channel.
So I got in touch with them and we shared some ideas how to do this.

To explore different ways to do it we end up developing three different packages that aim to do similar things but take different approaches.
At the moment BaseSet is published on CRAN and [BiocSet](https://bioconductor.org/packages/BiocSet/ "BiocSet displays different biological sets in a triple tibble format") published on Bioconductor.
Both packages provides methods to work with sets, the mathematical name of groups of elements.

## Sets

Sets is not only used for tennis games.
In mathematics if you have a group of multiple elements such as `c("apple", "bannana", "pineaple")` it is called a set.
A set is a group of elements, usually just unique elements are used (no `c("apple", "bannana", "pineaple", "apple")` .

To learn and understand the world we group elements together.
Usually it is clear what should be inside a group, like the elements above, all of them are fruits.
Sometimes it is not so clear if an element belongs to a certain group: Are tomatoes fruits?[¹](https://en.wikipedia.org/wiki/Tomato#Fruit_versus_vegetable "Wikipedia page about tomatoes and its classification")

An element can also belong to several groups.
Basketball is a team sport, but is also played with a ball.
So basketball can be on both groups, as we see on [wikipedia](https://en.wikipedia.org/wiki/Basketball "Wikipedia: Basketball"):

> [Categories](https://en.wikipedia.org/wiki/Help:Category "Help:Category"): [Basketball](https://en.wikipedia.org/wiki/Category:Basketball "Category:Basketball") \| [Sports originating in the United States](https://en.wikipedia.org/wiki/Category:Sports_originating_in_the_United_States "Category:Sports originating in the United States") \| [Team sports](https://en.wikipedia.org/wiki/Category:Team_sports "Category:Team sports") \| [Summer Olympic sports](https://en.wikipedia.org/wiki/Category:Summer_Olympic_sports "Category:Summer Olympic sports") \| [Ball games](https://en.wikipedia.org/wiki/Category:Ball_games "Category:Ball games") \| [Games and sports introduced in 1891](https://en.wikipedia.org/wiki/Category:Games_and_sports_introduced_in_1891 "Category:Games and sports introduced in 1891")

Some say that tomatoes should be both considered as fruits and as vegetables, so they are also on both sets.
We can do this for all elements we can think, pencils, mathematical operations, numbers, words, genes...

When we have more than one set we might be interested in which elements are in two groups, which fruits are also vegetables, or which fruits are not vegetables.
These operations are called set operations.
Every time you have used `%in%`, `merge` in your code you have been using a set operation.
There are many, set operations, the most used are intersection, for which R has the `intersect` and the union in R is done with `c` on vectors.
The equivalents on data.frames are done with `merge` and their arguments (if you are familiar with the `*_join` verbs from dplyr that is one of the reasons why there are so many `*_join` functions).

As you see R already provides some functions to work with sets.
So why writing a new package for sets?
Let's see it with some code:

## Using BaseSet

Now let's see how do we do with BaseSet:

```r 
library("BaseSet")

Attaching package: 'BaseSet'
The following object is masked from 'package:stats':

    filter
The following object is masked from 'package:base':

    union
```

```r 
packageVersion("BaseSet")
[1] '0.0.14'
```

In order to work with the sets the package defines its own class named TidySet, we can transform our data with `tidySet:`

```r 
sets <- list(fruits = c("apple", "bannana", "pineaple"))
TS <- tidySet(sets)
TS
  elements   sets fuzzy
1    apple fruits     1
2  bannana fruits     1
3 pineaple fruits     1
```

We can explore some properties of this set:

```r 
nElements(TS)
[1] 3
```

```r 
nSets(TS)
[1] 1
```

then add more fruits

```r 
TS1 <- add_elements(TS, "orange")
nElements(TS1)
[1] 4
```

```r 
TS1
  elements   sets fuzzy
1    apple fruits     1
2  bannana fruits     1
3 pineaple fruits     1
```

We can see it has one more element but it isn't displayed, that's is because we didn't record to what set this element belongs to:

```r 
relation <- data.frame(sets = "fruits", elements = "orange")
TS1 <- add_relation(TS, relation)
TS1
  elements   sets fuzzy
1    apple fruits     1
2  bannana fruits     1
3 pineaple fruits     1
4   orange fruits     1
```

As you might have noticed there is a third column named fuzzy that so far is always 1.
This column is a value between 0 and 1 with the membership of an element to that set.
1 is that it is fully and 0 it is that there isn't any relationship.
Values between encode the uncertainty.
We will see it later, but first let's create a new set to do some operations with it:

```r 
relation <- data.frame(sets = c("vegetables", "fruits"), 
                       elements = c("tomatoes", "tomatoes"))
TS2 <- add_relation(TS1, relation)
TS2
  elements       sets fuzzy
1    apple     fruits     1
2  bannana     fruits     1
3 pineaple     fruits     1
4   orange     fruits     1
5 tomatoes vegetables     1
6 tomatoes     fruits     1
```

Now that we have two sets we can perform more operations:

```r 
intersection(TS2, c("vegetables", "fruits"))
  elements              sets fuzzy
1 tomatoes vegetables∩fruits     1
```

```r 
union(TS2, c("vegetables", "fruits"))
  elements              sets fuzzy
1    apple vegetables∪fruits     1
2  bannana vegetables∪fruits     1
3 pineaple vegetables∪fruits     1
4   orange vegetables∪fruits     1
5 tomatoes vegetables∪fruits     1
```

Note that the names of the resulting sets have been automatically set up using the [appropriate symbols](https://www.mathsisfun.com/sets/symbols.html "Link to a website with some set operations symbols").

So far we have set up how to count and merge different sets but one of the goals of BaseSet is to also encode the uncertainty when we assign an element to a set.

To account for uncertainty mathematicians have come with the idea of fuzzy sets.
Fuzzy sets are sets but instead of knowing for sure that an element belongs to the set, there is a value, the fuzzy value or membership, that measures the membership of the element to a set.

A typical example is rating things.
Imagine classification methods that given a picture it classify what's on it and give a probability for each object:

```r 
classification <- matrix(c(0.1, 0.2, 0.6, 0.85, 0.6, 0.5, 0.25, 0.16),
                         nrow = 2, ncol = 4, byrow = TRUE,
                         dimnames = list(c("image1", "image2"), 
                                         c("Cat", "Dog", "Duck", "Fish")))
classification # Algorithm classification
       Cat Dog Duck Fish
image1 0.1 0.2 0.60 0.85
image2 0.6 0.5 0.25 0.16
```

```r 
TS <- tidySet(classification) # Transform data
TS
  elements sets fuzzy
1   image1  Cat  0.10
2   image2  Cat  0.60
3   image1  Dog  0.20
4   image2  Dog  0.50
5   image1 Duck  0.60
6   image2 Duck  0.25
7   image1 Fish  0.85
8   image2 Fish  0.16
```

We can calculate how probable is that the image is classified to just one object.

```r 
set_size(TS)
   sets size probability
1   Cat    0       0.360
2   Cat    1       0.580
3   Cat    2       0.060
4   Dog    0       0.400
5   Dog    1       0.500
6   Dog    2       0.100
7  Duck    0       0.300
8  Duck    1       0.550
9  Duck    2       0.150
10 Fish    0       0.126
11 Fish    1       0.738
12 Fish    2       0.136
```

Given this memberships there is just a 0.3252 probability that the machine would classify the first image as just one thing, so it is more probable that the first image will be misclassified.

On the second image it is more probable to just be one object than two, but there is high uncertainty as the probability to classify to no one of the 4 objects is 0.1260.

This was not evident from the "output" of the classification but is equally important to know in many situations.

## Finishing

I [submitted](https://github.com/ropensci/software-review/issues/359) this package to [rOpenSci](https://ropensci.org "rOpenSci") because I wanted more feedback on these fuzzy sets methods and wasn't sure of the mix I made of S4 methods and S3 methods.

The topic is not a common one so although I submitted the package on January for review it started on June (after 2 months of hiatus due to COVID).
This long waiting time was because it was hard for the editor (thanks Anna Krystalli!) to find two reviewers with all that was going on.

Once two reviewers agreed the feedback started coming (Many thanks Zebulun Arendsee and Jennifer Chang!).
The reviewers pointed out inconsistencies on the order of the output, suggested more methods, pointed out to mismatches between the documentation and the code.

Most importantly much of the comments and exchange was around some methods and explanations for fuzzy sets were not clear.

I made my best efforts to improve the package and hope you'll find them useful in your projects.
