---
title: "Tercera cohorte del Programa de Campeones de rOpenSci: resumen de proyectos"
author:
  - Yanina Bellini Saibene
editor:
date: 2026-10-30
slug: champions-program-projects-cohort3
description: Un resumen de los proyectos, logros y actividades de difusión de la tercera cohorte de Campeonas y Campeones de rOpenSci.
tags:
  - comunidad
  - programa de campeones
  - paquetes
params:
  doi: 10.59350/dm7xz-edn42
---

Nuestra tercera cohorte del Programa de Campeones de rOpenSci (2025-2026) ha completado su participación en el programa. 

Para cerrar y celebrar los logros de este grupo de participantes organizamos una conversación abierta con la comunidad, "Más allá del código", donde las personas de la cohorte presentaron sus proyectos y compartieron lo que aprendieron. [Puedes ver la grabación y los materiales de este evento en la pagina del evento](/es/commcalls/mas-alla-del-codigo-2026/).

Como ya hemos hecho con las cohortes anteriores, en este post te contamos, en un solo lugar, qué hizo cada participante.

## Los proyectos en un vistazo

Esta tabla resume los proyectos que fueron desarrollados exitosamente durante esta cohorte. Cada participante tuvo una mentoria individual que les acompaño durante este proceso.

| Campeón/a | Proyecto | Tipo | Tema |Mentor-a|
|---|---|---|---|
| Diana García | MBCp | Paquete nuevo | Datos del Metastatic Breast Cancer Project | Geraldine |
| Erick Navarro | RAMEN | Revisión por pares | Metilación del ADN y variantes genéticas | Paola Corrales |
| Guadalupe Pascal | MatildaNLP | Paquete nuevo | Corpus de ensayos de mujeres en ingeniería de Latinoamérica |Carolina Pradier | 
| Valentina Clavijo | Hazard Maps | Paquete nuevo | Dependencia espacial y pseudoescenarios de amenazas naturales | Pablo Tiscornia |
| Mónica Ávila | SelectRE4 | Paquete nuevo | Selección de efectos aleatorios con el AIC condicional | |
| Soledad Araya | VotosCL | Paquete nuevo | Datos electorales de Chile | |
| Mauro Loprete | MetaSurveyCore | Revisión por pares | Procesamiento reproducible de encuestas por muestreo | Ronny Hernandez Mora|
| Ana Carolina | geobr o censobr | Revisión por pares | Piloto de revision en Portugues | Milagros |


### Paquetes nuevos

**Diana García**, de México, bióloga computacional en el Dana-Farber Cancer Institute (Boston, EE.UU.), creó el paquete MBCp.
El paquete da acceso a los datos del [Metastatic Breast Cancer Project](), una iniciativa del [Broad Institute](https://www.broadinstitute.org) y el [Dana-Farber Cancer Institute](https://www.dana-farber.org), desarrollada junto con pacientes a través de la organización sin fines de lucro [Count Me In]().
Los datos clínicos, genómicos y poblacionales están almacenados en el [Dataverse de Harvard](), y MBCp incluye funciones para traerlos a R y limpiarlos, para graficar la expresión de genes según subtipos de tumor y para mantener etiquetas y colores consistentes, de modo que los análisis del proyecto sean reproducibles.
Su mentora fue [Geraldine Gómez Millán](/author/geraldine-gómez-millán/) de Colombia.
El repositorio será público cuando se publique el artículo final del proyecto.


**Guadalupe Pascal**, de Argentina, creó el paquete MatildaNLP, que facilita el análisis lingüístico y computacional de la colección de libros de la [Cátedra Abierta Latinoamericana Matilda]() y las mujeres en ingeniería (CAL Matilda).
El paquete da acceso a un corpus de seis libros escritos entre 2019 y 2025, con más de 200 ensayos autobiográficos de mujeres en ingeniería de 17 países latinoamericanos.
El trabajo tiene dos repositorios: uno de preparación, con un pipeline documentado y reproducible que conserva expresiones idiomáticas y metadatos como el año, el tomo y el lugar de procedencia de cada autora, y otro de acceso, con la función `get_matilda()`, que entrega los datos limpios en formato *tidy*, listos para usar con herramientas como tidytext.
Su mentora fue [Carolina Pradier](/author/carolina-pradier/) de Argentina.
El proyecto dio origen a dos artículos, uno sobre un flujo de trabajo para evaluar las limitaciones de los modelos de procesamiento de lenguaje natural en corpus subrepresentados, y otro sobre el pipeline de limpieza y creación del paquete.

**Valentina Clavijo**, de Colombia, estudiante de doctorado en el Politécnico de Milán (Italia), creó el paquete [HazardMaps](https://github.com/Valentina9619/HazardMaps), para el modelado de dependencia espacial y la generación de pseudoescenarios de desastres naturales que afectan a infraestructuras críticas como las redes de energía, transporte, agua e hidrocarburos.
El paquete ofrece un flujo unificado que va desde la recolección y preparación de los datos, pasando por el ajuste de distribuciones marginales y la selección de modelos de correlación espacial, hasta la generación de escenarios con cópulas o campos estocásticos.
Funciona con distintos tipos de grillas, como las rectangulares y las rotadas.
Su mentor fue [Pablo Tiscornia](/author/pablo-tiscornia/) de Argentina.
El [paquete está abierto en GitHub](https://github.com/Valentina9619/HazardMaps), tiene un [sitio web con documentación](https://valentina9619.github.io/HazardMaps/) y una viñeta de siete pasos, y ya inició [el proceso de revisión por pares de rOpenSci](https://github.com/ropensci/software-review/issues/814).

**Mónica Ávila**, de Bolivia, creó el paquete SelectRE4 como parte de su posdoctorado.
El paquete ayuda a elegir la estructura de efectos aleatorios en modelos mixtos con diseños cruzados (por ejemplo, participantes e ítems en experimentos de psicología o psicolingüística), usando el criterio de información de Akaike condicional.
Entre sus funciones están `selectmodel()`, que identifica el mejor modelo entre una familia de candidatos, y `getsafeAIC()`, que captura los errores de convergencia que de otro modo pueden llevar a elegir silenciosamente un modelo incorrecto.
Su mentor fue [Luis D. Verde Arregoitia](/author/luis-d.-verde-arregoitia/) de México.
El paquete sigue en desarrollo, con README, viñeta y sitio con pkgdown listos. Se espera liberarlo en enero después de la publicación del paper.

**Soledad Araya**, de Chile, creó el paquete [votosCL](https://github.com/snaraya/votosCL), que estandariza las bases de datos electorales del Servicio Electoral de Chile (Servel).
Las bases originales cambian de formato entre elecciones, y el paquete agrega variables que faltaban, como el género de las candidaturas y el código comunal, unifica los nombres de partidos y candidatas y candidatos, y permite hacer seguimiento de reelecciones.
Su mentor o mentora fue [Elina Gómez](/author/elina-gómez/) de Uruguay.
Soledad decidió publicar el paquete, aunque todavía no pasó por revisión, para que pudiera usarse ya: lo usa en sus cursos y sus estudiantes y colegas aportan comentarios que ayudan a mejorarlo.
La dirección del Servicio Electoral de Chile mostró interés en el trabajo.

### Revisión por pares de paquetes existentes

**Erick Navarro**, de México, candidato a doctor en bioinformática en The University of British Columbia (Canadá), sometió su [paquete RAMEN](https://github.com/ropensci/RAMEN) a la revisión por pares de rOpenSci.
RAMEN permite integrar de forma reproducible datos de metilación del ADN y variantes genéticas para entender cómo ambos factores influyen en las marcas de metilación en todo el genoma.
La revisión se extendió de enero a agosto de 2026, con [Mauro Lepore como editor y Lluís Revilla y Ulduz Vafadarshamasbi como revisores](https://github.com/ropensci/software-review/issues/743).
Su mentora fue [Pao Corrales](/author/pao-corrales/), de Argentina.
Como resultado, el paquete incorporó muchos más tests, programación defensiva, funciones internas, mejor documentación, menos dependencias y checks de integración continua en varios sistemas operativos.
Después de la aprobación de la revision de rOpenSci, Erick sometió RAMEN a Bioconductor, donde el proceso se vio beneficiado por la revision ya realizada.

**Mauro Loprete**, de Uruguay, licenciado en Estadística por la Universidad de la República, sometió a revisión su paquete MetaSurvey, desarrollado en su trabajo final de grado.
El paquete es un motor para procesar datos de encuestas por muestreo, que registra cada paso de transformación junto con el diseño muestral y permite exportar el procedimiento como "recetas" reutilizables.
Lo validó con ejemplos de encuestas de Uruguay, Brasil, Chile y Estados Unidos.
Su mentor o mentora fue [Ronny Hernandez Mora](/author/ronny-hernandez-mora/) de Costa Rica. 
En una primera sumisión, en febrero, el equipo concluyó que el paquete era demasiado grande, y la solución fue dividirlo. Ahora Mauro envió [MetaSurveyCore a revisión](https://github.com/ropensci/software-review/issues/796).
La sumisión también fue un ejemplo de cómo declarar el uso de IA generativa en el desarrollo, un punto que hoy tiene una sección específica en el proceso de revision.
Además, rOpenSci planea probar con su paquete un formato de revisión grupal: varias personas harán un trabajo previo y luego se reunirán durante una hora y media, junto con Mauro, para una revisión técnica en conjunto.

**Ana Carolina Moreno** de Brasil, participa del programa para formarse como revisora. Su proyecto incluye realizar todo el proceso de revision de un paquete de R en portugues y en grupo. Para ello, Ana estuvo trabajando con desarrolladores de paquetes de Brasil para elegir un paquete que pueda ser usando en el piloto en portugues. Participantes del programa de cohortes anteriores van a participar en esta iniciativa y documentar ambas experiencias para incorporar lo aprendido en los procesos y guias de rOpenSci. 

## Actividades de difusión

- Diana presentó una *lightning talk* en R/Medicine, la conferencia del R Consortium, en mayo de 2026, y un póster en la reunión de la American Association for Cancer Research. 

- Erick participo en el evento de "converaciones con la comunidad" "" de rOpenSci compartiendo su experiencia con personas que querian aplicar para el programa. 
Comunicó la aprobación de RAMEN en LinkedIn y presentará el paquete en la conferencia Epigenomics of Common Diseases en noviembre.
  También planea dar un mini taller de desarrollo de paquetes en su universidad de origen, en México, en diciembre.
  
- Guadalupe presentará el aporte del paquete al ecosistema editorial de la Cátedra Matilda en el lanzamiento del libro siete de la colección (noviembre) y en el Simposio de Investigación e Innovación Latinoamericano de Mujeres en Ingeniería, en Mar del Plata, Argentina (diciembre).
  Gracias a su participación en el programa, accedió a una beca para asistir a posit::conf 2026 y hoy es mentora de la cohorte actual.

- Valentina mostró su paquete en una conferencia en China y lo incluyó en su tesis doctoral, que defenderá a fines de noviembre.

- Mauro presentó una charla regular en LatinR online y un póster sobre la arquitectura de su paquete en useR! 2026, en Varsovia.

- Mónica y Soledad trabajan en los materiales y artículos asociados a sus paquetes.


## Actividades mas alla del programa

Además, Diana participó como revisora del paquete ibger, que da acceso a datos censales de Brasil y tambien participo de LatinR 2025 dando un workshop sobre el paquete targets.

Erik, Monika y Gudalupe son mentores de la cohorte 2026-2027 del programa de campeon(a|e)s.

## Logros de la cohorte y próximos pasos

Esta cohorte entregó software de alta calidad, centrado en datos, disciplinas y comunidades de América Latina y de otras regiones: desde la genómica del cáncer y la epigenética hasta las encuestas, los datos electorales y la ingeniería de infraestructuras.

Al escuchar sus presentaciones, un tema se repitió: los proyectos crecieron gracias al acompañamiento de las mentoras y mentores, al feedback de la revisión por pares y al intercambio entre pares.

Entre las lecciones que más se mencionaron aparecen el testing constante, la programación defensiva, la reducción de dependencias, la integración continua, la documentación y la modularización del código, además de aprender a soltar un paquete antes de que esté perfecto y a trabajar en comunidad.

Muchos proyectos siguen en camino: varios paquetes están en proceso de revisión, de envío a CRAN o Bioconductor, o esperan la publicación de un artículo.

También hay nuevos roles: parte de esta cohorte ya participa como revisora, editora o mentora dentro de rOpenSci.

Para seguir sus avances, visitá nuestra sección de [eventos y charlas](https://ropensci.org/events/), nuestro [boletín](https://news.ropensci.org) y nuestras redes sociales.