---
title: 'Puentes y Comunidades. Mi Camino como Campeona de rOpenSci'
author: 
- Andrea Gomez Vargas
date: "2025-05-15"
slug: "puentes-comunidades-campeones-ropensci"
package_version: 0.1.0
tags:
- campeones
- paquetes
- comunidad
editor: 
- Yanina Bellini Saibene
doi: ""
---


Ser parte del programa de Campeones y Campeonas de rOpenSci ha sido una experiencia de crecimiento profesional y una oportunidad para contribuir a la comunidad. Aprendí sobre el desarrollo de paquetes en R mientras trabajaba en una herramienta para facilitar el acceso a datos censales de Argentina.

En este blog, quiero compartir cómo esta experiencia abrió nuevas oportunidades, me conectó con personas y comunidades, y me llevó a formar parte de nuevos proyectos, fortaleciendo mi compromiso con el acceso abierto a los datos.

## Mi proyecto en el programa

Desde el inicio, mi objetivo fue desarrollar un paquete en R que permitiera acceder de manera estructurada a los datos censales de Argentina. La idea surgió de la necesidad de contar con información histórica organizada y lista para su uso en análisis estadísticos y proyectos de investigación. Mi trabajo como analista de estadísticas de población me llevó a identificar la importancia de contar con una herramienta que facilitara el tratamiento de estos datos. En los censos históricos, estos datos se encuentran dispersos en distintos formatos (libros, PDFs, excels y REDATAM), lo que dificulta su acceso y utilización.

{{< figure src = "censos-argentina.png" alt = "Collage con las portadas de los censos nacionales de Argentina desde 1970 hasta 2022." >}}

Durante el programa, trabajé en la organización y estandarización de los datos, enfrentándome a desafíos como la estructuración de la información (tidy data) y la creación de funciones eficientes para su manipulación. Uno de los aspectos más enriquecedores del programa fueron las sesiones de entrenamiento proporcionadas por rOpenSci (agradecimiento especial a Maelle y Yani por toda la paciencia y aprendizaje), y el intercambio continuo de proyectos con los demás campeones y campeonas del programa. 


Participamos en capacitaciones virtuales sobre manejo de código, uso de paquetes eficientes para la creación de paquetes en R y la automatización con GitHub Actions, entre otros temas, todo con un enfoque en buenas prácticas. Además, tuve la oportunidad de contar con la mentoría personalizada de Luis Verde, amigo de la comunidad LatinR, que me acompañó a lo largo del proceso de desarrollo del paquete, brindando orientación clave en cada etapa.

## Expectativa vs realidad 


{{< figure src = "codehero.png" alt = ""Ilustración de una persona con una capa que dice 'code hero', diciendo '¡Estoy haciendo algo completamente sola!' mientras vuela con una laptop. Debajo hay una red de contención sostenida por personas con carteles que dicen 'apoyo' y 'comunidad'. También hay globos aerostáticos que ayudan a sostenerla, con etiquetas como 'docentes', 'blogueras', 'amigxs', 'desarrolladorxs' y 'contribuyentes'." class = "pull-right" >}}

<p style="font-size: small; text-align: right;">Ilustración de <a href="https://www.allisonhorst.com/" target="_blank">Allison Horst</a>.</p>


Mientras avanzaba en el desarrollo del paquete, me enfrenté a un desafío clave: la estructura de los datos. A medida que incorporaba información de distintos años censales, me di cuenta de que cada censo traía consigo miles de archivos excel en formatos diversos dificultando la automatización y haciendo las transformación 1 por 1, lo que hacía aún más compleja la tarea de estandarización. 
Fue entonces cuando decidí invitar a Emanuel Ciardullo a sumarse al proyecto. Formamos una dupla desde nuestras miradas complementarias —yo desde la sociología, él desde la estadística— para encarar esta primera fase del paquete. Esa alianza fue clave para poder repensar el enfoque y compartir el trabajo técnico y conceptual.

Mi propósito era abarcar en el paquete todos los años censales pero con el tiempo me di cuenta que me iba a llevar más tiempo de los estimado, me sirvió charlar mucho con amigos y miembros de rOpenSci.  No era solo una cuestión de organizar datos, sino de diseñar una estructura que permitiera integrar información de manera escalable y reutilizable en el futuro.

Con el volumen de trabajo ya realizado y una estrategia más clara, reordenamos el esquema del proyecto, definimos las distintas fases de disponibilidad de los datos, y con los que ya estaban estructurados, pudimos enfocarnos en darles su formato final dentro del paquete, armar la documentación y desarrollar las primeras funciones: get_census, check_repository y arcenso. 


## Arcenso 



{{< figure src = "arcenso-hex.png" alt = "Hex sticker azul del paquete de R arcenso, con un diseño inspirado en el sol de la bandera argentina y el nombre del paquete “[AR_censo]” en letras blancas en el centro." class = "pull-left" >}}



En medio de estas reflexiones y desafíos técnicos, nació arcenso, el paquete no solo busca facilitar el acceso a los datos censales, sino también fomentar su uso entre investigadores, el sector público y la ciudadanía en general mediante herramientas de software libre. La posibilidad de contribuir con una herramienta útil, abierta y pensada para la comunidad ha sido una de las motivaciones más importantes de este proceso. 

El proyecto se encuentra en su primera etapa: ya podés instalar el paquete desde devtools y explorar los primeros años censales disponibles, 1970 y 1980. El propósito es seguir trabajando para que arcenso se vuelva más robusto, atraviese el proceso de revisión por pares de rOpenSci y, eventualmente, esté disponible en CRAN. El programa de campeones fue el punto de partida, pero el desarrollo del paquete continúa porque el potencial del recurso —para facilitar el acceso a datos clave de manera abierta y reutilizable— es enorme.



## La comunidad 

### Una beca, una conferencia y una comunidad global

Tuve la oportunidad de recibir la beca para asistir a la posit::conf, una de las conferencias internacionales más importante del ecosistema R. Fue una experiencia transformadora: aprendí muchísimo, conocí a personas que admiro y viví de cerca lo que significa formar parte de una comunidad global que apuesta por el software libre, el acceso abierto y el desarrollo colaborativo. Además, fue muy especial encontrarme en persona con parte del equipo de rOpenSci y otras personas que forman esta comunidad. El intercambio me ayudó a repensar aspectos clave de arcenso, desde su estructura hasta su potencial de colaboración abierta. Me volví con nuevas ideas, inspiración y una red de personas con quienes seguir creciendo.

{{< figure src = "comunidades.png" alt = "Collage con dos imágenes: a la izquierda, grupo de campeones rOpenSci en la posit::conf de izquierda a derecha: Luis Verde, Andrea Gomez, Sunny Tseng y Francisco Cardozo; a la derecha, una fotografía de la pantalla durante la presentación del paquete 'arcenso' en LatinR." >}}

### LatinR

Para noviembre, presentamos arcenso en LatinR, la conferencia latinoamericana sobre el uso de R en investigación y desarrollo. Junto a Emanuel, compartimos el trabajo realizado durante el programa y cómo trabajamos en dupla para construir esta primera fase del proyecto. Fue un momento muy especial para mostrarle a la comunidad regional lo que habíamos logrado y recibir sus comentarios y apoyo en el panel de proceso de desarrollo de paquetes.


### R en Red

Y para cerrar este gran 2024, desde la organización de R en Buenos Aires, en conjunto con R-Ladies Buenos Aires, impulsamos una presentación local del paquete. Como parte del equipo organizador, coordiné esta actividad con el objetivo de compartir el proyecto con la comunidad, mostrar lo que veníamos construyendo e invitar a más personas a conocerlo. Esta instancia fue muy buena, ya que no solo recibí comentarios valiosos de la comunidad, sino que también pude conectar con otras personas que habían enfrentado problemas similares. También aprovechamos la oportunidad para difundir el programa de Campeones y Campeonas de rOpenSci, con la esperanza de que más personas de nuestra región se animen a postular a la próxima cohorte.

{{< figure src = "arcenso-meet.png" alt = "Collage de tres momentos del evento “ARcenso, Oportunidades y Comunidad”: a la izquierda, foto grupal de personas asistentes al evento; en el centro, Andrea presentando y señalando en la pantalla las funciones principales del paquete arcenso; a la derecha, Andrea y Emanuel exponiendo sobre cómo organizaron el trabajo, frente a los asistentes del meetup." >}}

Presentar el proyecto y discutirlo con la comunidad me permitió reafirmar la importancia de crear herramientas accesibles y bien documentadas. Además, fue un recordatorio de que no estábamos solos en este proceso: la comunidad de R es un espacio donde el conocimiento se construye colectivamente, y participar activamente en ella fue fundamental para seguir adelante con el paquete.


### Lo que queda después del impulso


Participar del programa de Campeones y Campeonas de rOpenSci fue el punto de partida para crear algo que no sabía que podía construir. Me animó a pasar del uso de R al desarrollo de un paquete en R, y del caos de los datos al diseño de una herramienta pensada para que otras personas puedan trabajar mejor. Pero, sobre todo, me conectó con una comunidad que cree en compartir lo que sabe, en acompañarse en el proceso y en abrir caminos para quienes vienen después. Hoy arcenso sigue creciendo, y yo también: con nuevas ideas, nuevos desafíos y el deseo intacto de seguir construyendo en comunidad y para la comunidad.



