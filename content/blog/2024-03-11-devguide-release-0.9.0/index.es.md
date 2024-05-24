---
title: 'rOpenSci Dev Guide 0.9.0: ¡Ahora multilingüe! Y mejor'
author:
- Maëlle Salmon
- Mark Padgham
- Noam Ross
editor:
- Yanina Bellini Saibene
date: '2024-03-11'
slug: r_open_sci_dev_guide_0_9_0_ahora_multilingüe_y_mejor
tags:
- Software Peer Review
- dev guide
- multilingual
description: 'Actualizaciones en la versión 0.9.0 del libro en línea ''Paquetes rOpenSci:
  Desarrollo, mantenimiento y revisión por pares'''
twitterImg: img/blog-images/2019-05-16-dev-guide-update/cover.png
output: ~
twitterAlt: tapa de la guia de desarrollo de rOpenSci que muestra una line ade produccion de paquetes con personas
  discutiendo, examinando y promoviendo paquets. 
---

Las orientaciones de la Revisión por Pares de Software de rOpenSci se compilan en un [libro en línea](https://devguide.ropensci.org/booknews) que sigue mejorando.
Esta articulo de blog resume las novedades de nuestra Guía de Desarrollo 0.9.0, con todos los cambios enumerados en la sección [registro de cambios](https://devguide.ropensci.org/booknews.html).

## ¡Ahora disponible en español!

Nuestra guía es ahora bilingüe (inglés y [español](https://devguide.ropensci.org/es/index.es.html)), gracias al trabajo de [Yanina Bellini Saibene](/author/yanina-bellini-saibene/), [Elio Campitelli](/author/elio-campitelli/) y [Pao Corrales](/author/pao-corrales/) y gracias a [el apoyo de la Iniciativa Chan Zuckerberg, NumFOCUS y el Consorcio R](/blog/2023/01/12/multilingual-publishing-en/).
[Lee la guía en inglés](https://devguide.ropensci.org/es/index.es.html).

Puedes obtener más información sobre nuestro proyecto de publicación multilingüe en los recursos y video de una [reunión de la comunidad](/commcalls/nov2023-multilenguaje/) reciente.
Entre las herramientas útiles producidas por el proyecto se incluyen la [guía de traducción](https://translationguide.ropensci.org/es/index.es.html) el [paquete babelquarto](https://docs.ropensci.org/babelquarto/) para construir libros o sitios web Quarto multilingües, y el [paquete babeldown](https://docs.ropensci.org/babeldown/) para crear y actualizar traducciones utilizando la API de DeepL.

Ahora nuestra guía también se traduce a [portugués](https://ropensci.org/blog/2023/10/20/news-october-2023/#help-us-translate-our-dev-guide-to-portuguese) gracias al esfuerzo de personas voluntarias de nuestra comunidad.
¡Estamos muy agradecidos por su trabajo!

## Actualizaciones de reglas

Hemos actualizado la sección [Objetivos y ámbito de aplicación](https://devguide.ropensci.org/es/softwarereview_policies.es#package-categories) para incluir los paquetes de traducción, eliminar las categorías experimentales de tratamiento de textos y proporcionar aclaraciones sobre paquetes que consumen APIs.

En nuestra [guía para personas que desarrollan paquetes](https://devguide.ropensci.org/es/softwarereview_author.es) ahora nos referimos correctamente a la etapa del ciclo de vida "Estable" como aquella en la que se puede enviar un paquete, gracias a una contribución del usuario de GitHub [bart1](https://github.com/bart1).

## Hoja de trucos para las personas que mantienen paquetes de rOpenSci

Hemos creado una Hoja de trucos para las [personas que mantienen paquetes de rOpenSci](https://devguide.ropensci.org/es/maintenance_cheatsheet.es) sobre cómo pedir ayuda sobre distintos temas.

## Mejoras en la guía de desarrollo de paquetes

El capítulo de la guía de desarrollo de paquetes ha recibido varias mejoras.

Hemos actualizado los [consejos sobre roxygen2](https://devguide.ropensci.org/es/pkg_building.es#roxygen-2-use) enlazando principalmente con el sitio web de [roxygen2](https://roxygen2.r-lib.org/).
Los consejos también incluyen una explicación de cómo documentar un argumento por defecto, gracias a [Hugo Gruson](https://github.com/bisaloo).
También hemos mejorado nuestra redacción para hacer hincapié en que el uso de roxygen2 sigue implicando esfuerzos manuales (gracias a [Vincent van Hees](https://github.com/vincentvanhees)).

Hemos añadido [consejos para paquetes que consumen APIs web](https://devguide.ropensci.org/es/pkg_building.es#paquetes-que-envuelven-recursos-web-clientes-api) basados en la entrada del blog ["Por qué deberías (o no deberías) construir un cliente API"](/blog/2022/06/16/publicize-api-client-yes-no/).

Nuestras instrucciones sobre [Ficheros de CITA](https://devguide.ropensci.org/es/pkg_building.es#citation-file) reflejan ahora las nuevas políticas de CRAN.

Nuestra [lista de paquetes de ayuda a las pruebas](https://devguide.ropensci.org/es/pkg_building.es#testing) incluye ahora shinytest2, que prevemos que acabará sustituyendo a shinytest.

## Mejoras en la guía de GitHub y CI

Nuestro capítulo sobre colaboración incluye más enlaces a [recursos sobre, por ejemplo, revisiones de PR y flujos de trabajo Git](https://devguide.ropensci.org/es/maintenance_collaboration.es#git-workflow) gracias a [Mauro Lepore](https://github.com/maurolepore).
Ese mismo capítulo menciona ahora [Discusiones en GitHub](https://devguide.ropensci.org/es/maintenance_collaboration.es#communication-with-users) como forma de comunicarse las personas que usan el paquete y más detalles sobre [plantillas de _issues_](https://devguide.ropensci.org/es/maintenance_collaboration.es#issue-templates).

[Edward Wallace](https://github.com/ewallace) añadió una explicación de [la integración continua (CI) en general](https://devguide.ropensci.org/es/pkg_ci.es#what-is-continuous-integration-ci) y de la [codecov en particular](https://devguide.ropensci.org/es/pkg_ci.es#coverage) a nuestra guía CI.

## Mejor documentación del proceso

Ahora destacamos los valores de nuestro sistema y el tono que nos esforzamos por conseguir en más lugares: en la parte superior de la guía para quienes revisan, en la plantilla para las solicitudes de revisión y en el mensaje que nuestro bot publica después de que quienes editan [asignan las personas que revisaran](https://github.com/ropensci-org/buffy/pull/77/files).

> **La comunidad de rOpenSci es nuestro mejor activo.
> Nuestro objetivo es que las revisiones sean abiertas, no conflictivas y centradas en mejorar la calidad del software.
> ¡Sé amable!
> Consulta nuestra guía de revisión y el [código de conducta](https://ropensci.org/code-of-conduct/) para más información.**

[Alexander Fischer](https://github.com/s3alfisc/) añadido una explicación sobre el envío de paquetes a través de ramas no predeterminadas a la página [guía para autores y autoras](https://devguide.ropensci.org/es/softwarereview_author.es) y a la [guía para las personas que revisan](https://devguide.ropensci.org/es/softwarereview_reviewer.es#general-guidelines).

Nuestra guía para revisar explica ahora claramente cómo [puedes ofrecerse voluntariamente para revisar, en general y para una presentación concreta](https://devguide.ropensci.org/es/softwarereview_reviewer.es#volunteering-as-a-reviewer).

## Conclusión

En este articulo hemos resumido los cambios incorporados a nuestro libro ["Paquetes rOpenSci: Desarrollo, mantenimiento y revisión por pares"](https://devguide.ropensci.org/es) en los últimos meses.
Agradecemos todas las contribuciones que han dado forma a esta publicación.
Ya estamos trabajando en la próxima versión, que incluirá una traducción al portugués gracias al esfuerzo y trabajo voluntario de personas de nuestra  comunidad.


