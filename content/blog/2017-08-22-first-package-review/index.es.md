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
  doi: 
---

Contribuir a una comunidad de código abierto *sin* aportar código es una idea a menudo cacareada que puede parecer nebulosa. Por suerte, poner en práctica ideas vagas es uno de los puntos fuertes de la iniciativa [Comunidad rOpenSci](/community/) y su sistema de incorporación de paquetes ofrece la oportunidad de hacerlo.

Era la primera vez que revisaba un paquete y, como ocurre con tantas cosas en la vida, me preocupaba arruinar de algún modo el proceso de revisión del paquete, no sólo el paquete en sí, sino también la infraestructura de incorporación... quizá incluso rOpenSci en su conjunto.

Salvo la destrucción del duro trabajo de otra persona y/o de toda una organización, estaba bastante segura de que tendría poco que ofrecer en forma de consejo útil. *¿Y si no tengo absolutamente nada que decir aparte de "sí, esto es, de hecho, un paquete"?*

{{< figure src="np59m8Z.png" caption="Revisión del paquete rOpenSci: lo que imaginaba"  alt="emoji avergonzado sólo capaz de valorar 'es un paquete'" >}}

Así que el primer paso (para mí) fue: confesar mis insuficiencias y pedir consejo. Resulta que gran parte de los consejos respecto a *cómo revisar un paquete* están incluidos en los documentos. En [plantilla de revisor](https://devguide.ropensci.org/reviewtemplate.html) es un gran mapa del camino, cuya utilidad se desarrolla en el [Guía de revisión de paquetes rOpenSci](https://devguide.ropensci.org/reviewerguide.html). Si lees esto detenidamente y lees detenidamente una o dos revisiones recomendadas (enlaces en la guía de revisión), probablemente estarás listo para empezar. Pero, si te sientes especialmente neurótico (como yo casi siempre), la Guía de revisión de paquetes rOpenSci [editores de incorporación](https://devguide.ropensci.org/softwarereviewintro.html#associateditors) y la comunidad en general son fuentes inagotables de sabiduría y recursos.

## `visdat`

Yo no sabía nada de [Nicholas Tierney](https://github.com/njtierney)'s [`visdat`](https://visdat.njtierney.com/) paquete antes de recibir mi [invitación a revisar](https://github.com/ropensci/software-review/issues/87#issuecomment-270428584) revisarlo. Así que lo primero que hice fue jugar con él de la misma forma que lo hago con otros paquetes interesantes de R que encuentro. Se trata de un batiburrillo totalmente desestructurado de ejecutar ejemplos, introducir mis propios datos y ver qué ocurre. Además de ser divertido, es una buena forma de "verificar" la misión del paquete y asegurarse de que no hay ninguna función muy útil que se esté pasando por alto.

Si estás *no* conoces `visdat` , "proporciona al usuario una forma rápida de examinar visualmente la estructura de su conjunto de datos y, más concretamente, dónde y qué tipos de datos faltan". [^1] Con el AED (análisis exploratorio de datos) en fase inicial, lo que realmente intentas es obtener una*sensación* de tus datos. Así que, sabiendo que no podía ser de mucha ayuda en la *"así es como podrías hacer esto más rápido con C++"* decidí asumir plenamente mi papel de *"usuario ingenuo".* . [^2]

### Preguntas que tenía en mente como <del>yo mismo</del>  ingenuo residente:

- ¿Qué pensaba que haría esta cosa? ¿Lo hizo?
- ¿Qué cosas me asustan?

Esta última pregunta es clave y, aunque no tengo datos que lo respalden, puede ser una especie de fallo de usabilidad "silencioso" cuando no se examina. Alguien que juguetea con un paquete, pero lo encuentra confuso, no se detiene necesariamente a dar su opinión. También existe un pseudo *maldición del conocimiento* del conocimiento. Mientras que los mensajes y advertencias son fácilmente analizados, suprimidos, tratados y/o descartados por el usuario/programador veterano de R, un texto inesperado y de colores brillantes puede gritar fácilmente *Dios mío, ¡lo has roto todo!* a los menos experimentados.

## Miríadas de lecciones aprendidas

No puedo hablar en nombre de Nick por la utilidad o no de mi revisión (puedes ver [su opinión aquí](/blog/2017/08/22/visdat) pero yo *puedo* dar fe de la experiencia de revisión de paquetes como medio de inspeccionar metódicamente las entrañas de un paquete de R. Metódica es realmente la palabra clave. Aunque *"lee la documentación".* o *"mira el código"* suena bastante sencillo, pero no siempre es fácil persuadirse a uno mismo para realizar la tarea pieza por pieza sin un objetivo final en mente. Aunque el deseo de contribuir al software de código abierto es bastante noble (y es como yo *personalmente* acabé implicado en este proceso, con algo de ayuda/instrucción de [Noam Ross](https://twitter.com/noamross) ), también es una abstracción que puede hacer que uno se sienta abrumado y sin saber por dónde empezar. [^3]

También hay [puntos extra egoístas](https://devguide.ropensci.org/softwarereviewintro.html#whyreview#whyreview) que simplemente no puedes evitar, si sigues el camino de la revisión de paquetes de rOpenSci, especialmente si el desarrollo de paquetes es nuevo para ti. [^4] Diablos, el[guía de revisión de paquetes](https://devguide.ropensci.org/reviewerguide.html) fue esclarecedora por sí sola.

Además, el sabio-sabio [editores de rOpenSci](https://devguide.ropensci.org/softwarereviewintro.html#associators) [^5] son excelentes emparejadores, y garantizan que realmente estás revisando un paquete escrito por alguien que*quiere* que su paquete sea revisado. Esto parece bastante sencillo, pero es reconfortante saber que tu opinión no es totalmente no solicitada.

[^1]: Sí, estoy citando mi propia crítica.

[^2]: Así que, básicamente, sólo hago de mí misma... También sabía que, aunque sólo sea eso, puedo corregir y corregir textos.

[^3]: Ahí*son* Sin embargo, hay muchos recursos buenos para superar este obstáculo (por ejemplo [Sólo para principiantes](https://www.firsttimersonly.com/) o [Charlotte Wickham](https://twitter.com/cvwickham)'s [Codificación colaborativa](https://cwick.co.nz/talks/collab-code-user17/#/) de useR!2017 es esp. para el usuario de R).

[^4]: Vale, así que no tengo un mundo paralelo en el que una versión mía muy experimentada como desarrolladora de paquetes va por ahí consiguiendo*menos* del proceso, *pero* si ya conoces a fondo la estructura de los paquetes, es poco probable que tropieces con tantos momentos "a-ha" básicos.

[^5]:[Noam Ross](https://github.com/noamross), [Scott Chamberlain](https://github.com/sckott), [Karthik Ram](https://github.com/karthik), \& [Maëlle Salmon](https://github.com/maelle)


