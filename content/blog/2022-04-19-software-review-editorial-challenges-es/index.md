---
title: Retos y soluciones editoriales en la revisión por pares de software
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
description: Un detalle de los retos que enfrentan nuestros editores y editoras, y las medidas que hemos
  tomado para mitigarlos.
featured: no
---

Los procesos de [revisión de software]((/software-review/)) y [revisión de software estadístico](/stat-software-review/) que realizamos en rOpenSci dependen del trabajo voluntario de quienes realizan estas tareas de revisión y edición.
Quienes editan gestionan el flujo diario de envíos, reclutan personas para revisar y guían el proceso de revisión por pares de principio a fin.  (Su función, al igual que gran parte de nuestro proceso, está [explicado en la Guía de desarrollo de rOpenSci](https://devguide.ropensci.org/editorguide.html)).   Aunque muchos miembros de nuestra comunidad han participado en el proceso de revisión por pares, sólo unos pocos han participado en los roles de edición. En este artículo pensamos en arrojar algo de luz sobre algunos de los retos a los que se enfrentan nuestros editores, y algunas de las soluciones que hemos encontrado a lo largo de los años, para hacer más transparente esta parte de nuestro trabajo.

## Decisiones sobre el alcance

Después de presentar un paquete, antes de que se le asigne un/a editor/a y revisores/as, quien es redactor/a en jefe rotatorio tiene que evaluar si está *está dentro del ámbito de aplicación* para el proceso de revisión.  Tradicionalmente, el alcance de rOpenSci [alcance](https://devguide.ropensci.org/policies.html#aims-and-scope) se ha centrado en los paquetes que gestionan el ciclo de vida de los datos de investigación. Esto es así tanto para que los paquetes de rOpenSci formen un conjunto coherente de herramientas, como para limitarnos a los paquetes que nuestro equipo editorial y de revisión puedan revisar con los estándares y la experiencia pertinentes.

Las decisiones sobre el alcance pueden ser complicadas, y aunque no hay forma de evitar esa complejidad, descubrimos que se hace más fácil con el tiempo al poder refinar las [descripciones de alcance](https://devguide.ropensci.org/policies.html#aims-and-scope) ya que hemos visto más casos límite.
Una mejor redacción y ejemplos también ayudan a los/as autores/as a evaluar el posible alcance de su paquete antes de presentarlo.  Ahora que nuestro alcance se está [ampliando para incluir paquetes estadísticos](https://stats-devguide.ropensci.org/overview.html#overview-categories) esperamos seguir perfeccionando estas categorías en los próximos meses y años.

Cuando el alcance de un paquete es ambiguo, el Editor en Jefe dirige una discusión en el canal Slack de la editorial con el resto del equipo para llegar a un consenso.
En estas discusiones, reconocemos que algunos de nosotros podemos tener más experiencia en algunos temas, y a veces incluso consultamos a expertos en la materia externos al consejo para obtener más información.

Hay que tener en cuenta que sugerimos a los/as autores/as de paquetes a presentar una *consulta previa al envío para revisión* antes de un envío completa, para despejar cualquier duda sobre el alcance.

## Reclutar y sustituir revisores

La revisión de un paquete requiere un tiempo precioso de la apretada agenda de los/as revisores/as.
Esperamos que la experiencia les resulte valiosa (y tratamos de facilitarla con nuestra [guía de revisión](https://devguide.ropensci.org/reviewerguide.html)), pero consideramos que es una tarea ardua, que exige más o menos el mismo tiempo que la revisión de un artículo científico.
Para aumentar la dificultad de encontrar personas para revisar disponibles, tenemos una lista de [criterios para elegir  revisores/as](https://devguide.ropensci.org/editorguide.html#criteria-for-choosing-a-reviewer) para garantizar la diversidad (tanto en habilidades como en antecedentes), y para crear continuamente un grupo de personas experimentadas en revisar sin sobrecargar a ninguna de ellas.

El año pasado lanzamos un [nuevo formulario para que las personas se propongan para revisar](/blog/2021/11/18/devguide-0.7.0/#a-new-form-for-volunteer-reviewing) que nos permite recolectar datos más precisos sobre la experiencia técnica y temática, así como una pregunta opcional: "¿Te consideras parte de un grupo subrepresentado en los campos de la ciencia de los datos, la programación o en tu campo de trabajo principal?
Mantenemos esta información en una base de datos (gestionada con Airtable), junto con el historial de revisiones de cada persona.  Esta base de datos es un recurso para los/as editores/as cuando buscan revisores con una experiencia, una formación o una disponibilidad particulares.

Cuando esto no es suficiente, por ejemplo, después de repetidas negativas o falta de respuesta de posibles revisores/as, los/as editores/as pueden pedir recomendaciones al resto del equipo editorial en nuestro canal de Slack. (Algunos de somos editores/as de revistas científicas tradicionales, y desearíamos tener una charla tan útil con nuestros coeditores/as allí).

Un reto a la hora de ponerse en contacto con las personas que pueden revisar es saber cuándo hay que seguir adelante después de esperar una respuesta.  Así que hemos añadido "Si no tengo noticias tuyas en el plazo de una semana, asumiré que no puedes revisar en este momento" a nuestra [plantilla de solicitud de revisión estándar](https://devguide.ropensci.org/reviewrequesttemplate.html). Esto pone a todos en la misma página y proporciona claridad tanto a quienes editan como a los/as revisores/as potenciales.

Por último, cuando la persona que revisa abandona el proceso de revisión (o ya no se puede contactarla)
la persona encargada de la edición busca alguien como reemplazo, a menudo una persona a la que se le puede pedir un plazo breve (por ejemplo, alguien del equipo de edición), o el/la editor/a realiza la segunda revisión.
El objetivo es no retrasar demasiado el proceso de revisión.

## Autores/as que abandonan

Es una situación más triste cuando las *personas autoras* del paquete dejan de responder, ya que hay que detener el proceso de revisión.
Es especialmente decepcionante cuando ocurre después de las revisiones, ya que las personas que revisaron pueden sentir que su trabajo se ha desperdiciado.
Al final, no podemos hacer nada al respecto, ya que está fuera del control de nuestros/as editores/as y revisores/as (y de los/las autores/as).

Sin embargo, para evitar problemas sencillos de comunicaciones que se pierden, recomendamos que los/as autores/as se aseguren de recibir notificaciones de GitHub, porque intentamos una comunicación transparente a través de GitHub y no solemos utilizar el correo electrónico.
Para hacer frente a problemas más importantes relacionados con el tiempo y el compromiso sobre el paquete, hemos añadido recientemente frases a (la versión de desarrollo de) la [guía de autor/a](https://devdevguide.netlify.app/authors-guide.html) y a las plantillas de envío: "Espero mantener este paquete durante al menos 2 años o encontrar alguien que me sustituya".
Esto debería incitar a los autores de paquetes a pensar en el mantenimiento del paquete a largo plazo.
Aunque esto no evitará todos los problemas, esperamos que incite a los/as autores/as de paquetes a pensar en el mantenimiento del paquete a largo plazo antes de enviarlo para su revisión.

También entendemos que, aunque los/as autores/as tengan buenas intenciones, la vida puede complicarse inesperadamente.
Por lo tanto, otro esfuerzo que hacemos es poner las revisiones "en espera" (aplicando etiquetas de "en espera") según sea necesario.
Estas etiquetas de trabajo suspendido se revisan cada tres meses y hasta un año.

## Sobrecarga de trabajo de editores/as (y revisores/as)

La revisión de software es un trabajo en equipo: editores/as, revisores/as y, obviamente, autores/as.

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

Una gran parte de la limitación de la carga de trabajo de quienes editan es ¡tener suficientes personas en ese rol!  Hemos estado [ampliando nuestro equipo editorial](/tags/editors/) con el objetivo de que los/as editores/as sólo se ocupen de [unos 4 envíos al año](https://devdevguide.netlify.app/editorguide.html#editors-responsabilities).  
A medida que nuestro volumen de envíos crece y las personas que editan van rotando (pedimos compromisos de 2 años con opción de renovación), reclutamos nuevos/as editores/as en gran parte de nuestro equipo de revisión.
Invitamos a los/as revisores/as con experiencia a editar como invitados/as y les preguntamos si quieren quedarse si todo funciona bien.  
Nuestra [guía para editores/as](https://devguide.ropensci.org/editorguide.html) facilita la incorporación de las nuevas personas al equipo... y la incorporación de nuevas personas que van a editar da lugar a comentarios sobre esa guía y, por tanto, a su mejora.
Si quieres probar editar ¡[empieza por ofrecerte para revisar](/software-reviewer)!

## Conclusión

Hemos resumido algunos de los problemas habituales de nuestro equipo editorial.
Hemos comprobado que es muy importante automatizar los procesos, pero también que las personas que editan puedan comunicarse directamente entre sí para encontrar soluciones, así como para acompañarse y animarse mutuamente.
A medida que continúe la revisión del software, seguramente nos encontraremos con nuevos retos que abordar.
Esperamos que nuestras experiencias sean útiles para otros/as editores/as y que puedan ayudar a informar a otros consejos editoriales.


