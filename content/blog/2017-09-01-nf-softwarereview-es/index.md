---
slug: nf-softwarereview-es
title: Cómo rOpenSci utiliza la revisión de código para promover la ciencia reproducible
preface: '[Read the English version of this post](/blog/2017/09/01/nf-softwarereview/).<br/> This is cross-posted from the NumFOCUS blog. NumFOCUS is a nonprofit that
  supports and promotes world-class, innovative, open source scientific computing,
  including rOpenSci.'
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

En rOpenSci, creamos y conservamos software para ayudar a los científicos con el ciclo de vida de los datos. Estas herramientas acceden, descargan, gestionan y archivan datos científicos de forma abierta y reproducible. Desde el principio, nos dimos cuenta de que esto sólo podía ser un esfuerzo comunitario. La variedad de datos y flujos de trabajo científicos sólo podía abordarse recurriendo a las aportaciones de científicos con conocimientos específicos en cada campo.

Con el enfoque comunitario llegaron los retos. **¿Cómo podíamos garantizar la calidad del código escrito por científicos sin formación formal en prácticas de desarrollo de software? ¿Cómo podríamos impulsar la adopción de buenas prácticas entre nuestros colaboradores? ¿Cómo podríamos crear una comunidad que se apoyara mutuamente en este trabajo?**

**Hemos tenido un gran éxito abordando estos retos a través del *revisión inter pares*.** Tomamos elementos de un proceso familiar para nuestra comunidad destinataria - *la revisión académica inter pares* - y una práctica del mundo del desarrollo de software *revisión del código de producción* - para crear un sistema que fomente la calidad del software, la formación continua y el desarrollo de la comunidad.

## Un proceso de revisión abierto

**Revisión del software de producción** se produce en los equipos de desarrollo de software, de código abierto o no. Las contribuciones a un proyecto de software son revisadas por uno o más miembros del equipo antes de su incorporación al código fuente del proyecto. Las contribuciones suelen ser pequeños parches, y la revisión sirve para comprobar la calidad, así como una oportunidad para formarse en las normas del equipo.

**En la revisión por pares académica** los revisores externos critican un producto completo -normalmente un manuscrito- con un mandato muy amplio para abordar cualquier aspecto que consideren deficiente. La revisión académica suele ser anónima y pasar por ella da al producto, y al autor, una marca pública de validación.

**Nosotros combinamos estos enfoques.** En nuestro proceso, los autores envían paquetes completos de R a rOpenSci. Los editores comprueban que los paquetes se ajustan al ámbito de nuestro proyecto, ejecutan una serie de tests automatizados para garantizar una base de calidad e integridad del código y, a continuación, asignan dos revisores independientes. Los revisores comentan la facilidad de uso, la calidad y el estilo del código del software, así como la documentación. Los autores realizan cambios en respuesta, y una vez que los revisores están satisfechos con las actualizaciones, el paquete recibe una etiqueta de aprobación y se une a nuestra suite.

Este proceso es bastante iterativo. Después de que los revisores publiquen una primera ronda de revisiones exhaustivas, autores y revisores charlan en un intercambio informal, moderado sólo ligeramente por un editor. Esto permite tanto a los revisores como a los autores plantearse preguntas mutuamente y explicar las diferencias de opinión. Puede avanzar a un ritmo mucho más rápido que la típica correspondencia de revisión académica. Utilizamos el sistema de issues de GitHub para esta conversación, y las respuestas tardan de minutos a días, en lugar de semanas o meses.

**El intercambio también es abierto y público**. Autores, revisores y editores conocen la identidad de los demás. La comunidad en general puede ver o incluso participar en la conversación a medida que se produce. Esto supone un incentivo para ser minucioso y proporcionar revisiones constructivas y no contradictorias. Tanto los autores como los revisores afirman que disfrutan y aprenden más de este intercambio abierto y directo. También tiene la ventaja de crear comunidad. Los participantes tienen la oportunidad de establecer contactos significativos con nuevos compañeros, y han surgido nuevas colaboraciones a través de ideas generadas durante el proceso de revisión.

Somos conscientes de que los sistemas abiertos pueden tener inconvenientes. Por ejemplo, en la revisión académica tradicional, la revisión por pares doble ciego [puede aumentar la representación de las autoras](https://www.sciencedirect.com/science/article/pii/S0169534707002704) lo que sugiere un sesgo en las revisiones no ciegas. También es posible que los revisores sean menos críticos en la revisión abierta. Sin embargo, postulamos que la apertura de la conversación de revisión proporciona un control sobre la calidad de la revisión y el sesgo; es más difícil inyectar comentarios sin fundamento o subjetivos en público y sin la cobertura del anonimato. En última instancia, creemos que la posibilidad de que autores y revisores mantengan una comunicación directa pero pública mejora la calidad y la imparcialidad.

## Orientaciones y normas

**rOpenSci proporciona orientación sobre la revisión.** Esto se divide en dos categorías principales: **buenas prácticas de alto nivel** y **normas de bajo nivel**. Las buenas prácticas de alto nivel son generales y ampliamente aplicables a todos los lenguajes y aplicaciones. Son prácticas como "Escribe funciones reutilizables en lugar de repetir el mismo código", "Prueba los casos extremos" o "Escribe documentación para todas tus funciones". Debido a su naturaleza general, pueden extraerse de otras fuentes y no desarrollarse desde cero. Nuestras buenas prácticas se basan en orientaciones desarrolladas originalmente por [Laboratorio Científico de Mozilla](https://mozillascience.github.io/codeReview/intro.html).

Las normas de bajo nivel son específicas de un lenguaje (en nuestro caso, R), aplicaciones (interfaces de datos) y base de usuarios (investigadores). Incluyen elementos específicos como las convenciones de nomenclatura de las funciones, las mejores opciones de dependencias para determinadas tareas y el cumplimiento de una guía de estilo de código. Disponemos de un amplio conjunto de normas para que las comprueben nuestros revisores. Éstas cambian con el tiempo a medida que evoluciona el ecosistema del software R, cambian las buenas prácticas y las herramientas y recursos educativos ponen nuevos métodos a disposición de los desarrolladores.

**Nuestras normas también cambian en función de las devoluciones de los revisores.** Adoptamos en nuestras normas las sugerencias que surgen en múltiples revisores de distintos paquetes. Muchas de ellas, hemos descubierto, tienen que ver con la facilidad de uso y la coherencia de las API de software, y con el tipo y la ubicación de la información en la documentación para que sea más fácil de encontrar. Esto pone de relieve una de las ventajas de los revisores externos: pueden aportar una nueva perspectiva sobre la usabilidad, así como testar el software en casos de uso distintos de los imaginados por el autor.

**A medida que nuestras normas se han ido ampliando, hemos llegado a confiar más en las herramientas automatizadas.** El ecosistema de R, como la mayoría de los lenguajes, dispone de un conjunto de herramientas para la limpieza de código, el test de funciones, el análisis estático de código y la integración continua. Exigimos a los autores que las utilicen, y los editores las someten a un conjunto de tests antes de enviarlas a revisión. Esto libera a los revisores de la carga de las tareas de bajo nivel para que se centren en las críticas de alto nivel, donde pueden aportar el máximo valor.

## La comunidad de revisores

Uno de los principales retos y recompensas de nuestro trabajo ha sido desarrollar una comunidad de revisores.

**Revisar es una actividad que requiere muchas habilidades.** Los revisores necesitan conocimientos sobre los métodos de programación utilizados en un paquete de software y también sobre el campo científico de su aplicación. ("¡Encuéntrame a alguien que sepa de ecología sensorial y estructuras de datos dispersas!") Necesitan buenas dotes de comunicación y tiempo y voluntad para ofrecerse como voluntarios. Afortunadamente, los mundos de la ciencia y el código abiertos están llenos de gente generosa y experta. Hemos podido ampliar nuestro grupo de revisores a medida que crecía el ritmo de envíos y los ámbitos de sus solicitudes.

Desarrollar el grupo de revisores requiere un reclutamiento constante. Nuestros editores se comprometen activa y ampliamente con las comunidades de desarrolladores e investigadores para encontrar nuevos revisores. Reclutamos entre los autores de envíos anteriores, compañeros de trabajo y colegas, en conferencias, a través de nuestro otro trabajo de colaboración y en las redes sociales. En el ecosistema del software de código abierto, a menudo se puede identificar a las personas con una experiencia particular mirando su software publicado o su contribución a otros proyectos, y a menudo enviamos correos electrónicos en frío a los posibles revisores cuyo trabajo publicado sugiere que serían una buena coincidencia para un envío.

Cultivamos nuestro grupo de revisores y lo ampliamos. Volvemos a traer revisores para que puedan desarrollar la revisión como una habilidad, pero no tan a menudo como para sobrecargarlos. Proporcionamos orientación y devolución a los nuevos contratados. Cuando asignamos revisores a un envío, intentamos emparejar a revisores experimentados con otros nuevos, o a revisores expertos en los métodos de programación de un paquete con otros experimentados en su campo de aplicación. **Estos revisores aprenden unos de otros, y la diversidad de perspectivas es una ventaja.** los desarrolladores menos experimentados suelen aportar ideas que los más experimentados no tienen sobre la usabilidad del software, el diseño de la API y la documentación. Los desarrolladores más experimentados identificarán más a menudo ineficiencias en el código, escollos debidos a casos extremos, o sugerirán enfoques de implementación alternativos.

## Ampliar la revisión inter pares del código

La revisión del código ha sido una de las mejores iniciativas de rOpenSci. Creamos software, desarrollamos habilidades y creamos comunidad, y el proceso de revisión por pares ha sido un importante catalizador para las tres cosas. Ha hecho que tanto el software que desarrollamos internamente como el que aceptamos de colaboradores externos sea más fiable, utilizable y mantenible. Así que **estamos trabajando para promover la revisión por pares abierta del código por parte de más organizaciones** que trabajan con software científico. Ayudamos a lanzar [la Revista de Software de Código Abierto](https://joss.theoj.org/) que utiliza una versión de nuestro proceso de revisión para facilitar la publicación a los desarrolladores. El éxito de JOSS ha dado lugar a un proyecto derivado, el [Revista de Educación en Código Abierto](https://jose.theoj.org/) que utiliza un proceso abierto, similar a la revisión de código, para proporcionar devoluciones sobre planes de estudios y materiales educativos. También estamos desarrollando un programa piloto en el que los artículos de software enviados a una revista académica asociada reciben una etiqueta por pasar por la revisión de rOpenSci. Nos animan otras iniciativas de revisión como [ReScience](https://rescience.github.io/) y [El Historiador de la Programación](https://programminghistorian.org/). [BioConductor](https://www.bioconductor.org/) que preceden a la nuestra en varios años, han cambiado recientemente a un modelo abierto.

**Si tu organización desarrolla o conserva código científico** creemos que la revisión de código, bien aplicada, puede ser un gran beneficio. Puede costar un esfuerzo considerable empezar, pero **aquí tienes algunas de las lecciones clave que hemos aprendido y que pueden ayudarte:**

- **Desarrollar normas y directrices** para que las utilicen tus autores y revisores. Tómalas prestadas libremente de otros proyectos (siéntete libre de utilizar las nuestras), y modifícalas iterativamente sobre la marcha.
- **Utiliza herramientas automatizadas** como linters de código, suites de test y medidas de cobertura de test para reducir en lo posible la carga de los autores, revisores y editores.
- **Ten un alcance claro.** Explícate a ti mismo y a los posibles colaboradores lo que aceptará tu proyecto, y por qué. Esto ahorrará mucha confusión y esfuerzo en el futuro.
- **Construye una comunidad** mediante incentivos a la creación de redes, oportunidades de aprender y amabilidad.

**rOpenSci está deseando trabajar con otros grupos interesados en desarrollar procesos de revisión similares.** especialmente si estás interesado en revisar y conservar software científico en lenguajes distintos de R o más allá de nuestro ámbito de apoyo al ciclo de vida de los datos. El software que implementa algoritmos estadísticos, por ejemplo, es un área madura para la revisión abierta de código por pares. Por favor, [ponte en contacto](/contact/) si tienes alguna pregunta o deseas co-pilotar un sistema de revisión para tu proyecto.

Y, por supuesto, si quieres revisar, siempre estamos buscando voluntarios. Inscríbete en /onboarding.

***

Puedes apoyar a rOpenSci [haciéndote socio de NumFOCUS](https://www.numfocus.org/community/donate/) o haciendo una [donación al proyecto](https://www.numfocus.org/open-source-projects/).


