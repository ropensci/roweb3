---
title: Cómo incorporar nuevas personas al mantenimiento de tu paquete
author:
- Yanina Bellini Saibene
- Noam Ross
- Maëlle Salmon
editor:
- Steffi LaZerte
translator:
- Yanina Bellini Saibene
date: '2026-01-27'
slug: new-maintainer
description: Encontrar nuevas personas para el mantenimiento de tu paquete de R puede ser una tarea abrumadora. En este post compartimos consejos prácticos y estrategias para ayudarte a identificar, invitar y acompañar a quienes puedan contribuir y hacerse cargo de tu paquete.
tags:
- desarrollo de paquetes
- notas técnicas
- maintenance
- contributors
- community
params:
  doi: 10.59350/teckx-0v214
---

Mantener un paquete de código abierto es un trabajo gratificante, pero también es [**mucho** trabajo](/es/blog/2023/02/07/what-does-it-mean-to-maintain-a-package/).
 La vida y las carreras cambian, los intereses cambian, y a veces simplemente no tienes tiempo o energía para seguir trabajando en tu paquete R (¡y no pasa nada!). [^1] ).
Cuando eso ocurra, una de las cosas más responsables que puedes hacer por las personas que usuan tu paquete, *y* por ti mismo, es **buscar proactivamente alguien más que pueda sumarse a mantener el paquete.**

[^1]: Si aparece la culpa, recordá que todo lo que construiste hasta ahora no se invalida por elegir dar un paso atrás más adelante.

 ¿Cómo puedo encontrar a una persona que quiera mantener mi paquete? es una pregunta que oímos mucho en rOpenSci.
A lo largo de los años, hemos apoyado a los autores y autoras de paquetes de rOpenSci en esta transición, ayudándoles a ponerse en contacto con posibles personas interesadas en mantener, a aclarar las expectativas en torno a la función y a hacer que los traspasos sean más fluidos y sostenibles.

En este post, compartimos consejos prácticos y estrategias para ayudarte a encontrar personas que puedan contribuir y, con el tiempo, hacerse cargo de tu paquete, basándonos en lo que hemos aprendido apoyando a quienes mantienen de paquetes que forman parte del conjunto de paquetes de rOpenSci.

## Empieza pronto

El mejor momento para empezar a buscar nuevas personas que mantengan es mucho antes de que realmente la necesites, y el mejor lugar para buscar es entre las personas que ya colaboran y contribuyen a tu paquete.
Por esta razón, es una buena idea que la planificación de la sucesión forme parte de tu estrategia de diseño y mantenimiento desde el principio.

Recomendamos contar con una ["declaración del ciclo de vida"](https://stats-devguide.ropensci.org/standards.html#G1_2) que describa la visión a mediano y largo plazo del mantenimiento y desarrollo del paquete.
Pueden ser unas pocas frases en un `CONTRIBUTING.md` o en `README.md` que describa tus intenciones de desarrollo, incluido el tiempo que piensas mantener el paquete.
Aunque el futuro sea incierto, esto ayuda a establecer expectativas claras, tanto a nivel personal como para posibles colaboraciones.

## Haz que el paquete sea fácil de usar

Si quieres atraer colaboradores que puedan convertirse en mantenedores a corto o largo plazo, tu paquete tiene que ser **accesible**.
Nuestra [Guia de desarrollo tiene un capítulo entero sobre cómo hacer que los paquetes sean aptos para recibir colaboraciones](https://devguide.ropensci.org/maintenance_collaboration.html) y también tenemos la _Conversaciones con la Comunidad_ ["Configura tu paquete para fomentar una comunidad"](/commcalls/apr2021-pkg-community/). Esencialmente, estos son algunos puntos clave a tener en cuenta.

Pregúntate:

- ¿Podría una persona nueva entender cómo construir, probar y publicar este paquete solo a partir del repositorio?
- ¿Hay suficiente documentación para que contribuir sea claro y se sienta amigable?

Añadir o mejorar las directrices de contribución es una forma estupenda de reducir las barreras para que alguien empiece a realizar tareas de mantenimiento, incluso antes de que asuma oficialmente el papel.
Una buena `CONTRIBUTING.md` puede abarcar:

- Cómo configurar un entorno de desarrollo.
- Preferencias de flujo de trabajo: ¿ _Issue_ antes que _Pull Request_?
- Cómo prefieres recibir los _Pull Request_ (por ejemplo, una funcionalidad por _Pull Request_, debe incluir pruebas, etc.).
- Pautas de estilo o formato del código.
- Pruebas y cómo ejecutarlas.
- Notas sobre el proceso de publicación, incluidos _scripts_, flujos de trabajo CI o pasos manuales que sigas para publicar una nueva versión.

Cuanto más claramente tengas documentados tus procesos, más fácil le resultará a alguien decir "sí" al mantenimiento.

Según el tiempo y la disponibilidad, también podés invertir activamente en acompañar el crecimiento de quienes colaboran, por ejemplo:

- Acompañar a quienes colaboran por primera vez en su primera _pull request_[^1] .
- Organiza un _"bug bash"_ o un _"sprint de documentación"_ para fomentar las contribuciones. Nuestra [guía sobre la organización de eventos para invitar nuevas contribuciones](https://ftc-guide.ropensci.org) tiene recursos que te ayudarán a planificarlo.
- Destaca las "Buen 'primer _issue_'" y ["_Issues_ 'se busca ayuda'".](https://ropensci.org/es/blog/2023/09/19/help-wanted/) en tu gestor de _issues_.

[^1]: Esta puede ser una buena forma de descubrir si tu guía de contribución es lo suficientemente detallada.

Estas actividades ayudan a ampliar tu comunidad de personas que colaboran y que potencialmente pueden mantener en el futuro, pero serán más eficaces si empiezas mucho antes de decidir dejar de mantener el paquete, cuando aún tienes mucho tiempo y energía para invertir.

## Aclara lo que estás dispuesto/a a hacer (y lo que no)

Quienes puedan sumarse al mantenimiento probablemente se pregunten:

- ¿Seguirás disponible para responder preguntas?

- ¿Mantendrás cierto nivel de control o lo cederás por completo? (es decir, ¿estás buscando acompañar el mantenimiento o hacer un traspaso total?)

Aclaralo de forma explícita.
Por ejemplo:

- "Puedo acompañar y estar disponible durante la transición, pero planeo retirarme por completo del mantenimiento una vez finalizada".

- "Me retiro por completo del mantenimiento, pero puedo responder algunas preguntas durante la transición".

- "Quiero hacer el traspaso completo y retirarme del mantenimiento lo antes posible".

Establecer límites claros ayuda a otras personas a decidir si desean sumarse y evita malentendidos más adelante.

## Abre un _issue_: “Se busca apoyo para el mantenimiento”

Una vez que hayas decidido buscar nuevas personas que colaboren o tomen por completo el mantenimiento y cómo piensas implicarte en el proyecto en el futuro, comunícalo claramente.
Un primer paso visible es abrir un _issue_ en tu repositorio dedicada a este tema.

Crea una incidencia con un título claro, como por ejemplo “Se busca apoyo para el mantenimiento”, "Se buscan nuevas personas para mantener el paquete", "Buscamos sumar colaboraciones para mantener el paquete".

En el cuerpo, puedes incluir:

- **Qué nivel de mantenimiento** se necesita (sólo corrección de errores, desarrollo de funciones, documentación, etc.).
- **Lo que buscas** en una nueva persona que colabore/mantenga:
  - ¿Familiaridad con el lenguaje/ecosistema?
  - ¿Experiencia con pruebas o CI?
  - ¿Comodidad con la publicación de nuevas versiones?
- **Cómo expresar interés** (comentar el tema, enviarte un correo electrónico, etc.).
- Cualquier **cronograma** que tengas en mente para la transición.

Opcionalmente, también puedes explicar *Por qué* das un paso al costado (sin necesidad de mucho detalle: tiempo, interés, cambio de trabajo, etc.).

Este _issue_ se convierte en el lugar central para debatir los cambios de propiedad y puede servir posteriormente como registro público de la transición.

[El _issue_ "Nuevo(s) mantenedor(es/as)" del paquete rentrez](https://github.com/ropensci/rentrez/issues/203) es un buen ejemplo de contenido, recursos y conversación de seguimiento.

Si tu repositorio está en GitHub puedes *anclar* este _issue_ para que se muestre en la parte superior de la pestaña issues y gane visibilidad.

## Actualiza tu README para reflejar el estado del paquete

El README es el otro lugar que verán muchas de las personas que usan tu paquete.
Agrega una nota breve y bien visible cerca de la parte superior, por ejemplo:

```markdown
⚠️ **Estado del proyecto:** se buscan personas que se sumen al mantenimiento.  
Si te interesa ayudar con el mantenimiento de este paquete,
revisá [este issue](link-to-issue) o 
escribí a tu_email@ejemplo.com.
```

Este mensaje:

- Establece expectativas para los y las usuarias.
- Invita a posibles personas interesadas directamente desde la portada de tu repositorio.
- Reduce la posibilidad de que alguien asuma que el paquete está abandonado sin explicación ([este artículo enumera las fuentes de información que aconsejamos comprobar para entender el estado de un paquete](/blog/2022/07/01/evaluating-github-activity-for-contributors/)).

También puedes añadir un **"Estado del proyecto"** en el README que ofrezca un poco más de contexto (por ejemplo, "Modo: mantenimiento solamente", "nuevas características improbables sin nuevas personas que mantengan", etc.).

## Acércate a las personas que ya colaboran y que son usuarias avanzadas 

Los mejores candidatos y candidatas para sumar apoyo al mantenimiento uelen estar más cerca de lo que parece:

- Personas que han enviado _PRs_.
- Personas que han presentado cuestiones útiles y detalladas.
- Personas que sabes que utilizan el paquete en su trabajo.

Tú puedes:

- Enviar un correo electrónico o un mensaje breve y cortés a algunas personas que hayan sido especialmente activas. Aunque digan que no, puede que conozcan a alguien que encaje bien en el equipo.
- Si no hay un correo electrónico u otra forma de contacto disponible, etiquetá directamente a estas personas activas en el _issue_ “Se busca apoyo para el mantenimiento”, como se hizo en el [repositorio del paquete rentrez](https://github.com/ropensci/rentrez/issues/203).

## Anúncialo donde estén las personas que usan tu paquete

Ahora que el repo de tu paquete tiene mensajes claros, un lugar donde expresar interés y una forma clara de comunicarse contigo, es buena idea correr la voz más allá de tu repositorio.

Considera la posibilidad de publicar un breve anuncio en lugares donde sea probable que tus usuarias/os o colaboradores/as lo vean:

- Foros, listas de correo, canales de Slack/Discord relevantes para tu lenguaje de programación y-o disciplina.
- Redes sociales (por ejemplo, Mastodon, Bluesky, LinkedIn) utilizando hashtags específicos como #RStats.

Por ejemplo, rOpenSci [enumera los _issues_ buscando nuevas personas para el mantenimiento de paquetes en nuestro sitio web](/help-wanted/) los compartimos en nuestras redes sociales y en nuestro [boletín de noticias](/blog/2025/12/18/news-december-2025/#calls-for-contributions).

## Añadir un mensaje de inicio de paquete

En cierto momento, puedes plantearte añadir un mensaje de inicio que informe a las personas usuarias sobre la búsqueda de ayuda para mantener el paquete.

En este mensaje puedes enlazar con el issue "Se busca apoyo para el mantenimiento" y animar a quienes usan el paquete a que te consulten si tienen interés en ayudar.

Se trata de un movimiento agresivo y puede ser molesto, así que considéralo sólo si tu paquete es usado activamente por muchas personas y no has tenido mucha suerte encontrando alguien que tome responsabilidades de mantenimiento por otros canales.

## Último recurso: archiva tu paquete

Si después de un tiempo razonable no has podido encontrar alguien que se sume a mantener tu paquete,
puede que tengas que tomar la difícil decisión de archivarlo, en tu repositorio, por ejemplo [GitHub](https://docs.github.com/en/repositories/archiving-a-github-repository/archiving-repositories) -- y en CRAN, si corresponde.
Archivar el paquete pone fin, aunque sea tristemente, a tus esfuerzos de mantenimiento.

Antes de archivar tu paquete, tómate tu tiempo para añadir un comentario explicativo en todos los _issues_ y _PRs_ y para cerrarlos todos.
Puedes crear un nuevo README para explicar el nuevo estado.
Podrías añadir cómo ponerse en contacto contigo en caso de que alguien quisiera reactivar el repositorio y encargarse del mantenimiento.

Puede que tu software sea sustituido por otros paquetes,
[tal vez alguien acabe poniéndose en contacto contigo para pedirte que le transfieras el repositorio](https://github.com/ropensci/nodbi/issues/48),
tal vez alguien cree un sustituto con el mismo nombre (y con suerte con la autoría y licencia correctas si reutiliza tu código).
En cualquier caso, habrás hecho todo lo posible y el destino del paquete R no está en tus manos.

## Está bien dar un paso atrás

Dejar de mantener un paquete es una parte normal del ciclo de vida del código abierto.

Por:

- Haz planes para la sucesión desde el principio,
- Hacer que el paquete sea amigable para los colaboradores,
- Aclarar tus propios límites,
- Abriendo un tema claro de "Buscando nuevo mantenedor",
- Actualizando tu README,
- Llegar a los colaboradores,
- Anunciar la búsqueda en los canales adecuados,
- y si es necesario, archivando tu paquete,

das a tu proyecto la mejor oportunidad de continuar, respetando al mismo tiempo tu propio tiempo y energía.

¿Tienes algún otro consejo o idea?
Por favor, compártelos.
¡Nos encantaría saberlo!


