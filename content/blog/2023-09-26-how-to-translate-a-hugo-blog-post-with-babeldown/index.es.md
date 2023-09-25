---
title: Cómo traducir un artículo de blog de Hugo con Babeldown
author:
- Maëlle Salmon
- Yanina Bellini Saibene
date: '2023-09-26'
slug: cómo_traducir_una_entrada_de_blog_de_hugo_con_babeldown
categories: []
tags:
- notas técnicas
- multilingüe
---

Como parte de nuestro [proyecto editorial multilingüe](/multilingual-publishing/) y con [financiación del Consorcio R](https://www.r-consortium.org/all-projects/awarded-projects/2022-group-2) hemos trabajado en el paquete R [babeldown](https://docs.ropensci.org/babeldown/) para traducir contenido basado en Markdown utilizando la API de DeepL.
En esta nota técnica, mostraremos cómo puedes utilizar babeldown para traducir un artículo de blog que utiliza Hugo.

## Motivación

Traducir un artículo de blog en Markdown desde tu consola de R no sólo es más cómodo (cuando ya has escrito dicho artículo en R), sino también menos frustrante.
Con babeldown, en comparación con copiar y pegar el contenido del artículo en algún servicio de traducción, no se romperá la sintaxis Markdown[^md], ni se traducirán las líneas de código.
Esto funciona porque, detrás de escena, babeldown utiliza [tinkr](https://docs.ropensci.org/tinkr) para producir XML que luego envía a la API DeepL, marcando algunas etiquetas como no traducibles. A continuación, convierte el XML traducido por DeepL de nuevo en Markdown.

[^md]: Pero deberías consultar [tinkr docs](https://docs.ropensci.org/tinkr/#loss-of-markdown-style) para ver qué puede cambiar en el estilo de sintaxis Markdown.

Ahora bien, como era de esperar, ¡este contenido traducido por la máquina aún no es perfecto!
Aún necesitarás una o dos personas para revisar y corregir la traducción.
Entonces, ¿por qué no hacer que una persona traduzcan el artículo desde cero?
Hemos observado que para las personas voluntarias que participan en nuestras traduciones, editar una traducción automática es más rápido que traducir todo el artículo, y que libera espacio mental para centrarse en la aplicación de reglas de traducción como la redacción neutra en cuanto al género.

## Configuración

### Requisitos previos en el sitio web de Hugo

[`babeldown::deepl_translate_hugo()`](https://docs.ropensci.org/babeldown/reference/deepl_translate_hugo.html) asume que el sitio web de Hugo utiliza

- grupo de hojas (cada artículo en una carpeta, `content/camino-a-la-hoja/index.md`);
- multilingüismo para que un post en (por ejemplo) español viva en `content/camino-a-la-hoja/index.es.md`.

babeldown podría ampliarse para funcionar con otras configuraciones multilingües de Hugo. Si estás interesado en utilizar babeldown con una configuración diferente, ¡ abre un _issue_ en la sección correspondiente en el [repositorio de babeldow](https://github.com/ropensci-review-tools/babeldown/)! 

Ten en cuenta que babeldown no podrá determinar el idioma por defecto de tu sitio web[^config], así que aunque el idioma por defecto de tu sitio web sea el inglés, babeldown colocará una traducción al inglés en un archivo llamado ".en.md" y no ".md".
Hugo reconocerá el nuevo archivo igualmente (al menos en nuestra configuración).

[^config]: añadir código para manejar la ["desconcertante variedad de posibles ubicaciones de configuración"](https://github.com/r-lib/hugodown/issues/14#issuecomment-632850506) de Hugo y dos formatos posibles (YAML y TOML) está fuera del alcance de babeldown en este momento.

### Requisitos previos de DeepL 

Comprueba primero que la API DeepL admite los idiomas de origen y destino que desees.
Busca la [documentación de los parámetros `source_lang` y `target_lang` de la API](https://www.deepl.com/docs-api/translate-text) para obtener una lista completa.

Una vez que sepas que podrás aprovechar la API de DeepL, tendrás que crear una cuenta para [la API del servicio de traducción de DeepL](https://www.deepl.com/en/docs-api/).
Ten en cuenta que incluso para obtener una cuenta gratuita es necesario registrar un método de pago con ellos.

### Requisitos previos de R

Necesitarás instalar babeldown desde el Universo R de rOpenSci:

```r
install.packages('babeldown', repos = c('https://ropensci.r-universe.dev', 'https://cloud.r-project.org'))
```

A continuación, en cada sesión de R, establece tu clave de API DeepL mediante la variable de entorno DEEPL\_API\_KEY. Puedes almacenarla de una vez por todas con el paquete [keyring](https://r-lib.github.io/keyring/index.html) y recuperarla en tus scripts de la siguiente manera:

```r
Sys.setenv(DEEPL_API_KEY = keyring::key_get("deepl"))
```

Por último, la URL de la API DeepL depende de tu plan.
babeldown utiliza por defecto la URL de API gratuita DeepL.
Si utilizas un plan Pro, establece la URL de la API en cada sesión/script de R mediante

```r
Sys.setenv("DEEPL_API_URL" = "https://api.deepl.com")
```

## ¡Traducción!

Puedes ejecutar el siguiente código:

```r
babeldown::deepl_translate_hugo(
  post_path = <path-to-post>, 
  source_lang = "EN",
  target_lang = "ES",
  formality = "less" # that's how we roll here!
)
```

pero te recomendamos que trabajes un poco más por tu propio bien.

## Traducción utilizando un flujo de trabajo Git/GitHub

Si utilizas el control de versiones, ¡tener la traducción como un diff es muy práctico!

### Primero: En palabras e imágenes

- En la rama de tu artículo (llamémosla "new-post") crea un marcador de posición: guarda tu artículo original del blog (`index.es.md`) bajo el nombre del artículo de destino (`index.en.md`) haz _commit_ y luego _push_.

{{< figure src="placeholder.png" alt="Diagrama de dos partes. A la izquierda una carpeta de hojas de Hugo en la rama new-post con el artículo en español con el texto 'Hola' y una imagen; a la derecha la carpeta de hojas de Hugo en la misma rama con el post en español con el texto 'Hola', el post con el nombre de archivo de destino en inglés con el texto 'Hola', y la imagen."  >}}

- Crea una nueva rama, "auto-traducción" por ejemplo.
- Ejecuta `babeldown::deepl_translate_hugo()` con `force = TRUE`.

{{< figure src="translate.png" alt="Diagrama con dos partes. A la izquierda la carpeta de hojas de Hugo en la rama de auto-translate con el artículo en español con el texto 'Hola', el post con el nombre de archivo de destino en inglés con el texto 'Hola', y la imagen; a la derecha lo único que cambió es que el contenido del post con el nombre de archivo de destino en inglés es ahora 'Hello'."  >}}

- _Commit_ y _push_ el resultado.
- Abre un PR desde el **"translation-tech-note"** a la rama **"new-post"**.
  La única diferencia entre las dos ramas es la traducción automática de tu artículo. La diferencia para el artículo de destino será la diferencia entre los idiomas de origen y de destino. Si tienes la buena costumbre de empezar una nueva línea después de cada frase/parte de una frase, aún mejor.

{{< figure src="pr.png" alt="Dibujo del pull request de la rama auto-translate a la rama new-post donde la diferencia es que ahora se ha traducido al inglés el contenido de la entrada con el nombre de archivo de destino en inglés."  >}}

- Las personas que traducen o revisan pueden abrir un segundo PR en la rama de traducción con sus ediciones. O pueden añadir sus ediciones como [sugerencias](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/commenting-on-a-pull-request#adding-comments-to-a-pull-request).

### De nuevo pero en código

Ahora vamos a repasar esto de nuevo, pero con un flujo de trabajo de programación. Utilizaremos fs y gert (¡pero hazlo como mejor te resulte a ti!). Suponemos que tu directorio actual es la raíz de la carpeta del sitio web, y también la raíz del repositorio git.

- En la rama del artículo, (de nuevo, llamémosla "new-post"), guarda tu artículo original del blog (`index.es.md`) con el nombre del artículo de blog de destino (`index.en.md`). Haz _commit_ y luego _push_.

```r
fs::file_copy(
  file.path("content", "blog", "2023-10-01-r-universe-interviews", "index.es.md"),
  file.path("content", "blog", "2023-10-01-r-universe-interviews", "index.en.md")
)
gert::git_add(file.path("content", "blog", "2023-10-01-r-universe-interviews", "index.en.md"))
gert::git_commit("Add translation placeholder")
gert::git_push()
```

- Crea una nueva rama, "auto-translate" por ejemplo.

```r
gert::git_branch_create("translation-tech-note")
```

- Ejecuta `babeldown::deepl_translate_hugo()` con `force = TRUE`.

```r
babeldown::deepl_translate_hugo(
  post_path = file.path("content", "blog", "2023-10-01-r-universe-interviews", "index.es.md"),
  force = TRUE,
  yaml_fields = c("title", "description", "tags"),
  source_lang = "ES",
  target_lang = "EN-US"
)
```

También puedes omitir `post_path` si estás ejecutando el código desde la IDE de RStudio y si el archivo abierto y en foco (el que ves encima de tu consola) es el post que hay que traducir.

```r
babeldown::deepl_translate_hugo(
  force = TRUE,
  yaml_fields = c("title", "description", "tags"),
  source_lang = "ES",
  target_lang = "EN-US"
)
```

- Haz _commit_ del resultado con el código que aparece a continuación.

```r
gert::git_add(file.path("content", "blog", "2023-10-01-r-universe-interviews", "index.en.md"))
gert::git_commit("Add translation")
gert::git_push()
```

- Abre un PR desde el **"translation-tech-note"** a la rama **"new-post"**.
  La única diferencia entre las dos ramas es la traducción automática de `"content/blog/2023-10-01-r-universe-interviews/index.en.md"`.

- Las personas que traducen o revisan pueden entonces ¡abrir un *segundo* PR a la rama de traducción con sus ediciones! O pueden añadir sus ediciones como [sugerencias](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/commenting-on-a-pull-request#adding-comments-to-a-pull-request).

### Resumen de ramas y PRs

Al final debería haber dos o tres ramas:

- branch A con artículo en español y marcador de posición de artículo en inglés (con contenido en español) -- PR to main;
- rama B con el artículo traducido automáticamente al inglés -- PR a la rama A;
- Opcionalmente, la rama C con la edición de una persona de la traducción automática al inglés del artículo -- PR a la rama B. Si la rama C no existe, las ediciones realizadas por una persona se hacen como sugerencias de revisión de PR en el PR de B a A.

Los PR se fusionan en este orden:

- PR a la rama B;
- PR a la rama A;
- PR a main.

### Ejemplo real

- [PR añadiendo un artículo al blog de rOpenSci](https://github.com/ropensci/roweb3/pull/629), observa que es un PR del **"r-universe-interviews"** a la rama **"main" (por defecto)**;
- [PR añadiendo la traducción automática](https://github.com/ropensci/roweb3/pull/639), observa que es un PR para la rama **"r-universe-interviews"**.

{{< figure src="pr-diff.png" alt="Captura de pantalla de la pestaña de archivos del pull request que añade la traducción automática, donde observamos que el texto en español de los metadatos YAML y el contenido Markdown se ha traducido al inglés."  >}}

Yanina retocó la traducción automática sugiriendo cambios en el PR, y luego aceptándolos.

{{< figure src="pr-comments.png" alt="Captura de pantalla de la pestaña principal del pull request que añade la traducción automática, donde observamos un comentario de Yanina sustituyendo la palabra 'artículo' por 'entrada de blog' y arreglando el nombre de 'R-universo'."  >}}

### Campos YAML

Por defecto, babeldown traduce los campos YAML "título" y "descripción".
Si tienes texto en más campos, utiliza la opción `yaml_fields` argumento de `babeldown::deepl_translate_hugo()`.

Ten en cuenta que si babeldown traduce el título, actualiza el slug.

### Glosario

Imagina que tienes algunas preferencias para algunas palabras, algo que irás construyendo con el tiempo.

```r
readr::read_csv(
  system.file("example-es-en.csv", package = "babeldown"), 
  show_col_types = FALSE
)
```

```
## # A tibble: 2 × 2
##   Spanish     English   
##   <chr>       <chr>     
## 1 paquete     package   
## 2 repositorio repository
```

Puedes registrar estas traducciones preferidas en un glosario en tu cuenta de DeepL.

```r
deepl_upsert_glossary(
  <path-to-csv-file>,
  glossary_name = "rstats-glosario",
  target_lang = "Spanish",
  source_lang = "English"
)
```

Utilizarías exactamente el mismo código para *actualizar* el glosario, de ahí el nombre "upsert" de la función.
Necesitas un glosario por cada par de idiomas de origen y destino: el glosario inglés-español no puede utilizarse, por ejemplo, para el español-inglés.

En tu `babeldown::deepl_translate_hugo()` llamada utilizarás el nombre del glosario (aquí "rstats-glosario") para el argumento `glossary`.

### Formalidad

`deepl_translate_hugo()` tiene un `formality` argumento.
Ahora bien, la API de DeepL sólo admite esto para algunos idiomas, como se explica en el apartado [documentación del parámetro `formality` de la API](https://www.deepl.com/docs-api/translate-text):

> Establece si el texto traducido debe inclinarse hacia un lenguaje formal o informal. Actualmente, esta opción sólo funciona para las lenguas de destino DE (alemán), FR (francés), IT (italiano), ES (español), NL (neerlandés), PL (polaco), PT-BR y PT-PT (portugués), JA (japonés) y RU (ruso). (...) La configuración de este parámetro con una lengua de destino que no admita la formalidad fallará, a menos que se utilice una de las opciones prefer\_...

Por tanto, para asegurarnos de que una traducción funcionará, en lugar de escribir `formality = "less"` puedes escribir `formality = "prefer_less"` que sólo utilizará la formalidad si está disponible.

## Conclusión

En este post hemos explicado cómo traducir una entrada del blog de Hugo utilizando babeldown.
Aunque lo esencial es utilizar una llamada a `babeldown::deepl_translate_hugo()`,

- es necesario indicar la URL de la API y la clave,
- se pueden mejorar los resultados utilizando los distintos argumentos de la función,
- recomendamos emparejar la traducción con un flujo de trabajo Git + GitHub (o GitLab, gitea...).

babeldown tiene [funciones](https://docs.ropensci.org/babeldown/reference/index.html) para traducir capítulos de libros Quarto, cualquier archivo Markdown y cualquier cadena Markdown, con argumentos similares y uso recomendado, ¡así que explora su referencia!

Nos encantaría que nos cuentes tus [casos de uso](/usecases/).


