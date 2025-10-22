---
title:  ¡Prepárense para el lanzamiento! Paquetes enviados al R-multiverse
author: Maëlle Salmon
editor: Steffi LaZerte
translator: Yanina Bellini Saibene
date: '2025-10-28'
slug: paquetes-r-multiverse
description: Paquetes enviados al R-multiverse durante nuestra reciente sesión de
  co-trabajo.
output: hugodown::md_document
tags:
- r-multiverse
- r-universe
- paquetes
- comunidad
params:
  doi: 10.59350/b73e6-3wm19
---

Will Landau presentó recientemente el R-multiverse, [una nueva forma de publicar paquetes de R](/commcalls/r-multiverse/) durante una "conversación con la comunidad" de rOpenSci[^posit]. 
Después de ese evento, una sesión de [cotrabajo](/blog/2023/06/21/coworking/) permitió una conversación aún más intensa entre Will y el equipo de administración de R-multiverse, Jeroen Ooms y Maëlle Salmon, y personas interesadas de la comunidad.

¡Una misión clave de esa sesión de coworking fue enviar paquetes al R-multiverse en directo!
Tras la [instrucciones](https://r-multiverse.org/contributors.html) cualquier persona que mantiene paquetes y quiere enviar su software al repositorio comunitario debe:

- crear una "release" GitHub o GitLab de su paquete;
- abrir una Pull Request al repositorio de ["contributions"](https://github.com/r-multiverse/contributions) añadiendo un archivo de texto que contenga la URL del repositorio[^json]. 

Will también compartió una función de R que permite realizar comprobaciones del paquete localmente antes de enviarlo: [`multiverse.internals::review_package()`](https://r-multiverse.org/multiverse.internals/reference/review_package.html).

Durante la sesión de coworking se enviaron tres paquetes.

## Envíos de paquetes

### riem, para obtener datos meteorológicos de las estaciones ASOS (aeropuertos) a través de la Iowa Environment Mesonet.

Envié mi [paquete riem](https://github.com/r-multiverse/contributions/pull/238) que accede a datos meteorológicos de aeropuertos, aunque también se distribuye en CRAN: quería explorar diferentes vías de publicación.
Como las comprobaciones automáticas (de la licencia, por ejemplo) pasaron y como soy parte de una organización de GitHub en la que confía el multiverso (ropensci) de forma pública, mi PR se fusionó automáticamente.

Más información sobre [riem](https://docs.ropensci.org/riem/).

### geotargets, que amplía targets para trabajar con formatos de datos geoespaciales

Eric R. Scott envió el [paquete geotargets](https://github.com/r-multiverse/contributions/pull/239) que amplía targets para trabajar con formatos de datos geoespaciales, como rásters y vectores (por ejemplo, shapefiles).
Eric es coautor de `geotargets` junto con Nick Tierney y Andrew Brown, pero Nick es el mantenedor principal.
Sin embargo, está perfectamente bien que Eric haya enviado el paquete en lugar de Nick.
De hecho, R-multiverse te permite contribuir con paquetes que no escribiste en absoluto [^3] siempre y cuando la licencia conceda [permiso claro para distribuir y modificar el código](https://en.wikipedia.org/wiki/Free_and_open-source_software).

Más información sobre [geotargets](https://docs.ropensci.org/geotargets/).

[^3]: La autoría del paquete sigue siendo la misma.

### weathercan, para buscar y descargar datos meteorológicos históricos de Environment and Climate Change Canada (ECCC)

Steffi LaZerte envió su [paquete weathercan](https://github.com/r-multiverse/contributions/pull/240/) que también es un paquete meteorológico, ¡pero para Canadá!
Steffi se preguntaba si tenía sentido enviar weathercan antes de hacer un montón de correcciones y mejoras que había planeado para las próximas semanas. Resulta que sí, ¡tiene sentido!, porque R-multiverse recogerá automáticamente la última versión.
Steffi sólo tiene que acordarse de crear una nueva "release" en GitHub después de mejorar weathercan.

Más información sobre [weathercan](https://docs.ropensci.org/weathercan/).

## ¿Qué sigue para esos paquetes?

Ahora que estos paquetes están dentro, se distribuyen a través del [repositorio de **comunidad**](https://r-multiverse.org/community.html).
Es como un avance de las nuevas versiones.

Dentro de unas semanas, cuando R-multiverse empiece a construir el próximo [repositorio de **producción**](https://r-multiverse.org/production.html) se comprobarán junto con otros paquetes.
Si son correctos, su versión en ese momento será la que se incorpore a producción.
Si hay algún problema, la persona que mantiene el paquete puede seguir introduciendo correcciones.

Mientras esos paquetes estén listados en el R-multiverse, participarán en las instantáneas de producción trimestrales.
Los mantenedores sólo tienen que seguir creando "releases" (una buena práctica de todos modos) y seguir las instrucciones de [estado](https://r-multiverse.org/status/) de su paquete en el multiverso.

Para que las personas que usan el paquete sepan que pueden instalarlo desde el repositorio de [comunidad](https://r-multiverse.org/community.html) o desde el repositorio de [producción](https://r-multiverse.org/production.html) las personas que mantienen los paquetes deberán actualizar las instrucciones de instalación en el archivo README de su paquete.
También podrían añadir una [insignia](https://r-multiverse.org/contributors.html#badges).

## ¿Qué es lo próximo para el multiverso R?

Tras la charla en la posit conf, la "conversaciones de la comunidad" y la sesión de coworking rOpenSci, el R-multiverse pretende aumentar la participación en su sistema para fortalecerlo y diversificarlo.
Los envíos de nuevos paquetes son bienvenidos, al igual que [preguntas y solicitudes de funciones](https://github.com/r-multiverse/help).
También puede solicitar convertirse en [moderador de paquetes](https://r-multiverse.org/moderators.html) para ayudar a gestionar los nuevos envíos.

[^posit]: ¡Y antes de eso en una charla en posit::conf! Esté atento a la publicación de las grabaciones de las charlas públicas en YouTube.
[^json]: O un archivo JSON un poco más complicado si el paquete está en un subdirectorio, por ejemplo.


