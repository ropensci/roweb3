---
title: 'rOpenSci Dev Guide 0.9.0: ¡Ahora multilingüe! Y mejor'
author:
- Maëlle Salmon
- Mark Padgham
- Noam Ross
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
twitterAlt: cover of rOpenSci dev guide, showing a package production line with small
  humans discussing, examining and promoting packages
---

Las orientaciones de la Revisión por Pares de Software rOpenSci se recogen en un [libro en línea](https://devdevguide.netlify.app/booknews) que sigue mejorando.
Esta entrada de blog resume las novedades de nuestra Guía de Desarro 0.9.0, con todos los cambios enumerados en la sección [registro de cambios](https://devguide.ropensci.org/booknews.html).

## ¡Ahora disponible en español!

Nuestra guía es ahora bilingüe (inglés y [español](https://devdevguide.netlify.app/es/index.es.html)), gracias al trabajo de [Yanina Bellini Saibene](/author/yanina-bellini-saibene/), [Elio Campitelli](/author/elio-campitelli/) y [Pao Corrales](/author/pao-corrales/) y gracias a [el apoyo de la Iniciativa Chan Zuckerberg, NumFOCUS y el Consorcio R](/blog/2023/01/12/multilingual-publishing-en/).
[Lee la guía en inglés](https://devdevguide.netlify.app/es/index.es.html).

Puedes obtener más información sobre nuestro proyecto de publicación multilingüe en los materiales y la grabación de una reciente [convocatoria comunitaria](/commcalls/nov2023-multilenguaje/).
Entre las herramientas útiles producidas por el proyecto se incluyen [guía de traducción](https://translationguide.ropensci.org/es/index.es.html) la [paquete babelquarto](https://docs.ropensci.org/babelquarto/) para representar libros o sitios web Quarto multilingües, y el paquete [paquete babeldown](https://docs.ropensci.org/babeldown/) para crear y actualizar traducciones utilizando la API DeepL.

Ahora nuestra guía también se traduce a [portugués](https://ropensci.org/blog/2023/10/20/news-october-2023/#help-us-translate-our-dev-guide-to-portuguese) gracias a los voluntarios.
¡Estamos muy agradecidos por su trabajo!

## Actualizaciones políticas

Hemos actualizado [Objetivos y ámbito de aplicación](https://devdevguide.netlify.app/es/softwarereview_policies.es#package-categories) para incluir los paquetes de traducción, eliminar las categorías experimentales de tratamiento de textos y proporcionar aclaraciones sobre las envolturas de API.

En nuestro [guía para autores](https://devdevguide.netlify.app/es/softwarereview_author.es) ahora nos referimos correctamente a la etapa del ciclo de vida "Estable" como aquella en la que se puede enviar un paquete, gracias a una contribución del usuario de GitHub [bart1](https://github.com/bart1).

## Hoja de trucos del mantenedor del paquete rOpenSci

Hemos creado una [para los mantenedores de paquetes rOpenSci](https://devdevguide.netlify.app/es/maintenance_cheatsheet.es) sobre cómo pedir ayuda sobre distintos temas.

## Mejoras en la guía de envasado

El capítulo de la guía de envases ha recibido varias mejoras.

Hemos actualizado [consejos sobre roxygen2](https://devdevguide.netlify.app/es/pkg_building.es#roxygen-2-use) enlazando principalmente con el [roxygen2](https://roxygen2.r-lib.org/).
Los consejos también incluyen una explicación de cómo documentar un argumento por defecto, gracias a [Hugo Gruson](https://github.com/bisaloo).
También hemos mejorado nuestra redacción para hacer hincapié en que el uso de roxygen2 sigue implicando esfuerzos manuales (gracias a [Vincent van Hees](https://github.com/vincentvanhees)).

Hemos añadido [consejos para paquetes que envuelven APIs web](https://devdevguide.netlify.app/es/pkg_building.es#paquetes-que-envuelven-recursos-web-clientes-api) basados en la entrada del blog ["Por qué deberías (o no deberías) construir un cliente API"](/blog/2022/06/16/publicize-api-client-yes-no/).

Nuestras instrucciones sobre [Ficheros de CITACIÓN](https://devdevguide.netlify.app/es/pkg_building.es#citation-file) reflejan ahora las nuevas políticas de CRAN.

Nuestro [lista de paquetes que ayudan en las pruebas](https://devdevguide.netlify.app/es/pkg_building.es#testing) incluye ahora shinytest2 cerca de shinytest, ya que shinytest2 se desarrolla activamente.

## Mejoras en la guía de GitHub y CI

Nuestra guía de colaboración incluye más enlaces a [recursos sobre, por ejemplo, revisiones de RP y flujos de trabajo Git](https://devdevguide.netlify.app/es/maintenance_collaboration.es#git-workflow) gracias a [Mauro Lepore](https://github.com/maurolepore).
Ese mismo capítulo menciona ahora [Discusiones en GitHub](https://devdevguide.netlify.app/es/maintenance_collaboration.es#communication-with-users) como forma de comunicarse con los usuarios, y más detalles sobre [plantillas de temas](https://devdevguide.netlify.app/es/maintenance_collaboration.es#issue-templates).

[Edward Wallace](https://github.com/ewallace) añadió una explicación de [la integración continua (IC) en general](https://devdevguide.netlify.app/es/pkg_ci.es#what-is-continuous-integration-ci) y de la [codecov en particular](https://devdevguide.netlify.app/es/pkg_ci.es#coverage) a nuestra guía CI.

## Mejor documentación del proceso

Ahora destacamos los valores (el tono) de nuestro sistema en más lugares: en la parte superior de la guía del revisor, en la plantilla para las solicitudes de revisión y en el mensaje que nuestro bot publica después de que los editores [asignan un reviso](https://github.com/ropensci-org/buffy/pull/77/files).

> **La comunidad de rOpenSci es nuestro mejor activo.
> Nuestro objetivo es que las revisiones sean abiertas, no conflictivas y centradas en mejorar la calidad del software.
> ¡Sé amable!
> Consulta nuestra guía de revisión y el [código de conducta](https://ropensci.org/code-of-conduct/) para más información.**

[Alexander Fischer](https://github.com/s3alfisc/) añadido una explicación sobre el envío de paquetes a través de ramas no predeterminadas a la página [guía para autores](https://devdevguide.netlify.app/es/softwarereview_author.es) y a la [guía para revisores](https://devdevguide.netlify.app/es/softwarereview_reviewer.es#general-guidelines).

Nuestra guía para revisores explica ahora claramente cómo [ofrecerse voluntario como revisor, en general y para una presentación concreta](https://devdevguide.netlify.app/es/softwarereview_reviewer.es#volunteering-as-a-reviewer).

## Conclusión

En este post hemos resumido los cambios incorporados a nuestro libro ["Paquetes rOpenSci: Desarrollo, mantenimiento y revisión por pares"](https://devguide.ropensci.org/es) en los últimos meses.
Agradecemos todas las contribuciones que han dado forma a esta publicación.
Ya estamos trabajando en la próxima versión, que incluirá una traducción al portugués gracias a los colaboradores de la comunidad.


