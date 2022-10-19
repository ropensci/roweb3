---
title: 'Usos Interesantes de censo2017 un Año Después de su Publicación'
author:
  - Pachá (aka Mauricio Vargas Sepúlveda)
date: '2022-10-19'
version: 0.5
slug: censo2017-one-year-after-es
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
  Tablas del censo chileno al instante.
---

> Vea la versión en inglés de esta entrada del blog:
> [Interesting Uses of censo2017 a Year After Publishing](/blog/2022/10/19/censo2017-one-year-after)

## Resumen

Este post trata sobre los sorprendentes usos que he observado y las preguntas
que recibo sobre el paquete R [censo2017](https://docs.ropensci.org/censo2017), una herramienta para
acceder a los datos del censo chileno de 2017, que he recibido desde que fue revisado por pares 
a través de rOpenSci hace un año. El [post original](/blog/2021/07/27/censo2017/) sobre el
paquete hace un año no cubría los diferentes ejemplos que presento aquí,
incluyendo una versión Python del paquete R.

## Organizar los datos del censo

[Hace tres años](/blog/2021/07/27/censo2017/), tuve que realizar una tarea que me exigía
extraer los datos de un software sólo para Windows en formato DVD, lo que se hizo muy
complicado.

Necesitaba acceder a los archivos REDATAM y obtener unos resúmenes de población
con un software específico para ese formato. Para mi sorpresa, la tarea se
increíblemente difícil, y exporté los datos a SQL para una extracción de datos más
extracción de datos más accesible.

Lo que inicialmente organicé en PostgreSQL, terminó siendo organizado en una
base de datos local (embebida), que es más conveniente para los usuarios finales y
puede instalarse con dos líneas de código.

Instalación en R:

    remotes::install_github("ropensci/censo2017")
    censo2017::censo_descargar()

Instalación en Python:

    pip install git+https://github.com/pachadotdev/censo2017python.git#egg=censo2017

    import censo2017
    censo2017.descargar()

## Uso inesperado I: Viviendas precarias (en R)

Podemos utilizar los datos del censo para determinar dónde son comunes las viviendas precarias, 
lo que nos permite obtener ideas valiosas para la política pública. Esto es algo que nunca contemplé cuando
hice el software.

¿Qué tipo de información sobre la vivienda podemos buscar en el censo? Para simplificar
para simplificar, vamos a explorar la variable `p01`, que podemos consultar en la tabla
`variables_codificación`, la cual creé para organizar mi trabajo.

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

La variable se refiere al "Tipo de Vivienda" y contiene diez valores numéricos que significan:

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

En este ejemplo, considero las viviendas codificadas como 5 (Mediagua, Mejora, Rancho o Choza) como subestándar. Debido a la organización de los datos del censo, para obtener la proporción de estos tipos
de vivienda por región, necesitamos

1.  Crear el código de cada división política (es decir, región) a partir del
    código geográfico de la tabla de zonas.
2.  Unir la tabla de zonas con la tabla de viviendas para hacer coincidir cada unidad con 
    su ubicación (por ejemplo, el hogar ID 100 está en la región "Los Ríos (14)").
3.  Agrupar por `p01` y contar el número de unidades.

Por ejemplo, si queremos ver la 14ava región específicamente, una forma de hacerlo podría ser:

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

Podemos mejorar esta salida con una unión opcional y un paso para
extraer los porcentajes:

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

Para la 14ava región, la calidad de la vivienda no parece ser un problema. ¿Y si
nos preguntamos por el número de personas que viven en cada uno de estos tipos de unidades?
Esto requeriría pasos adicionales para unir a las personas con los hogares y los hogares con 
las viviendas.

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

¿Cómo se compara el resultado anterior con el de la capital (13ava región)?

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

De los datos resumidos anteriores podemos ver que en la capital, 52.710 
personas viven en viviendas precarias (Mediagua, Mejora, Rancho o Choza).

No debemos olvidar cerrar la conexión de base de datos.

    censo_desconectar()

## Uso inesperado II: Fuente de agua (en Python)

La motivación de este ejemplo es mostrar que el objetivo de organizar los 
datos del censo no era promover R, sino mostrar algunos de los beneficios de tener los 
datos organizados en un formato abierto, independientemente del lenguaje de programación utilizado 
para el análisis. Para mí es más fácil completar este ejemplo en R, pero quería 
incluir a las personas que utilizan estos datos del censo con Python.

La variable para la fuente de agua es `p05`. El análisis es muy similar
al anterior, y empezamos por ver su descripción. Este ejemplo
es relevante, ya que permite cuantificar el número de personas que podrían
estar expuestas a agua contaminada en una zona determinada.

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

Utilizando esta variable, podemos conocer el número de personas para cada fuente de agua
de la misma manera que en el caso anterior.

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

Aquí vemos que para la 14ava región, el 22,18% de la población no
tiene acceso a la red pública de agua corriente. La ventaja de este
enfoque es que aquí utilizamos SQL puro para la consulta, que funcionaría en
cualquier lenguaje en el que podamos pasar consultas SQL. La desventaja es que no
tenemos una herramienta como `dplyr` y está la necesidad de aprender la sintaxis SQL.

No debemos olvidar cerrar la conexión a la base de datos.

    con.close()

## Observaciones finales

Los ejemplos mostrados aquí se han simplificado. La mayoría de las consultas que 
recibo son sobre resúmenes de datos a nivel subcomunitario, por ejemplo cómo contar las
ocurrencias de una variable categórica en un barrio, como hicimos en nuestro ejemplo de
acceso al agua (es decir, pozo o red pública). Usando censo2017 podemos extraer información 
útil para las políticas públicas basada en la evidencia cuando se trata, por ejemplo, de 
priorizar las decisiones presupuestarias.
