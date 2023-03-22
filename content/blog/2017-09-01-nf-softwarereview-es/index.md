---
slug: nf-softwarereview-es
title: Cómo rOpenSci utiliza la revisión de código para promover la ciencia reproducible
preface: '[Read the English version of this post](/blog/2017/09/01/nf-softwarereview/).<br/> Este artículo se publicó también en el blog de NumFOCUS. NumFOCUS es una organización sin fines de lucro que apoya y promueve computación científica de código abierto de primera clase e innovadora, incluyendo a rOpenSci.
date: '2017-09-01'
author:
  - Noam Ross
  - Scott Chamberlain
  - Karthik Ram
  - Maëlle Salmon
topicid: 850
tags:
  - software
  - Software Peer Review
  - community
---

En rOpenSci, creamos y curamos software para ayudar a quienes hacen ciencia en el ciclo de vida de los datos. Estas herramientas acceden, descargan, gestionan y archivan datos científicos de forma abierta y reproducible. Desde el principio, nos dimos cuenta de que esto sólo podía ser un esfuerzo comunitario. La variedad de datos y flujos de trabajo científicos sólo podía abordarse recurriendo a los aportes de personas con conocimientos específicos en cada campo.

Con el enfoque comunitario llegaron los desafíos. **¿Cómo podíamos garantizar la calidad del código escrito por personas que hacen ciencia pero sin formación formal en prácticas de desarrollo de software? ¿Cómo podríamos impulsar la adopción de buenas prácticas en nuestra comunidad? ¿Cómo podríamos crear una comunidad que se apoyara mutuamente en este trabajo?**

**Hemos tenido un gran éxito abordando estos retos a través de la *revisión por pares*.** Tomamos elementos de un proceso familiar para la comunidad en la que nos enfocamos (*la revisión por pares académica*) y una práctica del mundo del desarrollo de software (*revisión del código en producción*) para crear un sistema que fomente la calidad del software, la formación continua y el desarrollo de la comunidad.

## Un proceso de revisión abierto

**La revisión del software en producción** se lleva a cabo en los equipos de desarrollo de software ya sea de de código abierto o no. Las contribuciones a un proyecto de software son revisadas por uno o más miembros del equipo antes de su incorporación al código fuente del proyecto. Las contribuciones suelen ser pequeños parches, y la revisión sirve para asegurar la calidad, así como una oportunidad para formarse en las normas del equipo.

**En la revisión por pares académica** personas externas critican un producto completo -normalmente un manuscrito- de forma amplia y con la idea de criticar cualquier aspecto que consideren deficiente. La revisión académica suele ser anónima y pasar por ella da al producto, y la persona que lo produjo, una marca pública de validación.

**rOpenSci combina estos enfoques.** En nuestro proceso, quienes mantienen paquetes de R los envían a rOpenSci. El equipo de edición comprueban que los paquetes se ajustan al ámbito de nuestro proyecto, ejecutan una serie de pruebas automatizadas que garantizan un mínimo estándar de calidad e integridad del código y a continuación asignan dos personas independientes para revisarlo. Éstas comentan sobre la facilidad de uso, la calidad y el estilo del código del software, así como la documentación. Quien envió el paquete luego realiza cambios en respuesta, y una vez que quienes lo revisaron aprueban las actualizaciones, el paquete recibe una etiqueta de aprobación y se une a nuestra suite de paquetes.

Este proceso es bastante iterativo. Después de una primera ronda de revisiones exhaustivas, quién envió el paquete charla con quienes lo revisaron en intercambio informal, moderado sólo ligeramente por quien se encuentra en el rol editorial. Esto ayuda a todos los individuos involucrados plantearse preguntas mutuamente y explicar las diferencias de opinión, lo cual permite avanzar a un ritmo mucho más rápido que la típica correspondencia de revisión académica. Utilizamos el sistema de *issues* de GitHub para esta conversación, y las respuestas tardan de minutos a días, en lugar de semanas a meses.

**El intercambio también es abierto y público**. Todas las personas que participan (en roles de autoría, revisión y edición) conocen la identidad del resto y la comunidad en general puede ver o incluso participar en la conversación a medida que se produce. Esto proporciona un incentivo para ser minucioso y proporcionar revisiones constructivas y no conflictivas. Tanto quienes envían un paquete como quienes los revisan afirman que disfrutan y aprenden más de este intercambio abierto y directo. También tiene el beneficio de construir una comunidad, ya que quienes participan tienen la oportunidad de interactuar de manera significativa con nuevas personas. Nuevas colaboraciones han nacido gracias a las ideas surgidas durante el proceso de revisión.

Somos conscientes de que los sistemas abiertos pueden tener inconvenientes. Por ejemplo, en la revisión académica tradicional la revisión por pares doblemente ciega [puede aumentar la representación de autoras femeninas](https://www.sciencedirect.com/science/article/pii/S0169534707002704), lo que sugiere un sesgo en las revisiones abiertas. También es posible que quienes hacen la revisión sean menos críticos si la revisión es abierta. Sin embargo, proponemos que la apertura de la conversación de la revisión proporciona un control de la calidad de la revisión y del sesgo; es más difícil hacer comentarios no fundamentados o subjetivos en público sin la seguridad del anonimato. En definitiva, creemos que tener una comunicación directa y pública entre las personas que desarrollaron el paquete y quienes lo revisan mejora la calidad y la imparcialidad de las revisiones.


## Orientaciones y estándares

**rOpenSci proporciona orientación sobre la revisión.** Esto se divide en dos categorías principales: **buenas prácticas generales** y **estándares específicos**. Las buenas prácticas son generales y ampliamente aplicables a todos los lenguajes y aplicaciones. Son prácticas como "Escribe funciones reutilizables en lugar de repetir el mismo código", "Prueba los casos extremos" o "Escribe documentación para todas tus funciones". Debido a su naturaleza general, pueden extraerse de otras fuentes y no desarrollarse desde cero. Nuestras buenas prácticas se basan en recomendaciones desarrolladas originalmente por el [*Mozilla Science Lab*](https://mozillascience.github.io/codeReview/intro.html).

Los estándares específicos son aplicables lenguajes (en nuestro caso, R), aplicaciones (interfaces de datos) y base de usuarios (personas que hacen ciencia) particulares. Incluyen elementos específicos como las convenciones para nombrar las funciones, las mejores opciones de dependencias para determinadas tareas y el seguimiento de una guía de estilo de código. Disponemos de un amplio conjunto de estándares que quienes revisan paquetes pueden aplicar. Éstos cambian con el tiempo a medida que el ecosistema del software R evoluciona, las buenas prácticas cambian, y las herramientas y los recursos educativos hacen disponibles nuevos métodos para el desarrollo de software.

**Nuestros estándares también cambian en función de las revisiones de paquetes.** Adoptamos nuevos estándares en base a las sugerencias que surgen en múltiples revisiones de distintos paquetes. Muchas de ellas, hemos descubierto, tienen que ver con la facilidad de uso y la coherencia de las API de software, y con el tipo y la ubicación de la información en la documentación para que sea más fácil de encontrar. Esto destaca una de las ventajas de las revisiones externas: permiten aportar una nueva perspectiva sobre la usabilidad, así como probar el software en casos de uso distintos de los imaginados por quien lo desarrolló.

**A medida que nuestros estándares se han ido ampliando, hemos llegado a confiar más en las herramientas automatizadas.** El ecosistema de R, como la mayoría de los lenguajes, dispone de un conjunto de herramientas para la limpieza de código, la comprobación de funciones, el análisis estático de código y la integración continua. Exigimos su utilización, y los envíos son sometidos a un conjunto de tests antes de ser enviados a revisión por el equipo de edición. Esto permite que las revisiones no se ocupen de cuestiones de bajo nivel y en vez de eso estén centradas en críticas de alto nivel, donde pueden aportar el máximo valor.

## La comunidad de revisión

Uno de los principales desafíos y recompensas de nuestro trabajo ha sido desarrollar una comunidad de revisión.

**Revisar es una actividad que requiere muchas habilidades.** Para revisar un paquete es necesario tener conocimientos sobre los métodos de programación utilizados en un paquete de software y también sobre el campo científico de su aplicación. ("¡Encuentra a alguien que sepa de ecología sensorial y estructuras de datos dispersas!"). También requiere buenas habilidades comunicacionales, y tiempo y ganas para voluntariarse. Afortunadamente, los mundos de la ciencia y el código abiertos están llenos de gente generosa y experta. Hemos podido ampliar nuestro grupo de revisión a medida que crecía el ritmo de envíos y los ámbitos de sus solicitudes.

Desarrollar el grupo de revisión requiere un reclutamiento constante. Nuestro equipo de edición mantiene un contacto activo y amplio con las comunidades de desarrollo de software y de investigación para encontrar nuevas personas que puedan revisar paquetes. Reclutamos entre quienes enviaron paquetes previamente, colegas, en conferencias, a través de nuestros otros trabajos colaborativos y en las redes sociales. En el ecosistema del software de código abierto, a menudo se puede identificar individuos con una experiencia particular mirando su software publicado o su contribución a otros proyectos, y a menudo enviamos correos electrónicos en frío invitando a personas cuyo trabajo publicado sugiere que serían idóneas para revisar un envío.

Cultivamos nuestro grupo de revisión y lo ampliamos. Invitamos a las mismas personas a revisar varias veces  para que puedan desarrollar la habilidad de evaluar envíos, pero no tan a menudo como para sobrecargar sus agendas. Proporcionamos orientación y devolución a quienes revisan por primera vez. Cuando asignamos personas para la revisión de un envío, intentamos emparejar a alguien con experiencia con alguien que recién comienza a revisar, o a alguien con experiencia en desarrollo de paquetes con alguien con experiencia en el campo de aplicación particular. **De esta manera el aprendizaje fluye entre ambas personas, y la diversidad de perspectivas es una ventaja**. Individuos con menos experiencia en desarrollo suelen aportar mejores ideas sobre usabilidad del software, el diseño de la API y la documentación. Los más experimentados más a menudo identifican ineficiencias en el código, problemas debidos a casos especiales, o sugerirán enfoques de implementación alternativos.

## Ampliar la revisión por pares a código

La revisión del código ha sido una de las mejores iniciativas de rOpenSci. Creamos software, desarrollamos habilidades y creamos comunidad, y el proceso de revisión por pares ha sido un importante catalizador para las tres cosas. Ha hecho que tanto el software que desarrollamos internamente como el que aceptamos a partir de colaboración externa sea más fiable, utilizable y mantenible. Así que **estamos trabajando para promover la revisión por pares abierta del código por parte de más organizaciones** que trabajan con software científico. Ayudamos a lanzar [la Revista de Software de Código Abierto](https://joss.theoj.org/) que utiliza una versión de nuestro proceso de revisión para facilitar la publicación a quienes desarrollaron el software. El éxito de JOSS ha dado lugar a un proyecto derivado, el [Revista de Educación en Código Abierto](https://jose.theoj.org/) que utiliza un proceso abierto, similar a la revisión de código, para proporcionar devoluciones sobre planes de estudios y materiales educativos. También estamos desarrollando un programa piloto en el que los artículos de software enviados a una revista académica asociada reciben una etiqueta por pasar por la revisión de rOpenSci. Nos animan otras iniciativas de revisión como [ReScience](https://rescience.github.io/) y [The Programming Historian](https://programminghistorian.org/). [BioConductor](https://www.bioconductor.org/) que preceden a la nuestra en varios años, han cambiado recientemente a un modelo abierto.

**Si tu organización desarrolla o cura código científico** creemos que la revisión de código, bien aplicada, puede ser un gran beneficio. Puede costar un esfuerzo considerable empezar, pero **aquí tienes algunas de las lecciones clave que hemos aprendido y que pueden ayudarte:**

- **Desarrollar estándares y recomendaciones** para que las utilicen tanto quienes envían como quienes revisan software. Tómalas prestadas libremente de otros proyectos (siéntete libre de utilizar las nuestras), y modifícalas iterativamente sobre la marcha.
- **Utiliza herramientas automatizadas** como *linters* de código, suites de test y medidas de cobertura de test para reducir en lo posible la carga de las personas involucradas. 
- **Ten un alcance claro.** Explícale a tu equipo y a quienes colaboren externamente lo que aceptará tu proyecto, y por qué. Esto ahorrará mucha confusión y esfuerzo en el futuro.
- **Construye una comunidad** mediante incentivos a la creación de redes, oportunidades de aprender y amabilidad.

**rOpenSci tiene muchas ganas de trabajar con otros grupos interesados en desarrollar procesos de revisión similares**, especialmente si les interesa revisar y curar software científico en lenguajes distintos de R o más allá de nuestro alcance de apoyo al ciclo de vida de los datos. El software que implementa algoritmos estadísticos, por ejemplo, es un área madura para la revisión abierta de código por pares. Por favor, [ponte en contacto](/contact/) si tienes alguna pregunta o deseas co-pilotar un sistema de revisión para tu proyecto.

Y, por supuesto, si quieres revisar, siempre estamos buscando personas interesadas. [Inscríbete aquí](/onboarding/). 

***

Puedes apoyar a rOpenSci [asociándote a NumFOCUS](https://www.numfocus.org/community/donate/) o haciendo una [donación al proyecto](https://www.numfocus.org/open-source-projects/).


