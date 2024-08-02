---
slug: trucos-git
title: Trucos de Git para trabajar con repositorios grandes
author:
  - Mauro Lepore
editor:
  - Steffi LaZerte
date: "2024-08-06"
tags:
  - notas-tecnicas
  - git
  - github
  - cómo-hacer
description: "`git clone` no siempre es la herramienta adecuada."
---

Recientemente [Yanina Bellini Saibene](/author/yanina-bellini-saibene/) nos recordó actualizar nuestro perfil de Slack:

> Recordatorio amigable: Aumentemos el valor de nuestra comunidad de Slack de rOpenSci. Por favor, agreguen detalles a su perfil, como su foto, su red social favorita, lo que hacen, sus pronombres y cómo se pronuncia su nombre.

Después de hacer eso, decidí actualizar mis fotos de perfil en la página de rOpenSci, lo que me terminó enseñando algunos trucos de git que me gustaría compartir acá. Gracias a [Maëlle Salmon](/author/ma%C3%ABlle-salmon/) por motivarme a escribir este artículo y a [Steffi LaZerte](/author/steffi-lazerte/) por revisarlo.

## Clonando como siempre

Cuando quise clonar el repositorio del sitio web de rOpenSci, me di cuenta de que era grande y que me llevaría varios minutos.

```bash
git clone https://github.com/ropensci/roweb3.git
```

Decidí detener el proceso e investigar cómo clonar solo la última versión de los archivos específicos que necesitaba.

## Clonando la última versión de archivos específicos

Primero hice un *fork* (bifurcación) del repositorio la página de rOpenSci (`roweb3`). Usé [`gh`](https://cli.github.com/) desde la terminal, aunque también podría haberlo hecho manualmente desde GitHub.

```bash
# Si no usas `gh`, hace un "fork" de ropensci/roweb3 desde GitHub
gh repo fork ropensci/roweb3
```

Luego creé un directorio local vacío `roweb3` y lo enlacé al *fork*.

```bash
git init roweb3
cd roweb3
git remote add origin git@github.com:maurolepore/roweb3.git
```

¡Ahora los trucos! Para evitar descargar todo el repositorio primero busqué los archivos específicos que necesitaba en buscador de archivos *Go to file* de GitHub, luego:

* Truco 1: Configuré un [*sparse checkout*](https://git-scm.com/docs/git-sparse-checkout) para clonar solo esos archivos.

```bash
git config core.sparseCheckout true
echo "themes/ropensci/static/img/team/mauro*" >> .git/info/sparse-checkout
```

* Truco 2: Usé [`--depth 1`](https://git-scm.com/docs/git-pull#Documentation/git-pull.txt---depthltdepthgt) para obtener solo la última versión de esos archivos.

```bash
git pull --depth=1 origin main
```

Exploré el resultado con [`tree`](https://manpages.ubuntu.com/manpages/bionic/man1/tree.1.html) y vi que el resultado era justo lo que necesitaba modificar:

```bash
tree
.
└── themes
    └── ropensci
        └── static
            └── img
                └── team
                    ├── mauro-lepore.jpg
                    └── mauro-lepore-mentor.jpg
```

## ¿Pero qué tan grande es?

Aunque esos trucos fueron útiles, aún quería saber cuán grande era el repositorio, así que lo cloné como de costumbre y lo exploré con [`du`](https://manpages.ubuntu.com/manpages/bionic/man1/du.1.html):

```bash
du --human-readable --max-depth=1 .
219M    ./themes
164K    ./.Rproj.user
56K     ./archetypes
628K    ./resources
168K    ./data
376M    ./.git
20K     ./static
12K     ./.github
40K     ./scripts
161M    ./content
24K     ./layouts
475M    ./public
1.3G    .
```

Esto confirmó que el repositorio es mucho más grande que el código que manejo normalmente. Pero ahora sé algunos trucos más de Git (¡y aún más sobre cómo bloguear en rOpenSci :-)).

## Conclusión

> Si todo lo que tienes es un martillo, todo te parecerá un clavo. — Abraham Maslow

A veces, `git clone` no es la herramienta adecuada para el trabajo que querés hacer. Un *sparse checkout* y un *pull* superficial pueden ayudarte a obtener específicamente lo que necesitas.

Si disfrutás aprender con videos, podés [buscar "git" en mi canal de YouTube](https://www.youtube.com/leporemauro/search?query=git) o explorar las listas de reproducción [git](https://www.youtube.com/playlist?list=PLvgdJdJDL-AOHkwiaMvYhPKVjiD9vzZIo), [git-from-the-terminal](https://www.youtube.com/playlist?list=PLvgdJdJDL-AMyv06bsXoXkGmxmaV9U6Ts), y [git-con-la-terminal](https://www.youtube.com/playlist?list=PLvgdJdJDL-APwLSt89PJgI72UGVNUjOKl).

¿Cuáles son tus trucos favoritos de Git? ¿Qué tal si escribís un blog post sobre ellos?
