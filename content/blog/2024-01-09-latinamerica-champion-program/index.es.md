---
title: 'Participación  Latinoamérica en el Programa de Campeonas y Campeones de rOpenSci'
author: 
- Yanina Bellini Saibene 
- Elio Campitelli
- Marcos Prunello
- Mauro Lepore
- Haydee Svab
- Beatriz Milz
- Carolina Pradier
- Cesar Luis Aybar Camacho
- Pao Corrales
date: '2024-01-09'
tags:
  - champions-program
  - community
slug: champions-program-latinr
description: Detalles de la participación latinoamericana en el primer año del programa de campeonas y campeones de rOpenSci.
---

Las personas _campeonas_ de una comunidad son _personas que asumen una mayor responsabilidad en el éxito, la sostenibilidad y/o el funcionamiento de una comunidad_.[^1] rOpenSci desarrolla un [programa de campeones y campeonas](/champions/) enfocado y pensado para que participen personas que pertenecen a grupos histórica y sistemáticamente excluidos de las comunidades de software abierto y de software de investigación. Con una duración de doce meses, la iniciativa incluye capacitación en cohortes, el desarrollo de un proyecto y tutorías individuales.

El programa ya tuvo una cohorte y este 2024 inicia el segundo grupo.  En este articulo, presentamos a todas las personas de latinoamerica que participaron de la primera cohorte del programa, que roles tuvieron y que proyecto estan desarrollando, para animar aún más participacion en el programa. 😄 🏆 

El programa tiene una fuerte influencia latinoamericana. De los 10 campeones y 10 mentores de la primera cohorte, cinco y tres son de Latinoamérica, respectivamente. Además, tres personas de la región han dictado capacitaciones y quien lidera el programa también es de la región. Para las revisiones de software por pares en español, han participado personas de latinoamerica en el proceso con roles de edición y de revisión. 

## Proyectos 

El programa prevé tres tipos de proyectos: crear un nuevo paquete, pasar por la revisión con un paquete de R que ya hayan desarrollado o revisar un paquete.

* [Carolina Pradier](/author/carolina-pradier/) de Argentina trabajó sobre el paquete [eph](https://docs.ropensci.org/eph/) el cual facilita tiene por objeto facilitar el trabajo de quienes usan datos de la Encuesta Permanente de Hogares - INDEC y deseen procesar datos de la misma usando R. Carolina agregó funcionalidad al paquete, redujo la cantidad de dependencias, mejoró los mensajes de error e incrementó la cobertura de tests antes de enviar el paquete a revisión. Su paquete ya forma parte de la suite rOpenSci tras una [revisión por pares en español](https://github.com/ropensci/software-review/issues/593) y fue [publicado en CRAN](https://cran.r-project.org/web/packages/eph/index.html). El editor fue Mauro Lepore y las revisoras fueron [Guadalupe Gonzalez](https://github.com/guadag12) y [Denisse Fierro](https://github.com/lidefi87).  

* [Cesar Aybar](/author/cesar-luis-aybar-camacho/) de Perú, desarrolló el paquete [rgeeExtra](https://r-earthengine.com/rgeeExtra/index.html) que extiende las funcionalidades de {rgee} para poder acceder y procesar información espacial de sensores remotos con una sintaxis amigable para usuarios de R. Cesar trabajó en agregar funcionalidades y reemplazó las dependencias de espaciales que serán retirados. Su paquete está en [proceso de revisión](https://github.com/ropensci/software-review/issues/608) por [Zack](https://github.com/zackarno) y [Natalia Morandeira](https://nmorandeira.netlify.app) con Mauro Lepore como editor.   

* [Haydee Svab](/author/haydee-svab/) de Brazil, desarrolló un nuevo paquete llamado [odbr](https://github.com/hsvab/odbr) que permite acceder y procesar datos de las encuestas de origen y destino (od) de Brasil e implemente muchos de los algoritmos que Haydée desarrolló para su tesis de maestría. [El paquete fue publicado en CRAN](https://cran.r-project.org/web/packages/odbr/index.html).

* [Marcos Prunello](/author/marcos-prunello/) de Argentina, trabajó sobre su paquete [karel](https://mpru.github.io/karel/), el cual implementa en R a _Karel the robot_, una herramienta útil para enseñar conceptos introductorios sobre programación de una manera interactiva y divertida, mediante la escritura de programas para que Karel complete tareas. Además el paquete provee funciones, argumentos, mensajes y documentación tanto en inglés como en español, proponiendo una infraestructura que permite agregar más idiomas. El paquete está en [proceso de revisión](https://github.com/ropensci/software-review/issues/620), ¡siendo el primero en tener una revisión bilingüe!. Mauro Lepore es nuevamente el editor y se están buscando las personas que revisarán. 

* [Paola Corrales](/author/pao-corrales/) de Argentina, desarrolló el paquete [agroclimatico](https://github.com/AgRoMeteorologiaINTA/agroclimatico) que calcula índices climáticos e hidrológicos y estadísticas a partir de datos ordenados, incluida una función para graficar resultados georreferenciados e información cartográfica. Paola reemplazó dependencias, mejoró los mensajes de error y aumentó la cobertura de tests. Tuvo que tomar decisiones dificiles como cambiar el nombre del paquete y de alguna de las funciones para evitar que se confunda con otros paquetes existentes. Agroclimatico está en [proceso de revisión](https://github.com/ropensci/software-review/issues/599) en español. El editor es [Francisco Rodriguez-Sanchez](https://github.com/Pakillo) y [Verónica Cruz-Alonso](https://github.com/VeruGHub) es la revisora. 

## Entrenamiento 

El programa también ofreció entrenamiento en forma de talleres y mentorías individuales.

[Beatriz Milz](/author/beatriz-milz/) de Brazil, [Mauro Lepore](/author/mauro-lepore/) de Argentina y [Elio Campitelli](/author/elio-campitelli/) de Argentina, son las personas de Latinoamérica que participaron del programa siendo mentores. Su rol fue el de guiar, conectar, inspirar y dar feedback a sus campeones/as sobre su proyecto.

Además, Mauro dictó un [taller sobre el funcionamiento del proceso de revisión de software](https://ropensci.org/events/2023-04-04-how-ropensci-review/) de rOpenSci y contestó muchas preguntas en base a su experiencia de haber cumplido distintos roles en ese proceso. Yani Bellini Saibene dictó la [capacitación para mentores](https://ropensci.org/events/2023-03-01-mentor-orientation/), basada en los materiales y experiencia del programa Mozilla Open Leaders. Finalmente, Pao Corrales desarrolló y dictó un taller con asistencia de Yanina para las personas que aplicaron y no fueron seleccionadas por el programa sobre el [uso de Git y GitHub en el desarrollo colaborativo de proyectos de software](https://ropensci.org/events/2023-05-19-developing-software-together/).

## Lecciones aprendidas 

El programa brinda herramientas y espacio para que tanto campeones como mentores puedan desarrollar estos proyectos, ganando experiencias y mejorando sus competencias durante el proceso, que volverán a la comunidad latinoamericana de R por distintos medios. En el segundo semestre del programa campeonas y campeones deben compartir lo que aprendieron con la comunidad, contribuyendo a aumentar material actualizado en español y portugués sobre el desarrollo de paquetes y la revisión de software por pares.

Es una buena oportunidad para desarrollar un paquete de R (o mejorar uno propio) bajo la guía personalizada de mentores y con el soporte de una comunidad. El aspecto formal de las etapas del programa ayuda a tener foco en la tarea y poder completarla en un tiempo razonable.

**Esperamos que más personas de nuestra región se sumen a este programa**, tanto como mentores, docentes o campeones/as y a rOpenSci en los diversos roles de los que puede ser parte. Para conocer más sobre cómo contribuir a rOpenSci se puede consultar la [guía de contribución](https://contributing.ropensci.org/).

> Este resumen fue aceptado para la conferencia [LatinR 2023](https://latin-r.com/cronograma/programa/presentaciones.html) que se realizó en Montevideo, Uruguay y fue [presentado por Haydee Svab en representación de todos los autores](/events/latinr-champions-2023/).

[^1]: The CSCCE Community Participation Model - Exploring the Champion mode. (2021). Woodley and Pratt doi 10.5281/zenodo.5275270
