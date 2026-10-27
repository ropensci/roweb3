---
title: Consejos de comunicación para tu proyecto de código abierto
author:
- Maëlle Salmon
editor:
- Mark Padgham
date: '2024-05-17'
translator: Juan Cruz Enrique
slug: communication-tips-oss-project
output: hugodown::md_document
tags:
- comunidad
params:
  doi: 10.59350/vm4tg-kwr90
---

¿Mantienes un proyecto de código abierto, como un paquete R o una colección de ellos, te preguntas cómo utilizar mejor los distintos canales de comunicación para informar a tu comunidad de usuarios y comprometerte con ella?
Pues hemos hecho una lista con consejos.
Algunos de ellos son obligatorios en nuestra opinión, otros son simplemente agradables de tener.

## Obligatorios: Tener buenas notas de publicación

Puesto que estás desarrollando un producto, el primer acto de comunicación es escribir notas de publicación informativas.
Las notas de publicación suelen describir actualizaciones y cambios, normalmente en un archivo llamado `NEWS.md`. Estos archivos suelen tener una cabecera por versión, con subcabeceras utilizadas para agrupar los cambios en categorías significativas.

Entre los recursos para empezar con las notas de publicación se incluyen:

- [`usethis::use_news_md()`](https://usethis.r-lib.org/reference/use_news_md.html) crear el `NEWS.md` archivo.
- [el capítulo sobre archivos NEWS de la guía de estilo tidyverse](https://style.tidyverse.org/news.html)

Puedes automatizar parcialmente las notas de publicación a partir de los mensajes de confirmación utilizando, por ejemplo, la función [paquete fledge](https://fledge.cynkra.com/dev/) (bastante potente si se combina con el paquete [Convención de commits convencionales](https://www.conventionalcommits.org/en/v1.0.0/)).

Las notas de publicación pueden informar directamente a los usuarios, que pueden leerlas

- desde GitHub viendo [Los eventos de publicación](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github/setting-up-notifications/configuring-notifications#configuring-your-watch-settings-for-an-individual-repository) del repositorio;
- del sitio web de documentación, en el que se transforma pkgdown `NEWS.md` los archivos en una página llamada Changelog.

También serán útiles como materia prima para otras notas de publicación, como entradas de blog sobre las versiones.

## Son necesarios: Gestores de incidencias

No sólo tus repositorios deben tener rastreadores de incidencias/tickets, sino que también debes asegurarte de que suficientes miembros del equipo los vigilan o revisan los nuevos tickets o comentarios al menos de vez en cuando.
Mantener y responder a las incidencias es una parte importante del mantenimiento de una comunidad de usuarios.

El uso de incidencias en tu proyecto puede anunciarse a través de una incidencia anclada; incluso podrías [limitar temporalmente las interacciones](https://docs.github.com/en/communities/moderating-comments-and-conversations/limiting-interactions-in-your-repository).
Estas condiciones y enlaces son para GitHub, pero existen ideas y características similares para otras plataformas de código.

## Necesario: Perfiles de proyecto pulidos

Todo software de código abierto tiene un perfil, potencialmente repartido por muchos lugares, como organizaciones de GitHub o cuentas de Mastodon. Un logotipo puede ser un identificador clave de tu perfil, y debe aparecer de forma coherente en todos tus perfiles. También es importante incluir descripciones informativas, y verificar todas las URL ([docs para GitHub](https://docs.github.com/en/organizations/managing-organization-settings/verifying-or-approving-a-domain-for-your-organization), [docs para Mastodon](https://joinmastodon.org/verification)).

Para una organización de GitHub, puedes preguntar a sus miembros si desean que su [organización GitHub sea pública](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-your-membership-in-organizations/publicizing-or-hiding-organization-membership) lo que podría dar una imagen más colaborativa incluso antes de que nadie se sumerja en la actividad de commit.

Pulir el perfil no tiene por qué llevar mucho tiempo, y puede mejorar la imagen de tu proyecto.

## Es necesario: Asegúrate de gestionar el acceso de forma inteligente

Para cualquier plataforma que requiera inicios de sesión o algún tipo de derechos de acceso, asegúrate de que todos los que necesiten acceso lo tengan, y de que se elimine el acceso a cualquiera que ya no lo necesite.

Quizá te convenga buscar sistemas de gestión de contraseñas como [1Contraseña](https://1password.com/).

Como la composición de un equipo de desarrollo cambia con el tiempo, puede ser conveniente revisar el acceso con regularidad, y hacer que esa revisión forme parte de algún tipo de lista de control de incorporación/desincorporación.

## Obligatorio: disponer de un espacio para discusiones privadas

Aunque el desarrollo de código abierto exige que ocurran muchas cosas [en abierto](https://producingoss.com/en/producingoss.html#avoid-private-discussions) también es importante cultivar un espacio seguro donde los miembros del equipo puedan desahogarse, discutir asuntos delicados o compartir fotos de sus mascotas.
Esto puede adoptar formas como un espacio de trabajo Slack, Discord, Matrix o un servidor Element, u opciones vanguardistas como [plano](https://try.flat.app) o [CQ2](https://cq2.co/).

Lo ideal sería que el espacio te perteneciera, a menos que puedas confiar en un socio externo (¿un financiador? ¿una cohalición mayor de proyectos?) para que te lo siga proporcionando.

## Disponer de un foro

Para un proyecto pequeño, los gestores de incidencias pueden ser todo lo que necesitas para gestionar los informes de errores, las peticiones de características y las preguntas y respuestas generales.
Sin embargo, los proyectos más grandes podrían beneficiarse de la creación y gestión de un foro de debate dedicado.

Puedes utilizar un [Discurso](https://www.discourse.org/) o [Debates en GitHub](https://docs.github.com/fr/discussions).

## Tener un blog con un canal RSS

En comparación con las notas de la versión, las entradas del blog sobre las nuevas versiones ofrecen más narrativa, por lo que pueden ser más fáciles de leer.
También pueden remitir a los usuarios a las notas de la versión para obtener más información.

El blog de un proyecto de código abierto también puede contener otro tipo de publicaciones, como un análisis en profundidad de una función, el anuncio de financiación o la solicitud de contribuciones o ayudas económicas.

Cuando elijas un creador de sitios web, intenta elegir uno que sea gratuito y que resulte familiar para el equipo de tu proyecto o lo suficientemente fácil para familiarizarse con él.
Las entradas de blog basadas en Markdown son más fáciles de escribir a partir de notas de publicación.
Asegúrate también de que publicar una nueva entrada de blog no sea un proceso complicado de 100 pasos, o nadie querrá escribir una.
Puedes optar por utilizar [GitHub para un proceso de revisión y previsualización de las entradas del blog](https://blogguide.ropensci.org/).

Si creas un blog, asegúrate de crear también un canal RSS para él.
En la mayoría de los generadores de sitios web estáticos, esto viene por defecto o está disponible activando una opción ([documentación de Quarto](https://quarto.org/docs/websites/website-blog.html#rss-feed)).

Una vez que tu blog tenga un canal RSS, regístralo en ¿agregadores? relevantes como [R Semanal](https://github.com/rweekly/rweekly.org?tab=readme-ov-file#regular-r-posts-submit-your-rss-feed) en el mundo de R.

## Tener comentarios en las entradas del blog

Si decides abrir comentarios en las entradas de tu blog, asegúrate de integrar los comentarios en el foro de tu proyecto.

Esto es muy fácil con un [foro Discourse](https://meta.discourse.org/t/embed-discourse-comments-on-another-website-via-javascript/31963) (que utilizamos en este mismo blog), y con [Debates en GitHub a través de Giscus](https://giscus.app/fr) (que también son fáciles de integrar con [Quarto](https://quarto.org/docs/output-formats/html-basics.html#commenting) entre otros).

Integrar los comentarios con tu foro significa que sólo tienes que vigilar un espacio, y también ayuda a conectar a los lectores de las entradas de tu blog con el foro.

## Tener perfiles en las redes sociales

Las redes sociales pueden ser útiles para dar a conocer tu proyecto y sus actualizaciones, y para interactuar con los usuarios.
Puedes optar por hacer que tus redes sociales sean de "sólo lectura", indicando claramente que no dispones de recursos para responder a preguntas allí.

Lo ideal es que concentres tu uso de las redes sociales en [plataformas agradables](/blog/2023/06/22/ropensci-news-digest-june-2023/#ropenscis-communication-channels-for-safe-and-friendly-exchange) y plataformas en las que es probable que se junten los usuarios y la comunidad de tus proyectos.

## Conclusión

En este post, compartimos algunos consejos para la comunicación de tu proyecto de código abierto.
Utiliza canales de comunicación acordes con los objetivos y recursos de tu proyecto.
Puede que también te interese nuestra anterior convocatoria comunitaria [Configura tu paquete para fomentar una comunidad](/blog/2021/04/28/commcall-pkg-community/).


