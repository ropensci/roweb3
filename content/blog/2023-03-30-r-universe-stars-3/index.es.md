---
slug: "r-universe-stars-3-es"
title: "Conociendo a las estrellas del Universo R: Investigando nuestro cerebro con la magia del universo R"
author:
  - Yanina Bellini Saibene
  - Alejandra Bellini
  - Lucio Casalla  
  - Steffi LaZerte
date: '2023-03-30'
tags:
  - community
  - r-universe
  - interviews
  - r-universe-stars
# The summary below will be used by e.g. Twitter cards
description: "Trabajar con el cerebro humano necesita de software específico y desarrollos complejos. Sin embargo R aparece como la forma natural de organizar y compartir cientos de datos que necesitan ser analizados y el Universo R como el lugar más amigable para compartir e invitar a colaborar. Nuestra tercera parada nos encuentra en __Noruega__ para hablar con __Athanasia Monika Mowinckel__."

---

Un nuevo artículo de nuestra serie de entrevistas ["Conociendo a las estrellas del universo R"](/tags/r-universe-stars/). Nuestro objetivo es presentar a los equipos y personas que están detrás del desarrollo de software y paquetes que utilizamos y que están disponibles a través del R-universe. Queremos destacar y explorar diferentes equipos y proyectos de todo el mundo, el trabajo que realizan, sus procesos y usuarios. Nuestra tercera parada es __Noruega__ para hablar con __Athanasia Monika Mowinckel__.

Trabajar con el cerebro humano necesita de software específico y desarrollos complejos. Sin embargo R aparece como la forma natural de organizar y compartir cientos de datos que necesitan ser analizados y el Universo R como el lugar más amigable para compartir e invitar a colaborar.  

{{< figure src = "/img/team/mo-mentor.png" class = "pull-left" width = "300" alt = "Foto de perfil de Athanasia Monika Mowinckel." caption = "<center><strong>Athanasia Monika Mowinckel</strong><br>Investigadora e Ingeniera de Software de Investigación</center>">}}

Athanasia Monika Mowinckel se presenta simplemente como Mo, tal es su apodo, aunque su historia y su currículum es mucho más extenso e incluye, entre muchas otras cosas, su actual trabajo en el [Center for Lifespan Changes in Brain and Cognition](https://www.sv.uio.no/psi/english/research/groups/lcbc/index.html) en la Universidad de Oslo, en Noruega. Allí trabaja como científica y nos cuenta que la mayor parte de sus tareas _“tienen que ver con la ingeniería de software de investigación o la gestión de datos de investigación”_ y por eso _“R es el programa estadístico por defecto que utilizamos para nuestro trabajo diario en el centro, y generamos resultados en forma de paquetes de R”_. 

En su trabajo utilizan software especializado por el tipo de información que necesitan procesar, por ejemplo, imágenes del cerebro. Athanasia explica que al final del día todas sus estadísticas están en R y por eso _"tener todos nuestros paquetes de R en una caja de herramientas es muy importante para todas las personas que participan y colaboran”._ 

Athanasia está trabajando en un proyecto llamado [Life Brain](https://www.lifebrain.uio.no/), financiado por la Unión Europea para el proyecto Human Life en el que participan 13 centros europeos. Mo explica que han desarrollado muchas investigaciones, realizado publicaciones y muchos de los resultados se han plasmado en los paquetes de R. Consultada sobre el proyecto, con pasión y gran entusiasmo, Mo cuenta: 

>Estamos tratando de investigar cómo envejece la gente, cómo es su envejecimiento cerebral, cómo es su envejecimiento cognitivo.  


## R-Universe

> El universo R llegó en un momento muy oportuno para nosotros

Athanasia explica que esta plataforma les ofrece una manera sencilla [de mostrar todo el software sobre el que estuvieron trabajando en el proyecto](https://lifebrain.r-universe.dev/). En el desarrollo de las investigaciones que realizan hay distintos tipos y fuentes de financiamiento y aunque tienen una organización colectiva en GitHub necesitaban una forma clara de mostrar todo el trabajo que se encuentran distribuido en distintos repositorios en las cuentas personales de los investigadores o en las cuentas de los centros de investigación. Es por eso que Mo asegura que en el Universo R _"podemos crear un lugar para todo nuestro universo y así mostrar los paquetes."_

Además, Athanasia menciona que un aspecto importante de usar el Universo R, es que queda muy claro quiénes son las personas que desarrollan y las que mantienen el software, y eso significa que cada participante mantiene el crédito por sus contribuciones. 

Otro de los usos interesantes del Universo R para compartir trabajo que Mo nos mostró, es la posibilidad de acceder a los datos pero también a algunas funciones extras usadas en el análisis. Por ejemplo, en la encuesta Lifebrain Global Brain Health Survey obtuvieron más de 27 mil respuestas, produjeron artículos y documentos, y **proporcionan todos los datos y el código** en el paquete [gbhs](https://lifebrain.r-universe.dev/gbhs) (puedes ver más información sobre este trabajo en el vídeo al final de este artículo). 


{{< figure src = "brain_plot_3.png" class = "center" width = "600" alt = "Figura que muestra dos contornos de un cerebro dibujados con líneas. A la izquierda, una imagen de arriba abajo; a la derecha, una imagen de lado. Ambas muestran manchas de color que resaltan puntos en el centro correspondientes a distintas partes del cerebro." caption = "<center><strong>Mapa subcortical graficado con ggseg</strong></center>">}}

Mientras recorremos los paquetes que contiene el Universo R de [Lifebrain](https://lifebrain.r-universe.dev/), Athanasia nos muestra su mayor orgullo: [ggseg](https://ggseg.r-universe.dev/), un desarrollo para crear imágenes del cerebro para que puedan ser analizadas desde distintas funciones. Fue precisamente con todo ese trabajo que Mo encontró en el Universo R la solución a una serie de problemas con el tamaño de los datos y la instalación de las herramientas necesarias para trabajar: 


> Cuando los paquetes de datos son demasiado grandes y no se pueden reducir no es posible publicarlo en CRAN (...) y aparecen fallas cuando los usuarios quieren instalarlos en su versión de desarrollo que nos llevaban mucho tiempo solucionar y con resultados no óptimos.

En ese contexto es cuando el Universo R le presenta una solución definitiva: 

> Esta es la verdadera solución para poder tener todo lo que trabajamos en el proyecto con una instalación que funciona y no perder más tiempo en solucionar problemas de nuestros usuarios.


{{< figure src = "brain_plots.png" class = "center" width = "600" alt = "Una serie de tres ejemplos de gráficos de diferentes atlas cerebrales. Cada fila muestra cuatro contornos cerebrales con formas de distintos colores." caption = "<center><strong>ggseg en acción: graficando atlas del cerebro</strong></center>">}}

Según la experiencia de Athanasia el Universo R le permitió publicar todos los paquetes en un sólo lugar, con fácil accesibilidad y la posibilidad de recibir contribuciones, mantenimiento y sin problemas de instalación para los usuarios. En sus propias palabras: 

> El Universo R es magia para mi.

Recordemos que en el Universo R se generan los instaladores para diferentes sistemas operativos de todos los paquetes que pertenecen al universo, sin límites en el tamaño del paquete. Uno de los objetivos de la plataforma es hacer más sencillo publicar e instalar paquetes de R.

En el siguiente video, Athanasia explica con más detalles el desarrollo de su proyecto Life Brain, la forma en la que utilizan R para organizar y trabajar la información y nos muestra cómo el Universo R les permitió ordenar y compartir todos sus paquetes.

## Video de la entrevista

{{< vimeo id=807731911 title="Conociendo a las estrellas del Universo R - Athanasia Monika Mowinckel" >}}

