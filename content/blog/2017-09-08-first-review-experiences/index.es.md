---
slug: first-review-experiences
title: Experiencias revisando paquetes de rOpenSci por primera vez
date: '2017-09-08'
author: Verena Haunschmid
topicid: 861
translator: Juan Cruz Enrique
tags:
- software
- Revisión de Software
- revisores
description: aprende sobre la experiencia enriquecedora de una revisora de paquetes de rOpenSci.
params:
  doi: 10.59350/66z2j-12h31
---

Todo empezó el 26 de enero<sup>th</sup> de este año, cuando me ofrecí como voluntaria
para revisar paquetes de R enviados a rOpenSci. Mi principal motivación para
querer ser voluntaria era aprender algo nuevo y
contribuir a la comunidad de código abierto de R. Si te preguntas por qué la
gente detrás de rOpenSci está haciendo esto, puedes leer [Cómo rOpenSci utiliza la revisión de código para promover la ciencia reproducible](https://www.numfocus.org/blog/how-ropensci-uses-code-review-to-promote-reproducible-science/).

Tres meses después se puso en contacto conmigo [Maëlle Salmon](https://twitter.com/masalmon) preguntándome si estaba interesada en
revisar un paquete de R [`patentsview`](https://github.com/ropensci/patentsview) para rOpenSci. Y sí, ¡yo
fui! Para ser sincera, estaba un poco emocionada.

Los paquetes se envían para su revisión a rOpenSci a través de una publicación en su sitio web.
El repositorio de GitHub y las revisiones también se realizan allí. Así que puedes consultar
[todos los envíos de paquetes y revisiones anteriores](https://github.com/ropensci/software-review/issues).
Con toda la información
de rOpenSci y también la ayuda del editor es sencillo
hacer la revisión del paquete. Antes de empezar leí la
guía del revisor (enlaces más abajo) y comprobé algunas de las
revisiones existentes. Instalé el paquete `patentsview` de GitHub y también
descargué el código fuente para comprobar cómo estaba implementado.

Empecé probando la funcionalidad básica del paquete
ejecutando los ejemplos que se mencionaban en el README del
paquete. Creo que es un buen
punto de partida porque te haces una idea de lo que el autor quiere
conseguir con el paquete. Más tarde se me ocurrieron mis
propias consultas (nota al margen: este paquete de R interactúa con una API desde la que
puedes consultar patentes). Durante el proceso solía cambiar entre
escribir consultas como un usuario normal del paquete
y comprobar el código. Cuando veía algo en el código que
no me quedaba claro o me parecía incorrecto, volvía a escribir nuevas
consultas para comprobar si el comportamiento de los métodos era el esperado.

Con este enfoque pude dar mi opinión al autor del paquete
lo que llevó a la inclusión de una prueba unitaria adicional, una función de ayuda
que facilitara el uso del paquete, la aclaración de un mensaje de error
y una documentación mejorada. Puedes encontrar la revisión que hice [aquí](https://github.com/ropensci/software-review/issues/112#issuecomment-303462505).

Hay varios paquetes de R que me ayudaron a empezar con mi revisión,
por ejemplo: [`devtools`](https://github.com/hadley/devtools) y
[`goodpractice`](https://github.com/MangoTheCat/goodpractice). Estos
paquetes también pueden ayudarte cuando empieces a escribir tus propios paquetes. Un
ejemplo de método muy útil es `devtools::spell_check()` que
realiza una revisión ortográfica de la descripción del paquete y de las páginas del manual.
Al principio tuve un problema con `goodpractice::gp()` pero Maëlle Salmon
(la editora) me ayudó a resolverlo.

En el resto de este artículo puedes leer lo que gané personalmente haciendo un
revisión.

### Contribuir a la comunidad del código abierto

Cuando la gente piensa en contribuir a la comunidad del código abierto, la
lo primero que se piensa es en crear un nuevo paquete R o en contribuir a uno
de los principales paquetes existentes. Pero no todo el mundo tiene los recursos
(por ejemplo, tiempo) para hacerlo. Tampoco tienes ideas geniales cada dos por tres
que puedan implementarse inmediatamente en nuevos paquetes de R para ser utilizados por
la comunidad. Además de contribuir con código, también hay muchas
otras cosas que pueden ser útiles para otros usuarios de R, por ejemplo: escribir
artículos de blog sobre problemas que has resuelto, hablar en reuniones o revisar
código para ayudar a mejorarlo, etc. Lo que más me gusta de revisar código es que
la gente ve las cosas de forma diferente y tiene otras experiencias. Como revisor,
ves un paquete nuevo desde la perspectiva del usuario, lo que puede ser difícil para
el propio programador. Tener a otra persona que
revise tu código ayuda a encontrar cosas que faltan porque parecen
obvias para el autor del paquete o detectar fragmentos de código que requieren más
pruebas. Tuve una gran sensación cuando terminé la revisión, ya que había
ayudado a mejorar un paquete de R que ya era increíble.

### Revisar ayuda a mejorar tu propio estilo de codificación

Cuando escribo código en R suelo intentar hacerlo de la mejor manera posible.
[Guía de estilo de R de Google](https://google.github.io/styleguide/Rguide.xml)
Es un buen comienzo para acostumbrarse a las buenas prácticas de codificación en R y también
disfruté leyendo [Consejos breves sobre buenas prácticas de
programación](https://github.com/timoxley/best-practices). Normalmente
cuando pienso que algún trozo de código puede mejorarse (con respecto a la velocidad,
legibilidad o uso de memoria) compruebo en Internet si puedo encontrar una
solución mejor. A menudo simplemente no crees que algo pueda ser
mejor porque siempre lo has hecho de una determinada manera o la última vez 
que lo comprobaste no había una solución mejor. Aquí es cuando ayuda seguir
el código de otras personas. Yo lo hago leyendo sus blogs, siguiendo personas que usan R
en Twitter y consultando sus cuentas de GitHub. Revisar un programa de R
también me ayudó mucho a obtener nuevas ideas porque
comprobaba cada función con mucha más atención que cuando leía entradas de blog.
En mi opinión, un buen código no sólo utiliza el mejor paquete para cada
problema, sino que también los pequeños detalles están bien implementados. Una cosa que
solía hacer mal durante mucho tiempo era rellenar los data.frames hasta que
encontré un método mejor (mucho más rápido) en una
[solución en stackoverflow](https://stackoverflow.com/a/29419402).
Y con respecto a esto
puedes aprender mucho del código de otra persona. Lo que me pareció realmente genial en
el paquete que revisé fue el uso de pequeñas funciones de ayuda (ver
[utils.R](https://github.com/ropensci/patentsview/blob/c03e1ab2537873d7a9b76025b0072953efb475c1/R/utils.R)).
Funciones como `paste0_stop` y `paste0_message` hacen que el resto del
código sea mucho más fácil de leer.

### Un buen comienzo para escribir tus propios paquetes

Al revisar un paquete de R, compruebas el código como un observador muy atento.
Me di cuenta de muchas cosas que normalmente no te importan cuando utilizas
un paquete de R, como los comentarios, la utilidad de la documentación y los
ejemplos, y también lo bien que cubren el código las pruebas unitarias. Creo que
revisar unos cuantos paquetes buenos puede prepararte muy bien para escribir tus
propios paquetes.

### ¿Quieres contribuir tú mismo a rOpenSci?

Si te he motivado para convertirte en una persona que revisa para rOpenSci, ¡apúntate! Aquí
hay una lista de cosas útiles para participar como revisor o revisora de rOpenSci
como yo.

- [Formulario para inscribirse (sólo lleva un minuto)](/onboarding/)

- [Información para revisores](https://devguide.ropensci.org/reviewerguide.html)

- [Guía de revisión de Mozilla](https://mozillascience.github.io/codeReview/review.html)

- Mientras escribía este _blog post_ encontré un buen artículo sobre [contribuir 
  al tidyverse](https://www.tidyverse.org/articles/2017/08/contributing/) que
  en mi opinión, también es aplicable a otros paquetes de R.

Si, en general, te interesa enviar o revisar un paquete de R, me gustaría invitarte a la "Conversaciones con la Comunidad" [Convocatoria para la revisión de software por pares de rOpenSci](/blog/2017/08/31/comm-call-v14).


