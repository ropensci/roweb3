---
title: Reconocimiento más allá de los autores de entradas de blog
author:
- Maëlle Salmon
- Yanina Bellini Saibene
editor: Steffi LaZerte
date: '2025-10-14'
slug: reconocimiento_más_allá_de_los_autores_de_entradas_de_blog
description: Cómo reconocemos los distintos tipos de contribuciones a nuestro blog
output: hugodown::md_document
tags:
- metadata
- tech notes
- community manager tools
params:
  doi: 10.59350/510pg-zzf58
---

Nuestra propia guía de desarrollo [dice](https://devguide.ropensci.org/maintenance_collaboration.html#attributions)

> Sé generoso con las atribuciones

Reconocer las diversas formas de [contribuciones](https://contributing.ropensci.org/) a nuestra misión es muy importante para nosotros:
nos gusta dar las gracias [a los revisores de paquetes](/blog/2018/03/16/thanking-reviewers-in-metadata/) y en general [todos los contribuidores de paquetes](/blog/2024/11/26/allcontributors/), [tanto organizaciones como particulares](/blog/2025/05/09/ror/).

Recientemente hemos ampliado nuestros esfuerzos para reconocer las diferentes funciones que existen al publicar una entrada en un blog.

## Nuevos roles en el blog: editores, traductores, entrevistados

Los metadatos de las entradas de nuestro blog ahora incluyen:

- quién editó la entrada del blog
  - por ejemplo, [Steffi LaZerte ha editado una entrada reciente](/blog/2025/09/18/markdown-programmatic-parsing/).
- que tradujo la entrada del blog
  - por ejemplo, [Yanina Bellini Saibene tradujo un post al español](/es/blog/2025/06/23/edicion-multilingue-preguntas-frecuentes/) y [Maëlle Salmon lo tradujo al francés](fr/blog/2025/06/23/publication-multilingue-faq/).
- que fue *entrevistado* para un blog
  - por ejemplo, [Athanasia Mo Mowinckel fue entrevistada en la serie Estrellas del Universo R](/blog/2023/03/30/r-universe-stars-3-en/).

La "página de autor" de los colaboradores enumera sus diversas contribuciones al contenido en el idioma actual (las autorías aparecen en primer lugar, seguidas de otros papeles):

- [Página de autor de Steffi LaZerte](/author/steffi-lazerte)
- [Página de la autora Yanina Bellini Saibene en español](/es/author/yanina-bellini-saibene)
- [Página de autor de Athanasia Mo Mowinckel](/author/athanasia-mo-mowinckel/)

Para conseguir esta nueva funcionalidad, hemos

- modificó los diseños de Hugo (plantillas) para [entradas de blog](https://github.com/ropensci/roweb3/blob/main/themes/ropensci/layouts/partials/blogs/blog-single.html) y [páginas de autor](https://github.com/ropensci/roweb3/blob/main/themes/ropensci/layouts/author/list.html).
- documentó los nuevos campos de metadatos correspondientes en nuestro [guía del blog](https://blogguide.ropensci.org/editorchecklistany.html).

## Conclusión

Estamos encantados de poder reconocer más contribuciones a nuestro blog.

Esta diferenciación de funciones también nos permite analizar con mayor detalle cómo se producen las colaboraciones relacionadas con el blog entre los miembros de nuestra comunidad. Con esta información, podemos explorar distintas formas de fomentar la participación de los interesados, incluida la mejor manera de proporcionar el apoyo necesario para una participación satisfactoria.

También esperamos que nuestros hallazgos sean útiles para otras comunidades a la hora de identificar distintos tipos de contribuciones y formas de dar crédito.

El trabajo futuro incluirá que más de esas contribuciones aparezcan en nuestro feed en [Rogue Scholar](https://rogue-scholar.org/communities/ropensci/records?q=&l=list&p=1&s=10&sort=newest).


