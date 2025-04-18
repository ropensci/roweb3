---
title: Bridges and Communities. My Journey as an rOpenSci Champion
author:
- Andrea Gomez Vargas
date: '2025-05-15'
slug: puentes-comunidades-campeones-ropensci
package_version: 0.1.0
tags:
- campeones
- paquetes
- comunidad
editor:
- Yanina Bellini Saibene
doi: 10.59350/6ckxv-axw35
---

To be part of the [rOpenSci Champions program.](https://champions-program.ropensci.org) has been an experience of **professional growth and an opportunity to contribute to the rOpenSci community.**. I learned about R package development while working on a tool to facilitate access to census data from Argentina.

In this blog, I want to share how this experience *opened new opportunities, connected me with people and communities, and led me to be part of new projects, strengthening my commitment to open access to data.*.

## My project in the program

From the beginning, my goal was to develop a package in R that would allow structured access to Argentina's census data. The idea arose from the need to have historical information organized and ready to be used in statistical analysis and research projects. My work as a population statistics analyst led me to identify the importance of having a tool that would facilitate the processing of these data. In historical censuses, these data are scattered in different formats (books, PDFs, excels and REDATAM), which makes it difficult to access and use.

{{< figure src = "censos-argentina.png" alt = "Collage con las portadas de los censos nacionales de Argentina desde 1970 hasta 2022." >}}

During the program, I worked on the organization and standardization of the data, facing challenges such as the structuring of the information (tidy data) and the creation of efficient functions for its manipulation. One of the most enriching aspects of the program were the training sessions provided by rOpenSci (special thanks to [Maëlle](/es/author/maëlle-salmon/) y [Yani](/author/yanina-bellini-saibene/) for all the patience and learning), and the continuous exchange of projects with the other champions of the program.

We participated in virtual trainings on code management, use of efficient packages for the creation of R packages and automation with GitHub Actions, among other topics, all with a focus on best practices. In addition, I had the opportunity to count with the personalized mentoring of [Luis Verde](/author/luis-verde-arregoitia/) a friend of the LatinR community, who accompanied me throughout the package development process, providing key guidance at each stage.

## Expectation vs. reality

{{<figure src = "codehero.png" alt = "Ilustración de una persona con una capa que dice 'code hero', diciendo '¡Estoy haciendo algo completamente sola!' mientras vuela con una laptop. Debajo hay una red de contención sostenida por personas con carteles que dicen 'apoyo' y 'comunidad'. También hay globos aerostáticos que ayudan a sostenerla, con etiquetas como 'docentes', 'blogueras', 'amigxs', 'desarrolladorxs' y 'contribuyentes'." class = "pull-right" caption = "Ilustración de [Allison Horst](https://www.allisonhorst.com/)">}}

As I progressed in the development of the package, I faced a key challenge: the structure of the data. As I incorporated information from different census years, I realized that each census brought with it thousands of excel files in different formats making automation difficult and making the transformation one by one, which made the standardization task even more complex.
It was then that I decided to invite *Emanuel Ciardullo* to join the project. We formed a duo from our complementary points of view - me from sociology, him from statistics - to face this first phase of the package. This alliance was key to rethink the approach and share the technical and conceptual work.

My intention was to cover all the census years in the package, but over time I realized that it was going to take more time than I had estimated. It was not only a matter of organizing data, but also of designing a structure that would allow the integration of information in a scalable and reusable way in the future.

With the volume of work already done and a clearer strategy, we reordered the project outline, defined the different phases of data availability, and with the data already structured, we were able to focus on giving them their final format within the package, put together the documentation and develop the first functions: `get_census`, `check_repository` y `arcenso`.

## Arcenso

{{< figure src = "arcenso-hex.png" alt = "Hex sticker azul del paquete de R arcenso, con un diseño inspirado en el sol de la bandera argentina y el nombre del paquete AR_censo en letras blancas en el centro." class = "pull-left" >}}

In the midst of these reflections and technical challenges, Arcenso was born. [ARcenso](https://soyandrea.github.io/arcenso/) was born, the package not only seeks to facilitate access to census data, but also to promote its use among researchers, the public sector and citizens in general by means of free software tools. The possibility of contributing with a useful, open and community-oriented tool has been one of the most important motivations of this process.

The project is in its first stage: you can already install the package using `devtools` and explore the first census years available, 1970 and 1980. The purpose is to continue working so that arcenso becomes more robust, traverses [the peer review process of rOpenSci](/es/software-review/) peer review process, and eventually become available on CRAN. The champions program was the starting point, but development of the package continues because the potential of the resource-to facilitate access to key data in an open and reusable way-is enormous.

## The community

### A scholarship, a conference and a global community

I had the opportunity to receive the scholarship to attend Posit::Conf, one of the most important international conferences in the R ecosystem. It was a transformative experience: I learned a lot, met people I admire and experienced firsthand what it means to be part of a global community that is committed to free software, open access and collaborative development. In addition, it was very special to meet in person with part of the rOpenSci team and other people who are part of this community. The exchange helped me to rethink key aspects of arcenso, from its structure to its open collaboration potential. I came away with new ideas, inspiration and a network of people to continue growing with.

{{<figure src = "comunidades.png" alt = "Collage con dos imágenes: a la izquierda, grupo de campeones rOpenSci en la posit::conf de izquierda a derecha: Luis Verde, Andrea Gomez, Sunny Tseng y Francisco Cardozo; a la derecha, una fotografía de la pantalla durante la presentación del paquete arcenso en LatinR.">}}

### LatinR

For November, [we present ARcenso in LatinR](https://youtu.be/YYfyBrQhMQc?si=lQZMormzo83ImToS) the Latin American conference on the use of R in research and development. Together with Emanuel, we shared the work done during the program and how we worked together to build this first phase of the project. It was a very special moment to show the regional community what we had achieved and to receive their feedback and support in the package development process panel.

### R in Network

And to close this great 2024, from the organization of R in Buenos Aires, together with R-Ladies Buenos Aires, we promoted a local presentation of the package. As part of the organizing team, I coordinated this activity with the aim of sharing the project with the community, showing what we were building and inviting more people to get to know it. This instance was very good, as not only did I receive valuable feedback from the community, but I was also able to connect with other people who had faced similar problems. We also took the opportunity to spread the word about the rOpenSci Champions program, in the hope that more people in our region will be encouraged to apply for the next cohort.

{{<figure src = "arcenso-meet.png" alt = "Collage de tres momentos del evento ARcenso, Oportunidades y Comunidad: a la izquierda, foto grupal de personas asistentes al evento; en el centro, Andrea presentando y señalando en la pantalla las funciones principales del paquete arcenso; a la derecha, Andrea y Emanuel exponiendo sobre cómo organizaron el trabajo, frente a los asistentes del meetup.">}}

Presenting the project and discussing it with the community allowed me to reaffirm the importance of creating accessible and well-documented tools. It was also a reminder that we were not alone in this process: the R community is a space where knowledge is built collectively, and actively participating in it was fundamental to move forward with the package.

### What remains after the momentum

Participating in the rOpenSci Champions program was the starting point to create something I didn't know I could build. It encouraged me to move from using R to developing a package in R, and from the chaos of data to designing a tool meant for other people to work better. But, above all, it connected me with a community that believes in sharing what it knows, in accompanying each other in the process and in opening paths for those who come after. Today arcenso continues to grow, and so do I: with new ideas, new challenges and the desire to continue building in community and for the community.


