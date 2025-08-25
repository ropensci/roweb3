---
slug: first-package-review
title: Así que (no) crees que puedas revisar un paquete
date: '2017-08-22'
author: Mara Averick
translator: Juan Cruz Enrique
topicid: 838
tags:
- Revisión por pares de Software
- revisor
- visualización
- comunidad
- paquetes
params:
  doi: 10.59350/vej9b-tc502
---

Contribuir a una comunidad de código abierto *sin* aportar código es una idea a menudo extraña que puede parecer confusa. Por suerte, poner en práctica ideas vagas es uno de los puntos fuertes de la iniciativa [rOpenSci](/community/) y su sistema de revision de paquetes ofrece la oportunidad de hacerlo.

Era la primera vez que revisaba un paquete y, como ocurre con tantas cosas de la vida, me preocupaba arruinar de algún modo el proceso de revisión del paquete, no sólo el paquete en sí, sino también la infraestructura ... quizá incluso rOpenSci en su conjunto.

Salvo la destrucción del duro trabajo de otra persona y/o de toda una organización, estaba bastante segura de que tendría poco que ofrecer en forma de consejos útiles. *¿Y si no tengo absolutamente nada que decir aparte de "sí, esto es, de hecho, un paquete"?*

{{< figure src="np59m8Z.png" caption="Revisión del paquete rOpenSci: lo que imaginaba"  alt="emoji avergonzado sólo capaz de valorar 'es un paquete'" >}}

Así que el primer paso (para mí) fue: confesar mis insuficiencias y pedir consejos. Resulta que gran parte de los consejos respecto a *cómo revisar un paquete* están incluidos en los documentos. La [plantilla de revisor](https://devguide.ropensci.org/reviewtemplate.html) es un gran mapa del camino, cuya utilidad se desarrolla en la [Guía de revisión de paquetes rOpenSci](https://devguide.ropensci.org/reviewerguide.html). Si lees esto detenidamente y lees además una o dos revisiones recomendadas (enlaces en la guía de revisión), probablemente estarás listo para empezar. Pero, si te sientes especialmente nervioso (como yo casi siempre), la Guía de revisión de paquetes rOpenSci [editores de incorporación](https://devguide.ropensci.org/softwarereviewintro.html#associateditors) y la comunidad en general son fuentes de sabiduría y recursos confiables e inagotables.

## `visdat`

Yo no sabía nada de [Nicholas Tierney](https://github.com/njtierney)'s [`visdat`](https://visdat.njtierney.com/) paquetes antes de recibir mi [invitación a revisarlo](https://github.com/ropensci/software-review/issues/87#issuecomment-270428584). Así que lo primero que hice fue jugar con él de la misma forma que lo hago con otros paquetes interesantes de R que encuentro. Se trata de una mezcla totalmente desestructurada de ejecutar ejemplos e introducir mis propios datos para ver qué ocurre. Además de ser divertido, es una buena forma de "verificar" la misión del paquete y asegurarse de que no hay ninguna función muy útil que se esté pasando por alto.

Si *no* conoces `visdat` , "proporciona al usuario una forma rápida de examinar visualmente la estructura de su conjunto de datos y, más concretamente, dónde y qué tipos de datos faltan". [^1] Con el AED (análisis exploratorio de datos) en fase inicial, lo que realmente intentas es obtener una *sensación* de tus datos. Así que, sabiendo que no podía ser de mucha ayuda en la revisión del tipo *"así es como podrías hacer esto más rápido con C++"* decidí asumir plenamente mi papel de *"usuario ingenuo".* . [^2]

### Preguntas que tenía en mente como la usuaria ingenuo residente:

- ¿Qué pensaba que haría esta cosa? ¿Lo hizo?
- ¿Qué cosas me asustan?

Esta última pregunta es clave y, aunque no tengo datos que lo respalden, puede ser una especie de fallo "silencioso" si no se examina. Alguien que juguetea con un paquete, pero lo encuentra confuso, no se detiene necesariamente a dar su opinión. También existe una pseudo *maldición del conocimiento*. Mientras que los mensajes y advertencias son fáciles de analizar, suprimir, tratar y/o descartar por el usuario/programador veterano de R, un texto inesperado y de colores brillantes puede gritar fácilmente *Dios mío, ¡lo has roto todo!* a los menos experimentados.

## Miríadas de lecciones aprendidas

No puedo hablar en nombre de Nick por la utilidad o no de mi revisión (puedes ver [su opinión aquí](/blog/2017/08/22/visdat) pero yo *puedo* dar fe de la experiencia de revisión de paquetes como medio de inspeccionar metódicamente las entrañas de un paquete de R. Metódica es realmente la palabra clave. Aunque *"lee la documentación".* o *"mira el código"* suena bastante sencillo, pero no siempre es fácil persuadirse a uno mismo para realizar la tarea pieza por pieza sin un objetivo final en mente. Aunque el deseo de contribuir al software de código abierto es bastante noble (y es como yo *personalmente* acabé implicado en este proceso, con algo de ayuda/instrucciones de [Noam Ross](https://twitter.com/noamross) ), también es una abstracción que puede hacer que uno se sienta abrumado y sin saber por dónde empezar. [^3]

También hay [puntos extra egoístas](https://devguide.ropensci.org/softwarereviewintro.html#whyreview#whyreview) que simplemente no puedes evitar, si sigues el camino de la revisión de paquetes de rOpenSci, especialmente si el desarrollo de paquetes es nuevo para ti. [^4] Diablos, la [guía de revisión de paquetes](https://devguide.ropensci.org/reviewerguide.html) fue muy clara por sí sola.

Además, el sabio-sabio [editores de rOpenSci](https://devguide.ropensci.org/softwarereviewintro.html#associators) [^5] son excelentes juntando revisores con autores y garantizan que realmente estás revisando un paquete escrito por alguien que *quiere* que su paquete sea revisado. Esto parece bastante sencillo, pero es reconfortante saber que tu opinión va a ser tomada verdaderamente en cuenta.

[^1]: Sí, estoy citando mi propia crítica.

[^2]: Así que, básicamente, sólo hago de mí misma... También sabía que, aunque sólo sea eso, puedo corregir y corregir textos.

[^3]: Ahí sin embargo, hay muchos recursos buenos para superar este obstáculo (por ejemplo [Sólo para principiantes](https://www.firsttimersonly.com/) o [Charlotte Wickham](https://twitter.com/cvwickham)'s [Codificación colaborativa](https://cwick.co.nz/talks/collab-code-user17/#/) de useR!2017 es esp. para el usuario de R).

[^4]: Vale, así que no tengo un mundo paralelo en el que una versión mía muy experimentada como desarrolladora de paquetes va por ahí consiguiendo*menos* del proceso, *pero* si ya conoces a fondo la estructura de los paquetes, es poco probable que tropieces con tantos momentos "a-ha" básicos.

[^5]:[Noam Ross](https://github.com/noamross), [Scott Chamberlain](https://github.com/sckott), [Karthik Ram](https://github.com/karthik), \& [Maëlle Salmon](https://github.com/maelle)


