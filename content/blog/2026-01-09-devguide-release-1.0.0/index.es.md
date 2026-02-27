---
title: 'rOpenSci Dev Guide 1.0.0: Trilingüe y mejorada'
author:
- Maëlle Salmon
- Mark Padgham
- Noam Ross
date: '2026-01-09'
slug: r_open_sci_dev_guide_1_0_0_trilingüe_y_mejorada
tags:
- Software Peer Review
- dev guide
- multilingual
description: 'Actualizaciones en la versión 1.0.0 del libro en línea "Paquetes rOpenSci: Desarrollo, mantenimiento y revisión por pares"'

socialImg: img/blog-images/2019-05-16-dev-guide-update/cover.png
output: ~
socialAlt: Portada de la guía de desarrollo de rOpenSci, que muestra una línea de producción de paquetes con pequeños
  seres humanos que debaten, examinan y promocionan paquetes
params:
  doi: 10.59350/5e9pe-sym61
---

Las orientaciones de rOpenSci para realizar la revisión de software por pares se recopilan en un [libro en línea](https://devguide.ropensci.org/booknews) ¡que sigue mejorando!
Este artículo resume las novedades de nuestra Guía de Desarrollo 1.0.0, incluyendo todos los cambios enumerados en la sección de [registro de cambios](https://devguide.ropensci.org/booknews.html).

## Ahora disponible en portugués.

¡Nuestra guía es ahora trilingüe ([inglés](https://devguide.ropensci.org/index.html), [Español](https://devguide.ropensci.org/es/index.es.html), [Portugués](https://devdevguide.netlify.app/pt/index.pt))!

Si quieres saber más sobre el impresionante proyecto de traducción al portugués, iniciado e impulsado por las personas lusófonas que integran nuestra comunidad, visita nuestro [artículo sobre el tema](/blog/2025/11/25/translation-devguide-pt/).

El proyecto de traducción y mantenimiento multilingüe en curso utiliza nuestro [paquete babelquarto](https://docs.ropensci.org/babelquarto/) para producir libros y sitios web Quarto multilingües.
Recientemente [revisado por pares](https://github.com/ropensci/software-review/issues/720) por Ella Kaye y João Granja-Correia.

Estamos trabajando activamente en nuestro [paquete babeldown](https://docs.ropensci.org/babeldown/) para crear y actualizar traducciones utilizando la API DeepL.

En la [guía de desarrollo](https://github.com/ropensci/dev_guide/pull/940/files) también se mencionan herramientas útiles para internacionalizar *paquetes*: [potools](https://michaelchirico.github.io/potools/) el paquete experimental [rhelpi18n](https://eliocamp.github.io/rhelpi18n/) y la selección de un [idioma](https://pkgdown.r-lib.org/articles/translations.html) para un sitio web pkgdown.

## Actualizaciones de políticas

Hemos realizado algunos cambios en las políticas y el alcance de la revisión por pares:

- Nueva categoría para [Herramientas internas y de revisión por pares de rOpenSci](https://devdevguide.netlify.app/es/softwarereview_policies.es.html#package-categories#:~:text=herramientas%20internas%20de%20rOpenSci).

- Actualizaciones de la [categoría de recuperación de datos](https://devdevguide.netlify.app/es/softwarereview_policies.es.html#package-categories#:~:text=recuperaci%C3%B3n%20de%20datos).

- Nueva regla explícita para [presentar un paquete a la vez](https://devdevguide.netlify.app/es/softwarereview_author.es.html#lifecycle#:~:text=no%20env%C3%ADes%20varios).

- Nuevo requisito para no llamar a la [rama por defecto "master"](https://devdevguide.netlify.app/es/pkg_building.es.html#version-control#:~:text=El%20nombre%20de%20rama%20por%20defecto%20no%20debe%20ser%20master).

- Eliminado el requisito de utilizar un `codemeta.json` ya obsoleto. Codemeta sigue siendo [utilizado y desarrollado activamente](https://codemeta.github.io/) pero hemos descubierto que es redundante con otros metadatos y Codemeta puede generar estos datos según sea necesario a partir de archivos DESCRIPTION.

## Guía para equipos editorial, guía para revisión y guía para autores y autoras de paquetes

Las guías que viven en nuestra guía :smile\
La [guía para el equipo editorial](https://devdevguide.netlify.app/es/softwarereview_editor.es.html) se ha reestructurado para seguir el flujo típico de los envíos,
y para explicar mejor cómo utilizar el [panel de revisión de software](https://dashboard.ropensci.org/).
Hemos añadido una sección sobre retos y hemos documentado cómo poner el sistema en "modo vacaciones" (lo que solemos hacer durante el periodo de las fiestas de fin de año).

Asimismo, mejoramos la organización y el contenido del [guía para autores y autoras](https://devdevguide.netlify.app/es/softwarereview_author.es.html) (gracias a [Alec Robitaille](https://github.com/robitalec) y [Joan Maspons](https://github.com/jmaspons)).

En la [guía de revisión](https://devdevguide.netlify.app/es/softwarereview_reviewer.es.html) eliminamos el enlace a la guía de revisión de Mozilla (una de nuestras primeras fuentes de diseño para nuestro proceso) porque ya no se mantiene y enumeramos los elementos explícitamente.

## Mejores prácticas de desarrollo de paquetes

En la guía de desarrollo de paquetes (¡otra guía dentro de la guía!), añadimos orientaciones para elegir [conjuntos de datos de ejemplo](https://devdevguide.netlify.app/es/pkg_building.es.html#example-datasets).
Además, agregamos una sección para [paquetes que incluyen software externo](https://devdevguide.netlify.app/es/pkg_building.es.html#external-software).
La [sección sobre licencias](https://devdevguide.netlify.app/es/pkg_building.es.html#licence) exige ahora explícitamente que se mencione a las personas autoras del código incluido.
Por último, pero no por ello menos importante, la [sección sobre dependencias](https://devdevguide.netlify.app/es/pkg_building.es.html#pkgdependencies) recomienda comprobar el estado de desarrollo de las dependencias.

Todo el libro ahora menciona el [CLI de Air](https://posit-dev.github.io/air/) cada vez que menciona el paquete styler, ya que Air puede considerarse su sucesor.

En el capítulo sobre la evolución de los paquetes, añadimos orientaciones sobre [la eliminación de *datos*](https://devdevguide.netlify.app/es/maintenance_evolution.es.html#data-deprecate) y se explican los [inconvenientes de renombrar un paquete muy utilizado](https://devdevguide.netlify.app/es/maintenance_evolution.es.html#renaming-packages).

## Guía de pruebas

Hemos actualizado nuestras [orientaciones sobre pruebas (test)](https://devdevguide.netlify.app/es/pkg_building.es.html#testing) con

- una [mención de tinytest](https://devdevguide.netlify.app/es/pkg_building.es.html#testing#:~:text=tinytest) como alternativa a testthat;
- una nota sobre el mantenimiento de las pruebas escritas con testthat [autocontenidas](https://devdevguide.netlify.app/es/pkg_building.es.html#testing#:~:text=autocontenidos).

## Documentación del paquete

Agradecimientos especiales a [Alasdair Warwick ](https://github.com/rmgpanw) hemos mejorado la documentación :wink: de nuestro sistema de creación de documentación, entre otras cosas:

- Más detalles sobre [aspectos técnicos](https://devdevguide.netlify.app/es/pkg_ci.es.html#rodocsci) de la creación de documentación para paquetes rOpenSci;
- Actualización de la [guía matemática](https://devdevguide.netlify.app/es/pkg_building.es.html#mathjax) tras la actualización de pkgdown.

También aclaramos diferentes estrategias para [documentar funciones internas](https://devdevguide.netlify.app/es/pkg_building.es.html#:~:text=nord) gracias a [Claudiu Forgaci](https://github.com/cforgaci).

## Metadatos e información del paquete

Hemos documentado más formas de reconocer a quienes colaboran:

- en el capítulo sobre [autoría](https://devdevguide.netlify.app/es/pkg_building.es.html#authorship) agregando el [ID del Registro de Organismos de Investigación (ROR)](/blog/2025/05/09/ror/);

- en el capítulo sobre [colaboración](https://devdevguide.netlify.app/es/maintenance_collaboration.es.html#attributions) con el [paquete allcontributors](https://docs.ropensci.org/allcontributors/).

## Conclusión

Este es un resumen de los cambios de la última versión de nuestro libro ["Paquetes rOpenSci: Desarrollo, mantenimiento y revisión por pares"](https://devguide.ropensci.org).
Agradecemos todas las contribuciones que han dado lugar a esta publicación.
Ya estamos trabajando en la próxima versión.
No dudes en ayudarnos a darle forma abriendo un [_issue_](https://github.com/ropensci/dev_guide/issues) ¡!


