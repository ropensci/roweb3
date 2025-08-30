---
title: Código bonito, ¡porque lo valemos!
author:
- Maëlle Salmon
- Yanina Bellini Saibene
editor:
- Steffi LaZerte
date: '2024-02-22'
slug: beautiful-code
output: hugodown::md_document
tags:
- champions program
- tech notes
- beginner
- package development
- clean code
params:
  doi: 10.59350/tbdps-5xc82
---

rOpenSci [se incorporó la segunda cohorte de campeones](/blog/2024/02/15/champions-program-champions-2024/) ¡!
Su formación comenzó con una sesión sobre el estilo del código, que resumiremos en este post.
Saber más sobre la calidad del código es relevante para todos los proyectos Champion, ya sea crear un nuevo paquete, someter un paquete a revisión de software o revisar un paquete.
Esta sesión de formación consistió en una charla y un debate, mientras que las próximas sesiones de formación sobre desarrollo de paquetes serán más prácticas.

## ¿Por qué escribir un código bonito?

Aunque tu código será ejecutado por máquinas, será leído por humanos.
Esos humanos, ya seas tú en el futuro, colaboradores que conozcas o colaboradores que no conozcas, necesitarán entender tu código para comprobar que no tiene errores, para corregir posibles fallos y para construir sobre él añadiendo nuevas funciones.
Por tanto, facilitar la comprensión de tu código es crucial.

## Código bien proporcionado

En la primera parte, compartimos consejos que hacían el código más "bien proporcionado".
No es sólo una cuestión de estética.
El código bien proporcionado es más fácil de analizar por los humanos.

### Espaciado regular entre elementos

Compara

```r
starwars%>%
  select(name,height, mass,homeworld) %>%
  mutate(
    mass=NULL,
    height =height *0.0328084 # convert to feet
  )
```

con

```r
starwars %>%
  select(name, height, mass, homeworld) %>%
  mutate(
    mass = NULL,
    height = height * 0.0328084 # convert to feet
  )
```

En el primer trozo, el espaciado entre elementos es irregular.
Por ejemplo, no hay espacio antes de `height` no hay espacio alrededor del signo igual que aparece después de `mass`.

En cambio, te recomendamos que sigas sistemáticamente las reglas de espaciado (¡y de salto de línea!).
A menos que tengas un [opinión muy diferente](https://github.com/ropensci-review-tools/spaceout) la estrategia más sencilla es seguir la guía de estilo de tus colaboradores, o una guía de estilo popular como la [guía de estilo tidyverse](https://style.tidyverse.org/).

¿Cómo se aplican estas normas en la práctica?
Primero tendrás que acostumbrarte a utilizar un estilo concreto.
Las herramientas automáticas como el [paquete estilizador](https://styler.r-lib.org/) o tu IDE pueden ayudarte.
Por ejemplo, en el IDE de RStudio, el atajo de teclado `Ctrl+I` corrige la sangría.

### No demasiado ancho

Una regla tradicional es no tener más de 80 caracteres por línea.
El número exacto no es importante, ¡lo importante es evitar demasiado desplazamiento horizontal!

El [paquete lintr](https://lintr.r-lib.org/) puede advertirte sobre líneas demasiado anchas, entre otras muchas cosas.
Comparado con styler, lintr no arregla las cosas por sí mismo.

También hay un ajuste en el IDE de RStudio para mostrar un margen a los 80 caracteres (Código > Mostrar > Mostrar margen).

### No demasiado largo: párrafos, funciones existentes y caseras

El espacio vertical está limitado en el código tanto por la pantalla como por lo que el lector puede ver de un vistazo (sin tener en cuenta los límites de lo que puede retener en su cabeza).

Una forma de hacer que tu código sea más corto, pero fácil de analizar, es utilizar *párrafos de código*.
Los saltos de línea no son gratuitos, ya que ocupan espacio vertical.
Utiliza saltos de línea para separar bloques de código que hagan algo relacionado.
Como en la prosa, un párrafo debe corresponder aproximadamente a una idea.
Por ejemplo, en el código de ejemplo siguiente, el primer bloque hace algo relacionado con la cabecera de una página web, mientras que el segundo bloque se ocupa del cuerpo de la página web.

```r
head <- collect_metadata(website)
head_string <- stringify(head)

body <- create_content(website)
body_string <- stringify(body)
```

Una segunda forma de hacer que tu código sea menos largo es dividirlo en funciones.
En una función principal, puedes subcontratar tareas a otras funciones.
De este modo, un lector puede ver de un vistazo lo que hace la función principal, y luego dirigirse a las otras funciones para leer más detalles, como en el ejemplo siguiente, donde `create_content()` llama a otras funciones para crear un título, una página y, a continuación, crear su salida que combina ambas cosas.

```r
create_content <- function(website) {
  title <- create_title(website)
  page <- create_page(website)
  combine_elements(title = title, page = page)
}
```

En su libro [Aprende programación Python asistida por IA](https://www.manning.com/books/learn-ai-assisted-python-programming) Leo Porter y Daniel Zingaro comparten los atributos de las buenas funciones: Una tarea clara a realizar, comportamiento claramente definido, cortas en número de líneas de código, entrada y salida claras, valor general sobre uso específico.

¡También es útil saber cómo navegar rápidamente entre funciones en tu IDE!
En el IDE de RStudio, puedes utilizar `Ctrl+click` sobre el nombre de la función, o escribir su nombre en la barra de búsqueda a la que se accede con `Ctrl+.`.

Una tercera forma de acortar tu código es utilizar funciones existentes de R base o de paquetes complementarios.
Por ejemplo, para combinar una lista de valores por defecto con una lista de valores personalizados, puedes utilizar la función [`modifyList()` función](https://masalmon.eu/2023/06/06/basic-patterns/#combine-a-list-of-default-values-with-a-list-of-custom-values).
Como ocurre con las lenguas humanas, aprendemos más palabras R [con el tiempo](https://masalmon.eu/tags/useful-functions/) leyendo el código de otras personas y haciendo que lean nuestro código.

### No demasiado prolijo: la cantidad justa de comentarios

Esta parte de la formación era una versión abreviada de la entrada del blog R-hub [Por qué comentar tu código lo menos (y lo mejor) posible](https://blog.r-hub.io/2023/01/26/code-comments-self-explaining-code/).

Los comentarios del código no son la voz en off de un narrador del código, deben ser pequeñas alertas.
Cuantos más comentarios haya, más probable es que el lector se los salte.

Los comentarios de código no deben ser una tirita para una mala nomenclatura o un código demasiado complejo: en lugar de añadir un comentario, ¿puedes renombrar una variable o refactorizar un trozo de código?

Una idea útil es utilizar [funciones o variables autoexplicativas](https://blog.r-hub.io/2023/01/26/code-comments-self-explaining-code/#use-helper-functions-or-explaining-variables) donde código como

```r
if (!is.na(x) && nzchar(x)) {
  use_string(x)
}
```

se convierte en

```r
x_is_not_empty_string <- (!is.na(x) && nzchar(x))
if (x_is_not_empty_string) {
  use_string(x)
}
```

Por supuesto, ¡los comentarios del código siguen siendo importantes cuando son necesarios!
Algunos ejemplos de buenos comentarios son

- documentación de funciones con roxygen2,
- aspectos que te gustaría señalar a un revisor de código, como por ejemplo `# This query can not be done via GraphQL, so have to use v3 REST API`,
- [comentarios que proporcionan un índice](https://blog.r-hub.io/2023/01/26/code-comments-self-explaining-code/#use-comments-for-the-scripts-outline).

## Código claro

En la segunda parte de la formación, compartimos consejos que mejoran la claridad del código.

### Nombres autoexplicativos

Poner nombre a las cosas es notoriamente difícil.
Compartimos estas ideas:

- Sigue la moda, es decir, utiliza las mismas palabras que otros en tu campo o lenguaje de programación.

- Felienne Hermans, en su libro [El cerebro del programador](https://www.manning.com/books/the-programmers-brain) aconseja elegir los conceptos que componen el nombre, las palabras para decirlo y luego juntarlos. Este enfoque en tres pasos es una buena forma de desatascarse.

- Siguiendo el consejo anterior, los nombres deben ser coherentes en toda la base de código y *moldes de nombres* son una herramienta muy buena para ello. Los moldes de nombres son patrones en los que se combinan los elementos de un nombre; por ejemplo, si calculas el valor máximo del rendimiento de una cosecha, tienes que acordar si `maximum` será `max` o `maximum` y si la palabra estará al principio o al final del nombre de la variable: debe ser `maxYield` o `yieldMax`?  Al normalizar la forma de nombrar las cosas, nuestro código será más fácil de leer.

- "Cuanto mayor sea la distancia entre la declaración de un nombre y sus usos, más largo deberá ser el nombre" (Andrew Gerrand). Sin embargo, por muy cerca que estés de definir una variable, no utilices una abreviatura inteligente muy corta.

- Hay varias formas de escribir los nombres de las variables. El estilo camelCase permite una mayor precisión al leer el código (Dave Binkley, 2009) y es mejor para leer el código con lectores de pantalla.  Sabemos que es difícil cambiar el estilo de un proyecto existente, pero si te encuentras en una situación en la que puedes decidir desde cero, entonces considera la posibilidad de utilizar Camel Case? Si no estás seguro de los nombres de las mayúsculas y minúsculas, consulta el artículo de Allison Horst [caricatura de casos](https://allisonhorst.com/everything-else) (desplázate hacia abajo hasta "Representaciones en viñetas de casos comunes en codificación").

- Un nombre está claro si la persona que revisa tu código está de acuerdo.

Otro consejo es que no pasa absolutamente nada por crear funciones que envuelvan funciones existentes sólo para cambiarles el nombre.
Esta estrategia es habitual para cambiar el orden de los argumentos, pero también está bien para cambiar el nombre.
Digamos que prefieres que los nombres de tus funciones sean acciones (verbos) en lugar de descripciones pasivas, puedes tener:

```r
# In utils.R
remove_extension <- function(path) {
  tools::file_path_sans_ext(path)
}

# In other scripts
remove_extension(path)
```

### Consejos lógicos: temprano `return()`, `switch()`

En una función,

```r
do_thing <- function(x) {
  if (is.na(x)) {
    NA
  } else {
    x + 1
  }
}
```

equivale a

```r
do_thing <- function(x) {
  if (is.na(x)) {
    return(NA)
  } 
  
  x + 1
}
```

pero esta última, con el `return()` tiene menos anidamiento y enfatiza el ["camino feliz"](https://github.com/jennybc/code-smells-and-feels).

En [`switch()`](https://rdrr.io/r/base/switch.html) también puede ayudarte a eliminar los if-else anidados.
Con ella,

```r
if (type == "mean") {
  mean(x)
} else if (type == "median") {
  median(x)
} else if (type == "trimmed") {
  mean(x, trim = .1)
}
```

se convierte en

```r
switch(type,
  mean = mean(x),
  median = median(x),
  trimmed = mean(x, trim = .1)
)
```

### Menos código

El código que *no* escribes no tiene ningún fallo (del que seas responsable) y no necesita ser leído :tada:

En primer lugar, sé estricto con el alcance de lo que intentas conseguir.

En segundo lugar, utiliza dependencias de confianza para externalizar parte del trabajo.
En ["Dependencias: Mentalidad y antecedentes
"](https://r-pkgs.org/dependencies-mindset-background.html) del libro R packages de Hadley Wickham y Jenny Bryan es una gran lectura sobre el tema.

## ¿Cómo puedes mejorar tu código?

En la práctica, ¿cómo aplicas lo que has aprendido sobre estilo de código?
¿Y cómo actualizas tus bases de código heredadas, creadas antes de que conocieras algunos de estos aspectos?

### Limpieza de primavera

Tal vez puedas trabajar en el estilo y la refactorización del código con regularidad

- ¿Una vez al año? Andy Teucher escribió una interesante entrada en su blog sobre la [limpieza de primavera tidyverse](https://www.tidyverse.org/blog/2023/06/spring-cleaning-2023/).

- ¿Más a menudo?

- Una buena estrategia es también trabajar un poco en la refactorización cada vez que entres en una base de código para corregir un error o añadir una característica. No es necesario que la refactorización vaya en el mismo commit / rama, mantén tus cambios de código nucleares y fáciles de revisar.

### lintr

El paquete lintr es un paquete fantástico.
Sus linters, o reglas, te recordarán o enseñarán elementos a corregir que no conocías o no podías retener en tu cabeza.
Puedes ejecutarlo de vez en cuando o hacerlo funcionar en integración continua.

Incluso la simple lectura de sus [referencia](https://lintr.r-lib.org/reference/index.html) puede mostrarte funciones o modelos que desconocías.
¡Una verdadera joya del ecosistema R!

### Revisión humana

Otros seres humanos tendrán una buena perspectiva externa de tu código y, probablemente, ¡buenos consejos para ti!

- ¡Lee el código de tus colegas y viceversa! El equipo de tidyverse tiene un [guía de revisión de código](https://code-review.tidyverse.org/).

- En rOpenSci, llevamos a cabo una [sistema de revisión por pares de paquetes](/software-review/) :sonrisa

## Otros recursos

Estas son las referencias para la mayor parte del contenido de la formación :smile\_cat:

- Charla de Jenny Bryan [El código huele y se siente](https://github.com/jennybc/code-smells-and-feels)

- Reserva [El arte del código legible](https://www.oreilly.com/library/view/the-art-of/9781449318482/) de Dustin Boswell y Trevor Foucher

- Libro [Diseño ordenado de Hadley Wickham, en curso](https://design.tidyverse.org/) con [boletín asociado](https://tidydesign.substack.com/)

- Libro [Una Filosofía del Diseño de Software por John Ousterhout](https://masalmon.eu/2023/10/19/reading-notes-philosophy-software-design/)


