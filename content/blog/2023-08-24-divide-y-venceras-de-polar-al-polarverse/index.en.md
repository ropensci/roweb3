---
title: 'DIVIDE AND YOU WILL WIN: From {polar} To the Polarverse'
author: Juan Pablo Ruiz Nicolini
date: '2023-08-24'
slug: divide_and_you_will_win_from_polar_to_the_polarverse
categories: []
tags: []
---

> *"I'm just a political scientist, standing in front of the console in `R` asking him to help him finish a thesis."*

It was 2015, a Political Science master's student had to process data to hand in his thesis and decided to take the opportunity to learn how to use `R.` To the long and winding road of the academic requirement was added an extra degree of difficulty: incorporating programming software from scratch, with a somewhat steep learning curve.

Years later [I review scripts from the thesis code](https://github.com/TuQmano/evoteSALTA_UTDT) and I smile when I see long lines of code to recode variables with a structure like this:

```{r}

#PARTY LABELS A GOBERNADOR
# 0 VOTOS EN BLANCO
# 1 WAYAR GOBERNADOR  (WALTER WAYAR)
# 2 COALICION CIVICA (ARI) (ALBERTO ROLANDO TONDA)
# 3 FRENTE JUSTICIALISTA RENOVADOR DE LA VICOTRIA (JUAN MANUEL URTUBEY)
# 4 FRENTE OLMEDO GOBERNADOR  (ALFREDO OLMEDO)
# 5 MORELLO GOBERNADOR / PROYECTO SUR  (CARLOS FERNANDO MORELLO)
# 6 PARTIDO OBRERO (CLAUDIO DEL PLA)
# 7 UNION CIVICA RADICAL  (DIEGO MARINO)
# 8 MIJD (CARLOS ARIEL FERNANDEZ)


#RECODE TODOS LOS PARTY LABELS SEGUN ADHESIONES A LISTAS CON CANDIDATOS A GOBERNADOR
SALTA$ListaF[ SALTA$Lista == "VOTOS EN BLANCO" & SALTA$Year == 2011] <-9999
SALTA$ListaF[ SALTA$Lista == "AGRUPACION CRECIMIENTO SOLIDARIO" & SALTA$Year == 2011] <-3
SALTA$ListaF[ SALTA$Lista == "AGRUPACION DEMOCRATICA COMUNAL" & SALTA$Year == 2011] <-3
SALTA$ListaF[ SALTA$Lista == "AGRUPACION DEMOCRATICA TARTAGAL (ADETA)" & SALTA$Year == 2011] <-3
SALTA$ListaF[ SALTA$Lista == "AGRUPACION FEDERALISTA POPULAR MOSCONI" & SALTA$Year == 2011] <-1
SALTA$ListaF[ SALTA$Lista == "AGRUPACION FEDERALISTA POPULAR TARTAGAL" & SALTA$Year == 2011] <-3
```

**Best decision I made in my professional career.**

`R` Since then it has become a fundamental tool in my daily life. It is a fundamental tool in the academic and [as a university teacher](https://tuqmano.github.io/geo_utdt/) in my work as a [consultant and analyst](https://twitter.com/menta_arg); in my [as a public servant](https://ropensci.org/es/blog/2022/11/23/r-universe-stars-1-es/) and in my spare time, as a hobby.

Of all the qualities he has `R` the community was the determining factor in my journey with this programming language.

While I was finishing the first step of the thesis, I found out about the organization of the first [Latin American Conference on R for R\&D (LatinR)](https://latin-r.com/) to which I owe my second (and third... and umpteenth) step in my relationship with R. In the first edition I presented for the first time use cases for political analysis from R, implementing [grids from Argentina to use with `{ggplot}` as if they were maps with `{geofacet}`](https://www.researchgate.net/publication/327382101_Geofaceting_Argentina_LatinR_2018). In the second edition, we present the *Shiny App* [Electoral Intelligence](http://inteligenciaelectoral.mentacomunicacion.com.ar/) for the analysis of electoral results in Argentina and I was able to participate in the workshop *Package Development* with [Hadley Wickham](https://hadley.nz/). This was the ideal starting point to get started with the idea of packaging code myself.

<img src="https://lh5.googleusercontent.com/L0544tZ7i2883QLp7qQGoix1hqLwjppjd9LYnE95Csh-Sq78J_FjRBYh_GZ6Hu1D0QVBzWf0unNjhTOWwClpNkoSjYoNWUjRtE7sVt5-s8KtOGr646jorwPSIJaPduvDSkJJ-bzpArzD-2HfpHGTsew" width="200">
<img src="https://lh3.googleusercontent.com/JhbZ-qOlqRNW-AVAho4A_xjEVw_NUSwwBPy2fM7DwirTKXclyuJfmPm0puMqv1MxaLCIH6ljZ6yU0pDvH-t4TPZenzjHbekNpChPuSrKiWSNH_cKRqxy4iMDdYztWJnjHNM9q10VJ0JC2VZKDHLEBpY" width="200">

## The birth of {polAr}

With the aim of presenting at the third edition of LatinR, I developed [`{geofacetAR}`](https://electorarg.github.io/geofaceteAR/) a polished version with functions to work with the design of grids as if they were maps of Argentina.

The Covid19 pandemic was unleashed. And learning how to develop packages, in times of confinement and many hours in front of the computer, turned the electoral data processing work of my life as a political scientist and consultant into a new package: [`{polAr}`](https://github.com/electorArg/polAr); that on May 16, 2020 [traveled to CRAN](https://twitter.com/CRANberriesFeed/status/1261597845808975872).

## The polAr universe

Although originally the package sought to facilitate access and tools for the analysis of electoral data in Argentina, over time other workflows and data sources (geographic, presidential speeches or legislative votes) were integrated, with a correlative increase in dependencies and difficulty in managing more and more functions. In fact, this was a relevant issue that [discussed with colleagues in the Package Development panel during the III edition of LatinR (2020)](https://www.youtube.com/watch?v=UYvSv8StDa8&t=10872s).

[![](https://lh5.googleusercontent.com/uQA8VbmFABjeZbo96fkAtxOqQCLyYnG-PYpDpyzPrs01VrB2bKZDm2X9-jelYXnBvrENlHJxYGcw_h8FSo2jIREks_fHvkPHRXf0ejlcTNqYjdW4wPKZujS2n4GKrnTFZyabIQNUpRzehqRq1FHlbLY)](https://www.youtube.com/watch?v=UYvSv8StDa8&t=10872s)

`{polAr}` had reached 4000 downloads when I receive an email from the CRAN team informing me that I had to adjust a policy violation so that the package would not be archived. Despite submitting a new version the package was archived for no clear reason.

![](https://lh4.googleusercontent.com/BVfIfOecfmQidGrxg4vcISxDw-Cgpri7cxCZcOnHsiR9HW2qwjTR5SRP_AVR27Gf7KFL2Grby_R0nkcbiPlT5ZPh9-GloKBSOuI1fseNGuYOEvopYUe7bAGIBURhX5TX9G3BT4glKRCrr74cyN40Y38)

If the conversation at LatinR made us think about splitting into multiple packages as a possibility, the CRAN archiving gave us the opportunity to do so. The decision was to generate independent workflows; a strategy that made it possible to move forward at different paces, making specific decisions for each topic, trying to address it at the same time as part of a whole, emulating the paradigm *Tidyverse* paradigm: a similar philosophy and grammar of operation for the [collection of packages](https://tuqmano.ar/2021/06/05/de-polar-al-polarverse/). The goal was to improve the development of that which led to the archiving of `{polAr}`.

We presented "[Divide and Conquer: from {polAr} to the polarverse](https://github.com/TuQmano/latinr2021/blob/master/divide_reinaras/divide_reinaras.pdf) The "Divide and Conquer: Into the Polarverse" at the fourth edition of LatinR, showcasing this new universe with five packages:

1. 📦 [`{opinAr}`](https://politicaargentina.r-universe.dev/opinAr): provides access to data on public opinion and government in Argentina based on the Confidence in Government Index published monthly by the Universidad Torcuato Di Tella.

2. 📦 [`{electorAr}:`](https://politicaargentina.r-universe.dev/electorAr) facilitates access to electoral data for Argentina (for different levels and with different spatial aggregation) and functions to compute relevant indicators.

3. 📦 [`{legislAr}`](https://politicaargentina.r-universe.dev/legislAr)`:` allows you to download disaggregated information of votes in the legislative chambers of Argentina, originating from the project [Decade Voted](https://andytow.com/scripts/disciplina/index-d.html) project by Andy Tow

4. 📦 [`{discursAr}`](https://politicaargentina.r-universe.dev/discursAr)`:` is designed to obtain data related to political speeches. In principle, it provides access to presidential speeches in legislative assemblies at the inauguration of ordinary sessions.

5. 📦 [`{geoAr}`](https://politicaargentina.r-universe.dev/geoAr): allows access to data and tools for spatial workflows from within R. One [paper](https://github.com/TuQmano/latinr2023/blob/main/geoAr/geoAr.pdf) on the package was accepted for the [sixth edition of LatinR](https://latin-r.com/).

In addition, we work on an auxiliary library called [`{polarViz}`](https://politicaargentina.r-universe.dev/polArViz) to facilitate the visualization of the other packages, and a metapackage called [`{polArverse}`](https://politicaargentina.r-universe.dev/polArverse)that emulates the operation of `{tidyverse}` for loading the set of associated libraries.

## 🌠 Meeting of universes: [the *polArverse* at *r-universe*](https://politicaargentina.r-universe.dev/builds)

During this process we incorporated r-universe into the workflow. Not only did it provide an autonomous and self-managed space in which to publish these new packages (no longer simply as Github repositories), but it is a great help for testing on different operating systems and software versions. Undoubtedly a relevant tool for better maintenance.

![](https://lh4.googleusercontent.com/VHMVype__IRMsC3OkW3SHS68Htr8eJD58TPfZpCkycy6iReA_sDjbasHGqwP7RptmvPoD1C6KIYW3RUEEh1NjIxDJNRpmgTdebOz6n1Nzgpc3jLGN8DHYVbkUmYxYGISTc80HuCS-Y3rDl0BtahstFc)

### We continue to take important steps for our universe:

First, we returned to CRAN! In February 2023, we shipped `{geoAr}` which, as noted, provides access to and facilitates the processing of spatially relevant data. A version under development (accessible from r-universe) also allows you to interact with the [API of the Argentine Geographic Data Standardization Service (Servicio de Normalización de Datos Geográficos de Argentina](https://georef-ar-api.readthedocs.io/es/latest/).

On the other hand, we added a pending history to the polAr toolbox to work with census data: [`{censAr}`](https://github.com/PoliticaArgentina/censAr). The package, currently under development, is based on the code from [`{censo2017}`](https://docs.ropensci.org/censo2017/) developed by [Mauricio "Pacha" Vargas](https://ropensci.org/author/pach%C3%A1-aka-mauricio-vargas-sep%C3%BAlveda/) and part of the rOpenSci suite.

## My experience as a software developer with R

- I started working with this language - or dialect, [as a colleague likes to say](https://tuqmano.github.io/CienciaDeDatosCiPol/clases/clase1.html#12) about the antecedent of the `S` from *Bell* in the 1970s - a little fortunately.

- I quickly incorporated it as a work tool, in multiple facets: as an analyst, consultant and teacher.

- The community of `R` - community and in particular all the experience around *LatinR*\- were a determining factor for my experience. It certainly made the process much easier.

- All in all, I think it is possible to think of improvements in the process to make CRAN an even better space for the ecosystem. `R` and make the FOSS development experience more enjoyable and predictable.

- The emergence of the project *r-universe* project to enhance the publishing and discovery experience of packages developed in `R` is invaluable.

The *polarverse* is a side project, on which I advance in my spare time and without funding. It arose almost playfully, as an experiment to learn how to develop software. We tried successfully to publish in CRAN. We got frustrated and angry. We learned. We added new tools. We kept moving forward. Little by little. "Slowly, but surely.


