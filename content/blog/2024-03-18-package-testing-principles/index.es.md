---
title: Un ejemplo de los principios DRY/DAMP para las pruebas de paquetes
author:
- Maëlle Salmon
editor:
- Steffi LaZerte
date: '2024-03-18'
slug: dry-damp
output: hugodown::md_document
tags:
- tech notes
- package development
- champions program
- how-to
- testing
params:
  doi: 10.59350/yt047-xf054
---

rOpenSci [se ha incorporado la segunda cohorte de Campeones](/blog/2024/02/15/champions-program-champions-2024/) ¡!
Su formación comenzó con un [sesión sobre el estilo del código](/blog/2024/02/22/beautiful-code/) a la que siguieron tres sesiones sobre los fundamentos del desarrollo de paquetes R, y finalizó con una sesión sobre [desarrollo avanzado de paquetes R](https://rpkgdev-rocket-2024.netlify.app/) que consistió en un popurrí de consejos con debate, seguido de tiempo para aplicar estos principios a los paquetes de los participantes.
Aquí quiero compartir uno de los temas tratados: La comprobación de paquetes y, en particular, los principios DRY ("no te repitas") y DAMP ("frases descriptivas y significativas").
Para este tema, utilizamos un [repositorio de GitHub](https://github.com/maelle/swamp) que contiene un paquete R cuyos diferentes commits ilustran los dos principios. En cada paso compartiremos un commit o diff que ilustre los cambios realizados.

## Etapa 1: ¡barro!

Primer commit: Configurar nuestros archivos de prueba, [trabajos-de-prueba.R](https://github.com/maelle/swamp/blob/c67cc053cafb2cc5f5125cbc745b2f392a84e3df/tests/testthat/test-works.R) y [prueba-ok.R](https://github.com/maelle/swamp/blob/c67cc053cafb2cc5f5125cbc745b2f392a84e3df/tests/testthat/test-ok.R)

Estos dos archivos de prueba iniciales definen un objeto llamado `test_object` en el nivel superior, que se utiliza en dos pruebas de cada archivo.

**prueba-trabajos.R**

```r
test_object <- list(a = 1, b = 2)

test_that("multiplication works", {
  expect_equal(test_object[["b"]] * 2, 4)
})

test_that("addition works", {
  expect_equal(test_object[["a"]] + 2, 3)
})
```

y

**prueba-ok.R**

```r
test_object <- list(a = 1, b = 2)

test_that("division works", {
  expect_equal(test_object[["b"]] / 2, 1)
})

test_that("substraction works", {
  expect_equal(test_object[["a"]] - 1, 0)
})
```

No es un patrón óptimo porque no puedes mirar cada `test_that()` prueba de forma aislada y comprender rápidamente lo que ocurre.
En un archivo de pruebas muy largo incluso tendrías que desplazarte arriba y abajo! :scream:
Además, estamos siendo repetitivos al definir el mismo objeto de prueba en dos archivos de prueba.

## Fase 2: ¡SECADO!

Siguiente compromiso: [SECAR estos archivos](https://github.com/maelle/swamp/commit/381f244f56f1837207f2150a7e76c70bd59c0422)

En esta fase nos acordamos diligentemente de DRY, Don't Repeat Yourself (No te repitas), y de la mecánica de [archivos de ayuda de testthat](https://blog.r-hub.io/2020/11/18/testthat-utility-belt/):
archivos cuyos nombres empiezan por `helper-` se cargan antes de todas las pruebas.

Así que creamos un archivo de ayuda (`helper-swamp.R`) dentro del cual `test_object` esté definido y, por tanto, ¡disponible para las pruebas!

En `tests/testthat/helper-swamp.R`,

```r
test_object <- list(a = 1, b = 2)
```

En los archivos de prueba, eliminamos la primera línea que definía `test_object`.

Ahora las cosas aún no son perfectas.
Cuando miramos cualquiera de los archivos de prueba, no podemos saber realmente qué `test_object` ya que su nombre no es "descriptivo y significativo".

Además, ahora tenemos `test_object` que es *siempre* definida aunque no se utilice en una prueba.
 En el mejor de los casos, esto es innecesario e inútil; en el peor, podría tener efectos secundarios no deseados, ¡sobre todo con código más complejo! [^leak]

[^leak]: Esto es una fuga. En otra prueba, uno podría preguntarse por qué existe algún objeto, por qué se ha establecido una opción concreta, etc. y es una pesadilla depurarlo.

## Fase 3: Centrarse en el DAMP

Tercer compromiso: [Aplicar los principios DAMP](https://github.com/maelle/swamp/commit/9cc08937e1cabf112955004212e1d0bccf2ccda4)

En el archivo de ayuda, `tests/testthat/helper-swamp.R` refactorizamos el código en un *función* con un nombre más significativo (¡al menos hagamos como si lo fuera!).

```r
basic_list <- function() {
  list(a = 1, b = 2)
}
```

A continuación, llamamos a esta función para definir el objeto en todas las pruebas en las que sea necesario.
Así, los archivos de prueba pasan a ser

```r
test_that("division works", {
  test_object <- basic_list()
  expect_equal(test_object[["b"]] / 2, 1)
})
```

y

```r
test_that("substraction works", {
  test_object <- basic_list()
  expect_equal(test_object[["a"]] - 1, 0)
})
```

Ahora, aunque la definición real de la lista básica no está en todas las pruebas, tenemos una mejor idea de lo que ocurre al leer la prueba.

Además, si la prueba fallara, en la consola podríamos ejecutar `devtools::load_all()` y ejecutar el código de la prueba, como `devtools::load_all()` carga los archivos de ayuda de la prueba así `basic_list()` estén disponibles.

## Conclusión

El equilibrio entre DRY ("No te repitas") y DAMP ("Frases descriptivas y significativas") es un compromiso.
Para mantener la analogía del agua, también tenemos que asegurarnos de que nuestro código no tenga efectos que puedan "filtrarse" inesperadamente.
Lo que debemos procurar son pruebas autocontenidas que podamos entender y ejecutar sin demasiado contexto.

Otra consideración que no hemos tratado aquí son las pruebas que requieren elementos específicos, como variables de entorno u opciones. En esos casos, intenta utilizar [conr](https://withr.r-lib.org/) como [`withr::local_envvar()`](https://withr.r-lib.org/reference/with_envvar.html) en cada prueba que lo requiera.

Una idea poderosa del libro ["Ingeniería de Software en Google"](https://www.oreilly.com/library/view/software-engineering-at/9781492082781/) de Titus Winters, Tom Manshreck y Hyrum Wright, es que el código puede permitirse ser un poco menos obvio porque tiene pruebas que lo cubren, pero el código de prueba, que no está cubierto por pruebas, no tiene este lujo.

## Más recursos

- Los tres capítulos sobre pruebas de paquetes del libro R packages de Hadley Wickham y Jenny Bryan son una lectura muy recomendable: [Conceptos básicos de las pruebas](https://r-pkgs.org/testing-basics.html), [Diseñar tu conjunto de pruebas](https://r-pkgs.org/testing-design.html), [Técnicas de prueba avanzadas](https://r-pkgs.org/testing-advanced.html).

- Entrada del blog [Por qué los buenos desarrolladores escriben malas pruebas unitarias](https://mtlynch.io/good-developers-bad-tests/) por Michael Lynch.


