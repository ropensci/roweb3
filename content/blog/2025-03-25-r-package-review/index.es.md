---
slug: r-package-review
title: Revisión del software, perspectivas de un académico
author:
- Alex Koiter
date: '2025-03-25'
tags:
- Software Peer Review
- packages
- R
- community
- mbquartR
description: Comparación de la revisión por pares de rOpenSci con las revisiones académicas
  tradicionales
social: '@Alex_Koiter@sciencemastodon.com comparte sus reflexiones sobre su experiencia con el proceso de revisión por pares de su paquete mbquartR, comparándola con sus experiencias con las revisiones académicas tradicionales.'
editor:
- Steffi LaZerte
- Yanina Bellini Saibene
translator:
- Yanina Bellini Saibene
params:
  doi: 10.59350/19v94-d8656
---

> Hay un paquete R para esto... ¿verdad?

## Cómo empezó

Mi viaje para crear mi primer paquete de R comenzó cuando recibí un correo electrónico de un colega que trabajaba con muestras de suelo archivadas que se recogieron antes de la llegada de la tecnología GPS.
Estas muestras se georreferenciaron utilizando las Descripciones Legales de Levantamientos Originales de Manitoba, que proceden del [sistema Dominion Land Survey](https://en.wikipedia.org/wiki/Dominion_Land_Survey) introducido a finales del siglo XIX para organizar el asentamiento y la colonización europea del oeste de Canadá.
Mi colega me preguntó si existía un paquete R que pudiera localizar estas muestras para poder trazarlas en un mapa.
No lo había.
Los datos estaban disponibles públicamente, así que escribí un breve script que buscaba en el conjunto de datos la descripción legal del terreno y devolvía las coordenadas.
Esto se transformó en una serie de funciones que acabaron convirtiéndose en un paquete.
Y gracias la asistente de la comunidad de rOpenSci, [Steffi LaZerte](/author/steffi-lazerte/), quien me insistió y animó, envié mi paquete para la revisión por pares.
Así es como [`mbquartR`](https://github.com/ropensci/mbquartR/) nació.

## Un poco sobre mí

Siempre me he considerado más un científico del suelo y del medio ambiente que un programador de R, por lo que me daba un poco de miedo crear un paquete de R y mucho más someterlo a una revisión por pares.
Éste fue mi primer paquete y desarrollarlo no sólo puso a prueba mis conocimientos de R, sino que supuso aprender mucho por el camino.
También me pareció que la funcionalidad de mi paquete era mínima, teniendo en cuenta los excelentes y amplios paquetes de R que ya existen.
Definitivamente tuve un caso de [síndrome deñ imposto**R** ](https://en.wikipedia.org/wiki/Impostor_syndrome)

También he tenido muchas experiencias con la revisión por pares, todas ellas a través de revistas académicas.
Otras personas han revisado mi trabajo, yo he revisado el trabajo de otras personas y como editor de temas/envíos de una revista internacional, he solicitado y leído muchas revisiones.
Todas ellas han sido revisiones a ciegas, en las que los autores no conocen la identidad de quines revisan, pero las personas revisoras conocen la identidad de los y las autoras.
El proceso de revisión también se realiza de forma cerrada, donde sólo los autores, el equipo revisor y el personal de la revista ven el proceso.
Esto es relativamente habitual en mi mundo académico.
En general, diría que en mi experiencia este tipo de proceso de revisión ha sido bastante respetuoso y funcional ([YMMV](https://dictionary.cambridge.org/dictionary/english/ymmv)).
Sin embargo, he visto sin duda que tanto los comentarios de las personas que revisaron como las respuestas de los autores son algo groseras, bruscas y a menudo carentes de toda cortesía.
Además, tanto como autor y como revisor, a menudo he deseado que hubiera una oportunidad y un espacio para debatir, pedir aclaraciones y consejos, y dar las gracias a autores y revisores por su trabajo.
Por último, también existe el temido "rechazo de escritorio", en el que el manuscrito nunca llega a pasar la revisión por pares porque la revista considera que el trabajo está fuera de ámbito, carece de rigor científico, no encaja y/o carece de novedad.
No importa las horas invertidas en darle formato al documento para cumplir las directrices de autor, sólo para ser rechazado inmediatamente.

## Mi experiencia con la revisión por pares del software rOpenSci

Desde el principio, aprecié mucho la posibilidad de hacer una [consulta previa a la presentación](https://github.com/ropensci/software-review/issues/649).
Se acabaron las horas de formateo sólo para recibir el temido rechazo de escritorio! o, en este caso, cumplir los requisitos de presentación en cuanto a funcionalidad y documentación del paquete.
Este proceso fue muy sencillo, crear un nuevo [_issue_](https://github.com/ropensci/software-review/issues) y rellenar la plantilla previa al envío.
Recibí una respuesta entusiasta en menos de 2 semanas haciéndome saber que `mbquartR` era una buena opción.
¡Hora de ponerse a trabajar!
Una vez que sentí que había cumplido todas las directrices indicadas en el [Guía de desarrollo de rOpenSci](https://devguide.ropensci.org/es/index.es.html) estaba preparado para enviar mi paquete.
Las instrucciones sencillas hicieron que el proceso de envío fuera pan comido.
Abrí un nuevo [_issue_](https://github.com/ropensci/software-review/issues/658) y completé la plantilla.

El editor asignado y las dos revisoras voluntarias ¡fueron fantásticos!
A pesar de que el paquete devolvía errores en varios pasos del proceso de revisión, nunca me hicieron sentir mal por enviar algo que no era perfecto.
En cada paso e interacción sentí que las revisoras intentaban ayudarme a mejorar el paquete, no simplemente decirme que lo hiciera mejor.
Las revisoras tenían grandes sugerencias sobre cómo mejorar la experiencia del usuario del paquete.
El paquete tiene ahora advertencias y errores más informativos, y se ha añadido funcionalidad adicional a la función de mapeo.
También aprecié mucho la atención en la revisión al paquete en su conjunto, no sólo revisaron la funcionalidad del paquete, sino que también prestaron atención a toda la documentación.
Desde el _README_ hasta los artículos y las funciones, todo fue revisado.

La apertura y la naturaleza de hilo de debate del proceso de revisión me permitieron hacer preguntas y obtener aclaraciones sobre las solicitudes de revisión, las sugerencias y el propio proceso de revisión.
Esto supuso un gran cambio con respecto a mis experiencias anteriores con el proceso de revisión y me **encantaría** ver más de esto en el proceso de revisión de revistas académicas en el que me encuentro a menudo.
La escritura científica, como todas las formas de comunicación, será interpretada de forma diferente por distintas personas y es aquí donde tener la posibilidad de mantener un debate entre los autores y los revisores puede ser tan beneficioso.
Incluso si el proceso siguiera siendo ciego (anónimo), veo muchos beneficios. 
Sospecho que este enfoque fomentaría un entorno de colaboración que daría lugar a una ciencia más sólida y fiable.
También aprecio mucho que el trabajo y las contribuciones de las personas que revisan sean claramente visibles para todos y que reciban el reconocimiento que merecen.
También pude darles las gracias tanto como parte del proceso de revisión como dentro del paquete [_DESCRIPTION_](https://docs.ropensci.org/mbquartR/authors.html).
He escrito artículos para revistas que se han mejorado sustancialmente a partir de las sugerencias e ideas de las revisoras y, en muchos casos, no hay una buena forma de reconocer esta contribución o de que el revisor obtenga el crédito.
Creo que la declaración "Los autores desean agradecer a los dos revisores anónimos su ayuda para mejorar este artículo" no les da el reconocimiento adecuado ni muestra mi gratitud.

## Resumen

Enviar mi paquete a la revisión por pares de rOpenSci fue una experiencia completamente diferente a las revisiones académicas tradicionales a las que estoy acostumbrado.
El proceso fue abierto, colaborativo y constructivo.
En lugar del sistema cerrado y ciego al que estaba acostumbrado, en el que los revisores suelen ser anónimos y las interacciones limitadas, la revisión de rOpenSci se pareció más a una conversación.
Podía hacer preguntas y recibir comentarios reflexivos y respetuosos para mejorar el paquete.
Los revisores se centraron en todo, desde la funcionalidad del paquete hasta la documentación y la experiencia general del usuario.
Los revisores me ayudaron a mejorar el paquete y, lo que es más importante, recibieron un claro reconocimiento y mi agradecimiento por sus contribuciones.
Esto me hizo darme cuenta de lo valiosos que pueden ser el diálogo abierto y el intercambio de créditos en la revisión por pares, algo que me encantaría ver más en las publicaciones académicas.

Un **enorme** gracias al editor [Jeff Hollister](/author/jeff-hollister/) así como a [Sheila Saia](https://github.com/sheilasaia) y a [Emily (Em) Markowitz](https://emilyhmarkowitz.github.io/emilyhmarkowitz/) ¡por sus atentas críticas y su apoyo para que mi paquete brillara!
No sólo ayudaron a mejorar el paquete, sino que también hicieron que toda la experiencia de revisión fuera agradable.


