---
title: ¿Qué significa mantener un paquete?
author:
- Maëlle Salmon
date: '2023-02-07'
slug: what-does-it-mean-to-maintain-a-package
categories:
- blog
tags:
- paquete
- mantenimiento
package_version: 0.1.0
description: Un intento de definir lo que implica el mantenimiento de paquetes, con
  algunos consejos.
params:
  doi: 10.59350/ykmwy-qnx46
---

Parte de lo que pretendemos hacer en rOpenSci es fomentar una comunidad de mantenedores de paquetes que se ayuden mutuamente.
Además del apoyo durante el mantenimiento de los paquetes, también queremos apoyar a aquellas personas que deseen seguir adelante. Las situaciones pueden cambiar y puede llegar un momento en que un mantenedor quiera pasar el mantenimiento a otra persona. Si alguien se encuentra en esta situación y desea transferir el mantenimiento, le ayudamos de la siguiente manera [anunciando](/blog/2022/10/17/maintain-or-co-maintain-an-ropensci-package/) y también ayudamos a los nuevos mantenedores con consejos, generalmente del tipo "echa un vistazo para ver si hay que arreglar algo, y luego haz el mantenimiento rutinario".
Pero, ¿qué es el mantenimiento rutinario? Este post es un intento de definir lo que implica el mantenimiento de paquetes, con algunos consejos.

## El mantenimiento de paquetes como propiedad

Como mantenedor de paquetes (o como equipo de mantenedores),

- eres responsable del alcance del paquete: ¿Quieres añadir una función? ¡Tú decides!
- te encargas de planificar el trabajo en el código base: piensa en mejoras y organízalas en hitos.
- controlas la calidad del código: ¿Quieres dedicar más tiempo a este pull request? ¿O aceptarás y acumularás un poco de [deuda técnica](https://en.wikipedia.org/wiki/Technical_debt)? De nuevo, ¡tú decides!

Sin embargo, no sólo te pertenecen estos aspectos técnicos y productivos.
En nuestra pasada conversaciones con la comunidad sobre [Cómo mantener un paquete R](/commcalls/2020-03-18/) Erin Grand definió el mantenimiento de un paquete como "la propiedad en torno a la comunidad del paquete".
Qué gran manera de reconocer las *personas* ¡que crean y utilizan un programa informático!
Como mantenedor de paquetes, una de tus funciones es apoyar y fomentar una próspera comunidad de usuarios y colaboradores... También es el tema de una antigua "conversaciones con la comunidad": [Configura tu paquete para fomentar una comunidad](/commcalls/apr2021-pkg-community/).

## El mantenimiento del Paquete como capacidad de respuesta

Ahora, por desgracia, no te pertenece toda la agenda del mantenimiento de paquetes :sweat\_smile:
A menos que tu paquete no tenga usuarios visibles, tu trabajo de mantenimiento probablemente consistirá en algún tipo de asistencia al usuario y resolución de problemas.
También es posible que recibas peticiones de los mantenedores de las dependencias de tu paquete, o del repositorio en el que publiques tu paquete (CRAN, Bioconductor).

El apoyo a los usuarios en particular puede ser una fuente de alegría, ver cómo se utiliza tu paquete, ayudar a la gente a superar obstáculos, resolver problemas.
Sin embargo, todas estas demandas externas pueden ser agotadoras e incluso estresantes.
¿Cómo podemos evitarlo?
Por desgracia, es una situación habitual. Sin embargo, aunque no existe una solución mágica, he aquí algunas cosas que podrían ayudar.

- Mantener el paquete en equipo puede ayudar a compartir la carga, y también pueden proporcionar un canal secundario para desahogarse. Si crees que te vendría bien algo de ayuda práctica, considera la posibilidad de invitar a algunos co-mantenedores al proyecto.
- Si quieres ayuda, pero no necesariamente práctica, considera la posibilidad de chatear con otros mantenedores. Pueden hablar de fallos concretos o problemas de programación, o de consejos generales para la gestión o participación de la comunidad. Incluso puedes simplemente compartir algunas penas y conseguir compasión. rOpenSci tiene un canal #mantenimiento-de-paquetes en su [slack semiabierto](https://contributing.ropensci.org/resources.html#channels) al que todos los mantenedores de paquetes de rOpenSci deberían tener acceso (envíanos un correo electrónico si no es así).
- No es necesario que te ocupes de todos los problemas en cuanto aparezcan (aparte de los estrictos plazos de CRAN, claro). Puedes planificar periodos de actividad e inactividad en tu repositorio, pudiendo indicarlo claramente en un _issue_ anclado o en la documentación. El manual de objetivos explica [periodos de inactividad](https://books.ropensci.org/targets/help.html#out-of-office) pero fuera de la oficina también podría ser el estado más habitual de tu paquete, con actividad en ráfagas. Tu paquete, ¡tú eliges!
- Puedes ajustar tus pautas de contribución con el tiempo. No es ninguna vergüenza pedir a un usuario que proporcione una _reprex_ en lugar de pasarse horas adivinando el significado del texto de su _issue_. Mediante dirigir la contribución y dar explicaciones amables, puedes trasladar las preguntas generales sobre tu paquete a un lugar donde te resulte más fácil, por ejemplo, Discusiones de GitHub en lugar de Temas.
- Asegúrate de que captas las notificaciones (¿aparece tu dirección de correo electrónico correcta, vigilas tu propio repositorio?). No es necesario que las leas o actúes en consecuencia inmediatamente, pero es bueno no perderlas.
- Puedes elegir dónde se publica tu paquete. Si las normas de un repositorio de publicación son una fuente de demasiado dolor en comparación con la facilidad de distribución, puedes optar por no publicarlo allí.
- También puedes intentar encontrar financiación para tu trabajo. Consulta, por ejemplo, la página [Convocatoria de propuestas del Consorcio R](https://www.r-consortium.org/all-projects/call-for-proposals) (dos veces al año).

## Mantenimiento de paquetes como limpieza

Además de las interesantes peticiones de funciones, el mantenimiento de los paquetes suele justificar un trabajo más "rutinario".

Tal vez quieras intentar mantenerte al día con las mejores prácticas de desarrollo de paquetes (y de las directrices externas :sweat\_smile:) a través de los canales de desarrollo de paquetes.
Recuerda que el [Boletín rOpenSci](/news) tiene un Rincón de Desarrollo de Paquetes :wink:
Tras las preguntas sobre, por ejemplo, el [foro rOpenSci](https://discuss.ropensci.org/) o en el foro de la comunidad Posit [Categoría Desarrollo de paquetes](https://community.rstudio.com/c/package-development/11) puede ser una forma de seguimiento de las noticias y de práctica deliberada.
Con esa lectura/seguimiento, puede que llegues a una nueva comprensión de un método de prueba, puede que descubras que es mejor cambiar una dependencia por otra, etc.

Ahora bien, ¿cuándo y cómo mejoras tu paquete?
Podrías intentar saldar alguna deuda técnica cada vez que planifiques algún trabajo sobre una característica.
Podrías imitar la [limpieza de primavera de tidyverse](/blog/2022/03/18/ropensci-news-digest-march-2022/#get-inspired-by-the-tidyverse-spring-cleaning) tanto en lo que se refiere a la idea como a los elementos reales que figuran en la lista de comprobación pública, como la actualización de las configuraciones de integración continua.
Si ese trabajo no te parece divertido, hacerlo en equipo puede ayudarte, o puedes unirte a una [sesión de co-trabajo de rOpenSci](/events) para disponer de un tiempo dedicado a trabajar en el mantenimiento regular de paquetes en un entorno divertido.

## Conclusión

En este post hemos intentado dar una visión general de lo que implica mantener un paquete: propiedad del ámbito, del código y de la comunidad; capacidad de respuesta autocontrolada a las peticiones externas; mantenimiento regular.
Todo esto puede suponer mucho trabajo, y hay que apreciarlo con las recompensas que se obtienen como desarrollador de paquetes (dependiendo de tu situación, pueden ser: la satisfacción personal de crear una herramienta útil; la alegría de colaborar con otros; ingresos; desarrollar experiencia en codificación; demostrar tus habilidades; obtener reconocimiento por tu trabajo).

Si la balanza no está equilibrada, considera tus necesidades. Puede que sea el momento de intentar reclutar co-mantenedores o unirte a una comunidad de otros desarrolladores, o incluso de encontrar un nuevo mantenedor o retirar el paquete.
En el caso de los paquetes rOpenSci, podemos ayudar anunciando la necesidad de ayuda de tu paquete, así que no dudes en ponerte en contacto con nosotros.
Por último, pero no por ello menos importante, en rOpenSci queremos dar las gracias a todos los mantenedores de paquetes, ¡pasados, presentes y futuros! El trabajo que hacen, hicieron o harán es valioso e impresionante, ¡y realmente lo apreciamos!

Siempre estamos pensando en formas de apoyar a los mantenedores de paquetes. No dudes en añadir un comentario más abajo con cualquier sugerencia que puedas tener.


