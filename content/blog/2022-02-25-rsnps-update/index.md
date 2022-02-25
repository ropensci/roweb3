---
slug: "rsnps-update"
title: "rsnps 0.5.0: New ncbi_snp_query() Features"
package_version: 0.5.0
author:
  - Sina Rüeger
  - Julia Gustavsen
date: 2022-02-25
tags:
  - packages
  - R
  - rsnps
  - dbsnp
  - open-data
  - tech notes
description: "`ncbi_snp_query()` now returns all reported variant allele frequencies in dbSNP."
twitterImg: blog/2022-02-25-rsnps-update/plot-maf-1.png
twitterAlt: "Allele frequencies in dbSNP for various studies/populations."
output: 
  html_document:
    keep_md: true
---





## TL;DR

`ncbi_snp_query()` now returns all reported variant allele frequencies in dbSNP in column `maf_population` in form of a `tibble`. Previously (version <= 0.4.0), it reported only the allele frequency from [gnomAD](https://gnomad.broadinstitute.org/) in column `maf` as a `data.frame`. 

## Changes

The [NEWS](https://github.com/ropensci/rsnps/blob/master/NEWS.md) file will tell you about the changes of rsnps 0.4.0 to 0.5.0, but the most relevant for users we would like to highlight in this blog post. 

`ncbi_snp_query()` is the function that pulls data from [NCBI's](https://www.ncbi.nlm.nih.gov/) [dbSNP](https://www.ncbi.nlm.nih.gov/snp/), a database of single-nucleotide polymorphisms (SNP). This database lets a user query for a SNP of interest and returns a plethora of information, among them genomic position, associated gene, clinical significance, and - relevant for this blogpost - the allele frequency. The allele frequency varies typically between different populations, sometimes just a little (e.g. [rs562556](https://www.ncbi.nlm.nih.gov/snp/rs562556#frequency_tab)), sometimes a lot (e.g. [rs11677783](https://www.ncbi.nlm.nih.gov/snp/rs11677783#frequency_tab)). This is why [dbSNP](https://www.ncbi.nlm.nih.gov/snp/) collects allele frequency estimates from different studies and populations.

Until version 0.4.0 `ncbi_snp_query()` reported the allele frequnecy estimated from [gnomAD](https://gnomad.broadinstitute.org/). For example, for SNP `rs420358` the `ncbi_snp_query()` output used to look like this:

```r
ncbi_snp_query("rs420358")

#>          query chromosome        bp class         rsid          gene
#> 2     rs420358          1  40341239   snv     rs420358              

#>       alleles ancestral_allele variation_allele      seqname
#> 2     A,C,G,T                A            C,G,T NC_000001.11

#>     assembly ref_seq minor    maf
#> 2 GRCh38.p12       A     C 0.8614
```

We have now changed two things:

1. The `maf_population` column in the `ncbi_snp_query()` output contains all reported allele frequencies, not only from one study or population (the `maf` column stays the same).
2. To do that, `ncbi_snp_query()` returns now a tibble (and not a data frame). 


## Examples

Let's have a look at the output of the two SNPs mentioned above. You can see that `dat` is a) a tibble and b) that the column `maf_population` is a list.




```r 
library(rsnps)
(dat <- ncbi_snp_query(c("rs11677783", "rs562556")))
```

```
Getting info about the following rsIDs: rs11677783, rs562556
```

```
# A tibble: 2 x 16
  query  chromosome      bp class rsid   gene  alleles ancestral_allele variation_allele seqname hgvs    assembly ref_seq
  <chr>  <chr>        <dbl> <chr> <chr>  <chr> <chr>   <chr>            <chr>            <chr>   <chr>   <chr>    <chr>  
1 rs116… 2           2.20e8 snv   rs116… ""    T,A     T                A                NC_000… NC_000… GRCh38.… T      
2 rs562… 1           5.51e7 snv   rs562… "PCS… G,A     G                A                NC_000… NC_000… GRCh38.… G      
# … with 3 more variables: minor <chr>, maf <dbl>, maf_population <list>
```


### One row per study ("long")

Here is a visual to show how much the allele frequencies vary per SNP. 

First, we **flatten** the data frame, so that each SNP and population/study are on **one line**. 
```r 
(dat_maf <- dat %>% select(query, maf_population) %>% unnest(cols = c(maf_population)))
```

```
# A tibble: 43 x 5
   query      study          ref_seq Minor      MAF
   <chr>      <chr>          <chr>   <chr>    <dbl>
 1 rs11677783 1000Genomes    T       A     0.314   
 2 rs11677783 ALSPAC         T       A     0.166   
 3 rs11677783 Estonian       T       A     0.156   
 4 rs11677783 GENOME_DK      T       A     0.1     
 5 rs11677783 GnomAD         T       A     0.355   
 6 rs11677783 GoNL           T       A     0.164   
 7 rs11677783 KOREAN         T       A     0.000342
 8 rs11677783 Korea1K        T       A     0.000546
 9 rs11677783 NorthernSweden T       A     0.187   
10 rs11677783 PRJEB36033     T       A     0.3     
# … with 33 more rows
```

Then we display it with the allele frequency on the x-axis and the study along the y-axis. 

```r 
p1 <- ggplot(data = dat_maf %>% filter(query == "rs11677783") %>% mutate(study = forcats::fct_reorder(study, MAF ))) + 
  geom_vline(xintercept = c(0, 0.5, 1), linetype = 3, color ="gray") +
  geom_point(aes(MAF, study)) + 
  labs(title = "Allele frequency", subtitle = "rs11677783") 

p2 <- ggplot(data = dat_maf %>% filter(query == "rs562556") %>% mutate(study = forcats::fct_reorder(study, MAF ))) + 
  geom_vline(xintercept = c(0, 0.5, 1), linetype = 3, color ="gray") +
  geom_point(aes(MAF, study)) + 
  labs(title = "Allele frequency", subtitle = "rs562556") 

p1 + p2
```
{{<figure src="plot-maf-1.png" alt="Graphical display of the allele frequency for two genetic variants (rs11677783, rs562556)." caption="Allele frequencies in dbSNP for rs11677783, rs562556 and various studies/populations." width="800">}}

### One study as column 

We can decide to turn the tibble into a data frame again and pick a **specific study** (note that `maf_korean` is a `dbl` again): 

```r 
(dat_korean <- dat %>% 
   mutate(maf_korean = purrr::map(maf_population, ~..1$MAF[..1$study=="KOREAN"])) %>% 
   unnest(cols = c(maf_korean)))
```

```
# A tibble: 2 x 17
  query  chromosome      bp class rsid   gene  alleles ancestral_allele variation_allele seqname hgvs    assembly ref_seq
  <chr>  <chr>        <dbl> <chr> <chr>  <chr> <chr>   <chr>            <chr>            <chr>   <chr>   <chr>    <chr>  
1 rs116… 2           2.20e8 snv   rs116… ""    T,A     T                A                NC_000… NC_000… GRCh38.… T      
2 rs562… 1           5.51e7 snv   rs562… "PCS… G,A     G                A                NC_000… NC_000… GRCh38.… G      
# … with 4 more variables: minor <chr>, maf <dbl>, maf_population <list>, maf_korean <dbl>
```

### One column per study ("wide")
Lastly, we can decide to pivot the study allele frequencies, so that **each study** has its **own column**:

```r 
dat_maf <- dat %>% 
  select(query, maf_population) %>% 
  unnest(cols = c(maf_population)) %>%
  select(query, study, MAF) %>%
  pivot_wider(values_from = "MAF", names_from = "study", values_fn = min, names_prefix = "maf_") ## if duplicate, picking the minimum

(dat_wide <- 
  dat %>% left_join(dat_maf, by = "query"))
```

```
# A tibble: 2 x 41
  query  chromosome      bp class rsid   gene  alleles ancestral_allele variation_allele seqname hgvs    assembly ref_seq
  <chr>  <chr>        <dbl> <chr> <chr>  <chr> <chr>   <chr>            <chr>            <chr>   <chr>   <chr>    <chr>  
1 rs116… 2           2.20e8 snv   rs116… ""    T,A     T                A                NC_000… NC_000… GRCh38.… T      
2 rs562… 1           5.51e7 snv   rs562… "PCS… G,A     G                A                NC_000… NC_000… GRCh38.… G      
# … with 28 more variables: minor <chr>, maf <dbl>, maf_population <list>, maf_1000Genomes <dbl>, maf_ALSPAC <dbl>,
#   maf_Estonian <dbl>, maf_GENOME_DK <dbl>, maf_GnomAD <dbl>, maf_GoNL <dbl>, maf_KOREAN <dbl>, maf_Korea1K <dbl>,
#   maf_NorthernSweden <dbl>, maf_PRJEB36033 <dbl>, maf_Qatari <dbl>, maf_SGDP_PRJ <dbl>, maf_Siberian <dbl>,
#   maf_TOPMED <dbl>, maf_TWINSUK <dbl>, maf_Vietnamese <dbl>, maf_dbGaP_PopFreq <dbl>, maf_ExAC <dbl>,
#   maf_FINRISK <dbl>, maf_GnomAD_exomes <dbl>, maf_GoESP <dbl>, maf_HapMap <dbl>, maf_MGP <dbl>, maf_PAGE_STUDY <dbl>,
#   maf_TOMMO <dbl>
```
