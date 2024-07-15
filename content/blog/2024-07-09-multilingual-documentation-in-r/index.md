---
slug: "multilingual-documentation-wg"
title: Multilingual Documentation in R Packages
# Delete the package_version line below if your post is not about a package
author:
  - Elio Campitelli
editor:
  - Steffi LaZerte
  - Yanina Bellini Saibene
# Set the date below to the publication date of your post
date: 2024-07-09
# Minimal tags for a post about a community-contributed package 
# that has passed software peer review are listed below
# Consult the Technical Guidelines for information on choosing tags
tags:
  - R
  - packages
  - multilingual
  - documentation
  - community
# The summary below will be used by e.g. Mastodon preview cards
description: "Multilingual documentation coming to an R package near you!"
# If you have no preferred image for Mastodon preview cards,
# delete the socialImg and socialAlt lines below 
# - Note "/" between year/month/day
#socialImg: blog/2019/06/04/post-template/name-of-image.png
#socialAlt: "Alternative description of the image"
# the text below is for populating the "share on Mastodon" button
# if deleted, the title of the post will be used
social: "Multilingual documentation coming to an R package near you @eliocamp@mastodon.social!"
---



We are happy to announce the brand-new [R Consortium Multilingual Working Group](https://github.com/RConsortium/multilingual-documentation-wg).
This Working Group came about after discussions during the [R Project Sprint 2023](https://contributor.r-project.org/r-project-sprint-2023/) and will oversee the implementation of multilingual documentation support in R and organise community translation efforts.
Our first project is the (experimental) [**rhelpi18n**](https://github.com/eliocamp/rhelpi18n) package, which adds multilingual documentation support!

Do you want to read the documentation for `base::mean()` (partially) in Spanish?
Install the experimental [rhelpi18n](https://github.com/eliocamp/rhelpi18n) package and the sample translation module base.es:

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

Nice!
This should work on any R console or IDE.

## Why would you do this?

Although English is the de facto international language, there are [benefits](https://ropensci.org/multilingual-publishing/) to including resources in different languages.
By reducing language barriers we end up with a larger, stronger, more creative community with more ideas and resources.
The English hegemony is reflected in R by the use of English in its documentation, such as manual pages, function names, and argument names (why use `mean()` instead of `Mittelwert()`?).

Package documentation *can* be written in any language, and CRAN supports non-English documentation by using the "Language" field[^1].
But still, the vast majority of packages are documented in English and there is only [a small number of packages documented in other languages](https://cderv.rbind.io/2018/03/11/non-english-pkg-in-cran/) are seemingly tailored to their target audience.
For example, the [labstatR](https://cran.r-project.org/web/packages/labstatR/index.html) package serves as a companion to the Italian book "Laboratorio Di Statistica Con R" and is partially documented in Italian (it uses English function names and arguments).
Similarly, [chilemapas](https://cran.r-project.org/web/packages/chilemapas/chilemapas.pdf) provides simplified maps for Chile, with full Spanish documentation, including function names.
rOpenSci's own [censo2017](https://docs.ropensci.org/censo2017/) by [Mauricio Vargas](/author/pachá-aka-mauricio-vargas-sepúlveda/) is also fully documented in Spanish.

[^1]: The actual quote is "A ‘Language’ field can be used to indicate if the package documentation is not in English", which indicates that English is still the assumed default.

Although these packages are more accessible to their primary audience, they are much less accessible to the wider community.
Users who do not speak the language may find it difficult to discover and use the functions that these packages provide.
Package authors face the dilemma of either making their package inaccessible to their target demographic or isolating it from the wider R ecosystem.

This is a difficult problem without easy solutions.
It comes up periodically in the rOpenSci Slack as well as in other R spaces, such as Stack Overflow.
The developer of the [utilsIPEA](https://cran.r-project.org/web/packages/utilsIPEA/index.html) package expressed [the need for bilingual documentation](https://stackoverflow.com/questions/37288823/bilingual-english-and-portuguese-documentation-in-an-r-package), recognising that his package would be used both by people in Brazil, who might prefer documentation in Portuguese, and the broader international community.
At least two package developers have tried to solve this dilemma by documenting their package in English and publishing a second version documented in another language: [ExpDes](https://cran.r-project.org/web/packages/ExpDes/index.html) and [ExpDes.pt](https://cran.r-project.org/web/packages/ExpDes.pt/index.html), as well as [orloca](https://cran.r-project.org/web/packages/orloca/index.html) and [orloca.es](https://cran.r-project.org/web/packages/orloca.es/index.html).
The [karel](https://cloud.r-project.org/web/packages/karel/index.html) package, on the other hand, has two sets of functions, one with English names and documentation, and another in Spanish.

Both are workarounds that push the limits of what the R programming language can do in terms of multilingual functionality.
Further, because these solutions are not native, they can become hard to maintain and don't scale well.

That is why we are presenting the experimental **rhelpi18n**[^2] package.
This package is a test-bed for implementing seamless support for multilingual documentation with the aim of integrating it into R itself once it matures.
A user can load rhelpi18n, install translation modules created by the community, and read R documentation in their language of choice.

[^2]: The name comes from the [numeronym](https://en.wikipedia.org/wiki/Numeronym) for "internationalisation".

## OK, but how?

In our example above, translated strings are hosted in base.es, a translation module.
This is a regular package with special fields in the DESCRIPTION specifying which package and version is being translated and to which language.
Currently, translated strings are implemented as a list with the original string and the translation of each section in the documentation, but we are also looking at implementing this with traditional .po files, which is the mechanism used by R to translate messages and errors.

The rhelpi18n package modifies `utils:::.getHelpFile()`, which all help functions use to fetch documentation strings.
It adds a few lines of code which check for relevant translation modules (such as base.es) and replaces the original strings with the translated strings on the fly.

In addition to presenting translated documentation, rhelpi18n also provides tools for developers to create new translation modules.



For example, the following code creates a basic translation module for the glue package, including all the functionality and strings that need translating.

```r 
dir <- file.path(tempdir(), "glue.es")
rhelpi18n::i18n_module_create(module_name = "glue.es", 
                              package_path = glue_dir,  # Path to local copy of glue source code
                              language = "es", 
                              module_path = dir)
```

Now the heavy work is to go to the "translations" subdirectory and translate all the strings saved (currently) as YAML files.
For example, the translation file for `glue::as_glue()` is:


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

A possible (and superficial) translation would be


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



After modifying "as_glue.yaml" and installing the package, now the documentation is in Spanish 🎉.

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

Amazing!

## Next steps

This is all in the early stages but things are moving fast.
We are still experimenting with various ways to store translations and implement string replacements.
It also has several limitations, such as not translating section headings yet.
We also want to add a clear indication that the text is a translation and a convenient way of quickly accessing the original version.
Part of the translations workflow often involves automated translations which are later reviewed by a human.
So we are also considering adding metadata to strings to flag cases of automatic translations that haven't been reviewed by a human or translations that might be slightly outdated (it would be a shame to not show a translation because someone fixed a small typo in the original text and it had yet to be reviewed!).

If you want to test the package and report any problems, or you have ideas on how to improve it, you can join the discussion by checking the [open issues](https://github.com/eliocamp/rhelpi18n/issues) of the package and by joining the [Multilingual Documentation Working Group](https://github.com/RConsortium/multilingual-documentation-wg).
Come help us!
