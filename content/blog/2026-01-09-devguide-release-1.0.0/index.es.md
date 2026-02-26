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
description: 'Actualizaciones en la versión 1.0.0 del libro en línea ''rOpenSci Packages:
  Development, Maintenance, and Peer Review'''
twitterImg: img/blog-images/2019-05-16-dev-guide-update/cover.png
output: ~
twitterAlt: cover of rOpenSci dev guide, showing a package production line with small
  humans discussing, examining and promoting packages
params:
  doi: 10.59350/pthhe-b9v52
---

Las orientaciones de rOpenSci Software Peer Review se recogen en un [libro en línea](https://devguide.ropensci.org/booknews) ¡que sigue mejorando!
Esta entrada del blog resume las novedades de nuestra Guía del desarrollador 1.0.0, con todos los cambios enumerados en la sección [registro de cambios](https://devguide.ropensci.org/booknews.html).

## Ahora disponible en portugués.

Nuestra guía es ahora trilingüe ([inglés](https://devguide.ropensci.org/index.html), [Español](https://devguide.ropensci.org/es/index.es.html), [Portugués](https://devdevguide.netlify.app/pt/index.pt) ¡)!

Obtenga más información sobre el impresionante proyecto de traducción al portugués, iniciado e impulsado por nuestros miembros lusófonos en nuestro [entrada de blog](/blog/2025/11/25/translation-devguide-pt/).

El proyecto de traducción y mantenimiento multilingüe en curso utiliza nuestro [paquete babelquarto](https://docs.ropensci.org/babelquarto/) para producir libros y sitios web Quarto multilingües.
Recientemente [revisado por pares](https://github.com/ropensci/software-review/issues/720) por Ella Kaye y João Granja-Correia.

Estamos trabajando activamente en nuestro [paquete babeldown](https://docs.ropensci.org/babeldown/) para crear y actualizar traducciones utilizando la API DeepL.

En el paquete [guía de desarrollo](https://github.com/ropensci/dev_guide/pull/940/files) herramientas útiles para la internacionalización *paquetes* se mencionan: [potools](https://michaelchirico.github.io/potools/) el experimental [rhelpi18n](https://eliocamp.github.io/rhelpi18n/) seleccionando un [idioma](https://pkgdown.r-lib.org/articles/translations.html) para un sitio web pkgdown.

## Actualizaciones de la política

Hemos realizado algunos cambios en las políticas y el alcance de rOpenSci:

- Nueva categoría para [Herramientas internas y de revisión por pares de rOpenSci](https://devdevguide.netlify.app/es/softwarereview_policies.es.html#package-categories#:~:text=rOpenSci%20internal%20tools).

- Actualizaciones de la [categoría de recuperación de datos](https://devdevguide.netlify.app/es/softwarereview_policies.es.html#package-categories#:~:text=data%20retrieval).

- Nueva regla explícita para [presentar un paquete a la vez](https://devdevguide.netlify.app/es/softwarereview_author.es.html#lifecycle#:~:text=do%20not%20submit%20several).

- Nuevo requisito para no llamar al [rama por defecto "master"](https://devdevguide.netlify.app/es/pkg_building.es.html#version-control#:~:text=not%20be%20master).

- Eliminado el requisito de utilizar un `codemeta.json` ya obsoleto. Codemeta sigue siendo [utilizado y desarrollado activamente](https://codemeta.github.io/) pero hemos descubierto que es redundante con otros metadatos y Codemeta puede generar estos datos según sea necesario a partir de archivos DESCRIPTION.

## Guía del editor, Guía del autor y Guía del revisor

Las guías que viven en nuestra guía :smile\_cat:

Todo el [guía del editor](https://devdevguide.netlify.app/es/softwarereview_editor.es.html) se ha reestructurado para seguir el flujo típico de los envíos,
y para explicar mejor cómo utilizar el [panel de revisión del software](https://dashboard.ropensci.org/).
Hemos añadido una sección sobre retos y hemos documentado cómo poner el sistema en vacaciones (lo que solemos hacer durante el periodo de año nuevo).

Asimismo, mejoramos la organización y el contenido del [guía del autor](https://devdevguide.netlify.app/es/softwarereview_author.es.html) (gracias a [Alec Robitaille](https://github.com/robitalec) y [Joan Maspons](https://github.com/jmaspons)).

En el [guía del revisor](https://devdevguide.netlify.app/es/softwarereview_reviewer.es.html) hemos eliminado el enlace externo a la guía de revisión de Mozilla, que ya no se mantiene (una de nuestras primeras fuentes de diseño para la revisión por pares), en favor de elementos explícitamente enumerados.

## Mejores prácticas de empaquetado

En la guía de embalaje (¡otra guía dentro de la guía!), hemos añadido orientaciones para elegir [conjuntos de datos de ejemplo](https://devdevguide.netlify.app/es/pkg_building.es.html#example-datasets).
Además, hemos creado una sección para [Paquetes que incluyen software externo](https://devdevguide.netlify.app/es/pkg_building.es.html#external-software).
El sitio [sección de licencias](https://devdevguide.netlify.app/es/pkg_building.es.html#licence) exige ahora explícitamente que se mencione a los autores del código incluido.
Por último, pero no por ello menos importante, la sección [sección sobre dependencias](https://devdevguide.netlify.app/es/pkg_building.es.html#pkgdependencies) recomienda comprobar el estado de desarrollo de las dependencias.

Todo el libro menciona ahora el [CLI aérea](https://posit-dev.github.io/air/) cada vez que menciona el paquete styler, ya que Air puede considerarse el sucesor de styler.

En el capítulo sobre la evolución de los paquetes, hemos añadido orientaciones sobre [la eliminación de *datos*](https://devdevguide.netlify.app/es/maintenance_evolution.es.html#data-deprecate) y explicó la [inconvenientes de renombrar un paquete muy utilizado](https://devdevguide.netlify.app/es/maintenance_evolution.es.html#renaming-packages).

## Guía de pruebas

Hemos actualizado nuestro [orientaciones sobre pruebas](https://devdevguide.netlify.app/es/pkg_building.es.html#testing) con

- a [mención de tinytest](https://devdevguide.netlify.app/es/pkg_building.es.html#testing#:~:text=tinytest) como alternativa a testthat;
- una nota sobre el mantenimiento de las pruebas escritas con testthat [autocontenidas](https://devdevguide.netlify.app/es/pkg_building.es.html#testing#:~:text=self-contained).

## Documentación del paquete

Agradecimientos especiales a [Alasdair Warwick ](https://github.com/rmgpanw) hemos mejorado la documentación :wink: de nuestro sistema de creación de documentación, entre otras cosas:

- Más detalles sobre el [aspectos técnicos](https://devdevguide.netlify.app/es/pkg_ci.es.html#rodocsci) de la creación de documentación para paquetes rOpenSci;
- Actualizado [guía matemática](https://devdevguide.netlify.app/es/pkg_building.es.html#mathjax) tras la actualización de pkgdown.

También aclaramos diferentes estrategias para [documentar funciones internas](https://devdevguide.netlify.app/es/pkg_building.es.html#:~:text=nord) gracias a [Claudiu Forgaci](https://github.com/cforgaci).

## Metadatos e información del paquete

Hemos documentado más formas de reconocer a los colaboradores:

- en el [autoría](https://devdevguide.netlify.app/es/pkg_building.es.html#authorship) de la guía de envasado, con [ID del Registro de Organismos de Investigación (ROR)](/blog/2025/05/09/ror/);

- en el capítulo sobre [colaboración](https://devdevguide.netlify.app/es/maintenance_collaboration.es.html#attributions) la [paquete R allcontributors](https://docs.ropensci.org/allcontributors/).

## Conclusión

En este post resumimos los cambios de la última versión de nuestro libro ["Paquetes rOpenSci: Desarrollo, mantenimiento y revisión por pares"](https://devguide.ropensci.org).
Agradecemos todas las contribuciones que han dado lugar a esta publicación.
Ya estamos trabajando en la próxima versión.
No dudes en ayudarnos a darle forma abriendo un [cuestión](https://github.com/ropensci/dev_guide/issues) ¡!


