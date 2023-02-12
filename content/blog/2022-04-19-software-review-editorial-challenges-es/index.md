---
title: Desafíos y soluciones editoriales en la revisión por pares de software
author:
- Maëlle Salmon
- Noam Ross
date: '2022-04-19T00:00:01-07:00'
slug: software-review-editorial-challenges-es
tags:
- Software Peer Review
- editors
- Spanish
package_version: 0.1.0
description: Un detalle de los desafíos que enfrentan nuestro equipo editorial y las medidas que hemos
  tomado para mitigarlos.
featured: no
---

Los procesos de [revisión de software](/software-review/) y [revisión de software estadístico](/stat-software-review/) que realizamos en rOpenSci dependen del trabajo voluntario de quienes realizan estas tareas de revisión y edición.
El equipo editorial gestiona el flujo diario de envíos, recluta personas para revisar y guía el proceso de revisión por pares de principio a fin. (Su función, al igual que gran parte de nuestro proceso, está [explicado en la Guía de desarrollo de rOpenSci](https://devguide.ropensci.org/editorguide.html)). Aunque muchos miembros de nuestra comunidad ya han participado en el proceso de revisión por pares, sólo unos pocos han participado en los roles de edición. En este artículo queremos mostrar algunos de los desafíos a los que se enfrenta nuestro equipo editorial, y algunas de las soluciones que hemos encontrado a lo largo de los años, para hacer más transparente esta parte de nuestro trabajo.

## Decisiones sobre el alcance

Después de presentar un paquete, antes de que se le asigne una persona en rol de edición y personas para revisarlo, la persona encargada de recibir envíos tiene que evaluar si éste se encuentra *dentro del ámbito de aplicación* para el proceso de revisión. Tradicionalmente, el [alcance](https://devguide.ropensci.org/policies.html#aims-and-scope) de rOpenSci se ha centrado en los paquetes que gestionan el ciclo de vida de los datos de investigación. Esto es así tanto para que los paquetes de rOpenSci formen un conjunto coherente de herramientas, como para limitarnos a los paquetes que nuestro equipo editorial y de revisión puedan revisar con los estándares y la experiencia pertinentes.

Las decisiones sobre el alcance pueden ser complicadas, y aunque no hay forma de evitar esa complejidad, descubrimos que se hace más fácil con el tiempo al poder refinar las [descripciones de alcance](https://devguide.ropensci.org/policies.html#aims-and-scope) ya que hemos visto más casos límite.
Una mejor redacción y ejemplos también ayudan a quienes mantienen el paquete a evaluar su posible alcance antes de presentarlo. Ahora que nuestro alcance se está [ampliando para incluir paquetes estadísticos](https://stats-devguide.ropensci.org/overview.html#overview-categories) y esperamos seguir perfeccionando estas categorías en los próximos meses y años.

Cuando el alcance de un paquete es ambiguo, el equipo editorial discute la situación en el canal editorial de Slack para llegar a un consenso.
En estas discusiones, reconocemos que algunos miembros pueden tener más experiencia en algunos temas, y a veces incluso consultamos a personas expertas en la materia externas al consejo para obtener más información.

Hay que tener en cuenta que recomendamos presentar una *consulta previa al envío para revisión* antes de un envío completo, para despejar cualquier duda sobre el alcance.

## Reclutar y sustituir personas revisoras

La revisión de un paquete requiere un tiempo precioso de la apretada agenda de las personas que revisan.
Esperamos que la experiencia resulte valiosa (y tratamos de facilitarla con nuestra [guía de revisión](https://devguide.ropensci.org/reviewerguide.html)), pero reconocemos que es una tarea ardua, que exige más o menos el mismo tiempo que la revisión de un artículo científico.
Nuestra lista de [criterios para elegir personas para revisar paquetes](https://devguide.ropensci.org/editorguide.html#criteria-for-choosing-a-reviewer) busca garantizar la diversidad (tanto en habilidades como en antecedentes), y crear continuamente un grupo de personas experimentadas en revisar sin sobrecargar a ninguna de ellas. Sin embargo, dificulta aún más la tarea de encontrar personas disponibles. 

El año pasado lanzamos un [nuevo formulario para proponerse para realizar revisiones](/blog/2021/11/18/devguide-0.7.0/#a-new-form-for-volunteer-reviewing) que nos permite recolectar datos más precisos sobre la experiencia técnica y temática, así como una pregunta opcional: "¿Te consideras parte de un grupo subrepresentado en los campos de la ciencia de los datos, la programación o en tu campo de trabajo principal?
Mantenemos esta información en una base de datos (gestionada con Airtable), junto con el historial de revisiones de cada persona. 
Esta base de datos es un recurso para el equipo editorial cuando se necesitan personas con una experiencia, una formación o una disponibilidad particulares.

Cuando esto no es suficiente, por ejemplo, después de repetidas negativas o falta de respuesta de parte de posibles personas, quien es responsable de la revisión del paquete puede pedir recomendaciones al resto del equipo editorial en nuestro canal de Slack. (Parte del equipo también participa en la edición de revistas científicas tradicionales, y desearíamos poder tener una charla tan útil con el resto del equipo allí).

Un reto a la hora de ponerse en contacto con las personas que pueden revisar es saber cuándo hay que seguir adelante después de esperar una respuesta. Así que hemos añadido "Si no tengo noticias tuyas en el plazo de una semana, asumiré que no puedes revisar en este momento" a nuestra [plantilla de solicitud de revisión estándar](https://devguide.ropensci.org/reviewrequesttemplate.html). Esto pone a todo el mundo en la misma página y proporciona claridad tanto a quienes editan como a quienes potencialmente revisarían. 

Por último, cuando la persona que revisa abandona el proceso de revisión (o ya no se puede contactarla)
la persona encargada de la edición busca alguien como reemplazo, a menudo una persona a la que se le puede pedir un plazo breve (por ejemplo, alguien del equipo de edición), o ella misma realiza la segunda revisión.
El objetivo es no retrasar demasiado el proceso de revisión.

## Responsables de paquetes que abandonan

Es una situación más triste cuando las persona *responsable del paquete* deja de responder, ya que hay que detener el proceso de revisión.
Es especialmente decepcionante cuando ocurre después de las revisiones, ya que las personas que revisaron pueden sentir que su trabajo se ha desperdiciado.
Al final, no podemos hacer nada al respecto, ya que está fuera del control del equipo de edición y revisión (y de quienes mantienen el paquete).

Sin embargo, para evitar problemas sencillos de comunicaciones que se pierden, recomendamos que asegurarse de recibir notificaciones de GitHub, porque intentamos una comunicación transparente a través de GitHub y no solemos utilizar el correo electrónico.
Para hacer frente a problemas más importantes relacionados con el tiempo y el compromiso sobre el paquete, hemos añadido recientemente frases a (la versión de desarrollo de) la [guía de autoría](https://devdevguide.netlify.app/authors-guide.html) y a las plantillas de envío: "Espero mantener este paquete durante al menos 2 años o encontrar alguien que me sustituya".
Aunque esto no evitará todos los problemas, esperamos que incite a pensar en el mantenimiento del paquete a largo plazo antes de enviarlo para su revisión.

También entendemos que, aunque quienes envían un paquete tengan buenas intenciones, la vida puede complicarse inesperadamente.
Por lo tanto, otro esfuerzo que hacemos es poner las revisiones "en espera" (aplicando etiquetas de "en espera") según sea necesario.
Estas etiquetas de trabajo suspendido se revisan cada tres meses y hasta un año.

## Sobrecarga de trabajo del equipo editorial (y de revisión)

La revisión de software es un trabajo en equipo: personas que editan, revisan y, obviamente, mantienen el paquete.

Para reducir el trabajo de quienes editan en particular, hemos mejorado la automatización, que fue el tema de una charla con la comunidad, ["Mejorar la revisión por pares del software con la automatización de GitHub"](/commcalls/dec2021-automation/).
rOpenSci ha trabajado con The Journal of Open Source Software para ampliar el enfoque de JOSS de la publicación impulsada por chatops en un nuevo chat-bot de GitHub que gestiona nuestro proceso editorial: asignar tareas, etiquetar temas, ejecutar pruebas en los envíos de software, devolver informes a quienes revisan y editan, y registrar las revisiones en una base de datos externa (Airtable). Todo se puede hacer desde la comodidad de un comentario en un issue de GitHub.
Por ejemplo, podrías clonar un repositorio localmente, instalar dependencias, ejecutar comprobaciones y publicar manualmente los resultados... **o** podrías simplemente escribir lo siguiente en un comentario en un _issue_ de GitHub:

```
@ropensci-review-bot check package
```

Del mismo modo, puedes utilizar el siguiente comando para registrar a la persona que revisa en los metadatos del _issue_ de la revisión, así como en nuestra base de datos Airtable.

```
@ropensci-review-bot add @maelle to reviewers
```

Una gran parte de la limitación de la carga de trabajo de quienes editan es ¡tener suficientes personas en ese rol!  Hemos estado [ampliando nuestro equipo editorial](/tags/editors/) con el objetivo de que cada miembro sólo se ocupe de [unos 4 envíos al año](https://devdevguide.netlify.app/editorguide.html#editors-responsabilities).  
A medida que nuestro volumen de envíos crece y las personas que editan van rotando (pedimos compromisos de 2 años con opción de renovación), reclutamos nuevas personas para el equipo de edición, en gran parte seleccionadas de nuestro equipo de revisión.
Invitamos a personas con experiencia en revisar paquetes a editar de forma invitada y les preguntamos si quieren quedarse si todo funciona bien.  
Nuestra [guía de edición](https://devguide.ropensci.org/editorguide.html) facilita la incorporación de las nuevas personas al equipo... y la incorporación de nuevas personas que van a editar da lugar a comentarios sobre esa guía y, por tanto, a su mejora.
Si quieres probar editar ¡[empieza por ofrecerte para revisar](/software-reviewer)!

## Conclusión

Hemos resumido algunos de los problemas habituales de nuestro equipo editorial.
Hemos comprobado que es muy importante automatizar los procesos, pero también que quienes editan puedan comunicarse directamente entre sí para encontrar soluciones, así como para acompañarse y animarse mutuamente.
A medida que continúe la revisión del software, seguramente nos encontraremos con nuevos retos que abordar.
Esperamos que nuestras experiencias sean útiles para quienes editen en el futuro y que puedan ayudar a informar a otros consejos editoriales.


