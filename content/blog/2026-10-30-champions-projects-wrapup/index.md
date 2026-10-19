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

Para cerrar y celebrar los logros de este grupo de participantes organizamos una conversación abierta con la comunidad, "Más allá del código", donde las personas de la cohorte presentaron sus proyectos y compartieron lo que aprendieron. [Puedes ver la grabación y los materiales de este evento en la pagina del evento]().

Como ya hemos hecho con las cohortes anteriores, en este post te contamos, en un solo lugar, qué hizo cada Campeona y Campeón.

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
El paquete da acceso a los datos del [Metastatic Breast Cancer Project](), una iniciativa del [Broad Institute]() y el [Dana-Farber Cancer Institute](), desarrollada junto con pacientes a través de la organización sin fines de lucro [Count Me In]().
Los datos clínicos, genómicos y poblacionales están almacenados en el [Dataverse de Harvard](), y MBCp incluye funciones para traerlos a R y limpiarlos, para graficar la expresión de genes según subtipos de tumor y para mantener etiquetas y colores consistentes, de modo que los análisis del proyecto sean reproducibles.
Su mentora fue [Geraldine] de Colombia.
El repositorio será público cuando se publique el artículo final del proyecto.


**Guadalupe Pascal**, de Argentina, creó el paquete MatildaNLP, que facilita el análisis lingüístico y computacional de la colección de libros de la Cátedra Abierta Latinoamericana Matilda y las mujeres en ingeniería (CAL Matilda).
El paquete da acceso a un corpus de seis libros escritos entre 2019 y 2025, con más de 200 ensayos autobiográficos de mujeres en ingeniería de 17 países latinoamericanos.
El trabajo tiene dos repositorios: uno de preparación, con un pipeline documentado y reproducible que conserva expresiones idiomáticas y metadatos como el año, el tomo y el lugar de procedencia de cada autora, y otro de acceso, con la función `get_matilda()`, que entrega los datos limpios en formato *tidy*, listos para usar con herramientas como tidytext.
Su mentora fue [Carolina Pradier] de [Argentina].
El proyecto dio origen a dos artículos, uno sobre un flujo de trabajo para evaluar las limitaciones de los modelos de procesamiento de lenguaje natural en corpus subrepresentados, y otro sobre el pipeline de limpieza y creación del paquete.

