---
title: Creando Tu r-Universe
author:
  - Yanina Bellini Saibene
date: '2021-09-21'
slug: creando-tu-r-universe
categories: []
tags:
  - r-universe
  - Spanish
package_version: 0.1.0
description: A very short summary of your post (~ 100 characters)
twitterImg: blog/2019/06/04/post-template/name-of-image.png
twitterAlt: Alternative description of the image
tweet: A post about blabla by @username!
output:
  html_document:
    keep_md: yes
---


> This post is cross-posted from it's original publication on [Yanina Bellini Saibene's blog](https://yabellini.netlify.app/es/post/r_universe/)

Durante [useR! 2021](https://user2021.r-project.org/) Jeroen Ooms presentó [el proyecto universo R](https://jeroen.github.io/user2021/#1) en su *keynote*. 
Comentó sobre el proyecto, los casos de uso y repasó las instrucciones para crear tu propio *universo-r*. En este post the explico como crear el tuyo a partir de la experiencia de crear el mio.


## El proyecto universo R (R-universe)

En la web de [rOpenSci](https://ropensci.org/) se define a [r-universe](https://r-universe.dev/organizations/) como una plataforma que proporciona a usuarias/os y organizaciones un **repositorio personal similar a CRAN** para publicar software, artículos *rmarkdown* y otro contenido que un un paquete de R pueda contener.


Cuando te unes a *r-universe*, el sistema rastrea automáticamente los repositorios *git* que registraste en tu perfil y que contienen paquetes de R. 
Crea los binarios para instalarlos en Windows y MacOS, genera viñetas y hace que todos estos datos estén disponibles a través de paneles, feeds y API en subdominios personales.

El subdominio tendrá *tu nombre de usuario* de github, más el dominio `r-universe.dev/`, de esta manera, mi subdominio es:

`https://yabellini.r-universe.dev/`

Una de las características más interesantes es que puedes empezar a instalar los paquetes que están en tu *universo-r* con la función `install.packages` aunque el paquete no esté en CRAN. 
Esta funcionalidad es muy interesante para quines somos docentes y generamos paquetes para nuestras clases.

## Cómo generar tu propio universo

Durante esta charla, el disertante, compartió [este blog post](blog/2021/06/22/setup-runiverse/) que explica como generar tu propio universo. Aquí mi paso a paso siguiendo estas instrucciones:


### Paso 1: crear un respositorio en tu github para tu universo R

La siguiente figura resume los pasos a seguir para crear el resposirio necesario para generar nuestro `universo-r`:

{{< figure src = "r_univserse_crear_repo.png" alt = "ADD ALT TEXT" >}}


a. Crea un nuevo repositorio llamado `universe` en tu cuenta de GitHub. Para eso ingresas a tu cuenta de github (paso 1),

b. luego haces click en el signo más (+) que se encuentra arriba a la derecha y seleccionas la opción *New repository (nuevo repositorio)* (paso 2).

c. En la pantalla *Create new repository* completamos el *repository name (nombre del repositorio)* con **universe** (paso 3), seleccionamos el repositorio como *public (público)* (paso 4) y lo generamos presionando el botón *Create repository (crear repositorio)* (paso 5).

### Paso 2. Detallar los paquetes que agregaremos a nuestro universo
Una vez que el repositorio se creó se nos mostrará una pantalla con opciones para iniciar ese repo (ver figura siguiente).

{{< figure src = "r_univserse_repo_vacio.png" alt = "ADD ALT TEXT" >}}

a. Presionar en el link *create a new file (crear un nuevo archivo)* (paso 1) para generar un archivo llamado `packages.json`. Este archivo debe enumerar los repositorios de los paquetes que queremos incluir en nuestro `universo-r`.

b. Completar este archivo con los datos de los paquetes siguiendo el siguiente formato:

  - en el campo `url` se debe completar con **una URL pública de git del repositorio del paquete**.
  - en el campo `package` va el nombre del paquete **tal cual está escrito** en el archivo `DESCRIPTION` que se encuentra en el repo indicado por la url.
  - Si el paquete R no se encuentra en la raíz del repositorio, también se debe establecer el campo `subdir` en la ruta del directorio raíz del paquete R.

En la figura se ven los paquetes que yo agregué a mi universo.

{{< figure src = "r_univserse_packages.png" alt = "ADD ALT TEXT" >}}

d. Cuando terminamos de completar los datos, presionamos en el botón Commit new file. Se mostrará una pantalla similar a la siguiente figura.

### Paso 3: instalar la aplicación R-universe en GitHub

En este paso debes instalar la aplicación R-universe en tu cuenta de GitHub haciendo click en [este link](https://github.com/apps/r-universe/installations/new) y seleccionando tu cuenta de la primera pantalla que aparece (paso 1 en la siguiente figura). 
En la segunda pantalla se recomienda seleccionar *all the repositories (todos los repositorios)* (paso 2) y luego hacer click en el botón *Next (siguiente)* (paso 3).

{{< figure src = "r_univserse_instalar_app.png" alt = "ADD ALT TEXT" >}}

Se nos presentará la siguiente imágen dandonos la bienvenida al *universo-r*

{{< figure src = "r_universe_listo.png" alt = "ADD ALT TEXT" >}}


### Paso 4: R-universe listo

Una vez que se haya instalado la aplicación, el sistema creará automáticamente tu repositorio personal bajo la organización *r-universe*: `https://github.com/r-universe/<tu_nombre_de_usuario>` (ver imagen siguiente). Aquí es donde el sistema mantiene el historial completo de tus paquetes .

{{< figure src = "r_universe_repo_creado.png" alt = "ADD ALT TEXT" >}}

Después de un par de minutos, por lo general, no más de una hora (en mi caso fueron unos 15 minutos), los paquetes y artículos de los que se hayan completado la compilación en todas las plataformas comenzarán a aparecer en tu panel personal y estarán disponibles para que los usuarios los instalen.

El panel personal se parece a la siguiente figura.

{{< figure src = "r_universe_panel.png" alt = "ADD ALT TEXT" >}}

Allí se presentan tus datos del perfil de github y la información de los paquetes que agregaste a tu universo.


### Paso 5: Contale a tus usuarios de universo-r

Este paso es opcional, pero una linda idea, podés agregar al *readme* de tus paquetes que están disponibles en *r-universe* con instrucciones para instalarlos y agregando una etiqueta que indique que están en *r-universe*.

Para esto podés agregar las siguientes instrucciones:

```r
# Habilitar este universo
options(repos = c(
    yabellini = 'https://yabellini.r-universe.dev',
    CRAN = 'https://cloud.r-project.org'))

# Instalar el paquete
install.packages('learnres')
```

y para agregar una etiqueta r-universe a tu paquete podés agregar la siguiente línea a tu rmarkdown:

`![r-universe](https://yabellini.r-universe.dev/badges/<nombre_del_paquete>)`

por ejemplo,

`![r-universe](https://yabellini.r-universe.dev/badges/learnres)`

genera la etiqueta que se ve en la siguiente figura, mostrando la versión del paquete disponible en *r-universe*:

{{< figure src = "r_universe_readme.png" alt = "ADD ALT TEXT" >}}

¡Esto es todo!, espero que este paso a paso te ayude a generar tu propio *universo-r* con tus paquetes.
