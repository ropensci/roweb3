---
slug: recursos_para_utilizar_r_con_lectores_de_pantalla
title: Recursos para utilizar R con lectores de pantalla
author: Liz Hare
editor: Yanina Bellini Saibene
date: '2024-09-05'
tags:
- notas técnicas
- lectores de pantalla
- programa de campeones
- comunidad
- accesibilidad
description: Herramientas y recursos para utilizar R con lectores de pantalla.
---

R es un lenguaje y un entorno para la computación estadística.
Existen varias herramientas y enfoques para interactuar con R, pero no todos son accesibles con lectores de pantalla.
Esta guía proporciona una visión general de las herramientas y técnicas disponibles para los usuarios de lectores de pantalla en diferentes sistemas operativos, con consejos prácticos y recursos para ayudarles a navegar por el entorno R.
Puede que esta guía no esté completa, pero espero que sirva como un valioso punto de partida. Agradecemos las sugerencias de otros usuarios para mejorarla aún más.

## ¿Por dónde empezar?

El conjunto de herramientas y recursos de esta sección es válido para todos los sistemas operativos.

[El proyecto R para el cálculo estadístico](https://www.r-project.org) es el sitio donde puede descargar R para Windows, Linux y Mac.

Al instalar R, dispone de funciones estadísticas básicas.
A esta instalación la llamamos "R base".
Los usuarios añaden funcionalidad escribiendo paquetes en el lenguaje R.
El Dr. Jonathan Godfrey ha escrito un paquete llamado BrailleR que produce resultados estadísticos en formato de texto o Braille que son más accesibles que las funciones de R base.
[Sitio web del Dr. Godfrey](https://r-resources.massey.ac.nz/BrailleR/) contiene información sobre este paquete, así como consejos generales sobre el uso de R como usuario de Braille o lector de pantalla.

El sitio [Usuarios ciegos de R](https://www.nfbnet.org/mailman/listinfo/blindrug_nfbnet.org) es otro lugar al que puedes acudir para obtener respuestas sobre el uso de R.

## ¿Cómo interactúas con R?

Las posibilidades incluyen:

- Ejecutar R en el símbolo del sistema en un terminal. Esto tiene la gran desventaja de no guardar los comandos y la salida.
- Usar un editor de texto para escribir scripts (grupos de comandos R) y enviarlos en la línea de comandos. Este solía ser el enfoque preferido para muchos usuarios ciegos, pero es menos conveniente que en la herramienta interactiva.
- Utilizar la GUI (interfaz gráfica de usuario) de R. Esto puede ser accesible en Windows, pero es inaccesible en Mac.
- Utilizar un entorno de desarrollo integrado (IDE) accesible para escribir, editar, enviar y reutilizar código R (véase la siguiente sección).

### IDEs y sistemas operativos

Un IDE es un software que ayuda a los programadores a desarrollar software de forma eficiente proporcionando un conjunto de herramientas en el mismo entorno. Existen varios IDE en el mercado.
Los IDE tienen varias ventajas sobre el trabajo en el símbolo del sistema o en la GUI de R:

- Comandos especializados para ejecutar el código y revisar los resultados.
- Ayuda con la edición haciendo cosas como notificar al usuario de paréntesis mal emparejados.
- Cambia fácilmente entre la edición de código y la lectura de la salida.
- Facilidad para guardar el trabajo y reutilizarlo más tarde.

El popular IDE RStudio no es accesible para usuarios de lectores de pantalla en ninguna plataforma.
Es muy importante que los profesores entiendan que los alumnos ciegos no tendrán acceso a este entorno y, por tanto, no utilizarán sus botones o accesos directos. Lo mismo se aplica a quienes escriben documentación.

#### Windows

Muchos usuarios ciegos de R utilizan el [Visual Studio Code (VS Code)](https://code.visualstudio.com) IDE con lectores de pantalla.
El sitio [Extensión R para código VS](https://marketplace.visualstudio.com/items?itemName=REditorSupport.r)
proporciona funciones adicionales para que trabajar en R resulte más cómodo.
Una segunda opción para trabajar con R en Windows es instalar [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/about)(WSL). 
Con WSL, puede ejecutar un entorno de línea de comandos de Linux en Windows. 
Puedes acceder a la Terminal utilizando los lectores de pantalla NVDA o JAWS.
Se podría acceder a una sesión de R en el terminal, o se podría leer la entrada y la salida en el editor de texto de su elección desde el sistema operativo Windows o Linux.
Esta sería una gran opción para las personas que son usuarios experimentados de NVDA o JAWS que quieren aprender sobre R y Linux.
#### Mac y Linux

El software que se enumera a continuación trabaja conjuntamente para proporcionar un entorno de trabajo con R:

- [Emacs](https://www.gnu.org/software/emacs/) es un IDE potente y personalizable que
  puede utilizarse con R, aunque al principio hay que aprender muchos comandos.
- [Emacspeak](https://github.com/tvraman/emacspeak) es un lector de pantalla diseñado específicamente para su uso en un terminal Linux (o Mac) con Emacs.
  Funciona mucho mejor que VoiceOver, el lector de pantalla nativo de Apple, en el terminal.
  Emacspeak es potente, pero también implica aprender muchos comandos de teclado.
- [Estadísticas de Emacs Speaks (ESS)](https://ess.r-project.org) es un paquete que puede añadir a Emacs y que le permitirá editar y enviar código y ver su resultado en otra ventana de texto.
  Personaliza el entorno emacs para R.
- Otro paquete emacs útil es [Polymode](https://polymode.github.io) que facilita el uso de R Markdown para producir documentos como informes y diapositivas que son muy accesibles si se imprimen en formato HTML.

La última vez que probé VScode en un Mac, no era totalmente accesible con VoiceOver.

## Funciones útiles de R

R Markdown y `quarto` son herramientas útiles de R.
Permiten crear un único archivo de texto que contiene texto sin formato y código R.
El documento resultante puede mostrar tanto la explicación de texto de su trabajo como la salida de R.
Estas herramientas producen varios tipos de archivos como salida.
La salida HTML es fácil de navegar de forma similar a la de los colegas videntes.
Esta accesibilidad hace que estas herramientas sean ideales para informes, deberes, sitios web y presentaciones de diapositivas.

No he incluido documentación aquí porque es difícil encontrar documentación que no asuma el uso de RStudio.

## Aprender a usar R

Es importante practicar leyendo y aprendiendo de la documentación de R, pero lleva tiempo aprender a entenderla. Hay un montón de recursos útiles por ahí, incluyendo:

- UCLA tiene gran [módulos de aprendizaje y preguntas frecuentes](https://stats.oarc.ucla.edu/r/) sobre R en formato de texto sencillo.
- Buscar en la Web ejemplos y tutoriales (siempre que no sean vídeos) para el tipo de análisis que quieres hacer puede ayudar mucho. Evita los sitios comerciales con muchos anuncios que interfieren con la navegación del lector de pantalla. Yo prefiero los alojados en sitios personales o académicos.
- [Sitio web de Oscar Baruffa](https://www.bigbookofr.com) enumera libros gratuitos en línea sobre R. Muchos de ellos son bastante accesibles, salvo en lo que respecta a las visualizaciones de datos. Además, muchos de ellos asumen que estás usando RStudio, por lo que tendrás que adaptar el trabajo a tu propio entorno.
- [Bookshare](https://bookshare.org) es un repositorio de libros electrónicos para personas con dificultades para acceder al texto impreso en algunos países. Tienen muchos libros sobre R, pero la accesibilidad puede variar. A veces faltan fragmentos de código, lo que no es útil. Sin embargo, a veces estos libros pueden ser bastante útiles.

## Resumen

En esta guía se han descrito varias formas de que los usuarios de lectores de pantalla trabajen con R en distintos sistemas operativos, destacando herramientas accesibles como BrailleR, VS Code y Emacs. Al explorar estas opciones, los usuarios pueden elegir las herramientas que mejor se adapten a sus necesidades y preferencias.


