---
title: Agrandando nuestra comunidad con publicaciones multi-idioma
author:
  - Yanina Bellini Saibene
  - Pao Corrales
  - Elio Campitelli
  - Maëlle Salmon
date: '2023-01-12'
slug: multilingual-publishing-es
tags:
  - community
  - multilingual
description: "Estamos traduciendo los materiales de rOpenSci sobre buenas prácticas de desarrollo de software, revisión de código y contribución a proyectos de código abierto al español! También estamos desarrollando guías y herramientas para traducir recursos de código abierto y alcanzar una mayor audiencia. Entérate de este proyecto en este artículo."

---

Nos agrada anunciar que, con el aporte de Chan Zuckerberg Initiative, NumFOCUS y R Consortium, estamos comenzando el proceso de traducir los materiales de rOpenSci sobre buenas prácticas de desarrollo de software, revisión de código y contribución a proyectos de código abierto al español.
Como parte de este esfuerzo, también estamos desarrollando guías y herramientas para traducir recursos de código abierto y alcanzar una mayor audiencia. 

De acuerdo a un [reporte reciente](https://www.linuxfoundation.org/research/the-2021-linux-foundation-report-on-diversity-equity-and-inclusion-in-open-source) de The Linux Foundation, el _acceso de lenguaje_  es una de las _barreras a la equidad en el código abierto_. El reporte explica que:

> El idioma hegemónico en la comunidad de código abierto es inglés, tanto en el código como en el contenido las interacciones de la comundiad. El nivel de inglés es una métrica a partir de la cual se juzgan el desempeño y la personalidad.[^1]. 

Esto puede recordar la conocida [cita](https://www.imdb.com/title/tt4166966/characters/nm0005527) de la serie [Modern Family](https://www.tiktok.com/@primevideouk/video/6899066588121713921) donde Gloria grita: 

> Sabés lo inteligente que soy en español?

Al publicar recursos en múltiples idiomas, podemos reducir estas barreras al facilitar y democratizar el acceso al conocimiento y recursos de calidad. 
Esto permite que potencialmente más personas contribuyan a proyectos de software y ciencia abierta. 


## Representación de idiomas 

La comunidad hispanohablante ha crecido en tamaño y activodad en estos años. 
Estas actividades incluyen varios escuerzos de traducción de materiales técnicos como libros, hojas de ayuda, guías y conjuntos de datos. 

En 2017, varias R-Ladies de latinoamérica comenzaron a traducir el [Código de Conducta](https://github.com/rladies/starter-kit/wiki/Code-of-Conduct#spanish) y las Reglas y consejos de R-Ladies al español.

En 2018, la comunidad de R en latinoamética hizo [una traducción colectiva](https://youtu.be/kuHjpdgkSxg) al español del libro [R para ciencia de datos](https://es.r4ds.hadley.nz/). 
Esto incluyó traducir todos los conjuntos de datos utilizados en el libro y compilarlos en el paquete [datos](https://github.com/cienciadedatos/datos), el cual es una excelente herramienta para la enseñanza. 

Las traducciones comunitarias también incluyeron el libro [Enseñar tecnología en comunidad](https://teachtogether.tech/es/index.html), las [hojas de ayuda de Posit](https://posit.co/resources/cheatsheets/?type=translations/#translation-12) y las lecciones de [The Programming Historian](https://programminghistorian.org/es/). 

Impulsada por esta comunidad hispanohablante activa y en crecimiento, rOpenSCi [probó con éxito](/blog/2021/07/27/censo2017) nuestra primera revisión por pares en la que tanto el envío como las revisiones y las repuestas editoriales fueron en español. 

¡Todo este trabajo y experiencia previa crearon las condiciones perfectas para que comenzáramos a publicar en español!
El español es el segundo idioma con más personas hablantes nativas en el mundo y uno de los idiomas más extendidos geográficamente al ser el idioma oficial de muchos países[^2]. 

## A materiales técnicos, soluciones técnicas. 

rOpenSci provee apoyo comunitario, estándares e infraestructura a personas que investigan o que usan R para desarrollar, mantener y publicar software de investigación de alta calidad y de código abierto. 
También desarrollamos y mantenemos documentación de alta calidad y [recursos de apoyo](/resources/) para estas actividades. 

La publicación de documentación y recursos en múltiples idiomas incluye dos aspectos:

* La _internacionalización_ es la solución tecnológica que permite que un software se adapte a diversas regiones sin necesitar cambios en el código fuente. Esto es lo que nos permite 

* La _localización_ es el proceso de tomar contenido original y adaptarlo para que sea más accesible o apropiado para otra región, país o audiencia [^3]. Esto incluye idioma, formatos de fecha, monedas, unidades de medida y soporte a diferentes conjuntos de caracteres. 

Las traducciones técnicas de documentos vivos además tienen dos etapas bien diferenciadas que requieren distintos recursos: 

1. obtener una primera versión del material traducido;
2. mantener el material actualizado y sincronizado entre todos los idiomas. 

Existen muchas soluciones para internacionalizar y localizar contenido y software. 
La _traducción_ es en general la parte que más tiempo requiere[^3]. 

En base a nuestras experiencias previas y las características de nuestra comunidad, este proyecto busca completar la primera etapa con una traducción inicial al español de los materiales de rOpenSci y probando un flujo de trabajo de traducción. 

Nuestro enfoque es probar y desarrollar un flujo de trabajo que crea una versión inicial de los documentos usando el traductor automático [DeepL](https://www.deepl.com).
Personas con conocimiento en ambos idiomas y en desarrollo de software luego la revisan usando GitHub. 

Este flujo de trabajo reduce el tiempo necesario para llegar a una traducción de calidad. 
Quienes revisan la traducción se centran en tareas lingüísticas, como el uso de lenguaje inclusivo, localización de los ejemplos, la traducción correcta de frases, metáforas o analogías. 
También buscan material de referencia en el idioma de la traducción. 
Si este flujo de trabajo termina siendo útil, puede incorporarse en la infraestructura para mantener textos sincronizados entre distintos idiomas en vistas de solucionar los problemas de la segunda etapa.

Además de sistematizar experiencias, otros productos de este proyecto serán:

* una guía general con reglas para seguir al traducir documentos técnicos;
* una guía específica para el idioma español;
* una lista de términos técnicos traducidos al español y una lista de términos que no se traducen;
* un paquete de R que encapsulan uestro flujo de trabajo para traducir documentos técnicos.

## Construyendo comunidad

Publicar en múltiples idiomas va a ayudar a democratizar el acceso a recursos de calidad para aprender y enseñar las habilidades digitales necesarias para contribuir a proyectos de código abierto y participar en ciencia abierta y reproducible. 

En rOpenSci creemos que la revisión es un es un proceso que construye una comunidad. 
Desarrollar el material para nuestro proceso de revisión en español nos permite continuar construyendo la comunidad en regiones hispanohablantes (como latinoamérica), tener más personas que contribuyen y recibir comentarios sobre cómo nuestras herramientas y procesos pueden mejorarse para que les sirvan a estas comunidades. 

Además de aprender a desarrollar, mantener, revisar o editar, los mimebros de la comunidad pueden contribuir traducciones. 
Esto suele ser una buena primera contribución y es reconocida por la comunidad.

También esperamos que la documentación y las herramientas de este proyecto sirvan para extender este esfuerzo a otros idiomas, comunidades y proyectos. 


### Fuentes

[^1]: Hilary Carter y Jessica Groopman, “Diversity, Equity, and Inclusion in Open Source: Exploring the Challenges and Opportunities to Create Equity and Agency Across Open Source Ecosystems”, prefacio de Jim Zemlin, The Linux Foundation, diciembre, 2021, https://www.linuxfoundation.org/research/the-2021-linux-foundation-report-on-diversity-equity-and-inclusion-in-open-source
[^2]: Lenguas por número de hablantes nativos. Accedido el 1ro de diciembre de 20022. https://es.wikipedia.org/wiki/Anexo:Lenguas_por_n%C3%BAmero_de_hablantes_nativos
[^3]: Internacionalización y localización. Accedido el 1ro de diciembre de 20022. https://es.wikipedia.org/wiki/Internacionalizaci%C3%B3n_y_localizaci%C3%B3n