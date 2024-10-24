---
slug: "r-universe-stars-5-es"
title: "Conociendo a las estrellas del Universo R: El universo R contra las enfermedades."
author:
  - Yanina Bellini Saibene
  - Alejandra Bellini
  - Lucio Casalla  
  - Steffi LaZerte
  - Rich FitzJohn
  - Rob Ashton
date: '2023-09-15'
tags:
  - community
  - r-universe
  - interviews
  - r-universe-stars
featured: true
# The summary below will be used by e.g. Twitter cards
description: "."

---

Un nuevo artículo de nuestra serie de entrevistas ["Conociendo a las estrellas del universo R"](/tags/r-universe-stars/). Nuestro objetivo es presentar a los equipos y personas que están detrás del desarrollo de software y paquetes que utilizamos y que están disponibles a través del R-universe. Queremos destacar y explorar diferentes equipos y proyectos de todo el mundo, el trabajo que realizan, sus procesos y usuarios. En esta parada vamos al __Reino Unido__ para hablar con representantes del _Centre for Global Infectious Disease Analysis_. No te olvides de mirar el video al final del artículo con extractos de la entrevista.

_Las enfermedades infecciosas siguen generando múltiples problemas en la salud humana. La experiencia de la pandemia nos enseñó la importancia de las investigaciones para luchar contra las epidemias. Hoy conoceremos a un equipo de desarrolladores que utilizan el Universo R para alojar paquetes que ayudan en ese trabajo._

{{< figure src = "rich.jpeg" class = "pull-right" width = "300" alt = "Foto de perfil de Rich FitzJohn." caption = "<center><strong>Rich FitzJohn</strong><br>Arquitecto principal<br>Grupo de Ingeniería de Software de Investigación</center>">}}

La charla comienza con Rich FitzJohn, quien dirige el equipo de ingeniería de software de investigación en el [MRC Centre for Global Infectious Disease Analysis](https://www.imperial.ac.uk/mrc-global-infectious-disease-analysis). Este centro trabaja en el análisis global de enfermedades infecciosas y es un centro de investigación y desarrollo de herramientas para el análisis epidemiológico y la modelización de enfermedades infecciosas con el objetivo de colaborar con el trabajo de organismos nacionales e internacionales para planificar políticas públicas de respuesta a las posibles amenazas de las enfermedades infecciosas. 

Este equipo fue de los primeros en utilizar nuestro Universo R y por eso es un testimonio relevante para compartir y conocer las razones por las cuales ingresaron a nuestra plataforma.

{{< figure src = "rob.jpeg" class = "pull-left" width = "300" alt = "Foto de pergil de Rob Ashton." caption = "<center><strong>Robert Ashton</strong><br>Ingeniero de Software de Investigaión Senior</center>">}}

Según lo explica Rich el trabajo consiste en dar respuesta a problemas generales y específicos de la epidemiología y responden a más de 200 empresas diferentes. Dentro de esos desarrollos, el Universo R es una forma de distribuir sus paquetes principalmente para el trabajo interno pero también es una buena manera de presentarlos.

En este sentido, Rob quien también es ingeniero en software y trabaja junto a Rich en el proyecto, agrega que los paquetes les permiten entregar el trabajo a todos los destinatarios de una manera sencilla, útil y responsable. Sobre todo si se tiene en cuenta que se trata de un trabajo muy colaborativo y muchas veces contra reloj. Es por eso que tratan de estar todos trabajando al mismo tiempo en el mismo código con un ciclo de desarrollo y revisión permanente para poder satisfacer las necesidades de los investigadores.  
Ese desarrollo después puede ser utilizado por investigadores en todo el mundo y ahí es donde el Universo R se vuelve una herramienta fundamental. 

Varios usuarios diversos pueden acceder al [universo R de MRC](https://mrc-ide.r-universe.dev) para utilizar los paquetes y disponer del material necesario para su investigación. Sin embargo, es probable que necesiten cierta formación o conocimientos para poder utilizar estos paquetes debido al nivel de especificidad y el Universo R también ayuda en este sentido albergando documentación como viñetas y artículos.

Recordando cómo se involucraron por primera vez en R-Universe, Rich dice que fue para probar las primeras versiones de la plataforma en la que estaba trabajando rOpenSci.  Cuando les invitaron, se dieron cuenta de que representaba la posibilidad de ahorrar horas de trabajo en distintos procesos. Cuando los invitaron se dieron cuenta que representaba la posibilidad de ahorrarse horas de trabajo en distintos procesos. 

Fue en este momento de la charla donde se habló sobre posibles funcionalidades futuras que podrían ser útiles en el Universo R; desde archivar diferentes versiones de los binarios de cada paquete según las necesidades de reproducibilidad de un investigador, pasando por la generación automática de la documentación de los paquetes, hasta diferentes ideas para incrementar las capacidades de búsqueda y descubrimiento de paquetes en el Universo R.

Parte de esos desafíos están en desarrollo y el Universo R ya cuenta con funcionalidades que responden a algunas de estas ideas del equipo de Rich y Rob. Por ejemplo: [Descarga de versiones y creación de repositorios de paquetes R estables mediante R-Universe (en Inglés)](https://ropensci.org/blog/2023/05/31/runiverse-snapshots/) y [Descubrir y aprender todo lo que hay que saber sobre los paquetes de R utilizando r-universe.](https://ropensci.org/es/blog/2023/02/27/runiverse-discovering-es/)

En el siguiente video Rich y Rob cuentan más detalles del trabajo que realizan en el MRC y que comparten en el Universo R de rOpenSci.


{{< vimeo id=861836969 title="Conociendo a las estrellas del Universo R - Proyecto del Centre for Global Infectious Disease Analysis" >}}

