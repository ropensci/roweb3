---
title: 'Programa de Campeonas y Campeones de rOpenSci en Latinoamérica'
author: 
- Yanina Bellini Saibene 
- Elio Campitelli
- Marcos Prunello
- Mauro Lepore
- Haydee Svab
- Beatriz Milz
- Carolina Pradier
- Cesar Luis Aybar Camacho
- Paola Corrales
date: '2024-01-08'
tags:
  - champions-program
slug: champions-program-latinr
description: detalles de la participación latinoamericana en el primer año del programa de campeonas y campeones de rOpenSci.
---

Las personas _campeonas_ de una comunidad son _personas que asumen una mayor responsabilidad en el éxito, la sostenibilidad y/o el funcionamiento de una comunidad_.[^1]. rOpenSci desarrolla un [programa de campeones y campeonas](/champions/) enfocado y pensado para que participen personas que pertenecen a grupos histórica y sistemáticamente excluidos de las comunidades de software abierto y de software de investigación. Con una duración de doce meses, la iniciativa incluye capacitación en cohortes, el desarrollo de un proyecto y tutorías individuales.

El programa tiene una fuerte influencia latinoamericana. De los 10 campeones y 10 mentores de la primera cohorte, cinco y tres son de Latinoamérica, respectivamente. Además, tres personas de la región han dictado capacitaciones y quien lidera el programa también es de la región.

## Proyectos 

El programa prevé tres tipos de proyectos: crear un nuevo paquete, pasar por la revisión con un paquete de R que ya hayan desarrollado o revisar un paquete.

* [Carolina Pradier](/author/carolina-pradier/) trabajó sobre el paquete [eph](https://holatam.github.io/eph/) el cual facilita tiene por objeto facilitar el trabajo de quienes usan datos de la Encuesta Permanente de Hogares - INDEC y deseen procesar datos de la misma usando R. Carolina agregó funcionalidad al paquete, redujo la cantidad de dependencias, mejoró los mensajes de error e incrementó la cobertura de tests antes de enviar el paquete a revisión. Su paquete ya forma parte de la suite rOpenSci tras una [revisión por pares en español](https://github.com/ropensci/software-review/issues/593).

* [Cesar Aybar](/author/cesar-luis-aybar-camacho/) desarrolló el paquete [rgeeExtra](https://r-earthengine.com/rgeeExtra/index.html) que extiende las funcionalidades de {rgee} para poder acceder y procesar información espacial de sensores remotos con una sintaxis amigable para usuarios de R. Cesar trabajó en agregar funcionalidades y reemplazó las dependencias de espaciales que serán retirados. Su paquete esta en proceso de revisión.  

* Haydee Svab desarrolló un nuevo paquete llamado odbr que permite acceder y procesar datos de las encuestas de origen y destino (od) de Brasil e implemente muchos de los algoritmos que Haydée desarrolló para su tesis de maestría. 

* Marcos Prunello trabajó sobre su paquete karel, el cual implementa en R a Karel the robot, una herramienta útil para enseñar conceptos introductorios sobre programación de una manera interactiva y divertida, mediante la escritura de programas para que Karel complete tareas. Además el paquete provee funciones, argumentos y mensajes tanto en inglés como en español, proponiendo una infraestructura que permite agregar más idiomas. 

* Paola Corrales desarrolló el paquete agromet que calcula índices climáticos e hidrológicos y estadísticas a partir de datos ordenados, incluida una función para graficar resultados georreferenciados e información cartográfica. Paola reemplazó dependencias, mejoró los mensajes de error y aumentó la cobertura de tests.

## Entrenamiento 

El programa también ofreció entrenamiento en forma de talleres y mentorías individuales.

Beatriz Milz, Mauro Lepore y Elio Campitelli son las personas de Latinoamérica que participaron del programa siendo mentores. Su rol fue el de guiar, conectar, inspirar y dar feedback a sus campeones/as sobre su proyecto.

Además, Mauro dictó un taller sobre el funcionamiento del proceso de revisión de software de rOpenSci y contestó muchas preguntas en base a su experiencia de haber cumplido distintos roles en ese proceso. Yanina Bellini Saibene dictó la capacitación para mentores, basada en los materiales y experiencia del programa Mozilla Open Leaders. Finalmente, Paola Corrales desarrolló y dictó un taller con asistencia de Yanina para las personas que aplicaron y no fueron seleccionadas por el programa sobre el uso de Git y GitHub en el desarrollo colaborativo de proyectos de software.

## Lecciones aprendidas 

El programa brinda herramientas y espacio para que tanto campeones como mentores puedan desarrollar estos proyectos, ganando experiencias y mejorando sus competencias durante el proceso, que volverán a la comunidad latinoamericana de R por distintos medios. En el segundo semestre del programa campeonas/es deben compartir lo que aprendieron con la comunidad, contribuyendo a aumentar material actualizado en español y portugués sobre el desarrollo de paquetes y la revisión de software por pares.

Es una buena oportunidad para desarrollar un paquete de R (o mejorar uno propio) bajo la guía de mentores y con el soporte de una comunidad. El aspecto formal de las etapas del programa ayuda a tener foco en la tarea y poder completarla en un tiempo razonable.

Esperamos que más personas de nuestra región se sumen a este programa, tanto como mentores, docentes o campeones/as y a rOpenSci en los diversos roles de los que puede ser parte. Para conocer más sobre cómo contribuir a rOpenSci se puede consultar la guía de contribución.

[^1]: The CSCCE Community Participation Model - Exploring the Champion mode. (2021). Woodley and Pratt doi 10.5281/zenodo.5275270
