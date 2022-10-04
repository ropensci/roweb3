---
title: 'Interesting Uses of censo2017 a Year After Publishing'
author:
  - Pachá (aka Mauricio Vargas Sepúlveda)
date: '2022-10-11'
version: 0.5
slug: censo2017-one-year-after
categories:
  - blog
tags:
  - open-science
  - tech-notes
  - reproducible-research
  - data-access
  - data-extraction
  - geospatial
  - community
  - software-peer-review
  - censo2017
description: >
  Chilean census tables at a glance.
---

> See the Spanish version of this blog post:
> [COMPLETAR](/blog/2022/09/COMPLETAR/COMPLETAR)

## Summary

This post is about the surprising uses I’ve noticed and the questions
about the [censo2017](https://docs.ropensci.org/censo2017) R package, a tool for
accessing the Chilean census 2017 data, I’ve gotten since it was peer-reviewed 
through rOpenSci one year ago. The [original
post](/blog/2021/07/27/censo2017/) about the
package one year ago didn’t cover the different examples I present here,
including a Python port of the R package.

## Organizing the census data

[Three years ago](/blog/2021/07/27/censo2017/), I had to complete an assignment that required me to
extract data from Windows-only software in DVD format, which got very
complicated.

I needed to access REDATAM files and obtain a few population summaries
with specific software for that format. To my surprise, the task got
incredibly challenging, and I exported the data to SQL for more
accessible data extraction.

What I initially organized in PostgreSQL, ended up being organized in a
local (embedded) database, which is more convenient for end-users and
can be installed with two lines of code.

Installation in R:

    remotes::install_github("ropensci/censo2017")
    censo2017::censo_descargar()

Installation in Python:

    pip install git+https://github.com/pachadotdev/censo2017python.git#egg=censo2017

    import censo2017
    censo2017.descargar()

## Unexpected use I: Substandard housing (in R)

We can use the census data to determine where substandard housing is common, 
leading to valuable insights for public policy. That is something I never contemplated when
creating the software.

What kind of housing information can we look for in the census? To keep
it simple, let’s explore the `p01` variable, which we can look at in the
`variables_codificacion`, a table that I created to organize my work.

    library(censo2017)
    library(dplyr)

    con <- censo_conectar()

    tbl(con, "variables") %>% 
      filter(variable == "p01") %>% 
      collect() %>% 
      kable()

<table>
<thead>
<tr class="header">
<th style="text-align: left;">tabla</th>
<th style="text-align: left;">variable</th>
<th style="text-align: left;">descripcion</th>
<th style="text-align: left;">tipo</th>
<th style="text-align: left;">rango</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">viviendas</td>
<td style="text-align: left;">p01</td>
<td style="text-align: left;">Tipo de Vivienda</td>
<td style="text-align: left;">integer</td>
<td style="text-align: left;">1 - 10</td>
</tr>
</tbody>
</table>

    tbl(con, "variables_codificacion") %>% 
      filter(variable == "p01") %>% 
      select(valor, descripcion) %>% 
      collect() %>% 
      kable()

<table>
<thead>
<tr class="header">
<th style="text-align: right;">valor</th>
<th style="text-align: left;">descripcion</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: right;">1</td>
<td style="text-align: left;">Casa</td>
</tr>
<tr class="even">
<td style="text-align: right;">2</td>
<td style="text-align: left;">Departamento en Edificio</td>
</tr>
<tr class="odd">
<td style="text-align: right;">3</td>
<td style="text-align: left;">Vivienda Tradicional Indígena (Ruka, Pae
Pae u Otras)</td>
</tr>
<tr class="even">
<td style="text-align: right;">4</td>
<td style="text-align: left;">Pieza en Casa Antigua o en
Conventillo</td>
</tr>
<tr class="odd">
<td style="text-align: right;">5</td>
<td style="text-align: left;">Mediagua, Mejora, Rancho o Choza</td>
</tr>
<tr class="even">
<td style="text-align: right;">6</td>
<td style="text-align: left;">Móvil (Carpa, Casa Rodante o Similar)</td>
</tr>
<tr class="odd">
<td style="text-align: right;">7</td>
<td style="text-align: left;">Otro Tipo de Vivienda Particular</td>
</tr>
<tr class="even">
<td style="text-align: right;">8</td>
<td style="text-align: left;">Vivienda Colectiva</td>
</tr>
<tr class="odd">
<td style="text-align: right;">9</td>
<td style="text-align: left;">Operativo Personas en Tránsito (No Es
Vivienda)</td>
</tr>
<tr class="even">
<td style="text-align: right;">10</td>
<td style="text-align: left;">Operativo Calle (No Es Vivienda)</td>
</tr>
<tr class="odd">
<td style="text-align: right;">11</td>
<td style="text-align: left;">Valor Perdido</td>
</tr>
<tr class="even">
<td style="text-align: right;">0</td>
<td style="text-align: left;">No Aplica</td>
</tr>
</tbody>
</table>

The variable refers to “Tipo de Vivienda” (Housing Type) and contains
ten numeric values that mean:

<table>
<colgroup>
<col style="width: 13%" />
<col style="width: 86%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: right;">Value</th>
<th style="text-align: left;">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: right;">1</td>
<td style="text-align: left;">House</td>
</tr>
<tr class="even">
<td style="text-align: right;">2</td>
<td style="text-align: left;">Apartment Building</td>
</tr>
<tr class="odd">
<td style="text-align: right;">3</td>
<td style="text-align: left;">Traditional Indigenous Dwelling (Ruka<a
href="#fn1" class="footnote-ref" id="fnref1"
role="doc-noteref"><sup>1</sup></a> or Others)</td>
</tr>
<tr class="even">
<td style="text-align: right;">4</td>
<td style="text-align: left;">Bedroom in an Old House or in a
Conventillo<a href="#fn2" class="footnote-ref" id="fnref2"
role="doc-noteref"><sup>2</sup></a></td>
</tr>
<tr class="odd">
<td style="text-align: right;">5</td>
<td style="text-align: left;">Half Hut, Improvement, Ranch or Shack</td>
</tr>
<tr class="even">
<td style="text-align: right;">6</td>
<td style="text-align: left;">Mobile (Tent, Mobile Home or Similar)</td>
</tr>
<tr class="odd">
<td style="text-align: right;">7</td>
<td style="text-align: left;">Other Type of Private Housing</td>
</tr>
<tr class="even">
<td style="text-align: right;">8</td>
<td style="text-align: left;">Collective Housing</td>
</tr>
<tr class="odd">
<td style="text-align: right;">9</td>
<td style="text-align: left;">Persons in Transit Operative (Not a
Dwelling)</td>
</tr>
<tr class="even">
<td style="text-align: right;">10</td>
<td style="text-align: left;">Street Operative (Not Housing)</td>
</tr>
<tr class="odd">
<td style="text-align: right;">11</td>
<td style="text-align: left;">Missing Value</td>
</tr>
<tr class="even">
<td style="text-align: right;">0</td>
<td style="text-align: left;">Not applicable</td>
</tr>
</tbody>
</table>
<section class="footnotes footnotes-end-of-document"
role="doc-endnotes">
<hr />
<ol>
<li id="fn1" role="doc-endnote"><p>traditional Mapuche house type<a
href="#fnref1" class="footnote-back" role="doc-backlink">↩︎</a></p></li>
<li id="fn2" role="doc-endnote"><p>A building designed to house as many people as
possible in a small space at a low cost.<a href="#fnref2" class="footnote-back"
role="doc-backlink">↩︎</a></p></li>
</ol>
</section>
In this example, I consider dwellings coded as 5 (Half Hut, Improvement, Ranch or Shack / Mediagua, Mejora, Rancho o Choza) as substandard.
Because of the census data organization, to get the share of these types
of housing per region, we need to:

1.  Create the code for each political division (i.e., region) from the
    geographical code in the zones table.
2.  Join the zones (“zonas”) table with the households (“viviendas”)
    table to match each unit to its location (i.e., household ID 100 is
    in the “Los Ríos (14th)” region).
3.  Group by `p01` and count the number of units.

For example, if we want to look at the 14th region specifically, one way to do this could be:

    tbl(con, "zonas") %>% 
      mutate(region = str_sub(geocodigo, 1, 2)) %>% 
      filter(region == 14) %>% 
      
      inner_join(tbl(con, "viviendas")) %>% 
      
      group_by(p01) %>% 
      count() %>% 
      
      collect() %>% 
      kable()

<table>
<thead>
<tr class="header">
<th style="text-align: right;">p01</th>
<th style="text-align: right;">n</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: right;">1</td>
<td style="text-align: right;">144081</td>
</tr>
<tr class="even">
<td style="text-align: right;">2</td>
<td style="text-align: right;">4793</td>
</tr>
<tr class="odd">
<td style="text-align: right;">3</td>
<td style="text-align: right;">44</td>
</tr>
<tr class="even">
<td style="text-align: right;">4</td>
<td style="text-align: right;">494</td>
</tr>
<tr class="odd">
<td style="text-align: right;">5</td>
<td style="text-align: right;">2187</td>
</tr>
<tr class="even">
<td style="text-align: right;">6</td>
<td style="text-align: right;">35</td>
</tr>
<tr class="odd">
<td style="text-align: right;">7</td>
<td style="text-align: right;">1875</td>
</tr>
<tr class="even">
<td style="text-align: right;">8</td>
<td style="text-align: right;">467</td>
</tr>
<tr class="odd">
<td style="text-align: right;">9</td>
<td style="text-align: right;">6</td>
</tr>
<tr class="even">
<td style="text-align: right;">10</td>
<td style="text-align: right;">8</td>
</tr>
</tbody>
</table>

We can improve this a little bit with an optional join and a step to
extract the percentages:

    tbl(con, "zonas") %>% 
      mutate(region = str_sub(geocodigo, 1, 2)) %>% 
      filter(region == "14") %>% 
      
      inner_join(tbl(con, "viviendas")) %>% 
      
      group_by(p01) %>% 
      count() %>% 
      
      left_join(
        tbl(con, "variables_codificacion") %>% 
          filter(variable == "p01") %>% 
          select(p01 = valor, p01_desc = descripcion)
      ) %>% 
      select(p01, p01_desc, n) %>% 
      
      arrange(-n) %>% 
      ungroup() %>% 
      mutate(p = round(100 * n / sum(n), 2)) %>% 
      
      collect() %>% 
      kable()

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 76%" />
<col style="width: 9%" />
<col style="width: 8%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: right;">p01</th>
<th style="text-align: left;">p01_desc</th>
<th style="text-align: right;">n</th>
<th style="text-align: right;">p</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: right;">1</td>
<td style="text-align: left;">Casa</td>
<td style="text-align: right;">144081</td>
<td style="text-align: right;">93.57</td>
</tr>
<tr class="even">
<td style="text-align: right;">2</td>
<td style="text-align: left;">Departamento en Edificio</td>
<td style="text-align: right;">4793</td>
<td style="text-align: right;">3.11</td>
</tr>
<tr class="odd">
<td style="text-align: right;">5</td>
<td style="text-align: left;">Mediagua, Mejora, Rancho o Choza</td>
<td style="text-align: right;">2187</td>
<td style="text-align: right;">1.42</td>
</tr>
<tr class="even">
<td style="text-align: right;">7</td>
<td style="text-align: left;">Otro Tipo de Vivienda Particular</td>
<td style="text-align: right;">1875</td>
<td style="text-align: right;">1.22</td>
</tr>
<tr class="odd">
<td style="text-align: right;">4</td>
<td style="text-align: left;">Pieza en Casa Antigua o en
Conventillo</td>
<td style="text-align: right;">494</td>
<td style="text-align: right;">0.32</td>
</tr>
<tr class="even">
<td style="text-align: right;">8</td>
<td style="text-align: left;">Vivienda Colectiva</td>
<td style="text-align: right;">467</td>
<td style="text-align: right;">0.30</td>
</tr>
<tr class="odd">
<td style="text-align: right;">3</td>
<td style="text-align: left;">Vivienda Tradicional Indígena (Ruka, Pae
Pae u Otras)</td>
<td style="text-align: right;">44</td>
<td style="text-align: right;">0.03</td>
</tr>
<tr class="even">
<td style="text-align: right;">6</td>
<td style="text-align: left;">Móvil (Carpa, Casa Rodante o Similar)</td>
<td style="text-align: right;">35</td>
<td style="text-align: right;">0.02</td>
</tr>
<tr class="odd">
<td style="text-align: right;">10</td>
<td style="text-align: left;">Operativo Calle (No Es Vivienda)</td>
<td style="text-align: right;">8</td>
<td style="text-align: right;">0.01</td>
</tr>
<tr class="even">
<td style="text-align: right;">9</td>
<td style="text-align: left;">Operativo Personas en Tránsito (No Es
Vivienda)</td>
<td style="text-align: right;">6</td>
<td style="text-align: right;">0.00</td>
</tr>
</tbody>
</table>

For the 14th region, housing quality seems not to be a problem. What if
we wonder for the number of people living in each of these unit types?
This would need additional steps to match people (“personas”) to homes
(“hogares”), and homes to households.

    tbl(con, "zonas") %>% 
      mutate(region = str_sub(geocodigo, 1, 2)) %>% 
      filter(region == "14") %>% 
      
      inner_join(tbl(con, "viviendas")) %>% 
      
      inner_join(tbl(con, "hogares")) %>% 
      inner_join(tbl(con, "personas")) %>% 
      
      group_by(p01) %>% 
      count() %>% 
      
      left_join(
        tbl(con, "variables_codificacion") %>% 
          filter(variable == "p01") %>% 
          select(p01 = valor, p01_desc = descripcion)
      ) %>% 
      select(p01, p01_desc, n) %>% 
      
      arrange(-n) %>% 
      ungroup() %>% 
      mutate(p = round(100 * n / sum(n), 2)) %>% 
      
      collect() %>% 
      kable()

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 76%" />
<col style="width: 9%" />
<col style="width: 8%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: right;">p01</th>
<th style="text-align: left;">p01_desc</th>
<th style="text-align: right;">n</th>
<th style="text-align: right;">p</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: right;">1</td>
<td style="text-align: left;">Casa</td>
<td style="text-align: right;">359343</td>
<td style="text-align: right;">93.38</td>
</tr>
<tr class="even">
<td style="text-align: right;">2</td>
<td style="text-align: left;">Departamento en Edificio</td>
<td style="text-align: right;">9139</td>
<td style="text-align: right;">2.37</td>
</tr>
<tr class="odd">
<td style="text-align: right;">8</td>
<td style="text-align: left;">Vivienda Colectiva</td>
<td style="text-align: right;">7905</td>
<td style="text-align: right;">2.05</td>
</tr>
<tr class="even">
<td style="text-align: right;">5</td>
<td style="text-align: left;">Mediagua, Mejora, Rancho o Choza</td>
<td style="text-align: right;">3980</td>
<td style="text-align: right;">1.03</td>
</tr>
<tr class="odd">
<td style="text-align: right;">7</td>
<td style="text-align: left;">Otro Tipo de Vivienda Particular</td>
<td style="text-align: right;">3008</td>
<td style="text-align: right;">0.78</td>
</tr>
<tr class="even">
<td style="text-align: right;">4</td>
<td style="text-align: left;">Pieza en Casa Antigua o en
Conventillo</td>
<td style="text-align: right;">727</td>
<td style="text-align: right;">0.19</td>
</tr>
<tr class="odd">
<td style="text-align: right;">9</td>
<td style="text-align: left;">Operativo Personas en Tránsito (No Es
Vivienda)</td>
<td style="text-align: right;">494</td>
<td style="text-align: right;">0.13</td>
</tr>
<tr class="even">
<td style="text-align: right;">3</td>
<td style="text-align: left;">Vivienda Tradicional Indígena (Ruka, Pae
Pae u Otras)</td>
<td style="text-align: right;">96</td>
<td style="text-align: right;">0.02</td>
</tr>
<tr class="odd">
<td style="text-align: right;">10</td>
<td style="text-align: left;">Operativo Calle (No Es Vivienda)</td>
<td style="text-align: right;">84</td>
<td style="text-align: right;">0.02</td>
</tr>
<tr class="even">
<td style="text-align: right;">6</td>
<td style="text-align: left;">Móvil (Carpa, Casa Rodante o Similar)</td>
<td style="text-align: right;">61</td>
<td style="text-align: right;">0.02</td>
</tr>
</tbody>
</table>

How does the previous result compare with the capitol (13th region)?

    tbl(con, "zonas") %>% 
      mutate(region = str_sub(geocodigo, 1, 2)) %>% 
      filter(region == "13") %>% 
      
      inner_join(tbl(con, "viviendas")) %>% 
      
      inner_join(tbl(con, "hogares")) %>% 
      inner_join(tbl(con, "personas")) %>% 
      
      group_by(p01) %>% 
      count() %>% 
      
      left_join(
        tbl(con, "variables_codificacion") %>% 
          filter(variable == "p01") %>% 
          select(p01 = valor, p01_desc = descripcion)
      ) %>% 
      select(p01, p01_desc, n) %>% 
      
      arrange(-n) %>% 
      ungroup() %>% 
      mutate(p = round(100 * n / sum(n), 2)) %>% 
      
      collect() %>% 
      kable()

<table>
<colgroup>
<col style="width: 5%" />
<col style="width: 75%" />
<col style="width: 11%" />
<col style="width: 8%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: right;">p01</th>
<th style="text-align: left;">p01_desc</th>
<th style="text-align: right;">n</th>
<th style="text-align: right;">p</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: right;">1</td>
<td style="text-align: left;">Casa</td>
<td style="text-align: right;">5265416</td>
<td style="text-align: right;">74.03</td>
</tr>
<tr class="even">
<td style="text-align: right;">2</td>
<td style="text-align: left;">Departamento en Edificio</td>
<td style="text-align: right;">1613157</td>
<td style="text-align: right;">22.68</td>
</tr>
<tr class="odd">
<td style="text-align: right;">8</td>
<td style="text-align: left;">Vivienda Colectiva</td>
<td style="text-align: right;">78763</td>
<td style="text-align: right;">1.11</td>
</tr>
<tr class="even">
<td style="text-align: right;">4</td>
<td style="text-align: left;">Pieza en Casa Antigua o en
Conventillo</td>
<td style="text-align: right;">72142</td>
<td style="text-align: right;">1.01</td>
</tr>
<tr class="odd">
<td style="text-align: right;">5</td>
<td style="text-align: left;">Mediagua, Mejora, Rancho o Choza</td>
<td style="text-align: right;">52710</td>
<td style="text-align: right;">0.74</td>
</tr>
<tr class="even">
<td style="text-align: right;">7</td>
<td style="text-align: left;">Otro Tipo de Vivienda Particular</td>
<td style="text-align: right;">17335</td>
<td style="text-align: right;">0.24</td>
</tr>
<tr class="odd">
<td style="text-align: right;">9</td>
<td style="text-align: left;">Operativo Personas en Tránsito (No Es
Vivienda)</td>
<td style="text-align: right;">9113</td>
<td style="text-align: right;">0.13</td>
</tr>
<tr class="even">
<td style="text-align: right;">10</td>
<td style="text-align: left;">Operativo Calle (No Es Vivienda)</td>
<td style="text-align: right;">2740</td>
<td style="text-align: right;">0.04</td>
</tr>
<tr class="odd">
<td style="text-align: right;">3</td>
<td style="text-align: left;">Vivienda Tradicional Indígena (Ruka, Pae
Pae u Otras)</td>
<td style="text-align: right;">865</td>
<td style="text-align: right;">0.01</td>
</tr>
<tr class="even">
<td style="text-align: right;">6</td>
<td style="text-align: left;">Móvil (Carpa, Casa Rodante o Similar)</td>
<td style="text-align: right;">567</td>
<td style="text-align: right;">0.01</td>
</tr>
</tbody>
</table>

From the previous summarised data we can see that in the capitol, 52,710 
individuals are living in substandard housing
(Mediagua, Mejora, Rancho o Choza).

We shouldn’t forget to close the database connection.

    censo_desconectar()

## Unexpected use II: Water source (in Python)

The motivation for this example is to show that the goal of organizing the 
census data was not to promote R, but to show some of the benefits of having the 
data organized in an open format, regardless of the programming language used 
for the analysis. For me it's easier to complete this example in R, but I 
wanted to include those using this census data and Python.

The variable for the water source is `p05`. The analysis is very similar
to the previous one, and we start by looking at its description. This particular
example is relevant, as it allows to quantify the number of people that might
be exposed to water contamination in a certain area.

    import censo2017
    import duckdb

    con = duckdb.connect(database = censo2017.archivo_sql())

    con.execute("SELECT * FROM variables_codificacion WHERE variable = 'p05'").df()

    ##        tabla variable  valor                                descripcion
    ## 0  viviendas      p05      1                                Red Pública
    ## 1  viviendas      p05      2                               Pozo o Noria
    ## 2  viviendas      p05      3                              Camión Aljibe
    ## 3  viviendas      p05      4  Río, Vertiente, Estero, Canal, Lago, Etc.
    ## 4  viviendas      p05     99                              Valor Perdido
    ## 5  viviendas      p05     98                                  No Aplica

<table>
<thead>
<tr class="header">
<th style="text-align: right;">Value</th>
<th style="text-align: left;">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: right;">1</td>
<td style="text-align: left;">Public Network</td>
</tr>
<tr class="even">
<td style="text-align: right;">2</td>
<td style="text-align: left;">Well or Noria</td>
</tr>
<tr class="odd">
<td style="text-align: right;">3</td>
<td style="text-align: left;">Cistern Truck</td>
</tr>
<tr class="even">
<td style="text-align: right;">4</td>
<td style="text-align: left;">River, Stream, Estuary, Canal, Lake,
Etc.</td>
</tr>
<tr class="odd">
<td style="text-align: right;">99</td>
<td style="text-align: left;">Missing Value</td>
</tr>
<tr class="even">
<td style="text-align: right;">98</td>
<td style="text-align: left;">Not Applicable</td>
</tr>
</tbody>
</table>

By using this variable, we can know the number of people for each water
source in the same way as the previous case.

    con.execute("""
    SELECT "p05", "p05_desc", "n",
      ROUND((100.0 * "n") / SUM("n") OVER (), CAST(ROUND(2.0, 0) AS INTEGER)) AS "p"
    FROM (
      SELECT "LHS"."p05" AS "p05", "n", "p05_desc"
      FROM (
        SELECT "p05", COUNT(*) AS "n"
        FROM (
          SELECT *, "LHS"."hogar_ref_id" AS "hogar_ref_id"
          FROM (
            SELECT *, "LHS"."vivienda_ref_id" AS "vivienda_ref_id"
            FROM (
              SELECT *, "LHS"."zonaloc_ref_id" AS "zonaloc_ref_id"
              FROM (
                SELECT *
                FROM (
                  SELECT *, SUBSTR("geocodigo", 1, 2) AS "region"
                  FROM "zonas"
                ) "q01"
                WHERE ("region" = '14')
              ) "LHS"
              INNER JOIN "viviendas" AS "RHS"
                ON ("LHS"."zonaloc_ref_id" = "RHS"."zonaloc_ref_id")
            ) "LHS"
            INNER JOIN "hogares" AS "RHS"
              ON ("LHS"."vivienda_ref_id" = "RHS"."vivienda_ref_id")
          ) "LHS"
          INNER JOIN "personas" AS "RHS"
            ON ("LHS"."hogar_ref_id" = "RHS"."hogar_ref_id")
        ) "q02"
        GROUP BY "p05"
      ) "LHS"
      LEFT JOIN (
        SELECT "valor" AS "p05", "descripcion" AS "p05_desc"
        FROM "variables_codificacion"
        WHERE ("variable" = 'p05')
      ) "RHS"
        ON ("LHS"."p05" = "RHS"."p05")
    ) "q03"
    ORDER BY -"n"
    """).df()

    ##    p05                                   p05_desc       n      p
    ## 0    1                                Red Pública  299464  77.82
    ## 1    4  Río, Vertiente, Estero, Canal, Lago, Etc.   38796  10.08
    ## 2    2                               Pozo o Noria   32150   8.35
    ## 3   98                                  No Aplica    8483   2.20
    ## 4    3                              Camión Aljibe    3558   0.92
    ## 5   99                              Valor Perdido    2386   0.62

Where we see that for the 14th region, 22.18% of the population doesn’t
have access to the public tap water network. The advantage of this
approach is that here we used pure SQL for querying, which would work in
any language where we can pass SQL queries. The disadvantage is not
having a tool such as `dplyr` and the need to learn the SQL syntax.

We shouldn’t forget to close the database connection.

    con.close()

## Concluding remarks

The examples shown here were simplified. Most of the inquiries I get are
about data summaries at the sub-communal level, for example how to count the
occurrences of a categorical variable in a neighborhood, as we did in our example of
water access (i.e., well or public network). By
using censo2017 we can extract useful information for evidence-based
public policy when it comes to, for example, prioritizing budget
decisions.
