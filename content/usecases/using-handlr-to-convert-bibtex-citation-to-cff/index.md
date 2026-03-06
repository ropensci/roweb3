---
title: "Using handlr to convert bibtex citation to cff"
reporter: "Athanasia Monika Mowinckel"
date: 2022-09-16
resource: "[handlr](https://docs.ropensci.org/handlr)"
original_url: "https://discuss.ropensci.org/t/using-handlr-to-convert-bibtex-citation-to-cff/3107"
language: [English]
---

#### rOpenSci package or resource used*
[handlr](https://github.com/ropensci/handlr)

#### What did you do? 
I was working on an R package with data to become publicly available. The data is already described and used in a scientific paper, and as such I had a bibtex citation I wanted to use as CITATION.cff on github. I was struggling to find a way to turn bibtex to cff, and [asked on the forum](http://ropensci.discourse.group/t/generating-citation-cff-from-bibtex/3105) if there were any tools to help. The citation has quite a lot of co-authors, so I didnt want to start writing all that by hand.
I got an amazing reply and {handlr} seemed to be what I was looking for.


#### URL or code snippet for your use case*
```r
install.packages(handlr)
install.packages(bibtex)

# I had saved the citation in a bibtex file
handlr::bibtex_reader("CITATION.bib") |> 
    cff_writer("CITATION.cff")
```

This promptly turned

```
@article{BudinLjsne2020,
  doi = {10.3389/fpubh.2020.00387},
  url = {https://doi.org/10.3389/fpubh.2020.00387},
  year = {2020},
  month = aug,
  publisher = {Frontiers Media {SA}},
  volume = {8},
  author = {Isabelle Budin-Lj{\o}sne and Barbara Bodorkos Friedman and Sana Suri and Cristina Sol{\'{e}}-Padull{\'{e}}s and Sandra D\"{u}zel and Christian A. Drevon and William F. C. Baar{\'{e}} and Athanasia Monika Mowinckel and Enik{\H{o}} Zsoldos and Kathrine Skak Madsen and Rebecca Bruu Carver and Paolo Ghisletta and Mari R. Arnesen and David Bartr{\'{e}}s Faz and Andreas M. Brandmaier and Anders Martin Fjell and Aud Kvalbein and Richard N. Henson and Rogier A. Kievit and Laura Nawijn and Roland Pochet and Alfons Schnitzler and Kristine B. Walhovd and Larysa Zasiekina},
  title = {The Global Brain Health Survey: Development of a Multi-Language Survey of Public Views on Brain Health},
  journal = {Frontiers in Public Health}
}
```

into 

```
cff-version: 1.2.0
message: Please cite the following works when using this software.
title: 'The Global Brain Health Survey: Development of a Multi-Language Survey of
  Public Views on Brain Health'
authors:
- family-names: Budin-Ljosne
  given-names: Isabelle
- family-names: Friedman
  given-names: Barbara Bodorkos
- family-names: Suri
  given-names: Sana
- family-names: Solé-Padullés
  given-names: Cristina
- family-names: Düzel
  given-names: Sandra
- family-names: Drevon
  given-names: Christian A.
- family-names: Baaré
  given-names: William F. C.
- family-names: Mowinckel
  given-names: Athanasia Monika
- family-names: Zsoldos
  given-names: Enikő
- family-names: Madsen
  given-names: Kathrine Skak
- family-names: Carver
  given-names: Rebecca Bruu
- family-names: Ghisletta
  given-names: Paolo
- family-names: Arnesen
  given-names: Mari R.
- family-names: Faz
  given-names: David Bartrés
- family-names: Brandmaier
  given-names: Andreas M.
- family-names: Fjell
  given-names: Anders Martin
- family-names: Kvalbein
  given-names: Aud
- family-names: Henson
  given-names: Richard N.
- family-names: Kievit
  given-names: Rogier A.
- family-names: Nawijn
  given-names: Laura
- family-names: Pochet
  given-names: Roland
- family-names: Schnitzler
  given-names: Alfons
- family-names: Walhovd
  given-names: Kristine B.
- family-names: Zasiekina
  given-names: Larysa
doi: 10.3389/fpubh.2020.00387
url: https://doi.org/10.3389/fpubh.2020.00387
```



#### Sector
academic


#### Field(s) of application 
biomedical research, social sciences



