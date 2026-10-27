---
title: Reconociendo contribuciones más allá de la autoría en los artículos de blog
author:
- Maëlle Salmon
- Yanina Bellini Saibene
translator: Yanina Bellini Saibene
editor: Steffi LaZerte
date: '2025-10-14'
slug: reconocimiento_blog
description: Cómo reconocemos los distintos tipos de contribuciones a nuestro blog
output: hugodown::md_document
tags:
- metadatos
- notas técnicas
- herramienta de gestión de comunidades
params:
  doi: 10.59350/19msb-yaw02
---

Nuestra propia guía de desarrollo [dice](https://devguide.ropensci.org/es/maintenance_collaboration.es.html#attributions)

> Atribuye con generosidad

Reconocer las diversas formas de [contribuciones](https://contributing.ropensci.org/) a nuestra misión es muy importante para rOpenSci:
nos gusta dar las gracias [a quienes revisan paquetes](/es/blog/2018/03/16/thanking-reviewers-in-metadata/) y en general [a todas las personas](/blog/2024/11/26/allcontributors/) y [organizaciones que contribuyen a los paquetes](/blog/2025/05/09/ror/).

Recientemente hemos ampliado nuestros esfuerzos para reconocer las diferentes funciones que existen al publicar un artículo en nuestro blog.

## Nuevos roles en el blog: personas que editan, traducen y son entrevistadas

Los metadatos de los artículos en nuestro blog ahora incluyen:

- quién editó el artículo del blog
  - por ejemplo, [Steffi LaZerte ha editado un artículo reciente](/blog/2025/09/18/markdown-programmatic-parsing/).
- quien tradujo la entrada del blog
  - por ejemplo, [Yanina Bellini Saibene tradujo un post al español](/es/blog/2025/06/23/edicion-multilingue-preguntas-frecuentes/) y [Maëlle Salmon lo tradujo al francés](fr/blog/2025/06/23/publication-multilingue-faq/).
- que fue parte de una *entrevista* para un blog
  - por ejemplo, [Athanasia Mo Mowinckel fue entrevistada en la serie Estrellas del Universo R](/es/blog/2023/03/30/r-universe-stars-3-es/).

La "página de autor-a" de las personas que colaboran a nuestro blog enumera sus diversas contribuciones al contenido en el idioma actual (las autorías aparecen en primer lugar, seguidas de los otros roles):

- [Página de autora de Steffi LaZerte](/author/steffi-lazerte)
- [Página de autora de Yanina Bellini Saibene en español](/es/author/yanina-bellini-saibene)
- [Página de autora de Athanasia Mo Mowinckel](/author/athanasia-mo-mowinckel/)

Para conseguir esta nueva funcionalidad, hemos

- modificado los diseños de Hugo (plantillas) para [artículos de blog](https://github.com/ropensci/roweb3/blob/main/themes/ropensci/layouts/partials/blogs/blog-single.html) y [páginas de autor-a](https://github.com/ropensci/roweb3/blob/main/themes/ropensci/layouts/author/list.html).
- documentado los nuevos campos de metadatos correspondientes en nuestra [guía del blog](https://blogguide.ropensci.org/editorchecklistany.html).

## Conclusión

Estamos muy felices de poder reconocer más contribuciones a nuestro blog.

Esta diferenciación de funciones también nos permite analizar con mayor detalle cómo se producen las colaboraciones relacionadas con el blog entre las personas que forman parte de nuestra comunidad. Con esta información, podemos explorar distintas formas de fomentar la participación de las personas interesadas, incluyendo la mejor manera de proporcionar el apoyo necesario para una participación satisfactoria.

También esperamos que nuestros hallazgos sean útiles para otras comunidades a la hora de identificar distintos tipos de contribuciones y formas de dar crédito.

El nuestros planes futuros se encuentra trabajar para incluir más de esas contribuciones en nuestro feed en [Rogue Scholar](https://rogue-scholar.org/communities/ropensci/records?q=&l=list&p=1&s=10&sort=newest).


