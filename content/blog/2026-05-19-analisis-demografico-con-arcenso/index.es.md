---
title: 'De datos censales a análisis demográficos con ARcenso: un flujo de trabajo reproducible en R'
author:
- Andrea Gomez Vargas
- Emanuel Ciardullo
date: "2026-05-19"
slug: "analisis-demografico-con-arcenso"
package_version: 0.2.1
tags:
- acceso a datos
- censo
- arcenso
- Argentina
- packages
description: 'Cómo acceder y procesar los censos argentinos de 1970 y 1980 desde R'
socialImg: "blog/2026-05-19-analisis-demografico-con-arcenso/portada-blog.png"
socialAlt: 'Hex logo de ARcenso sobre documentos históricos de censos argentinos de
  1970 y 1980'
editor:
- Yanina Bellini Saibene
params:
  doi: "10.59350/xvqq6-nd376"
---

Los censos de población son una fuente clave para comprender cómo se compone y cambia la población en cada territorio del país. Aportan evidencia fundamental para la investigación, el diseño y la evaluación de políticas públicas, así como para la toma de decisiones informadas.

Trabajar con estos datos suele implicar varios pasos previos: identificar qué información está disponible, descargar los datos, organizarlos y dejarlos listos para el análisis. Cuando esa información se encuentra dispersa y en formatos heterogéneos, el proceso puede volverse complejo.

<br>

{{< figure src="portada-blog.png" width="250" alt="Ilustración del Censo en Argentina con el logo de ARcenso y rOpenSci, un hornero (ave nacional) y material gráfico de los censos de 1970 y 1980." class="pull-left" caption="Portada blog ARcenso">}} 

[ARcenso](https://soyandrea.github.io/arcenso/) es un paquete desarrollado en el marco del [programa de campeones de rOpenSci](/es/champions/) que surge para facilitar el acceso a datos censales de Argentina y simplificar su análisis.

En este artículo, quienes desarrollamos ARcenso mostramos cómo trabajar de forma simple y reproducible con los datos censales históricos disponibles en el paquete.

A partir de datos oficiales disponibles en el paquete, generamos un análisis demográfico que combina visualizaciones y tablas para explorar la estructura de la población. Es decir, cómo se distribuye según edad y sexo. Este tipo de análisis permite caracterizar cambios poblacionales entre períodos, información clave para la investigación y el diseño de políticas públicas. Como ejemplo, trabajamos con los censos de 1970 y 1980 a nivel nacional.

## ¿Cómo empezar?

Todo el código de este artículo podés copiarlo y ejecutarlo directamente en tu computadora. Solo necesitás tener instalados los siguientes paquetes, si ya los tenés podés saltear este paso.

``` r
# Si no tenés pak
install.packages("pak")

# Instalar ARcenso desde GitHub
pak::pkg_install("soyandrea/arcenso")

# Instalar paquetes necesarios desde CRAN
install.packages(c("dplyr", "tidyr", "ggplot2", "gt"))
```

Luego, cargamos los paquetes necesarios para trabajar con los datos censales y construir indicadores para el análisis:

``` r
library(arcenso) # obtención de datos censales
library(dplyr) # procesamiento de datos
library(tidyr) # orden y transformación de datos
library(ggplot2) # diseño de gráficos
library(gt) # diseño de tablas
```

## Acceso a datos censales

Ahora que ya tenemos los paquetes instalados, utilizamos ARcenso para acceder a los datos censales de los años 1970 y 1980. El paquete permite seleccionar información según el año, el tema y la geografía de interés a partir de los códigos geográficos oficiales definidos por el [Instituto Nacional de Estadística y Censos (INDEC) de Argentina](https://www.indec.gob.ar/indec/web/Nivel3-Tema-2-41).

En la función `check_repository()`, el argumento `topic` especifíca la temática a consultar (por ejemplo, la estructura de la población), mientras que `geo_code` identifica el dominio geográfico de interés.

Si no conocés los valores disponibles para estos argumentos, podés explorarlos directamente en el paquete: el objeto `geo_metadata` contiene todas las geografías y sus códigos, mientras que `census_metadata` contiene información sobre los temas y los cuadros disponibles en el paquete.

En este ejemplo, trabajamos con datos de estructura de la población `(topic = "estructura")` para el total del país `(geo_code = "00")`. Como primer paso, verificamos qué información está disponible en el repositorio con `check_repository()`.

``` r
check_repository(topic = "estructura", geo_code = "00")
```

    # A tibble: 4 × 3
      id_cuadro              anio titulo                                            
      <chr>                 <dbl> <chr>                                             
    1 1970_00_estructura_01  1970 Cuadro 1. Total del país. Población total, por gr…
    2 1980_00_estructura_01  1980 Cuadro G3. Centros urbanos según tamaño y poblaci…
    3 1980_00_estructura_02  1980 Cuadro G1. Total del país. Población total según …
    4 1980_00_estructura_03  1980 Cuadro G2. Total del país. Población según sexo y…

El resultado de `check_repository()` muestra los años disponibles para esa combinación de tema y geografía, junto con los identificadores de los cuadros (IDs) y su título. A partir de esta consulta, seleccionamos los identificadores `1970_00_estructura_01` y `1980_00_estructura_03`, correspondientes a tabulados sobre la población total del país según sexo y grupo de edad, que utilizaremos en el análisis.

> **Bonustrack**: Como alternativa, también es posible explorar los datos de forma interactiva con `arcenso_app()`, desde donde se puede copiar el identificador del cuadro necesario para luego utilizarlo en el análisis.

{{< figure src="shiny-arcenso.es.png" width="600" alt="Aplicación Shiny ARcenso: Consulta de Datos Censales con filtros por año, alcance geográfico y temática, mostrando tabla de alfabetismo 1970." class="pull-left" caption="Explorador interactivo de datos censales con `arcenso_app()`" >}}

## Preparación de los datos

Una vez identificados los cuadros de interés, utilizamos `get_census()` para incorporarlos directamente al entorno de trabajo a partir de su identificador.

Dado que las estructuras de ambas tablas no son idénticas, realizamos algunas transformaciones para armonizar las variables y construir una base comparable entre censos. En particular, recodificamos las categorías etarias en grupos quinquenales para que tengan una estructura común y agregamos una columna que identifica el año censal.

### Censo 1970

En el caso del censo de 1970, la información ya se encuentra agrupada en grupos quinquenales de edad, por lo que solo es necesario ajustar el formato de algunas etiquetas y conservar las variables relevantes para el análisis.

``` r
# Total del país
poblacion_1970 <- get_census(id = "1970_00_estructura_01")

pob_1970 <- poblacion_1970 |>
  filter(sexo != "Total") |>
  mutate(
    censo = 1970,
    grupo_de_edad = case_when(
      grupo_de_edad == "0-4" ~ "00-04",
      grupo_de_edad == "5-9" ~ "05-09",
      TRUE ~ grupo_de_edad
    )
  ) |>
  rename(grupo_edad = grupo_de_edad) |>
  select(censo, sexo, grupo_edad, poblacion)
```

### Censo 1980

El cuadro de 1980, en cambio, presenta la edad en valores simples y añade información adicional que no es relevante para este análisis, por lo que es necesario seleccionar las categorías de interés y construir los grupos quinquenales de edad (intervalos de 5 años) para hacerlos comparables con los de 1970.

``` r
poblacion_1980 <- get_census(id = "1980_00_estructura_03")

pob_1980 <- poblacion_1980 |>
  filter(urbano_rural == "Total", sexo != "Total", edad != "Total") |>
  mutate(
    censo = 1980,
    edad_num = ifelse(edad == "85 y más", 85, as.numeric(edad)),
    grupo_edad = case_when(
      edad_num %in% c(0:4) ~ "00-04",
      edad_num %in% c(5:9) ~ "05-09",
      edad_num %in% c(10:14) ~ "10-14",
      edad_num %in% c(15:19) ~ "15-19",
      edad_num %in% c(20:24) ~ "20-24",
      edad_num %in% c(25:29) ~ "25-29",
      edad_num %in% c(30:34) ~ "30-34",
      edad_num %in% c(35:39) ~ "35-39",
      edad_num %in% c(40:44) ~ "40-44",
      edad_num %in% c(45:49) ~ "45-49",
      edad_num %in% c(50:54) ~ "50-54",
      edad_num %in% c(55:59) ~ "55-59",
      edad_num %in% c(60:64) ~ "60-64",
      edad_num %in% c(65:69) ~ "65-69",
      edad_num %in% c(70:74) ~ "70-74",
      edad_num %in% c(75:79) ~ "75-79",
      edad_num %in% c(80:84) ~ "80-84",
      TRUE ~ "85 y más"
    )
  ) |>
  select(-edad, -urbano_rural, -edad_num) |>
  select(censo, sexo, grupo_edad, poblacion)
```

### Construcción de la base integrada

Una vez procesados ambos cuadros, unimos la información en una sola tabla y definimos el formato final de las variables, dejándolas listas para construir visualizaciones y explorar indicadores demográficos.

``` r
# Unimos ambas geografías y dejamos variables listas para trabajar
poblacion <-
  bind_rows(
    pob_1970,
    pob_1980
  ) |>
  mutate(
    poblacion = as.numeric(poblacion),
    sexo = factor(sexo, levels = c("Varones", "Mujeres")),
    grupo_edad = factor(
      grupo_edad,
      levels = c(
        "00-04",
        "05-09",
        "10-14",
        "15-19",
        "20-24",
        "25-29",
        "30-34",
        "35-39",
        "40-44",
        "45-49",
        "50-54",
        "55-59",
        "60-64",
        "65-69",
        "70-74",
        "75-79",
        "80-84",
        "85 y más"
      )
    )
  )
```

## Estructura de la población

Ahora que contamos con una estructura de datos que combina ambos censos y organiza los absolutos poblacionales por año censal, sexo y grupo de edad. Podemos comparar de manera consistente la composición de la población entre distintos momentos en el tiempo.

``` r
head(poblacion)
```

    # A tibble: 6 × 4
      censo sexo    grupo_edad poblacion
      <dbl> <fct>   <fct>          <dbl>
    1  1970 Varones 00-04        1196950
    2  1970 Mujeres 00-04        1158350
    3  1970 Varones 05-09        1163050
    4  1970 Mujeres 05-09        1133950
    5  1970 Varones 10-14        1114300
    6  1970 Mujeres 10-14        1086850

La organización de la población por sexo y grupos quinquenales de edad permite analizar su estructura mediante distintas
visualizaciones. En este caso, utilizamos una pirámide poblacional, que facilita la lectura conjunta de ambas dimensiones.

### Pirámide poblacional

Este tipo de gráfico permite representar la distribución de la población por edad y sexo de manera simultánea, ubicando habitualmente a los varones hacia la izquierda y a las mujeres hacia la derecha. A partir de la proporción de personas en cada grupo de edad quinquenal, la pirámide resume la composición de la población en un formato visual fácil de interpretar.

En este caso, calculamos la distribución relativa de la población dentro de cada censo, lo que permite comparar la estructura poblacional entre 1970 y 1980 independientemente del tamaño total. Además, la forma de la pirámide permite identificar características generales, como una mayor concentración en edades jóvenes o un perfil relativamente más envejecido.

A continuación, calculamos la distribución relativa de la población en cada censo y construimos una pirámide poblacional para comparar ambos años.

``` r
# Base para la pirámide poblacional
piramide <- poblacion |>
  group_by(censo, sexo) |>
  mutate(
    poblacion_rel = if_else(
      sexo == "Varones",
      -poblacion / sum(poblacion),
      poblacion / sum(poblacion)
    )
  ) |>
  ungroup()

# Pirámide comparativa
piramide |>
  ggplot(aes(x = poblacion_rel, y = grupo_edad, fill = sexo)) +
  geom_col() +
  facet_wrap(~censo, ncol = 2) +
  scale_fill_manual(values = c("#00f59b", "#7014f2")) +
  scale_x_continuous(
    labels = function(x) paste0(abs(round(x * 100, 1)), "%"),
    limits = c(-0.15, 0.15),
    breaks = seq(-0.15, 0.15, by = 0.05)
  ) +
  labs(
    title = "Gráfico 1. Estructura de la población por sexo y grupo quinquenal de edad.",
    subtitle = "Argentina. Años 1970 y 1980",
    x = "Porcentaje",
    y = "Grupo quinquenal de edad",
    caption = "Fuente: INDEC, Censo Nacional de Población 1970 y 1980. Procesado con ARcenso.",
    fill = "Sexo"
  ) +
  theme_bw() +
  theme(
    legend.position = "bottom",
    strip.text = element_text(face = "bold", size = 12)
  )
```

{{< figure src="unnamed-chunk-8-1.png" >}}

En ambos censos se observa una estructura poblacional joven, con una alta concentración en los primeros grupos de edad. No obstante, hacia 1980 comienza a evidenciarse un ligero desplazamiento hacia edades adultas, indicando un incipiente proceso de envejecimiento de la población.

## Construcción de indicadores demográficos

Si bien la pirámide poblacional permite una lectura general de la estructura de la población, los indicadores demográficos ofrecen medidas sintéticas que permiten cuantificar y comparar estos patrones de manera más precisa. A continuación, calculamos dos indicadores para profundizar el análisis.

### Índice de envejecimiento

Compara la cantidad de personas mayores (65 años y más) con la población más joven (0 a 14 años). Permite ver de forma simple si la población tiene más peso en las edades jóvenes o en las edades más avanzadas.

``` r
envejecimiento <- poblacion |>
  group_by(censo) |>
  summarise(
    poblacion_0a14 = sum(poblacion[
      grupo_edad %in% c("00-04", "05-09", "10-14")
    ]),
    poblacion_65ymas = sum(poblacion[
      grupo_edad %in% c("65-69", "70-74", "75-79", "80-84", "85 y más")
    ]),
    indice = round(poblacion_65ymas / poblacion_0a14 * 100, 0)
  )


gt(envejecimiento) |>
  tab_header(
    title = "Comparación del índice de envejecimiento",
    subtitle = "Argentina. Años 1970 y 1980"
  ) |>
  tab_spanner(
    label = "Población",
    columns = c(poblacion_0a14, poblacion_65ymas)
  ) |>
  fmt_number(
    columns = c(poblacion_0a14, poblacion_65ymas),
    decimals = 0,
    sep_mark = "."
  ) |>
  cols_label(
    poblacion_0a14 = "0 a 14 años",
    poblacion_65ymas = "65 años y más",
    indice = "Indice"
  ) |>
  tab_source_note(
    source_note = md(
      "**Fuente:** elaboración propia en base a datos de INDEC (Censos Nacionales de Población 1970 y 1980)."
    )
  )
```

<div id="acttjajtlr" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#acttjajtlr table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#acttjajtlr thead, #acttjajtlr tbody, #acttjajtlr tfoot, #acttjajtlr tr, #acttjajtlr td, #acttjajtlr th {
  border-style: none;
}
&#10;#acttjajtlr p {
  margin: 0;
  padding: 0;
}
&#10;#acttjajtlr .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#acttjajtlr .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#acttjajtlr .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#acttjajtlr .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#acttjajtlr .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#acttjajtlr .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#acttjajtlr .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#acttjajtlr .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#acttjajtlr .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#acttjajtlr .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#acttjajtlr .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#acttjajtlr .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#acttjajtlr .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#acttjajtlr .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#acttjajtlr .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#acttjajtlr .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#acttjajtlr .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#acttjajtlr .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#acttjajtlr .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#acttjajtlr .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#acttjajtlr .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#acttjajtlr .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#acttjajtlr .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#acttjajtlr .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#acttjajtlr .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#acttjajtlr .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#acttjajtlr .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#acttjajtlr .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#acttjajtlr .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#acttjajtlr .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#acttjajtlr .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#acttjajtlr .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#acttjajtlr .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#acttjajtlr .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#acttjajtlr .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#acttjajtlr .gt_left {
  text-align: left;
}
&#10;#acttjajtlr .gt_center {
  text-align: center;
}
&#10;#acttjajtlr .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#acttjajtlr .gt_font_normal {
  font-weight: normal;
}
&#10;#acttjajtlr .gt_font_bold {
  font-weight: bold;
}
&#10;#acttjajtlr .gt_font_italic {
  font-style: italic;
}
&#10;#acttjajtlr .gt_super {
  font-size: 65%;
}
&#10;#acttjajtlr .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#acttjajtlr .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#acttjajtlr .gt_indent_1 {
  text-indent: 5px;
}
&#10;#acttjajtlr .gt_indent_2 {
  text-indent: 10px;
}
&#10;#acttjajtlr .gt_indent_3 {
  text-indent: 15px;
}
&#10;#acttjajtlr .gt_indent_4 {
  text-indent: 20px;
}
&#10;#acttjajtlr .gt_indent_5 {
  text-indent: 25px;
}
&#10;#acttjajtlr .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#acttjajtlr div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_heading">
      <td colspan="4" class="gt_heading gt_title gt_font_normal" style>Comparación del índice de envejecimiento</td>
    </tr>
    <tr class="gt_heading">
      <td colspan="4" class="gt_heading gt_subtitle gt_font_normal gt_bottom_border" style>Argentina. Años 1970 y 1980</td>
    </tr>
    <tr class="gt_col_headings gt_spanner_row">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="2" colspan="1" scope="col" id="censo">censo</th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" scope="colgroup" id="Población">
        <div class="gt_column_spanner">Población</div>
      </th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="2" colspan="1" scope="col" id="indice">Indice</th>
    </tr>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="poblacion_0a14">0 a 14 años</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="poblacion_65ymas">65 años y más</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="censo" class="gt_row gt_right">1970</td>
<td headers="poblacion_0a14" class="gt_row gt_right">6.853.450</td>
<td headers="poblacion_65ymas" class="gt_row gt_right">1.631.400</td>
<td headers="indice" class="gt_row gt_right">24</td></tr>
    <tr><td headers="censo" class="gt_row gt_right">1980</td>
<td headers="poblacion_0a14" class="gt_row gt_right">8.480.768</td>
<td headers="poblacion_65ymas" class="gt_row gt_right">2.290.564</td>
<td headers="indice" class="gt_row gt_right">27</td></tr>
  </tbody>
  <tfoot>
    <tr class="gt_sourcenotes">
      <td class="gt_sourcenote" colspan="4"><span class='gt_from_md'><strong>Fuente:</strong> elaboración propia en base a datos de INDEC (Censos Nacionales de Población 1970 y 1980).</span></td>
    </tr>
  </tfoot>
</table>
</div>

El aumento del índice de envejecimiento refleja un cambio en la estructura etaria entre 1970 y 1980, lo que indica un mayor peso relativo de la población de 65 años y más en relación con la población joven, es decir, una población relativamente más envejecida.

### Índice de feminidad

Este indicador muestra cuántas mujeres hay por cada 100 varones en un grupo especifico de población. En este caso, lo analizamos en edades mayores a 60 años, donde suelen aparecer diferencias más marcadas entre hombres y mujeres.

``` r
feminidad <- poblacion |>
  filter(
    grupo_edad %in% c("60-64", "65-69", "70-74", "75-79", "80-84", "85 y más")
  ) |>
  group_by(censo, grupo_edad, sexo) |>
  summarise(poblacion = sum(poblacion), .groups = "drop") |>
  pivot_wider(names_from = sexo, values_from = poblacion) |>
  mutate(
    indice_feminidad = round(Mujeres / Varones * 100, 0)
  ) |>
  select(-Varones, -Mujeres)


feminidad_plot <- feminidad |>
  pivot_wider(
    names_from = censo,
    values_from = indice_feminidad,
    names_prefix = "censo_"
  ) |>
  ggplot(aes(y = grupo_edad)) +
  geom_segment(
    aes(x = censo_1970, xend = censo_1980, yend = grupo_edad),
    color = "grey85",
    linewidth = 1
  ) +
  geom_point(
    aes(x = censo_1970),
    color = "#ff0f7b",
    size = 3
  ) +
  geom_point(
    aes(x = censo_1980),
    color = "#f89b29",
    size = 3
  ) +
  geom_text(
    aes(x = censo_1970, label = censo_1970),
    hjust = 1.4,
    size = 3
  ) +
  geom_text(
    aes(x = censo_1980, label = censo_1980),
    hjust = -0.4,
    size = 3
  ) +
  labs(
    x = "Mujeres por cada 100 varones",
    y = "Grupo de edad",
    title = "Cambio en el índice de feminidad de la población de 60 años y más",
    subtitle = "Argentina, Años 1970 y 1980",
    caption = "Fuente: INDEC, Censo Nacional de Población 1970 y 1980. Procesado con ARcenso."
  ) +
  theme_minimal()

feminidad_plot
```

{{< figure src="unnamed-chunk-10-1.png" >}}

El índice de feminidad muestra una mayor presencia de mujeres en las edades más avanzadas, diferencia que se acentúa entre 1970 y 1980 en todos los grupos de edad analizados, lo que refleja patrones de mayor supervivencia femenina.

## ¿Qué nos deja este análisis?

Al trabajar con datos en análisis demográfico, la parte más laboriosa no suele estar en la construcción de indicadores o visualizaciones, sino en todo lo que ocurre antes: identificar qué información existe para cada censo, comprender cómo está organizada y construir una base coherente que permita comparar distintos momentos en el tiempo.

En este ejemplo, eso proceso implicó localizar los cuadros relevantes, entender las diferencias de estructura entre los censos de 1970 y 1980 y reconstruir variables a partir de la información disponible. Es justamente este proceso el que ARcenso busca simplificar: con `check_repository()` es posible identificar qué tablas están disponibles, con `get_census()` acceder a los datos de forma estructurada, y con `arcenso_app()` explorar el repositorio de manera interactiva.

Este ejemplo muestra que, una vez resuelta la organización de los datos, el análisis se vuelve más accesible y reproducible, permitiendo ampliar y adaptar los resultados a nuevas preguntas.

Sabemos que este es un proceso en construcción: aún hay trabajo por delante para incorporar más censos y seguir ampliando las posibilidades de análisis. ARcenso nace de esa necesidad de ordenar y hacer accesibles datos que no siempre lo están, y también del trabajo colaborativo de la comunidad que impulsa este tipo de iniciativas. Si te interesa seguir explorando, en las [*vignettes*](https://soyandrea.github.io/arcenso/articles/indicadores_demograficos.html) del paquete vas a encontrar más ejemplos para trabajar con estos datos.
