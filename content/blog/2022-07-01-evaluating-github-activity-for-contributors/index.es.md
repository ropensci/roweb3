---
title: Evaluar la actividad en GitHub de los colaboradores
author:
- Maëlle Salmon
date: '2022-07-01'
slug: evaluating-github-activity-for-contributors
tags:
- GitHub
- contributors
- tech notes
description: Cómo evaluar la actividad de un repositorio de GitHub como usuario o
  colaborador potencial.
params:
  doi: 10.59350/m8tb6-can94
---

Supongamos que tienes que informar de un error o solicitar una función para un paquete.
¿Cómo puedes utilizar la información de GitHub para gestionar tus expectativas (si habrá una solución rápida) y tus acciones (si debes seguir adelante y bifurcar el repositorio)?
En este post, repasaremos las fuentes de información y explicaremos cómo se pueden utilizar.
Al final, no hay una receta mágica, excepto quizás la amabilidad, ya que el software lo hacen los humanos :wink:

## Mira si el repositorio está archivado

Mira si el repositorio está [archivado en GitHub](https://docs.github.com/en/repositories/archiving-a-github-repository/archiving-repositories).

### Cómo ayuda

Si se archiva el repositorio, está claro que los autores ya no van a trabajar en él.

## (Personalizado) vigilar el repositorio

Si te interesa mucho el destino de un paquete de R, puede que tenga sentido [vigilancia personalizada](https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github/setting-up-notifications/configuring-notifications#configuring-your-watch-settings-for-an-individual-repository=) en GitHub: por ejemplo, puedes elegir que se te notifiquen todas las ediciones y PRs o sólo las versiones.

Ten en cuenta que si sólo observas un repositorio apareces públicamente como observador, pero que yo sepa los observadores personalizados no aparecen públicamente.

### Cómo ayuda

Observar la actividad en el repositorio te hará consciente de

- desarrollo continuo,
- ritmos de desarrollo (por ejemplo, "cíclico pero con correcciones rápidas de errores cruciales"),
- flujos de trabajo (¿son bienvenidos los PR o prefieren los mantenedores confirmar primero el interés por un tema?)
- el tono en ese repositorio (si el tono no es amistoso, ¡corre!).

Ahora bien, no te servirá de nada si ahora mismo estás mirando un repositorio que antes no mirabas, pero es bueno saberlo para la próxima vez.

## Lee los archivos contribuyentes

Si el repositorio tiene un [guía de contribución](/blog/2021/04/28/commcall-pkg-community/) (archivo `CONTRIBUTING.md` o `.github/CONTRIBUTING.md`) y parece que se ha personalizado al menos un poco en comparación con un modelo estándar, préstale atención :smile\_cat:

Si los documentos contienen alguna mención al ciclo de vida del desarrollo (una insignia, algún texto), tenlo también en cuenta.

Por último, pero no menos importante, ¡ver que el repositorio tiene un código de conducta puede ayudar a sentirse seguro!
rOpenSci [código de conducta](https://ropensci.org/code-of-conduct/) se aplica a todos los paquetes rOpenSci.

### Cómo ayuda

Es información directa de los mantenedores sobre lo que esperan de las contribuciones, por lo que puede ayudarte a orientarte sobre cómo hacer contribuciones y qué tipo de contribuciones son bienvenidas.

## Mira la última actividad de código

En la página principal del repositorio de GitHub puedes encontrar el tiempo transcurrido desde la última confirmación en la rama por defecto.
En la página de ramas puedes ver que hay actividad de código en otra rama (ver por ejemplo <https://github.com/ropensci/readODS/branches>).
En la pestaña de versiones puedes ver la antigüedad de la última versión publicada, y si hay una regularidad en las versiones (ver por ejemplo <https://github.com/ropensci/magick/releases>).

### Cómo ayuda

Si hay actividad de código en curso, tus contribuciones podrían abordarse más rápidamente.
Si ves que la actividad del código es intermitente (los desarrolladores se centran en él durante un periodo de tiempo, publican una nueva versión y luego ignoran las notificaciones durante un tiempo), podrías suponer que tendrás que ser paciente.

## Observa la actividad de planificación y asistencia al usuario

Ordena las incidencias y PRs por actualizados recientemente (el valor por defecto cuando se utiliza la extensión del navegador [RefinedGitHub](https://github.com/refined-github/refined-github)). ¿Los miembros del repositorio responden activamente a las incidencias?

Mira los hitos: ¿cuál es el contenido de los distintos hitos?
¿Hay fechas previstas de publicación?
(Véase, por ejemplo <https://github.com/ropensci/dev_guide/milestones>.)

### Cómo ayuda

Si los problemas obtienen una primera respuesta humana rápida, qué suerte, puedes preguntar educadamente lo que querías preguntar y esperar una respuesta bastante rápida.
Si la planificación es transparente y actual (es difícil curar los hitos :sweat\_smile:), puedes hacerte una idea de dónde encajará tu contribución.

## Mira la actividad de los autores

Identifica a los principales colaboradores:

- El archivo DESCRIPCIÓN puede no ser tan informativo, ya que puede contener colaboradores históricos.
- Mira el gráfico de contribuciones para ver quiénes son los contribuyentes activos actuales/recientes (ver por ejemplo <https://github.com/ropensci/dev_guide/graphs/contributors>).
- Fíjate también en quién ha respondido a los últimos temas y PRs.

Dirígete a su perfil de GitHub, e incluso a su [perfil de R-universe](https://r-universe.dev/maintainers/) ¿Han estado trabajando en otras cosas? ¿Tienen algún estatus (permiso parental, vacaciones)? ¿Hay algún desajuste entre la organización del repositorio y el trabajo del colaborador?

### Cómo ayuda

A veces puede haber algo obvio: si el mantenedor cambió de trabajo, quizá abandonó el repositorio de interés.
Sin embargo, lo más importante es que, aunque ayuda estar al tanto de la actividad pública de los contribuidores **nunca sabes por lo que está pasando una persona, así que sé amable y paciente**.

## Mira los cheques de depósito

Dirígete a la página de estado de integración continua de los repositorios, por ejemplo puede ser la pestaña Acciones.
Mira el estado de CRAN si el paquete estuvo alguna vez en CRAN.

### Cómo ayuda

Los fallos en las comprobaciones que no se abordan pueden indicar que no se trabaja activamente en el repositorio.

## Conclusión

En este post hemos resumido algunas fuentes de información que tú, como colaborador potencial, puedes utilizar para evaluar si un repositorio está activo y en qué medida, para calibrar tus expectativas y ofertas de contribución.
Si un repositorio parece especialmente abandonado, quizás podrías enviar un correo electrónico a los autores para preguntarles si está previsto realizar trabajos en el futuro y, en caso contrario, si podrías hacerte cargo de él.
Sé considerado en todos tus [interacciones con los mantenedores de código](https://jacobtomlinson.dev/posts/2022/dont-be-that-open-source-user-dont-be-me/).

Si eres el *mantenedor* de un paquete rOpenSci y necesitas ayuda puntual o apoyo para el mantenimiento a largo plazo, ponte en contacto con nosotros en `info@ropensci.org`.
Por ejemplo, podemos añadir una convocatoria de co-mantenedores en nuestro boletín mensual.


