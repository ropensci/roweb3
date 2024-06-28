---
slug: "20424-06-10-multilingual-documentation"
title: Multilingual Documentation in R Packages
# Delete the package_version line below if your post is not about a package
author:
  - Elio Campitelli
# Set the date below to the publication date of your post
date: 2024-06-10
# Minimal tags for a post about a community-contributed package 
# that has passed software peer review are listed below
# Consult the Technical Guidelines for information on choosing tags
tags:
  - R
  - packages
  - multilingual
# The summary below will be used by e.g. Mastodon preview cards
description: "A very short summary of your post (~ 100 characters)"
# If you have no preferred image for Mastodon preview cards,
# delete the socialImg and socialAlt lines below 
# - Note "/" between year/month/day
#socialImg: blog/2019/06/04/post-template/name-of-image.png
#socialAlt: "Alternative description of the image"
# the text below is for populating the "share on Mastodon" button
# if deleted, the title of the post will be used
social: "Multilingual documentation comming to an R package near you @eliocamp@mastodon.social!"
---



We are happy to announce the R Constorium Multilingual Working Group.
This Working Group will oversee the implementation of multilingual documentation support in R and organise community translation efforts.
Our first project is the (experimental!) **rhelpi18n** package, which adds multilingual documentation support!

Do you want to read the documentation for `base::mean()` (partially) in Spanish?
Install the experimental rhelpi18n package and the sample translation module base.es:

```r 
# install.packages("pak")
pak::pak(c("eliocamp/rhelpi18n", "eliocamp/base.es"))
```

And then run this code:

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

     mean(x, ...{})
     
     ## Default S3 method:
     mean(x, trim = 0, na.rm = FALSE, ...{})
     
Arguments:

       x: Un objeto R. Actualmente hay métodos para vectores
          numéricos/lógicos y tipo fecha, fecha-tiempo e invervalos de
          tiempo. Vectores complexos sólo son permitidos para 'trim =
          0'.

    trim: la fracción (0 a 0.5) de observaciones para ser recordatas
          del final de \codex antes de computar la media. Valores de
          trim pro fuera de ese rango se consideran al punto más
          cercano.

   na.rm: un valor lógico que evalua a 'TRUE' o 'FALSE' indicando si
          valores 'NA' deben ser removidos antes de realizar el
          cómputo.

   ...{}: otros argumentos, pasados hacia o desde otros métodos.
... (28 more lines)
```

Nice!
This should work on any R console or IDE.

## Why would you do this?

English is the de-facto international language.
This English hegemony is reflected in R by the use of English in its documentation, such as manual pages, function names and argument names (why use `mean()` instead of `Mittelwert()`?)
.
Package documentation *can* be written in any language, and CRAN supports non-English documentation by using the "Language" field[^1].
But still the vast majority of packages are documented in English.

[^1]: The actual quote is "A ‘Language’ field can be used to indicate if the package documentation is not in English", which indicates that English is still the assumed default.

There is [a small number of packages documented in other languages](https://cderv.rbind.io/2018/03/11/non-english-pkg-in-cran/), seemingly tailored to their target audience.
For example, the [labstatR](https://cran.r-project.org/web/packages/labstatR/index.html) package serves as a companion to the Italian book "Laboratorio Di Statistica Con R" and is partially documented in Italian (it uses English function names and arguments).
Similarly, [chilemapas](https://cran.r-project.org/web/packages/chilemapas/chilemapas.pdf) provides simplified maps for Chile, with full Spanish documentation, including function names.
rOpenSci's own [censo2017](https://docs.ropensci.org/censo2017/) by Mauricio Vargas is also fully documented in Spanish.

Although these packages are more accessible to their primary audience, they are much less accessible to the wider community.
Users who do not speak the language may find it difficult to discover and use the functions that these packages provide.
Package authors face the dilemma of either making their package inaccessible to their target demographic or isolating it from the wider R ecosystem.

The developer of the [utilsIPEA](https://cran.r-project.org/web/packages/utilsIPEA/index.html) package publicly expressed [the need for bilingual documentation](https://stackoverflow.com/questions/37288823/bilingual-english-and-portuguese-documentation-in-an-r-package), recognising that his package would be used both by people in Brazil, who might prefer documentation in Portuguese, and the broader international community.

At least two packages have tried to solve this dilemma by documenting their package in English and publishing a second version documented in another language: [ExpDes](https://cran.r-project.org/web/packages/ExpDes/index.html) and [ExpDes.pt](https://cran.r-project.org/web/packages/ExpDes.pt/index.html), as well as [orloca](https://cran.r-project.org/web/packages/orloca/index.html) and [orloca.es](https://cran.r-project.org/web/packages/orloca.es/index.html).
The [karel](https://cloud.r-project.org/web/packages/karel/index.html) package, on the other hand, has two sets of functions, one with English names and documentation, and another in Spanish.

Both approaches are very hard to maintain, don't scale well to multiple languages and are not very user-friendly.
A more effective solution would be for R to support multilingual documentation as a standard feature.

That is why we are presenting the experimental **rhelpi18n** package.
This package adds seamless support for multilingual documentation.
An user can load rhelpi18n, install translation modules created by the community, and read R documentation in their language of choice.

## OK, by how?

Translated strings are hosted in the base.es translation module.
This is a regular package with special fields in the DESCRIPTION specifying which package and version is being translated and to which language.
Currently translated strings are implemented as a list with the original string and the translation of each section in the documentation, but we are also looking at implementing this with traditional .po files, which is the mechanism used by R to translate messages and errors.

The rhelpi18n package, on the other hand, modifies `utils:::.getHelpFile()`, which all help functions use to fetch documentation strings.
It adds a few lines to check for relevant translation modules and replaces the original strings with the translated stings on the fly.

This package also also provides tools for developers to create new translation modules.

```r 
dir <- file.path(tempdir(), "glue.es")
rhelpi18n::i18n_module_create(module_name = "glue.es", 
                              package_path = "/home/user1/Documents/r-packages/glue",  # I have a copy of glue here. 
                              language = "es", 
                              module_path = dir)
```

This creates a translation module with all the functionality and strings that need translating.
Now the heavy work is to go to the "translations" subdirectory and translate all the strings saved (currently) as yaml files.
For example, the translation file for `glue::as_glue()` is:

```r 
file.path(dir, "translations", "as_glue.yaml") |> 
  readLines() |> 
  cat(sep = "\n")
```

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

A possible (and crummy) translation would be


```
title:
  original: Coerce object to glue
  translation: Convertir un objecto a glue
arguments:
  x:
    original: object to be coerced.
    translation: objecto a convertir.
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
    Un objecto glue es un vector de caracteres con la clase S3 \code{"glue"}. 
    La clase \code{"glue"} implementa un método de impresión que muestra los contenidos
    literales (en vez de la implementación como cadena de caracteres) y un método \code{+} 
    para que puedas concatenar usando el operador de sumatoria.
examples:
  original: |
    x <- as_glue(c("abc", "\"\\\\", "\n"))
    x
... (11 more lines)
```

After modifying "as_glue.yaml" and installing the package, now the documentation is in Spanish.

```r 
library(glue)
help(as_glue)
```

```
Convertir un objecto a glue

Description:

     Un objecto glue es un vector de caracteres con la clase S3
     '"glue"'.  La clase '"glue"' implementa un método de impresión que
     muestra los contenidos literales (en vez de la implementación como
     cadena de caracteres) y un método '+' para que puedas concatenar
     usando el operador de sumatoria.

Usage:

     as_glue(x, ...)
     
Arguments:

       x: objecto a convertir.

     ...: otros argumentos que se pasan a los métodos.

... (13 more lines)
```

Amazing!

## Come help us!

This is all in early stages and things are moving fast, so you can help.
You can join the discussion by checking the [open issues](https://github.com/eliocamp/rhelpi18n/issues) of the package and by joining the [Multilingual Documentation Working Group](https://github.com/RConsortium/multilingual-documentation-wg).
