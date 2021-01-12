---
title: Introducing BaseSet
author:
  - Lluís Revilla Sancho
date: '2021-01-19'
slug: introducing-baseset
categories: []
tags:
  - BaseSet
  - Software Peer Review
  - data-munging
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



In this post I will explain the history behind [BaseSet](https://cran.r-project.org/package=BaseSet "BaseSet on CRAN") then a brief introduction to sets, followed by showing what you can do with [BaseSet](https://docs.ropensci.org/BaseSet/).

## Brief BaseSet history

I study diseases to try to find what causes them at a research institute associated with an hospital.
Thanks to recent technological advances we can analyze many things from a single patient's sample.
Having so much information available can be overwhelming, making it difficult to find the causes of diseases (but it is much better than not having enough information!).

In order to make it easier to focus and aggregate knowledge, scientists have been storing what we know of each gene in several ways.
As more information was gathered, efforts to group these genes into those to focus on or discard as causes of different processes of interest started to emerge[^1].
Scientists categorize genes according to where they are, what do they do, how they function, and with which other genes they interact.
There are also many different sub-groups within these categories.

[^1]: See [this article](https://doi.org/10.1371/journal.pcbi.1002375 "Ten Years of Pathway Analysis: Current Approaches and Outstanding Challenges") reviewing the different methods used.

This has lead to several ways of storing this information, and depending on which database and which method you use you end up with different groups.
This in turn means that we aren't so sure of how to group genes and as new experiments are carried out these groupings might change.

I had previously created a package ([BioCor](https://bioconductor.org/packages/BioCor/ "BioCor: Comparing sets of genes")) to compare these gene sets which returns a numerical value of how similar two groups of genes are.
But I found out that depending on which database I used I got very different results.
So I wanted an easy way to know in which groups a gene was present, but I also wanted this information unified from several data sources to account for this uncertainty.

I started [experimenting](https://github.com/llrs/GSEAdv/ "GSEAdv") by extending a class present on [GSEABase](https://bioconductor.org/packages/GSEABase/ "Bioconductor package") that I had used previously.
I also found out that there were some efforts by other people through the [Bioconductor](https://bioconductor.org "Project for high-throughput genomic data") slack channel.
So I got in touch with them and we shared some ideas on how to do this.

To explore different ways to solve the problem we ended up developing three different packages that aim to do similar things but take different approaches.
At the moment BaseSet published on CRAN, [BiocSet](https://bioconductor.org/packages/BiocSet/ "BiocSet displays different biological sets in a triple tibble format") is published on Bioconductor and [unisets](https://github.com/kevinrue/unisets) that the main developer can't dedicate more time.
These packages provide methods to work with sets, the mathematical name for groups of elements.

## Sets

Sets are not only used for tennis games.
In mathematics if you have a group of multiple elements such as `c("apple", "bannana", "pineaple")` it is called a set.
A set is a group of elements, usually just unique elements are used (no `c("apple", "bannana", "pineaple", "apple")`).

To learn and understand the world we group elements together.
Usually it is clear what should be inside a group, like the elements above, all of them are fruits.
Sometimes it is not so clear if an element belongs to a certain group: [Are tomatoes fruits?](https://en.wikipedia.org/wiki/Tomato#Fruit_versus_vegetable "Wikipedia page about tomatoes and its classification")

An element can also belong to several groups.
Basketball is a team sport, but is also played with a ball.
So basketball can be in both groups, as we see on [Wikipedia](https://en.wikipedia.org/wiki/Basketball "Wikipedia: Basketball"):

> [Categories](https://en.wikipedia.org/wiki/Help:Category "Help:Category"): [Basketball](https://en.wikipedia.org/wiki/Category:Basketball "Category:Basketball") \| [Sports originating in the United States](https://en.wikipedia.org/wiki/Category:Sports_originating_in_the_United_States "Category:Sports originating in the United States") \| [Team sports](https://en.wikipedia.org/wiki/Category:Team_sports "Category:Team sports") \| [Summer Olympic sports](https://en.wikipedia.org/wiki/Category:Summer_Olympic_sports "Category:Summer Olympic sports") \| [Ball games](https://en.wikipedia.org/wiki/Category:Ball_games "Category:Ball games") \| [Games and sports introduced in 1891](https://en.wikipedia.org/wiki/Category:Games_and_sports_introduced_in_1891 "Category:Games and sports introduced in 1891")

Some say that tomatoes should be both considered as fruits and as vegetables, so they could also be in both sets.
We can do this for all elements we can think, pencils, mathematical operations, numbers, words, genes...

When we have more than one set we might be interested in which elements are in two groups, which fruits are also vegetables, or which fruits are not vegetables.
These operations are called set operations.
Every time you have used `%in%` or `merge` in your code you have been using a set operation.
There are many set operations, the most commonly used are "intersection", for which R has the `intersect` function, and "union", which is done with `c` on vectors.
The equivalents on `data.frame`s are done with `merge` and its arguments (if you are familiar with the `*_join` verbs from dplyr, the many arguments of `merge` are one of the reasons why there are so many `*_join` functions).

As you see R already provides some functions to work with sets.
So why write a new package for sets?
Let's see it with some code:

## Using BaseSet

First load the package:

```r 
library("BaseSet")
packageVersion("BaseSet")
[1] '0.0.14'
```

In order to work with sets the package defines its own class named `TidySet`.
We can transform our data with the `tidySet` function:

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
This column contains a value between 0 and 1 and represents the membership of an element to that set.
A value of 1 indicates full membership and 0 that there isn't any relationship.
Values between encode the uncertainty.
We will demonstrate this later, but first let's create a new set to do some operations with it:

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

To account for uncertainty mathematicians have come up with the idea of fuzzy sets.
Fuzzy sets are sets but instead of knowing for sure that an element belongs to the set, there is a value, the fuzzy value or membership, that measures the uncertainty of an element belonging to a set.

A typical example involves ratings.
Imagine classification methods that, given a picture, classify the probability of each object being in the picture.
It might return probabilities such as:

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

We can calculate how probable it is that the image is classified to just one object.

```r 
element_size(TS)
   elements size probability
1    image1    0      0.0432
2    image1    1      0.3252
3    image1    2      0.4802
4    image1    3      0.1412
5    image1    4      0.0102
6    image2    0      0.1260
7    image2    1      0.3810
8    image2    2      0.3620
9    image2    3      0.1190
10   image2    4      0.0120
```

Given this memberships there is just a 0.3252 ( `0.1*(1-0.2)*(1-0.6)*(1-0.85) + (1-0.1)*0.2*(1-0.6)*(1-0.85) + (1-0.1)*(1-0.2)*0.6*(1-0.85) + (1-0.1)*(1-0.2)*(1-0.6)*0.85`) probability that the machine would classify the first image as just one thing, so it is more probable that the first image will be misclassified. 

For the second image it is more probable to contain just one object than two, but there is still high uncertainty as the probability to classify to none of the 4 objects is 0.1260 (`(1-0.6)*(1-0.5)*(1-0.25)*(1-0.16)`).

This was not evident from the "output" of the classification but is equally important to know in many situations.

## Finishing

I [submitted](https://github.com/ropensci/software-review/issues/359) this package to [rOpenSci](https://ropensci.org "rOpenSci") peer-review because I wanted more feedback on these fuzzy sets methods and wasn't sure of the mix I made of S4 methods and S3 methods.

The topic is not a common one so although I submitted the package on January for review it started on June (after 2 months of hiatus due to COVID).
This long waiting time occurred because it was hard for the editor (thanks [Anna Krystalli](/author/anna-krystalli)!) to find two reviewers with all that was going on.

Once two reviewers were found the feedback started coming (Many thanks [Zebulun Arendsee](https://github.com/arendsee) and [Jennifer Chang](https://github.com/j23414)!).
The reviewers pointed out inconsistencies on the order of the output, suggested more methods, pointed out mismatches between the documentation and the code.

Most importantly much of the comments and exchange was around some methods and explanations for fuzzy sets which were not clear[^2].

[^2]: If there is still something unclear; let me know! Open an [issue](https://github.com/ropensci/BaseSet/issues/new).

I made my best efforts to improve the package and hope you'll find it useful in your projects. [Try it out!](https://docs.ropensci.org/BaseSet/)
