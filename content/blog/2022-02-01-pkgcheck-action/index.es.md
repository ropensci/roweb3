---
slug: pkgcheck-action
title: ¡pkgcheck ahora disponible como acción GitHub!
date: '2022-02-01'
author:
- Mark Padgham
- Jacob Wujciak-Jens
featured: false
description: Todos los paquetes enviados para revisión por pares con rOpenSci son
  comprobados por nuestro paquete pkgcheck. Este post describe una nueva acción de
  GitHub que puede utilizarse para ejecutar pkgcheck.
tags:
- ropensci-review-bot
- pkgcheck
- tech notes
params:
  doi: 
---

## ¿Qué es pkgcheck?

El sitio [paquete pkgcheck](https://github.com/ropensci-review-tools/pkgcheck) tiene
ha sido desarrollado por rOpenSci para automatizar el proceso de comprobación de todos los paquetes en
envío. El sitio `ropensci-review-bot` ejecuta automáticamente pkgcheck en todos los envíos, y los editores también pueden activar las comprobaciones en cualquier momento utilizando el comando:

```r
@ropensci-review-bot check package
```

El bot devolverá una lista de comprobaciones que, idealmente, debería tener este aspecto:

{{< figure src="cffr-pkgcheck.png" alt="resultados de pkgcheck del envío reciente"  link="https://github.com/ropensci/software-review/issues/463#issuecomment-921010197">}}

Para estar listo para la revisión por pares, pkgcheck debe devolver una serie de ✔, que indican comprobaciones correctas, y no debe haber ningún símbolo ✘, que indica comprobaciones fallidas. Se recomienda a quien esté preparando un paquete para enviarlo que ["utilizar pkgcheck"](https://devguide.ropensci.org/authors-guide.html) para confirmar que el paquete está listo para ser enviado. Hasta ahora, esto sólo era posible a través de la red local [instalando el paquete y ejecutando el comando `pkgcheck()` comando](https://devguide.ropensci.org/authors-guide.html). Las comprobaciones locales sufren dos desventajas importantes:

1. Los resultados sólo pueden ser reproducibles en un sistema local, en lugar de ser reproducibles de forma general; y
2. Las comprobaciones realizadas por pkgcheck incluyen todas las comprobaciones realizadas por [el paquete rcmdcheck](https://r-lib.github.io/rcmdcheck/) que puede tardar bastante tiempo en ejecutarse.

Al igual que el paquete [acción rcmdcheck de GitHub](https://github.com/r-lib/actions/blob/v2-branch/examples/check-standard.yaml) que puede instalarse fácilmente con uno de los [la p `use_github_action_check_...` funciones de la `usethis` paquete](https://usethis.r-lib.org/reference/github_actions.html) Ahora, pkgcheck también tiene una acción GitHub que supera estos dos inconvenientes ejecutándose a distancia (en GitHub) y generando resultados reproducibles.

## La acción pkgcheck de GitHub

Este post es el anuncio "oficial" del lanzamiento de la acción pkgcheck, una acción de GitHub que permite ejecutar comprobaciones cada vez que se envía código a GitHub. La acción fue desarrollada por uno de nosotros (Jacob), y puede encontrarse en [en GitHub en ropensci-review-tools/pkgcheck-action](https://github.com/ropensci-review-tools/pkgcheck-action). La forma más sencilla de utilizar esta acción en tu propio repositorio es instalar [el paquete pkgcheck](https://docs.ropensci.org/pkgcheck/#installation) y ejecutar [la p `use_github_action_pkgcheck()` función](https://docs.ropensci.org/pkgcheck/reference/use_github_action_pkgcheck.html). Esto colocará un nuevo archivo en la carpeta `.github/workflows` directorio de tu paquete llamado "pkgcheck.yaml", cuyo ejemplo se muestra en [el README principal del repositorio pkgcheck-action](https://github.com/ropensci-review-tools/pkgcheck-action#usage). La acción consiste en una única tarea expresada en las líneas finales:

```yaml
jobs:
  check:
    runs-on: ubuntu-latest
    steps:
      - uses: ropensci-review-tools/pkgcheck-action@main
```

Hay varios parámetros también descritos en ese README principal, que pueden pasarse como parámetros a [la p `use_github_action_pkgcheck()` función](https://docs.ropensci.org/pkgcheck/reference/use_github_action_pkgcheck.html) o añadirla al archivo YAML del flujo de trabajo, como también se describe en el LÉEME. Una vez creada la acción en tu repositorio, puedes activarla añadiéndola en un commit de git y enviándola a GitHub.

### Publicar los resultados de pkgcheck en una incidencia de GitHub

Además de que el flujo de trabajo imprima todos los detalles devueltos por la función principal pkgcheck, el resultado de pkgcheck también puede publicarse en una incidencia de GitHub, donde aparecerá exactamente como en el ejemplo anterior. Una vez finalizado el flujo de trabajo, recibirás una notificación y podrás ver los resultados de la comprobación (con un icono `summary-only` que determina si sólo se publicará en la incidencia un resumen de los resultados como el mostrado anteriormente, o si se publicarán los resultados completos que incluyen el resumen seguido de bastantes más detalles). El flujo de trabajo sólo tendrá éxito cuando se hayan superado todas las comprobaciones de pkgcheck.

## Utilizar la acción pkgcheck para preparar el envío

Esta acción hace que la preparación de paquetes para su envío a revisión por pares con rOpenSci sea mucho más fácil, al confirmar automáticamente si un paquete cumple los requisitos generales para el envío a rOpenSci. Puedes utilizar la acción pkgcheck para confirmar que un paquete está listo para su envío siguiendo estos tres sencillos pasos:

1. Inserta la acción en tu repositorio con [`pkgcheck::use_github_action_pkgcheck()`](https://docs.ropensci.org/pkgcheck/reference/use_github_action_pkgcheck.html).
2. Añade y confirma el script de acción en tu índice git, y envíalo a GitHub para activarlo.
3. Examina los resultados en la incidencia creada automáticamente en tu repositorio de GitHub, modifica el repositorio para abordar cualquier comprobación que falle, e itera.
4. Una vez superada la acción, verás "✔ Este paquete puede ser enviado".

También puedes poner un distintivo pkgcheck} en tu README insertando una versión modificada de estas líneas:

```md
[![pkgcheck](https://github.com/<org>/<repo>/workflows/pkgcheck/badge.svg)](https://github.com/<org>/<repo>/actions?query=workflow%3Apkgcheck)
```

Una vez que tu paquete supere todas las pruebas, el distintivo se volverá verde y tendrá este aspecto:

<svg xmlns="http://www.w3.org/2000/svg" width="128" height="20">
  <defs>
    <Gradiente lineal id="workflow-fill" x1="50%" y1="0%" x2="50%" y2="100%">
      <stop stop-color="#444D56" offset="0%"></stop>
      <stop stop-color="#24292E" offset="100%"></stop>
    </linearGradiente>
    <Gradiente lineal id="relleno-estado" x1="50%" y1="0%" x2="50%" y2="100%">
      <stop stop-color="#34D058" offset="0%"></stop>
      <stop stop-color="#28A745" offset="100%"></stop>
    </linearGradient>
  </defs>
  <g fill="none" fill-rule="evenodd">
    <g font-family="&#39;DejaVu Sans&#39;,Verdana,Geneva,sans-serif" font-size="11">
      <path id="flujo-trabajo-bg" d="M0,3 C0,1.3431 1.3552,0 3.02702703,0 L102,0 L102,20 L3.02702703,20 C1.3552,20 0,18.6569 0,17 L0,3 Z" fill="url(#flujo-trabajo-relleno)" fill-rule="nonzero"></path>
      <text fill="#010101" fill-opacity=".3">
        <tspan x="22.1981982" y="15">pkgcheck</tspan>
      </text>
      <text fill="#FFFFFF">
        <tspan x="22.1981982" y="14">pkgcheck</tspan>
      </text>
    </g>
    <g transform="translate(79)" font-family="&#39;DejaVu Sans&#39;,Verdana,Geneva,sans-serif" font-size="11">
      <path d="M0 0h46.939C48.629 0 50 1.343 50 3v14c0 1.657-1.37 3-3.061 3H0V0z" id="state-bg" fill="url(#state-fill)" fill-rule="nonzero"></path>
      <text fill="#010101" fill-opacity=".3">
        <tspan x="4" y="15">pasando</tspan>
      </texto>
      <texto fill="#FFFFFF">
        <tspan x="4" y="14">pasando</tspan>
      </text>
    </g>
    <path fill="#959DA5" d="M11 3c-3.868 0-7 3.132-7 7a6.996 6.996 0 0 0 4.786 6.641c.35.062.482-.148.482-.332 0-.166-.01-.718-.01-1.304-1.758.324-2.213-.429-2.353-.822-.079-.202-.42-.823-.717-.99-.245-.13-.595-.454-.01-.463.552-.009.946.508 1.077.718.63 1.058 1.636.76 2.039.577.061-.455.245-.761.446-.936-1.557-.175-3.185-.779-3.185-3.456 0-.762.271-1.392.718-1.882-.07-.175-.315-.892.07-1.855 0 0 .586-.183 1.925.718a6.5 6.5 0 0 1 1.75-.236 6.5 6.5 0 0 1 1.75.236c1.338-.91 1.925-.718 1.925-.718.385.963.14 1.68.07 1.855.446.49.717 1.112.717 1.882 0 2.686-1.636 3.28-3.194 3.456.254.219.473.639.473 1.295 0 .936-.009 1.689-.009 1.925 0 .184.131.402.481.332A7.011 7.011 0 0 0 18 10c0-3.867-3.133-7-7-7z"></path>>
  </g>
</svg>

Así sabrás que tu paquete está listo para ser enviado.

Y por último, no dudes en hacer cualquier pregunta sobre el uso de pkgcheck-action, o informar de cualquier error, en <https://github.com/ropensci-review-tools/pkgcheck-action/issues>.


