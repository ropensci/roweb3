---
title: Retos y soluciones editoriales en la revisión por pares de software
author:
- Maëlle Salmon
- Noam Ross
date: '2022-04-19T00:00:01-07:00'
slug: software-review-editorial-challenges
tags:
- Software Peer Review
- editors
- Spanish
package_version: 0.1.0
description: Los retos a los que se enfrentan los editores, y las medidas que hemos
  tomado para intentar paliar dichos problemas.
featured: no
---

rOpenSci [Revisión por pares del software](/software-review/) y [Revisión por pares de software estadístico](/stat-software-review/) dependen del trabajo voluntario de los revisores y editores.
Los editores gestionan el flujo diario de envíos, reclutan revisores y guían el proceso de revisión por pares de principio a fin.  (Su función, al igual que gran parte de nuestro proceso, está [codificado en la Guía del Desarrollador de rOpenSci](https://devguide.ropensci.org/editorguide.html)).   Aunque muchos miembros de nuestra comunidad han participado en el proceso de revisión por pares, sólo unos pocos han participado como editores y editores invitados. Aquí hemos pensado en arrojar algo de luz sobre algunos de los retos a los que se enfrentan nuestros editores, y algunas de las soluciones que hemos encontrado a lo largo de los años, para hacer más transparente esta parte de nuestro trabajo.

## Decisiones sobre el alcance

Después de presentar un paquete, antes de que se le asigne un editor y revisores, el redactor jefe rotatorio tiene que evaluar si está *está dentro del ámbito de aplicación* para el proceso de revisión.  Tradicionalmente, el alcance de rOpenSci [alcance](https://devguide.ropensci.org/policies.html#aims-and-scope)se ha centrado en los paquetes que gestionan el ciclo de vida de los datos de investigación. Esto es así tanto para que los paquetes de rOpenSci formen un conjunto coherente de herramientas, como para limitarnos a los paquetes que nuestros editores y revisores puedan revisar con los estándares y la experiencia pertinentes.

Las decisiones sobre el alcance pueden ser complicadas, y aunque no hay forma de evitar esa complejidad, hemos descubierto que se ha hecho más fácil refinando las [descripciones de alcance](https://devguide.ropensci.org/policies.html#aims-and-scope) con el tiempo, ya que tenemos más casos límite.
Una mejor redacción y ejemplos también ayudan a los autores a evaluar el posible alcance de su paquete antes de presentarlo.  Ahora que nuestro alcance se está [ampliando para incluir paquetes estadísticos](https://stats-devguide.ropensci.org/overview.html#overview-categories)esperamos seguir perfeccionando estas categorías en los próximos meses y años.

Cuando el alcance de un paquete es ambiguo, el Editor Jefe dirige una discusión en el canal Slack de la editorial con otros editores para llegar a un consenso.
En estas discusiones, reconocemos que algunos de nosotros podemos tener más experiencia en algunos temas, y a veces incluso consultamos a expertos en la materia externos al consejo para obtener más información.

Ten en cuenta que animamos a los autores de paquetes a presentar una *consulta previa a la presentación* antes de la presentación completa, para despejar cualquier duda sobre el alcance.

## Contratación y sustitución de revisores

La revisión de un paquete requiere un tiempo precioso de la apretada agenda de los revisores.
Esperamos que la experiencia sea valiosa para los revisores (y tratamos de facilitarla con nuestra [guía del revisor](https://devguide.ropensci.org/reviewerguide.html)), pero consideramos que es toda una empresa, que exige más o menos el mismo tiempo que la revisión de un artículo científico.
Para aumentar la dificultad de encontrar revisores disponibles, tenemos una lista de [criterios para elegir a los revisores](https://devguide.ropensci.org/editorguide.html#criteria-for-choosing-a-reviewer) para garantizar la diversidad (tanto en habilidades como en antecedentes), y para crear continuamente un grupo de revisores experimentados sin sobrecargar a ninguno de ellos.

El año pasado lanzamos un [nuevo formulario para el voluntariado de revisores](/blog/2021/11/18/devguide-0.7.0/#a-new-form-for-volunteer-reviewing) que nos permite recoger datos más precisos sobre la experiencia técnica y temática, así como una pregunta opcional: "¿Te consideras parte de un grupo subrepresentado en los campos de la ciencia de los datos, la programación o en tu campo de trabajo principal?
Mantenemos esta información en una base de datos (gestionada con Airtable), junto con el historial de revisiones de cada revisor.  Esta base de datos es un recurso para los editores cuando buscan revisores con una experiencia, una formación o una disponibilidad particulares.

Cuando esto no es suficiente, por ejemplo, después de repetidas negativas o falta de respuesta de posibles revisores, los editores pueden pedir recomendaciones a otros editores en nuestro canal de Slack. (Algunos de nosotros somos editores de revistas científicas tradicionales, y desearíamos tener una charla tan útil con nuestros coeditores allí).

Un reto a la hora de ponerse en contacto con los revisores es saber cuándo hay que seguir adelante después de esperar una respuesta.  Así que hemos añadido "Si no tengo noticias tuyas en el plazo de una semana, asumiré que no puedes revisar en este momento" a nuestra [plantilla de solicitud de revisión estándar](https://devguide.ropensci.org/reviewrequesttemplate.html). Esto pone a todos en la misma página y proporciona claridad tanto a los editores como a los revisores potenciales.

Por último, cuando un revisor abandona el proceso de revisión (o ya no se puede contactar con él)
el editor encargado de la tramitación contrata a un sustituto, a menudo una persona a la que se le puede pedir un plazo breve (por ejemplo, otro editor), o el editor actúa como segundo revisor.
El objetivo es no retrasar demasiado el proceso de revisión.

## Autores que abandonan

Es una situación más triste cuando el paquete *autores* dejan de responder, ya que hay que detener el proceso de revisión.
Es especialmente decepcionante cuando ocurre después de las revisiones, ya que los revisores pueden sentir que su trabajo se ha desperdiciado.
Al final, no podemos hacer nada al respecto, ya que está fuera del control de nuestros editores y revisores (y de los autores).

Sin embargo, para evitar problemas sencillos con comunicaciones perdidas, recomendamos que los autores se aseguren de recibir las notificaciones de GitHub, ya que intentamos que la comunicación sea transparente a través de GitHub y no solemos utilizar el correo electrónico.
Para hacer frente a problemas más importantes relacionados con el tiempo y el compromiso, hemos añadido recientemente frases a (la versión de desarrollo de) la [guía del autor](https://devdevguide.netlify.app/authors-guide.html) y a las plantillas de envío: "Espero mantener este paquete durante al menos 2 años o encontrar un sustituto".
Esto debería incitar a los autores de paquetes a pensar en el mantenimiento del paquete a largo plazo.
Aunque esto no evitará todos los problemas, esperamos que incite a los autores de paquetes a pensar en el mantenimiento del paquete a largo plazo antes de enviarlo para su revisión.

También entendemos que, aunque los autores tengan buenas intenciones, la vida puede torcerse inesperadamente.
Por lo tanto, otro esfuerzo que hacemos es poner retenciones en las revisiones (aplicando etiquetas de retención) según sea necesario.
Estas retenciones se revisan cada tres meses, hasta un año.

## Sobrecarga de trabajo de los editores (y revisores)

La revisión de software requiere el trabajo de todos: editores, revisores y, obviamente, autores.

Para reducir el trabajo de los editores en particular, hemos mejorado la automatización, que fue el tema de una convocatoria de la comunidad, ["Mejorar la revisión por pares del software con la automatización de GitHub"](/commcalls/dec2021-automation/).
rOpenSci ha trabajado con The Journal of Open Source Software para ampliar el enfoque de JOSS de la publicación impulsada por chatops en un nuevo chat-bot de GitHub que gestiona nuestro proceso editorial: asignar tareas, etiquetar temas, ejecutar pruebas en los envíos de software, devolver informes a los revisores y editores, y registrar las revisiones en una base de datos externa (Airtable). Todo ello desde la comodidad de un comentario de una cuestión de GitHub.
Por ejemplo, podrías clonar un repositorio localmente, instalar dependencias, ejecutar comprobaciones y publicar manualmente los resultados... **o** podrías simplemente escribir lo siguiente en un comentario de incidencia de GitHub:

```
@ropensci-review-bot comprobar paquete
```

Del mismo modo, puedes utilizar lo siguiente para registrar un revisor en los metadatos de la cuestión enviada, así como en nuestra base de datos Airtable.

```
@ropensci-review-bot añade a @maelle a los revisores
```

¡Una gran parte de la limitación de la carga de trabajo de los editores es tener suficientes editores!  Hemos estado [ampliando nuestro equipo editorial](/tags/editors/)con el objetivo de que los editores sólo se ocupen de [unos 4 envíos al año](https://devdevguide.netlify.app/editorguide.html#editors-responsabilities).  
A medida que nuestro volumen de envíos crece y los editores van rotando (pedimos compromisos de 2 años con opción de renovación), reclutamos nuevos editores en gran parte de nuestro grupo de revisores.
Invitamos a los revisores con experiencia a editar como invitados y les preguntamos si quieren quedarse si todo funciona.  
Nuestra [guía del editor](https://devguide.ropensci.org/editorguide.html) facilita la incorporación... y la incorporación de nuevos editores da lugar a comentarios sobre esa guía y, por tanto, a su mejora.
Si quieres probar a editar [empieza por ofrecerte como revisor](/software-reviewer)¡!

## Conclusión

Aquí hemos resumido algunos problemas habituales de nuestros consejos de redacción.
Hemos comprobado que es muy importante automatizar los procesos, pero también que los editores puedan comunicarse directamente entre sí para encontrar soluciones, así como para compadecerse y animarse mutuamente.
A medida que continúe la revisión del software, seguramente nos encontraremos con nuevos retos que abordar.
Esperamos que nuestras experiencias sean útiles para otros editores y que puedan ayudar a informar a otros consejos editoriales.


