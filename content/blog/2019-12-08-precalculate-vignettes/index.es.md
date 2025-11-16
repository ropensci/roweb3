---
slug: precompute-vignettes
title: Cómo precomputar viñetas de paquetes o artículos pkgdown
date: '2019-12-08'
author: Jeroen Ooms
translator: 
- Juan Cruz Enrique
topicid: 1893
tags:
- docs
- paquetes
- notas técnicas
- r-universe
params:
  doi: 10.59350/yscyn-6eb34
---

Desde principios de este año [construimos automáticamente](/technotes/2019/06/07/ropensci-docs/) binarios y documentación pkgdown para [todos los paquetes de rOpenSci](https://docs.ropensci.org). Pero un problema que hemos encontrado es que algunos paquetes incluyen viñetas que requieren algunas herramientas/datos/credenciales especiales, que no están disponibles en los servidores de compilación genéricos.

Este post explica cómo incluir esas viñetas y artículos en tu paquete.

## Sobre las viñetas del paquete

Por defecto, R recrea automáticamente las viñetas durante `R CMD check` o al generar sitios pkgdown ejecutando todo el código de R. Esto es útil porque proporciona algunas pruebas adicionales de tu código y garantiza que la documentación sea reproducible. Sin embargo, a veces no es buena idea ejecutar el código en cada servidor de compilación cada vez. Por ejemplo:

- Los ejemplos de viñetas requieren algún software local especial o datos privados.
- El código se conecta a un servicio web que requiere autenticación o tiene límites.
- No quieres machacar a los servicios web por cada comprobación de CMD.
- El código de la viñeta tarda mucho en ejecutarse.

En estos casos es mejor ejecutar el código rmarkdown localmente, y enviar una viñeta en el paquete que ya contenga la salida de R renderizada.

## La solución: ejecutar localmente rmarkdown

 Imagina que tienes una viñeta llamada `longexample.Rmd`. Para precomputar la viñeta, cambia el nombre del archivo de entrada por algo que R no reconozca como rmarkdown, por ejemplo `longexample.Rmd.orig`. A continuación, ejecuta knitr en el directorio del paquete para ejecutar y sustituir el código R en el rmarkdown:

```r
# Execute the code from the vignette
knitr::knit("vignettes/longexample.Rmd.orig", output = "vignettes/longexample.Rmd")
```

El nuevo archivo de salida `longexample.Rmd` contiene ahora markdown con la salida de R ya ejecutada. Así que puede tratarse como una viñeta normal, pero R puede convertirla a html instantáneamente sin tener que volver a ejecutar código R desde el rmarkdown.

En el [paquete jsonlite](https://github.com/jeroen/jsonlite/tree/v1.6/vignettes) se muestra un ejemplo del mundo real. En este caso he precomputado viñetas que acceden a APIs web para evitar que los servicios se machaquen (y potencialmente baneen los servidores de comprobación).

## Guardar las cifras de las viñetas

Un inconveniente de este truco es que si el resultado de la viñeta incluye figuras, tienes que guardar las imágenes en la carpeta de viñetas. También es una buena idea nombrar explícitamente tus trozos knitr de rmarkdown, para que las imágenes tengan nombres de archivos sensatos.

Nuestro paquete recientemente incorporado [eia](https://github.com/ropensci/eia/tree/master/vignettes) de Matt Leonawicz es un buen ejemplo. Este paquete proporciona un cliente R para la API de Datos Abiertos de la Administración de Información Energética de EEUU. La página de [documentación de eia](https://docs.ropensci.org/eia/articles/) se genera automáticamente para cada confirmación del [servidor de documentación de rOpenSci](https://ropensci.org/technotes/2019/06/07/ropensci-docs/) aunque el código de las viñetas requieran en realidad una clave API (que el servidor de documentos no tiene).

{{< figure alt="captura de pantalla"  src="W5NDdOA.png" link="https://docs.ropensci.org/ei">}}

El sitio [directorio de viñetas eia](https://github.com/ropensci/eia/blob/master/vignettes/) contiene las `Rmd.orig` archivos de entrada y los `.Rmd` calculados previamente por el autor del paquete. Ten en cuenta también que el directorio de viñetas contiene un práctico script [precompilar.R](https://github.com/ropensci/eia/blob/master/vignettes/precompile.R) que facilita al autor del paquete la actualización local de las viñetas de salida.

## No olvides actualizar

El inconveniente de este enfoque es que los documentos ya no se actualizan automáticamente cuando cambia el paquete. Por lo tanto, sólo debes precompilar las viñetas y artículos que sean problemáticos, y tomar nota para volver a redactar la viñeta de vez en cuando, por ejemplo, antes de la publicación de un paquete. Añadir un [guión](https://github.com/ropensci/eia/blob/master/vignettes/precompile.R) a tus carpetas de viñetas que lo haga ser un recordatorio útil.


