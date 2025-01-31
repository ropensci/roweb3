---
slug: multilingual-documentation-wg
title: Documentación multilingüe en paquetes de R
author:
- Elio Campitelli
editor:
  - Steffi LaZerte
  - Yanina Bellini Saibene
date: '2024-07-09'
tags:
- R
- packages
- multilingual
- documentation
- community
description: Documentación multilingüe de paquetes de R al alcance de tu mano.
social: "La documentación multilingüe de paquetes de R al alcance de tu mano @eliocamp@mastodon.social"
---



Nos complace anunciar el nuevo [Grupo de Trabajo de Documentación Multilingüe del R Consortium](https://github.com/RConsortium/multilingual-documentation-wg).
Este Grupo de Trabajo surgió luego de varias conversaciones durante el [R Project Sprint 2023](https://contributor.r-project.org/r-project-sprint-2023/) y supervisará la implementación del soporte de documentación multilingüe en R y organizará los esfuerzos de traducción de la comunidad.
Nuestro primer proyecto es el paquete (experimental) [**rhelpi18n**](https://github.com/eliocamp/rhelpi18n) que añade soporte en R para el uso de documentación multilingüe.

¿Quieres leer la documentación de `base::mean()` (parcialmente) en español?
Instala [rhelpi18n](https://github.com/eliocamp/rhelpi18n) y el módulo de traducción de ejemplo base.es:

```r 
# install.packages("pak")
pak::pak(c("eliocamp/rhelpi18n", "eliocamp/base.es"))
```

Y luego ejecuta este código:

```r 
library(rhelpi18n)
Sys.setenv(LANGUAGE = "es")
help(mean) 
```

```
Media Aritmética

Description:

     Función genérica para la media aritmética (recortada)

Usage:

     mean(x, ...)
     
     ## Default S3 method:
     mean(x, trim = 0, na.rm = FALSE, ...)
     
Arguments:

       x: an R object.  Currently there are methods for numeric/logical
          vectors and date, date-time and time interval objects.
          Complex vectors are allowed for 'trim = 0', only.

    trim: la fracción (0 a 0.5) de observaciones para ser recordatas
          del final de \codex antes de computar la media. Valores de
          trim pro fuera de ese rango se consideran al punto más
          cercano.

   na.rm: un valor lógico que evalua a 'TRUE' o 'FALSE' indicando si
          valores 'NA' deben ser removidos antes de realizar el
          cómputo.

     ...: further arguments passed to or from other methods.

... (27 more lines)
```

¡Hermoso!
Esto debería funcionar en cualquier consola R o IDE.

## ¿Por qué harías esto?

Aunque el inglés es la lengua internacional de facto, existen [ventajas](https://ropensci.org/multilingual-publishing/) de incluir recursos en diferentes idiomas.
Al reducir las barreras lingüísticas, acabamos teniendo una comunidad más grande, fuerte y creativa, con más ideas y recursos.
Esta hegemonía del inglés se refleja en R por el uso del inglés en su documentación, como las páginas de ayuda, los nombres de las funciones y los nombres de los argumentos (¿por qué usar `mean()` en lugar de `Mittelwert()`?).

La documentación de los paquetes *puede* escribirse en cualquier idioma, y CRAN admite documentación en otros idiomas utilizando el campo "Language" (Idioma) [^1] .
Pero aún así, la gran mayoría de los paquetes están documentados en inglés y hay [un pequeño número de paquetes documentados en otros idimas](https://cderv.rbind.io/2018/03/11/non-english-pkg-in-cran/) aparentemente para llegar más fácilmente a su público objetivo.
Por ejemplo, el paquete [labstatR](https://cran.r-project.org/web/packages/labstatR/index.html) sirve de complemento al libro italiano "Laboratorio Di Statistica Con R" y está parcialmente documentado en italiano (utiliza nombres de funciones y argumentos en inglés).
Del mismo modo, [chilemapas](https://cran.r-project.org/web/packages/chilemapas/chilemapas.pdf) proporciona mapas simplificados para Chile, con documentación completa en español, incluidos los nombres de las funciones.
rOpenSci [censo2017](https://docs.ropensci.org/censo2017/) por [Mauricio Vargas](/author/pachá-aka-mauricio-vargas-sepúlveda/) también está totalmente documentado en español.

[^1]: La cita real es "Se puede utilizar el campo 'Language' para indicar si la documentación del paquete no está en inglés", lo que indica que el inglés sigue siendo el supuesto por defecto.

Aunque estos paquetes son más accesibles para su público principal, son mucho menos accesibles para la comunidad en general.
Quienes que no dominan el idioma pueden tener dificultades para descubrir y utilizar las funciones que ofrecen estos paquetes.
Quienes desarrollan esto paquetes se enfrentan al dilema de hacer que su paquete sea inaccesible para su público objetivo o aislarlo del resto del ecosistema de R.

Se trata de un problema difícil que no tiene solución fácil.
Surge periódicamente en el Slack de rOpenSci, así como en otros espacios de R, como Stack Overflow.
El desarrollador del paquete [utilsIPEA](https://cran.r-project.org/web/packages/utilsIPEA/index.html) expresó [la necesidad de documentación bilingüe](https://stackoverflow.com/questions/37288823/bilingual-english-and-portuguese-documentation-in-an-r-package) reconociendo que su paquete sería utilizado tanto por personas de Brasil, que podrían preferir la documentación en portugués, como por la comunidad internacional en general.
Al menos equipos de desarrollo de paquetes han intentado resolver este dilema documentando su paquete en inglés y publicando una segunda versión documentada en otro idioma: [ExpDes](https://cran.r-project.org/web/packages/ExpDes/index.html) y [ExpDes.pt](https://cran.r-project.org/web/packages/ExpDes.pt/index.html) así como [orloca](https://cran.r-project.org/web/packages/orloca/index.html) y [orloca.es](https://cran.r-project.org/web/packages/orloca.es/index.html).
El paquete [karel](https://cloud.r-project.org/web/packages/karel/index.html) tiene dos conjuntos de funciones, uno con nombres y documentación en inglés y otro en español.

Ambas son medidas paliativas que llevan al límite lo que se puede hacer con R en términos de funcionalidad multilingüe.
Además, como estas soluciones no son nativas, pueden resultar difíciles de mantener y no son escalables.

Por eso presentamos el paquete experimental **rhelpi18n** [^2].
Este paquete es un banco de pruebas para implementar un soporte robusto para la documentación multilingüe con el objetivo de integrarlo en R una vez que madure.
Para leer la documentación traducida, hay que cargar rhelpi18n e instalar módulos de traducción creados por la comunidad.

[^2]: El nombre proviene del [Numerónimo](https://es.wikipedia.org/wiki/Numer%C3%B3nimo) de "internacionalización".

## Bueno, pero ¿cómo?

En nuestro ejemplo anterior, los textos traducidos se alojan en base.es, un módulo de traducción.
Se trata de un paquete normal con campos especiales en la DESCRIPTION que especifican qué paquete y versión se está traduciendo y a qué idioma.
Actualmente, las cadenas traducidas se implementan como una lista con la cadena original y la traducción de cada sección de la documentación, pero también estamos estudiando implementarlo con archivos .po tradicionales, que es el mecanismo utilizado por R para traducir mensajes y errores.

El paquete rhelpi18n modifica `utils:::.getHelpFile()` que utilizan todas las funciones de ayuda para obtener el texto de la documentación.
Añade unas pocas líneas de código que buscan si existen módulos de traducción relevantes (como base.es) y sustituyen el texto original por su traducción.

Además de presentar la documentación traducida, rhelpi18n proporciona herramientas para que las personas que desarrollan creen nuevos módulos de traducción.



Por ejemplo, el siguiente código crea un módulo de traducción básico para el paquete glue, incluyendo todas las funcionalidades y texto que necesita traducción. 

```r 
dir <- file.path(tempdir(), "glue.es")
rhelpi18n::i18n_module_create(module_name = "glue.es", 
                              package_path = glue_dir,  # Carpeta con la copia local del código fuente de glue
                              language = "es", 
                              module_path = dir)
```

Ahora el trabajo pesado es ir al subdirectorio "translations" y traducir el texto guardado (por ahora) como archivos YAML.
Por ejemplo, el archivo de traducción para `glue::as_glue()` es:


```
title:
  original: Coerce object to glue
  translation: ~
arguments:
  x:
    original: object to be coerced.
    translation: ~
  '...':
    original: further arguments passed to methods.
    translation: ~
value:
  original: |
    A character vector with S3 class \code{"glue"}.
  translation: ~
description:
  original: |
    A glue object is a character vector with S3 class \code{"glue"}. The \code{"glue"}
    class implements a print method that shows the literal contents (rather than
    the string implementation) and a \code{+} method, so that you can concatenate with
    the addition operator.
... (16 more lines)
```

Una posible (y superficial) traducción sería


```
title:
  original: Coerce object to glue
  translation: Convertir un objeto a glue
arguments:
  x:
    original: object to be coerced.
    translation: objeto a convertir.
  '...':
    original: further arguments passed to methods.
    translation: otros argumentos que se pasan a los métodos.
value:
  original: |
    A character vector with S3 class \code{"glue"}.
  translation: |
    Vector de caracter con la clase S3 \code{"glue"}.
description:
  original: |
    A glue object is a character vector with S3 class \code{"glue"}. The \code{"glue"}
    class implements a print method that shows the literal contents (rather than
    the string implementation) and a \code{+} method, so that you can concatenate with
    the addition operator.
  translation: |
    Un objeto glue es un vector de caracteres con la clase S3 \code{"glue"}. 
    La clase \code{"glue"} implementa un método de impresión que muestra los contenidos
    literales (en vez de la implementación como cadena de caracteres) y un método \code{+} 
    para que puedas concatenar usando el operador de sumatoria.
examples:
  original: |
    x <- as_glue(c("abc", "\"\\\\", "\n"))
    x
... (11 more lines)
```



Tras modificar "as\_glue.yaml" e instalar el paquete, ahora la documentación está en español .

```r 
library(glue)
help(as_glue)
```

```
Convertir un objeto a glue

Description:

     Un objeto glue es un vector de caracteres con la clase S3
     '"glue"'.  La clase '"glue"' implementa un método de impresión que
     muestra los contenidos literales (en vez de la implementación como
     cadena de caracteres) y un método '+' para que puedas concatenar
     usando el operador de sumatoria.

Usage:

     as_glue(x, ...)
     
Arguments:

       x: objeto a convertir.

     ...: otros argumentos que se pasan a los métodos.

... (13 more lines)
```

¡Increíble!

## Próximos pasos

El proyecto está en sus primeras fases por lo que las cosas cambian rápido.
Aún estamos experimentando con distintas formas de almacenar las traducciones y de aplicar sustituciones de texto.
También tiene varias limitaciones, como que aún no traduce los encabezados de sección.
También queremos añadir una indicación clara de que el texto es una traducción y una forma conveniente de acceder rápidamente a la versión original.
Parte del flujo de trabajo de las traducciones suele consistir en traducciones automáticas que posteriormente revisa una persona.
Por ello, estamos considerando la posibilidad de añadir metadatos a las cadenas para señalar los casos de traducciones automáticas que no han sido revisadas por una persona o las traducciones que podrían estar ligeramente desactualizadas (¡sería una pena no mostrar una traducción porque alguien arregló un pequeño error de tipeo en el texto original y aún no había sido revisada!)

Si deseas probar el paquete e informar de cualquier problema, o si tienes ideas sobre cómo mejorarlo, puedes participar en el debate en los[_issues_ abiertos](https://github.com/eliocamp/rhelpi18n/issues) del paquete y uniéndote al [Grupo de trabajo de documentación multilingüe](https://github.com/RConsortium/multilingual-documentation-wg).
¡Ayúdanos!


