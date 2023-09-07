---
title: 'DIVIDE Y VENCERÁS: De {polar} Al Polarverse'
author: "Juan Pablo Ruiz Nicolini"
date: '2023-08-24'
slug: 2023-08-24-divide-y-venceras-de-polar-al-polarverse
categories: []
tags: []
---

> *"Solo soy un politólogo, parado frente a la consola de `R`, pidiendole que le ayude a terminar una tesis"*

Corría el año 2015, un estudiante de maestría de Ciencia Política tenía que procesar datos para entregar su tésis y decidió aprovechar la oportunidad para aprender a usar `R.` Al largo y tortuoso camino del requisito académico se agregó un grado de dificultad extra: incorporar un software de programación desde cero, con una curva de aprendizaje algo empinada.

Años después [reviso scripts del código de la tesis](https://github.com/TuQmano/evoteSALTA_UTDT) y me sonrío al ver extensas líneas de código para recodificar variables con esta una estructura como esta:

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

**La mejor decisión que tomé en mi carrera profesional.**

`R` desde entonces en una herramienta fundamental de mi día a día. Lo es en el ámbito académico y [como docente universitario](https://tuqmano.github.io/geo_utdt/); en mis trabajos como [consultor y analista](https://twitter.com/menta_arg); en mis [tareas como funcionario público](https://ropensci.org/es/blog/2022/11/23/r-universe-stars-1-es/); y en mis ratos libres, como un pasatiempo.

De todas las cualidades que tiene `R`, la comunidad fue el factor determinante en mi recorrido con este lenguaje de programación.

Al tiempo que finalizaba el primer paso de la tesis, me enteraba de la organización de la primera [Conferencia Latinoamericana de R para I+D (LatinR)](https://latin-r.com/), comunidad a la que le debo mi segundo (y tercero... y enesimo) paso en mi relación con R. En la primera edición presenté por primera vez casos de uso para análisis político desde R, implementando [grillas de Argentina para usar con `{ggplot}` como si fueran mapas con `{geofacet}`](https://www.researchgate.net/publication/327382101_Geofaceting_Argentina_LatinR_2018). En la segunda edición, presentamos la *Shiny App* [Inteligencia Electoral](http://inteligenciaelectoral.mentacomunicacion.com.ar/) para el análisis de resultados electorales de Argentina y pude participar del taller  _Desarrollo de Paquetes_ con [Hadley Wickham](https://hadley.nz/). Fue éste el punto de partida ideal para empezar con la idea de empaquetar código yo mismo.


<img src="https://lh5.googleusercontent.com/L0544tZ7i2883QLp7qQGoix1hqLwjppjd9LYnE95Csh-Sq78J_FjRBYh_GZ6Hu1D0QVBzWf0unNjhTOWwClpNkoSjYoNWUjRtE7sVt5-s8KtOGr646jorwPSIJaPduvDSkJJ-bzpArzD-2HfpHGTsew" width="200">
<img src="https://lh3.googleusercontent.com/JhbZ-qOlqRNW-AVAho4A_xjEVw_NUSwwBPy2fM7DwirTKXclyuJfmPm0puMqv1MxaLCIH6ljZ6yU0pDvH-t4TPZenzjHbekNpChPuSrKiWSNH_cKRqxy4iMDdYztWJnjHNM9q10VJ0JC2VZKDHLEBpY" width="200">




**El nacimiento de {polAr}**

Con el objetivo de llegar a presentar en la tercera edición de LatinR, desarrollé [`{geofacetAR}`](https://electorarg.github.io/geofaceteAR/): una versión pulida y con funciones para trabajar con el diseño de grillas como si fueran mapas de Argentina.

Se desató la pandemia por el Covid19. Y el aprendizaje de cómo desarrollar paquetes, en tiempos de confinamiento y muchas horas frente a la computadora, convirtieron el trabajo de procesamiento de datos electorales, de mi vida como politólogo y consultor, en un nuevo paquete: [`{polAr}`](https://github.com/electorArg/polAr); que el 16 de mayo de 2020 [viajaba a CRAN](https://twitter.com/CRANberriesFeed/status/1261597845808975872).

**El universo polAr**

Si bien originalmente el paquete buscaba facilitar el acceso y herramientas para el análisis de datos electorales en Argentina, con el tiempo se fueron integrando otros flujos de trabajo y fuentes de datos (geográficos, discursos presidenciales o votaciones legislativas), con un correlativo incremento de dependencias y dificultad de administrar cada vez más funciones. De hecho esto fue un tema relevante que [discutimos con colegas en el panel Desarrollo de paquetes durante la III edición de LatinR (2020)](https://www.youtube.com/watch?v=UYvSv8StDa8&t=10872s).

[![](https://lh5.googleusercontent.com/uQA8VbmFABjeZbo96fkAtxOqQCLyYnG-PYpDpyzPrs01VrB2bKZDm2X9-jelYXnBvrENlHJxYGcw_h8FSo2jIREks_fHvkPHRXf0ejlcTNqYjdW4wPKZujS2n4GKrnTFZyabIQNUpRzehqRq1FHlbLY)](https://www.youtube.com/watch?v=UYvSv8StDa8&t=10872s)

`{polAr}` había alcanzado las 4000 descargas cuando recibo un correo electrónico del equipo de CRAN informando que debía ajustar una violación de política para que el paquete no fuera archivado. A pesar de enviar una nueva versión el paquete fue archivado sin una clara razón.

![](https://lh4.googleusercontent.com/BVfIfOecfmQidGrxg4vcISxDw-Cgpri7cxCZcOnHsiR9HW2qwjTR5SRP_AVR27Gf7KFL2Grby_R0nkcbiPlT5ZPh9-GloKBSOuI1fseNGuYOEvopYUe7bAGIBURhX5TX9G3BT4glKRCrr74cyN40Y38)

Sí la conversación en LatinR nos hizo pensar en la separación en múltiples paquetes como posibilidad, el archivado de CRAN nos dio la oportunidad de hacerlo. Le decisión fue generar flujos independientes de trabajo; estrategia que posibilitó poder ir avanzando con distintos ritmos, tomando decisiones específicas para cada tema, procurando abordarlo al mismo tiempo como parte de un conjunto, emulando el paradigma *Tidyverse*: una filosofía y gramática de funcionamiento similar para la [colección de paquetes](https://tuqmano.ar/2021/06/05/de-polar-al-polarverse/). El objetivo fue mejorar el desarrollo de aquello que derivó en el archivado de `{polAr}`.

Presentamos "[Divide y Vencerás: de {polAr} al polarverse](https://github.com/TuQmano/latinr2021/blob/master/divide_reinaras/divide_reinaras.pdf)" en la cuarta edición de LatinR, mostrando este nuevo universo con cinco paquetes:

1.  📦 [`{opinAr}`](https://politicaargentina.r-universe.dev/opinAr): prove el acceso a datos de opinión pública y de gobierno de Argentina a partir del Indice de Confianza en el Gobierno que publica mensualmente la Universidad Torcuato Di Tella

2.  📦 [`{electorAr}:`](https://politicaargentina.r-universe.dev/electorAr) facilita el acceso datos electorales de Argentina (para distintos niveles y con diferente agregación espacial) y funciones para computar indicadores relevantes.

3.  📦 [`{legislAr}`](https://politicaargentina.r-universe.dev/legislAr)`:` permite descargar información desagregada de votaciones en las cámaras legislativas de Argentina, originadas por el proyecto [Década Votada](https://andytow.com/scripts/disciplina/index-d.html) de Andy Tow

4.  📦 [`{discursAr}`](https://politicaargentina.r-universe.dev/discursAr)`:` esta pensado para obtener datos relativos a discursos políticos. En principio proveyendo acceso a discursos presidenciales en asambleas legislativas de inauguración de sesiones ordinarias.

5.  📦 [`{geoAr}`](https://politicaargentina.r-universe.dev/geoAr): permite acceder a datos y herramientas para flujos de trabajo espaciales desde R. Una [ponencia](https://github.com/TuQmano/latinr2023/blob/main/geoAr/geoAr.pdf) sobre el paquete fue aceptada para la [sexta edición de LatinR](https://latin-r.com/).

Adicionalmente trabajamos en una librería auxiliar llamada [`{polarViz}`](https://politicaargentina.r-universe.dev/polArViz), para facilitar la tarea de visualización de los otros paquetes, y un metapaquete [`{polArverse}`](https://politicaargentina.r-universe.dev/polArverse)que emula el funcionamiento de `{tidyverse}`, para la carga del conjunto de librerías asociadas.

**🌠 Encuentro de universos: [el *polArverse* en *r-universe*](https://politicaargentina.r-universe.dev/builds)**

Durante este proceso incorporamos r-universe en el flujo de trabajo. No solo proveyó de un espacio autónomo y autoadministrado en el cual publicar estos nuevos paquetes (no ya simplemente como repositorios de Github), sino que es de gran ayuda para el chequeo en diferentes sistemas operativos y versiones de software. Sin duda una herramienta relevante para su mejor mantenimiento.

![](https://lh4.googleusercontent.com/VHMVype__IRMsC3OkW3SHS68Htr8eJD58TPfZpCkycy6iReA_sDjbasHGqwP7RptmvPoD1C6KIYW3RUEEh1NjIxDJNRpmgTdebOz6n1Nzgpc3jLGN8DHYVbkUmYxYGISTc80HuCS-Y3rDl0BtahstFc)

**Seguimos dando pasos importantes para nuestro universo:**

En primer lugar, ¡volvimos a CRAN! En febrero de 2023 se envío `{geoAr}` que, como señalamos, permite acceder y facilitar el procesamiento de datos con relevancia espacial. Una versión en desarrollo (accesible desde r-universe) permite también interactuar con la [API del Servicio de Normalización de Datos Geográficos de Argentina](https://georef-ar-api.readthedocs.io/es/latest/).

Por otro lado, incoporamos un histórico pendiente a la caja de herramientas polAr para trabajar con datos censales: [`{censAr}`](https://github.com/PoliticaArgentina/censAr). El paquete,  actualmente en desarrollo, está basado en el código de [`{censo2017}`](https://docs.ropensci.org/censo2017/), desarrollado por [Mauricio "Pacha" Vargas](https://ropensci.org/author/pach%C3%A1-aka-mauricio-vargas-sep%C3%BAlveda/) y parte de la suite de rOpenSci.

**Mi experiencia como desarrollador de software con R**

-   Empecé a trabajar con este lengüaje - o dialécto, [como gusta decir a un colega](https://tuqmano.github.io/CienciaDeDatosCiPol/clases/clase1.html#12), a proposito del antecedente del `S` de *Bell* en la década de 1970- un poco por fortuna.

-   Rápidamente lo incorporé como herramienta de trabajo, en múltiples facetas: como analista, consultor y docente.

-   La comunidad de `R` - y en particular toda la experiencia alrededor de *LatinR*- fueron un factor determinante para mi experiencia. Sin lugar a dudas facilitando mucho el proceso.

-   Con todo, creo que es posible pensar en mejoras del proceso para hacer de CRAN un espacio mejor aún para el ecosistema `R` y hacer de la experiencia de desarrollo FOSS mas amena y predecible.

-   El surgimiento del proyecto *r-universe* para mejorar la experiencia de publicación y descubrimiento de paquetes desarrollados en `R` resulta muy valioso.

El *polarverse* es un proyecto paralelo, sobre el que avanzo en tiempos libres y sin financiamiento. Surgió casi lúdicamente, como experimento para aprender cómo desarrollar software. Probamos exitosamente publicar en CRAN. Nos frustramos y enojamos. Aprendimos. Sumamos nuevas herramientas. Seguimos avanzando. De a poco. "Lento, pero seguro".
