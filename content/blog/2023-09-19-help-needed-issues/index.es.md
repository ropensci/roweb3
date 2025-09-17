---
title: Atraer colaboradores con issues de "se busca ayuda"
author:
- Maëlle Salmon
- Yanina Bellini Saibene
- Steffi LaZerte
translator: 
- Juan Cruz Enrique
- Yanina Bellini Saibene
date: '2023-09-19'
slug: help-wanted
featured: true
tags:
- comunidad
- paquetes
- bienvenida
- mantenimiento
- contribuciones
description: Consejos sobre cómo crear y anunciar anuncios de búsqueda de ayuda.
params:
  doi: 10.59350/cax2g-mx496
---

Mantener un paquete puede ser una actividad solitaria, lo que a veces supone un problema si prefieres el trabajo en equipo o si te encuentras con un problema muy duro para ti.
Además de pertenecer a una comunidad solidaria de mantenedores (como rOpenSci :wink:), ¡para obtener ayuda y compasión colaborativa puedes intentar crear una comunidad de colaboradores en torno a tu paquete!
En este post, exploraremos una herramienta que te ayudará a conseguir ese objetivo: los _issues_ de "se busca ayuda", ¡con los que tu repositorio podría atraer y retener a nuevos desarrolladores! Hablaremos de qué son estos _issues_ de "se busca ayuda", sobre cuatro pasos para solicitar ayuda externa y te recordaremos que puede ser un proceso beneficioso, aunque no acabes consiguiendo ayuda.

*Ten en cuenta que este post utiliza terminología específica de GitHub, como _issues_ y etiquetas (labels). Si utilizas GitLab u otra plataforma git, probablemente exista un equivalente.* :cara\_ligeramente\_sonriente:

## ¿Qué son los temas de "se necesita ayuda"?

 Los _issues_ "Se busca ayuda" son _issues_ para los que necesitarías o aceptarías contribuciones externas.
Se etiquetan con la etiqueta estándar de la comunidad "se busca ayuda" ([ejemplo](https://github.com/ropensci/osmextract/issues/286); opcionalmente con un emoji, si ejecutaste [`usethis::use_tidy_github_labels()`](https://usethis.r-lib.org/reference/use_github_labels.html)).

Para algunos de ellos, si no están demasiado implicados, o si son una buena rampa de acceso a tu base de código, también puedes utilizar la función ["etiqueta "buena primera edición](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/encouraging-helpful-contributions-to-your-project-with-labels).

A continuación veremos cuatro pasos para solicitar ayuda externa.

## Paso 1. Selecciona _issues_ de "se busca ayuda"

### Temas que *realmente* necesitas ayuda: obstáculos al desarrollo

A veces se avecina un obstáculo que no sabes cómo superarlo en el camino hacia tu próximo hito de desarrollo.
En esta fase puedes:

- pedir ayuda en un canal habitual (por ejemplo, el canal de mantenimiento de paquetes del Slack de rOpenSci, si estás en ese [espacio de trabajo](https://contributing.ropensci.org/resources.html#channels); [Foro de debate rOpenSci](/blog/2022/01/11/ropensci-forum/); [Foro de la comunidad Posit](https://community.rstudio.com/));
- abrir una incidencia en una dependencia upstream si es ahí donde está el problema real;
- abrir un _issue_ en tu repositorio describiendo tu problema.

Por ejemplo, al trabajar en el paquete tinkr, Maëlle abrió un [_issue_ muy específico](https://github.com/ropensci/tinkr/issues/9) que acabó recibiendo una ayuda externa milagrosa.

También puedes añadir la etiqueta "se necesita ayuda" a un informe de error o a una solicitud de función que alguien haya abierto en tu paquete.
Con un poco de suerte, el propio creador del problema podrá participar.

### Temas en los que podrías necesitar ayuda: delegar o voluntad de hacer crecer tu equipo

Ahora bien, a veces hay algunas ideas de mantenimiento o mejora que tienes para tu paquete para las que no tienes tiempo ahora mismo, o que no son urgentes.
Por ejemplo [actualizar la infraestructura de pruebas para probar esa tercera edición](https://github.com/ropensci/geojsonio/issues/183) o [añadir soporte a un paquete espacial](https://github.com/ropensci/landscapetools/issues/33).
Incluyéndolos en tu gestor de _issues_,

- muestras a los usuarios curiosos que tienes en tu mente,
- puedes organizar tu propio trabajo,
- y puedes recibir ayuda externa, especialmente si solicitas ayuda explícitamente con la etiqueta "se busca ayuda".

## Paso 2. Pule tu _issue_ y la guía de contribución

Una vez que tengas un tema en mente, haz que el título del _issue_ y el texto sean lo más claros posible.
Aunque al final seas tú quien solucione el problema, en el futuro te alegrarás de no haber anotado un comentario indescifrable.
Enlaza a los recursos que sean necesarios, y asegúrate de incluir el contexto.
Aborda la redacción de un problema en tu propio repositorio del mismo modo que lo harías en uno que no es tuyo: descripción del reto, resultado deseado, compensaciones, etc.

Más allá de los esfuerzos en el _issue_ individual, es crucial tener un [guía de contribución](https://devguide.ropensci.org/collaboration.html#contributing-guide) que subraye todo lo que conviene saber sobre la contribución a tu paquete: herramientas utilizadas, preferencias de estilo y diseño. [^ctb]
No dupliques los recursos externos, mejor apunta a ellos.
Intenta ser un poco flexible para no sobrecargar o asustar a los colaboradores con requisitos demasiado estrictos: probablemente puedas terminar tú mismo los PR, o enseñarles poco a poco.

[^ctb]: Puede que encuentres<https://contributing.streamlit.app/> útil, pero otra forma de mejorar tu guía de colaboradores es ir modificándola en función de tu experiencia con los nuevos colaboradores.

## Paso 3. Difunde tu necesidad de ayuda

En primer lugar, para los paquetes rOpenSci, los _issues_ de "se busca ayuda" se difunden a la comunidad a través de la sección [sitio web](/help-wanted) y en las redes sociales.

 Puedes compartirlo en tus propias redes: el espacio de trabajo de slack de rOpenSci, tus redes sociales, un canal de comunicación local del Grupo de Usuarios de R, etc.

También puedes considerar la posibilidad de aprovechar eventos hack-a-thon como [Hacktoberfest](https://hacktoberfest.com/) por ejemplo (si añades el ["hacktoberfest" a tu repositorio](https://hacktoberfest.com/participation/)), pero con eventos realmente grandes como éste no puedes contar necesariamente con que alguien descubra tu pequeño problema en ese mar de problemas.

## Paso 4. Da las gracias a las personas que colaboran

Si alguien responde en el _issue_ o abre un PR, intenta ser algo receptivo.
Comprueba que tu configuración te permite recibir notificaciones de los comentarios de los _issues_ y de los PR, puede que necesites [mirar las notificaciones](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github/managing-subscriptions-for-activity-on-github/viewing-your-subscriptions) en tu repositorio.

¡Agradece las contribuciones [generosamente](https://devguide.ropensci.org/collaboration.html?q=generous#attributions)! 

## No desesperes

Aunque hayas escrito un _issue_ excelente, puede que nadie lo tome.
En ese caso, plantéate volver a difundirlo, pide consejos generales a tus compañeros mantenedores y considera la posibilidad de solicitar financiación (que puede comprar tiempo de trabajo, ya sea tuyo o el de un contratista externo) para tus esfuerzos de mantenimiento.
Por ejemplo [el R Consortium tiene dos convocatorias anuales de propuestas para subsidios](https://www.r-consortium.org/all-projects/call-for-proposals#Rstats).

Aunque al final nadie aborde la cuestión, pasar por este proceso puede ser útil, ya que te da la oportunidad de pensar en el tema en detalle y de considerar posibles resoluciones, lo que puede ayudarte a resolver tu problema por ti mismo.
Además, un _issue_ bien documentado es una forma estupenda de dejar documentadas tus decisiones sobre tu software de forma transparente y puede ayudar a futuros usuarios y colaboradores a entender las razones de tus elecciones.

## Conclusión

Abrir _issues_ de "se busca ayuda" puede ser una forma de hacer crecer la comunidad de colaboradores de tu paquete.
Puede ser una mejor puerta a la contribución de temas menos específicos con una lista de tareas necesarias, ya que son menos abrumadores.
Es posible que los colaboradores solucionen un problema de "ayuda solicitada" y luego se marchen, o que sigan adelante y solucionen más de ellos.
A veces una conversación en los comentarios puede ayudarte a encontrar una solución aunque un colaborador no envíe un PR.

Como colaborador, ¡comenta siempre un problema antes de abordarlo, para asegurarte de que sigue actualizado y de que nadie más está preparando un PR duplicado en este momento!
Qué fastidioso sería trabajar para nada.

Para más ideas sobre cómo fomentar una comunidad en torno a tu paquete, quizá te guste la grabación y los materiales de nuestra pasada ["conversaciones con la comunidad" sobre el tema](/commcalls/apr2021-pkg-community/).


