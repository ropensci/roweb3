---
slug: first-review-experiences
title: Experiencias como revisor de paquetes rOpenSci por primera vez
date: '2017-09-08'
author: Verena Haunschmid
topicid: 861
tags:
- software
- Software Peer Review
- reviewer
params:
  doi: 
---

Todo empezó el 26 de enero<sup>th</sup> de este año, cuando me apunté como voluntaria
revisor de paquetes R enviados a rOpenSci. Mi principal motivación para
querer ser voluntaria era aprender algo nuevo y
contribuir a la comunidad de código abierto de R. Si te preguntas por qué el
gente detrás de rOpenSci está haciendo esto, puedes leer [Cómo rOpenSci utiliza la revisión de código para promover la ciencia reproducible](https://www.numfocus.org/blog/how-ropensci-uses-code-review-to-promote-reproducible-science/).

Tres meses después se pusieron en contacto conmigo [Maëlle Salmon](https://twitter.com/masalmon) preguntándome si estaba interesada en
revisar el paquete R [`patentsview`](https://github.com/ropensci/patentsview) para rOpenSci. Y sí, yo
¡fui! Para ser sincera, estaba un poco emocionada.

Los paquetes se envían para su revisión a rOpenSci a través de una publicación en su sitio web.
repositorio de GitHub y las revisiones también se realizan allí. Así que puedes consultar
[todos los envíos de paquetes y revisiones anteriores](https://github.com/ropensci/software-review/issues).
Con toda la información que
de rOpenSci y también la ayuda del editor es sencillo
hacer la revisión del paquete. Antes de empezar leí el
guías del revisor (enlaces más abajo) y comprobé algunas de las
existentes. Instalé el paquete `patentsview` de GitHub y también
descargué el código fuente para comprobar cómo estaba implementado.

Empecé probando la funcionalidad básica del paquete mediante
ejecutando los ejemplos que se mencionaban en el README del
paquete. Creo que es una buena
punto de partida porque te haces una idea de lo que el autor quiere
conseguir con el paquete. Más tarde se me ocurrió
propias consultas (nota al margen: este paquete de R interactúa con una API desde la que
puedes consultar patentes). Durante el proceso solía cambiar entre
escribir consultas como un usuario normal del paquete
y comprobar el código. Cuando veía algo en el código que
no me quedaba claro o me parecía incorrecto, volvía a escribir nuevas
consultas para comprobar si el comportamiento de los métodos era el esperado.

Con este enfoque pude dar mi opinión al autor del paquete
lo que condujo a la inclusión de una prueba unitaria adicional, una función de ayuda
que facilita el uso del paquete, la aclaración de un mensaje de error
y una documentación mejorada. Puedes encontrar la revisión que hice [aquí](https://github.com/ropensci/software-review/issues/112#issuecomment-303462505).

Hay varios paquetes de R que me ayudaron a empezar con mi revisión,
por ejemplo [`devtools`](https://github.com/hadley/devtools) y
[`goodpractice`](https://github.com/MangoTheCat/goodpractice). Estos
paquetes también pueden ayudarte cuando empieces a escribir tus propios paquetes. Un
ejemplo de método muy útil es `devtools::spell_check()` que
realiza una revisión ortográfica de la descripción del paquete y de las páginas del manual.
Al principio tuve un problema con `goodpractice::gp()` pero Maelle Salmon
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
otras cosas que pueden ser útiles para otros usuarios de R, por ejemplo escribir
entradas de blog sobre problemas que has resuelto, hablar en reuniones o revisar
código para ayudar a mejorarlo. Lo que más me gusta de revisar código es que
la gente ve las cosas de forma diferente y tiene otras experiencias. Como revisor,
ves un paquete nuevo desde la perspectiva del usuario, lo que puede ser difícil para
para el propio programador. Tener a otra persona
revise tu código ayuda a encontrar cosas que faltan porque parecen
obvias para el autor del paquete o detectar fragmentos de código que requieren más
pruebas. Tuve una gran sensación cuando terminé la revisión, ya que había
ayudado a mejorar un paquete de R que ya era increíble.

### Revisar ayuda a mejorar tu propio estilo de codificación

Cuando escribo código R suelo intentar hacerlo de la mejor manera posible.
[Guía de estilo de R de Google](https://google.github.io/styleguide/Rguide.xml)
es un buen comienzo para acostumbrarse a las buenas prácticas de codificación en R y también
disfruté leyendo [Buenas prácticas de programación
Curiosidades](https://github.com/timoxley/best-practices). Normalmente
cuando pienso que algún trozo de código puede mejorarse (con respecto a la velocidad,
legibilidad o uso de memoria) compruebo en Internet si puedo encontrar un
solución mejor. A menudo simplemente no crees que algo pueda ser
mejorar porque siempre lo has hecho de una determinada manera o la última vez que
que lo comprobaste no había una solución mejor. Aquí es cuando ayuda seguir
el código de otras personas. Yo lo hago leyendo sus blogs, siguiendo muchos R
en Twitter y consultando sus cuentas de GitHub. Revisar un programa R
también me ayudó mucho a obtener nuevas ideas porque
comprobaba cada función con mucha más atención que cuando leía entradas de blog.
En mi opinión, un buen código no sólo utiliza el mejor paquete para cada
problema, sino que también los pequeños detalles están bien implementados. Una cosa que
solía hacer mal durante mucho tiempo era rellenar los data.frames hasta que
encontré un método mejor (mucho más rápido)
[solución en stackoverflow](https://stackoverflow.com/a/29419402).
Y con respecto a esto
puedes aprender mucho del código de otra persona. Lo que me pareció realmente genial en
el paquete que revisé fue el uso de pequeñas funciones de ayuda (ver
[utils.R](https://github.com/ropensci/patentsview/blob/c03e1ab2537873d7a9b76025b0072953efb475c1/R/utils.R)).
Funciones como `paste0_stop` y `paste0_message` hacen que el resto del
código sea mucho más fácil de leer.

### Un buen comienzo para escribir tus propios paquetes

Al revisar un paquete de R, comprueba el código como un observador muy atento
observador. Me di cuenta de muchas cosas que normalmente no te importan cuando utilizas
un paquete R, como los comentarios, la utilidad de la documentación y la
ejemplos, y también lo bien que cubren el código las pruebas unitarias. Creo que
revisar unos cuantos paquetes buenos puede prepararte muy bien para escribir tu
propios paquetes.

### ¿Quieres contribuir tú mismo a rOpenSci?

Si te he motivado para convertirte en revisor de rOpenSci, ¡apúntate! Aquí
hay una lista de cosas útiles si quieres convertirte en revisor de rOpenSci
como yo.

- [Formulario para inscribirse (sólo lleva un minuto)](/onboarding/)

- [Información para revisores](https://devguide.ropensci.org/reviewerguide.html)

- [Guía de revisión de Mozilla](https://mozillascience.github.io/codeReview/review.html)

- Mientras escribía esta entrada del blog encontré un buen artículo sobre [contribuir a
  al tidyverse](https://www.tidyverse.org/articles/2017/08/contributing/) que es
  en mi opinión, también es aplicable a otros paquetes de R.

Si, en general, estás interesado en enviar o revisar un paquete de R, me gustaría invitarte a la sección [ Convocatoria de la Comunidad sobre revisión e incorporación de software rOpenSci](/blog/2017/08/31/comm-call-v14).


