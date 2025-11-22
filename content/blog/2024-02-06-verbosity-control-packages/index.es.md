---
title: ¡Cállate, por favor! Control de la verbosidad en los paquetes
author:
- Mark Padgham
- Maëlle Salmon
date: '2024-02-06'
slug: verbosity-control-packages
categories: []
output: hugodown::md_document
tags:
- package development
params:
  doi: 10.59350/a7t5m-cy325
---

Recientemente hemos introducido un nuevo párrafo en la versión de desarrollo de nuestra guía de desarrollo

> Ofrece a los usuarios una forma de excluirse de la verbosidad, preferiblemente a nivel de paquete: haz que la creación de mensajes dependa de una variable u opción de entorno (como ["usaresto.silencioso"](https://usethis.r-lib.org/reference/ui.html?q=usethis.quiet#silencing-output) en el paquete usethis), en lugar de en un parámetro de la función. El control de los mensajes podría ser a varios niveles ("ninguno", "informar", "depurar") en lugar de lógico (ningún mensaje / todos los mensajes). El control de la verbosidad es útil para los usuarios finales, pero también en las pruebas. Puedes encontrar más comentarios interesantes en [número de la guía de diseño tidyverse](https://github.com/tidyverse/design/issues/42).

Complementa la [requisito de revisión del software estadístico para el software bayesiano](https://stats-devguide.ropensci.org/standards.html#output-verbosity).

El objetivo de esta nota técnica es hacer más fuerte el nuevo requisito, demostrar algunos enfoques para el control de la verbosidad y recoger las opiniones de la comunidad.

## Control de la verbosidad a nivel de paquete

Controlar la verbosidad a nivel de función significa que para silenciar los mensajes hay que escribir código como

```r
x <- mypackage::my_function(thing = 1, verbose = FALSE)
y <- mypackage::my_function(thing = 2, verbose = FALSE)
z <- mypackage::my_function(thing = 3, verbose = FALSE)
```

Aunque se trata de un patrón muy extendido, y bastante claro, tiene el inconveniente de introducir desorden en las llamadas a funciones, y de ser necesario en cada llamada a funciones.
Además, tener el control de la verbosidad a nivel de función suele requerir que otros paquetes que utilicen alguna de esas funciones codifiquen la verbosidad (o la dejen en valores predeterminados e inmutables).
Esto no sólo hace que el control de la verbosidad sea difícil o incluso imposible, sino que también impide una depuración eficaz.

Controlar la verbosidad a nivel de paquete significa que tu usuario, en cambio, escribe:

```r
options(mypackage.quiet = TRUE) # or rlang::local_options() or withr::local_options()
x <- mypackage::my_function(thing = 1)
y <- mypackage::my_function(thing = 2)
z <- mypackage::my_function(thing = 3)
```

¡El control a nivel de paquete es mucho más fácil!

### Cómo implementar el control de la verbosidad a nivel de paquete en tu paquete

Una opción :sweat\_smile: sería escribir tu propia envoltura para mensajes como,

```r
pkg_message <- function(...) {
  if (getOption("mypackage.quiet", FALSE)) {
    return()
  }
  message(...)
}
```

Afortunadamente, hay otros paquetes que se encargan en gran medida de esto por ti, en particular [rlang](https://rlang.r-lib.org) y [cli](https://cli.r-lib.org) que incluyen sus propios equivalentes de la base R [`message()`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/message.html), [`warning()`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/warning.html) y [`stop()`](https://stat.ethz.ch/R-manual/R-devel/library/base/html/stop.html) funciones.
(Las funciones cli llaman en última instancia a las versiones rlang, así que realmente no importa cuál utilices).
Por supuesto, las funciones básicas de R están perfectamente bien, y sin duda pueden utilizarse.
Las alternativas simplemente hacen más cómodos algunos aspectos, como:

1. El [paquete cli](https://blog.r-hub.io/2023/11/30/cliff-notes-about-cli/#how-to-make-cli-quiet-or-not) se basa en las funciones de rlang pero con un formato en pantalla mejorado y amplias opciones de personalización; y
2. La verbosidad puede controlarse en cualquier paquete que utilice rlang o cli mediante [variables de entorno globales](https://rlang.r-lib.org/reference/abort.html#muffling-and-silencing-conditions).

La segunda ventaja es especialmente relevante para el tema de este post.
Basta con sustituir cualquier llamada a `message()` o `warning()` por el equivalente en rlang o cli permite a los usuarios suprimir globalmente los mensajes y advertencias:

- Sustituye `message()` por `rlang::inform()` o `cli::cli_inform()`. Ahora los usuarios pueden silenciar con `options(rlib_message_verbosity = "quiet")`.
- Sustituye `warning()` por `rlang::warn()` o `cli::cli_warn()`. Ahora los usuarios pueden silenciar con `options(rlib_warning_verbosity = "quiet")`.
- Sustituye `stop()` por `rlang::abort()` o `cli::cli_abort()`. Abortar no tiene opción de silenciamiento.

Ten en cuenta que también existe una forma "rlang" de establecer opciones, la opción [`rlang::local_options()` función](https://rlang.r-lib.org/reference/local_options.html) (o la misma función en [el paquete withr](https://withr.r-lib.org/reference/with_options.html)).
Al igual que con los mensajes anteriores, la versión básica de R está bien; las versiones rlang/withr simplemente implementan algunas funciones adicionales.
En concreto, las opciones básicas de R siempre se establecen globalmente, mientras que las opciones locales de rlang se establecen dentro de la versión actual de [marco R](http://adv-r.had.co.nz/Environments.html#env-basics) y se desactivan al salir del marco.
El código de la última sección de abajo proporciona un ejemplo de las ventajas de este enfoque.

Por último, el `rlang::local_options()` puede utilizarse para establecer `rlib_message_verbosity = "quiet"` en los archivos de prueba, para suprimir el muro de texto que suele aparecer al ejecutar las pruebas.
Este muro de texto puede ser un obstáculo al intentar depurar los registros de pruebas; utilizar rlang o cli para los mensajes y advertencias proporciona una forma sencilla de controlar activamente los registros de pruebas y mejorar la depuración.

## Un paso más allá: múltiples niveles de verbosidad

El control de la verbosidad suele implementarse como una elección binaria, normalmente controlada por un parámetro lógico, como `verbose = FALSE` o `quiet = TRUE`.
En `rlib_message_verbosity` descrita anteriormente sólo tiene dos niveles primarios, "silencioso" y "detallado".
Ten en cuenta que no son parámetros lógicos, sino variables de caracteres.
El comportamiento por defecto (de "verboso") también se puede anular un parámetro adicional en la opción `rlang_inform/warn` funciones, `.frequency` que controla la frecuencia con la que se emiten los mensajes.
Esto es especialmente útil para emitir mensajes sólo una vez por sesión de R, configurando `frequency = "once"`.
En términos más generales, a menudo puede ser útil implementar distintos niveles de verbosidad para usuarios y desarrolladores, como "silencioso", "informar" y "depurar".
Esta práctica corresponde a la idea de dejar un [panel de acceso](https://speakerdeck.com/jennybc/object-of-type-closure-is-not-subsettable?slide=77) para simplificar la resolución de problemas en el futuro.
Aunque sólo se implementen dos niveles, es fácil ampliar los niveles en el futuro si ya están definidos como cadenas de caracteres; cambiar el control de la verbosidad de lógico (doble nivel) a multinivel es más complejo, y puede evitarse no utilizando indicadores lógicos en primer lugar.

###  ¿"Verborreico" o "silencioso"?

"verboso".
Porque "silencioso" siempre significa que no hay que hacer nada.
Pero como el código hace cosas, esto se traduce en tener que comprobar si un parámetro "silencioso" es de alguna manera *no* silencioso.
Eso es lógica negativa, que hace que el código sea más difícil de leer.
La lógica positiva es mucho más clara y menos propensa a errores: `if (verbose) { ... do something }` como se demuestra en la sección siguiente.

## Sección extra: Recuperar el control a nivel de paquete de las opciones globales

Un paquete que utilice paquetes del tipo rlang/cli/withr para emitir y controlar la mensajería responderá a las opciones locales (o globales) del mismo modo que todos los demás paquetes que utilicen este sistema.
De este modo, esas opciones se convierten en verdaderamente globales, ya que son compartidas y comprendidas por múltiples paquetes.
Un problema de esto es que a menudo los usuarios pueden querer depurar sólo su propio paquete, dejando tranquilos a todos los demás paquetes.
Esto requiere de nuevo gestores de mensajes personalizados, como el siguiente (recuerda que el segundo parámetro del comando `getOption()` es el predeterminado para los casos en que no se haya establecido dicha opción):

```r
pkg_message <- function(...) {
  is_verbose_mode <- (getOption("mypackage.verbose", "quiet") == "verbose")
  if (is_verbose_mode) {
    # Options local to this function only; reset on exit!
    rlang::local_options(rlib_message_verbosity = "verbose")
  }
  rlang::inform(...)
}
```

Esto permite un comportamiento como el siguiente

```r
pkg_message("normal message")
rlang::local_options(rlib_message_verbosity = "quiet")
pkg_message("suppressed message")
rlang::local_options(mypackage.verbose = "verbose")
pkg_message("reawakened message")
```

```
normal message
reawakened message
```

Y mis opciones locales de verbosidad a nivel de paquete pueden entonces anular los controles de verbosidad de rlang.

### Ampliar los niveles de verbosidad

Por último, demostraremos brevemente cómo se puede ampliar el control de dos niveles de verbosidad rlang/cli de "silencioso"/"detallado" para implementar un nivel de "depuración" en tu propio paquete.
Esto requiere de nuevo un gestor de mensajes personalizado, ligeramente modificado con respecto al anterior para emitir sólo mensajes de depuración:

```r
debug_msg <- function(...) {
  is_debug_mode <- (getOption("mypackage.verbose", "quiet") == "debug")
  if (is_debug_mode) {
    rlang::local_options(rlib_message_verbosity = "verbose")
    rlang::inform(...) # or rlang::warn, cli::cli_alert_info, whatever
  }
}
```

Que habilite este comportamiento:

```r
my_fn <- function(x) {
    # ... do stuff
    debug_msg(paste0("'x' has wrong value: ", x))
}
my_fn(1) # no message issued
rlang::local_options(rlib_message_verbosity = "verbose")
my_fn(1) # still not issued
rlang::local_options(mypackage.verbose = "debug")
my_fn(1) # debug message is issued!
```

```
'x' has wrong value: 1
```

## Conclusión

En esta nota técnica hemos explicado nuestro nuevo requisito de que el control de la verbosidad se realice a nivel de paquete y no de función, mediante la configuración de una opción por parte de los usuarios.
También presentamos la aspiración de tener el control de la verbosidad como una opción entre *grados* de verbosidad, y mostramos cómo eso permite refinar el control de la verbosidad en el futuro desarrollo de paquetes.
Ahora ve a hacer ruido, ¡pero asegúrate de que puedes controlarlo!

¿Cómo se implementa el control de la verbosidad en los paquetes que desarrollas o que te gusta utilizar?
¿Tienes algún comentario o pregunta?
Por favor, no te quedes callado :wink:


