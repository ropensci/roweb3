---
slug: "hackeaR-LatinR2026"
title: Hackeando dos horas de contribuciones a R
author:
  - Yanina Bellini Saibene
date: 2026-11-20
tags:
  - paquetes
  - R
  - comunidad
description: "Que hicimos durante HackeaR, un evento en LatinR donde nos juntamos a realizar contribuciones a nuestro lenguaje de programación favorito"
editor:
  - Steffi LaZerte
params:
  doi: "10.59350/zde9j-p0b41"
---

[LatinR](https://latinr.org) es la conferencia sobre el uso de R en Investigación y Desarrollo que congrega a la comunidad latinoamericana usando nuestro lenguaje de programación favorito. Este 2026 se realizo del 11 al 13 de Noviembre en Medellín, en conjunto con la Universidad de Antioquia. 

El viernes 13 de Noviembre se realizó **[HackeaR](https://latinr.org/cronograma/hackear/)**, un encuentro de dos horas de trabajo en grupo pequeños donde personas con experiencia acompañaron a quienes daban sus primeros pasos contribuyendo a proyectos abiertos. En este post resumimos qué y cómo se trabajó.


## Qué es HackeaR

Este evento combina la experiencia de los [mini hackathones y mini traslatones](https://ftc-guide.ropensci.org) de rOpenSci con los R Dev Days/Sprints del grupo [R Contributor](https://contributor.r-project.org/events/r-dev-days/). 
La idea es que cualquier persona, sea principiante o tenga experiencia, pueda hacer una contribución real al ecosistema de R. 

El foco estuvo en contribuciones que ayudan a tanto a R base como a los paquetes de R que conforman nuestro ecosistema. Varios de estos paquetes y proyectos son programas de rOpenSci. Las contribuciones posibles incluían analizar y trabajar sobre _issues_ y _pull request_ listados en el [tablero del hackathon](https://github.com/orgs/r-devel/projects/14/views/1), mejorar documentación y revisar traducciones de materiales de rOpenSci.

Veintisiete personas participaron del evento, algunas las dos horas completas y otras yendo y viniendo entre el resto de las sesiones de la conferencia.

<div class="row">
<div class="col-md-6">

{{< figure src="working_groups.jpeg" alt="Participantes seleccionando issues y pull request para trabajar durante el evento, sentados en la sala y trabajando en sus notebooks" caption="Participantes seleccionando issues y pull request para trabajar durante el evento" >}}

</div>
<div class="col-md-6">

{{< figure src="working_groups_2.jpeg" alt="Más participantes seleccionando issues y pull request para trabajar durante el evento, sentados en la sala y trabajando en sus notebooks" caption="Participantes del hackathon trabajando con sus computadoras durante el evento" >}}

</div>
</div>


## Las propuestas de trabajo

Para ayudar a decidir por donde empezar, preparamos de ante mano un proyecto de GitHub con 25 opciones para participar de distintos repositorios, agrupados en tres categorías: buenas prácticas, documentación y traducción. 

### Buenas prácticas (9)

- **Accesibilidad:** Diana Garcia agregó texto alternativo a las imágenes de [unheadr](https://github.com/luisDVA/unheadr/issues/6) [por medio de un pull request](https://github.com/luisDVA/unheadr/pull/13) que fue aceptado y cerro este issue!🎉
Riva Quiroga y Jesica Formoso trabajaron en un problema de contraste de color por debajo del mínimo WCAG AA en la [guía de r-devel](https://github.com/r-devel/rdevguide/issues/274).

- **R base en distintas plataformas:** Jeroen Ooms tiene en progreso dos pull requests en r-svn, uno para [arreglar Alpine en ARM64 y sumar integración continua](https://github.com/r-devel/r-svn/pull/476) y otro para [corregir el límite de la pila de C en Linux y FreeBSD](https://github.com/r-devel/r-svn/pull/478).

- **stplanr:** se cerró el [issue de acciones que fallan](https://github.com/ropensci/stplanr/issues/567) 🎉 y quedaron cuatro a la espera, desde renombrar `rnet_merge` hasta un método `sf` de `line_midpoint` y una viñeta sobre redes de rutas.

### Documentación (6)

- El issue de "Lost braces", propuesto por Kurt Hornik (R Core), consiste en [enviar pull requests a paquetes de CRAN](https://github.com/r-devel/r-dev-day/issues/110) que muestran la _NOTE_ de _"Lost braces"_ en el chequeo de archivos Rd. Durante HackeaR, Yanina Bellini Saibene abrió un [pull request para el paquete standardize](https://github.com/CDEager/standardize/pull/4) que corrige esta NOTE, Ella Kaye, Heather Turner y Francisco Cardozo trabajaron en otros paquetes para el mismo _issue_. Luis Verde explicó cómo resolver la NOTE, porque ya había trabajado en el tema en eventos anteriores. Los casos más frecuentes son una barra invertida que falta delante de una macro (como `code{...}`), llaves usadas para notación de conjuntos que hay que escapar, y `\itemize` usado donde corresponde `\describe`. El avance se registra en el repositorio [track-lost-braces](https://github.com/r-devel/track-lost-braces).

- Quedaron disponibles la revisión de viñetas de [weathercan](https://github.com/ropensci/weathercan), mejoras a la documentación para publicar paquetes en [R-Universe](https://r-universe.dev) y tres correcciones menores en [unheadr](https://github.com/luisDVA/unheadr) (una errata en la documentación roxygen, una viñeta con un argumento obsoleto y un ejemplo del README).

### Traducción (10)

- **Materiales de rOpenSci:** hay pull requests abiertos con traducciones del curso de Git al [español](https://github.com/ropensci-training/curriculum/pull/116) que fue tomado por Francisco Cardozo y Catalina Cañizares durante el hackathon y se encuentra en progreso. También hay traducciones al portugués, que esperan revisión.

- **Materiales de rOpenSci:** hay pull requests abiertos con traducciones del curso de Git al [español](https://github.com/ropensci-training/curriculum/pull/116) y al portugués. El de español fue tomado por Francisco Cardozo y Catalina Cañizares durante el hackathon y se encuentra en progreso; los de portugués esperan revisión.

- **Mensajes de R:** el issue sobre traducir los mensajes de R sigue abierto para quien quiera sumarse. En español ya se completaron todos, pero todavia hay trabajo por hacer en portugués.

- **rdlocal:** el paquete de Elio Campitelli para facilitar la traducción tuvo una sesión de pruebas con Paola Corrales, Evelia Coss Navarrete, Mauricio Gómez Ardila y Oscar De Leon. Trabajaron en dos viñetas, una para quienes traducen y otra para quienes usan el paquete. Siguen abiertos issues sobre sobrescribir módulos y sobre incluir autoría en el archivo DESCRIPTION de los módulos de traducción.

- Otros participantes, como Gustavo Bruges y Audrey, revisaron el listado de ["Help Wanted" issues de rOpenSci](/help-wanted/) y ofrecieron su ayuda para traducir viñetas. 

<div class="row">
<div class="col-md-6">

{{< figure src="learning_togethers.jpeg" alt="Mentora y participante revisando juntos una tarea durante el evento" caption="Aprendiendo y trabajando juntes durante el evento" >}}

</div>
<div class="col-md-6">

{{< figure src="hybrid.jpeg" alt="Tres personas en persona en la sala sentadas y una de ellas sostiene su notebook donde se encuentran dos personas participando online" caption="La naturaleza hibrida del evento, que permite trabajar con personas de todo el mundo." >}}

</div>
</div>

## Lo que nos llevamos

En solo dos horas, el tablero mostró lo variado que puede ser contribuir: desde un texto alternativo o un typo en un README hasta trabajar en conjunto con les autores de un paquete para mejorarlo e implementarlo.

También se vio que la traducción y la documentación son puertas de entrada muy valiosas, que el acompañamiento de mentores con experiencia (como la explicación de Luis sobre "Lost braces") hace posible que quien llega por primera vez contribuya enseguida y que trabajar en español y portugués es parte central de lo que hacemos en LatinR.

Aun quedan _issues_ y _pull request_ abiertas y eso es una buena noticia: si te quedaste con ganas, podés seguir contribuyendo cuando quieras. Revisá el tablero y la lista de Help Wanted de rOpenSci. Tambien podes sumarte al Zulip de R Contributors, al Slack de LatinR y suscribirte al newsletter de rOpenSci para enterarte de proximos eventos de este tipo.

Al finalizar el evento sorteamos una beca de Platzi entre las personas participantes, y Audrey fue quien recibió el premio. ¡Felicitaciones! 🎉

Compartir un momento con personas nuevas y conocidas trabajando en algo que nos gusta, aprendiendo y ayudando a las personas que desarrollan paquetes, son de las actividades mas interesantes que se pueden realizar en estos eventos.

¡Gracias a todas las personas que participaron! 

{{< figure src="hackear_participants.jpeg" alt="Un grupo de 10 personas está sentado y sonriente en el escenario, y en la proyección de Zoom aparecen otras 4 personas participantes conectadas en línea." class = "center" caption="Algunos de los participantes de HackeaR en LatinR 2026, en persona y online" >}}