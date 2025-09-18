---
slug: markdown-programatico
title: Todas las Formas de Editar o Analizar Programáticamente Documentos R Markdown
  / Quarto
author:
- Maëlle Salmon
- Christophe Dervieux
- Zhian N. Kamvar
editor: Steffi LaZerte
translator: Yanina Bellini Saibene
date: '2025-09-18'
tags:
- pandoc
- rmarkdown
- tinkr
- quarto
- markdown
- nota técnica
- babeldown
description: 'Visión general de las formas programáticas para analizar y editar archivos Markdown: Markdown, R Markdown, Quarto, archivos Hugo, lo que se te ocurra.'
output: hugodown::md_document
params:
  doi: 10.59350/vjtk0-8wt03
rmd_hash: 9a84bce56ea9c258

---

Si la vida te da un montón de archivos Markdown para analizar o editar, ¿calientas tus músculos regex y te pones en marcha? ¿Y si utilizas herramientas más específicas? En este post, daremos una visión general de las formas programáticas para analizar y editar archivos Markdown: Markdown, R Markdown, Quarto, archivos Hugo, lo que se te ocurra.

## ¿Qué es Markdown?

Markdown es un lenguaje de marcado creado por John Gruber y Aaron Swartz. Aquí tienes un ejemplo:

``` md
# Mi primer título

Contenido, con partes en **negrito** o *itálico*.
También pongo un [enlace](https://ropensci.org/es).
```

Diferentes archivos Markdown pueden dar lugar al mismo resultado, por ejemplo, esto es equivalente a nuestro primer ejemplo:

``` md
Mi primer título
===============

Contenido, con partes en __negrita__ o _itálica_. Pongo un [enlace](https://ropensci.org/es).
```

Además, hay diferentes *sabores* (flavors) o *especificaciones* (specs) de marcado [^1] que añaden alguna [sintaxis ampliada](https://www.markdownguide.org/extended-syntax/) como los emojis escritos con dos puntos.

Las personas que usan R interactuarán habitualmente con diferentes sabores de Markdown a través de sus herramientas habituales:

-   R Markdown, que utiliza Pandoc internamente,
-   Quarto (que utiliza Pandoc internamente... ¿ves alguna tendencia aquí?),
-   GitHub, que utiliza [Markdown con sabor a GitHub (GFM)](https://github.github.com/gfm/),
-   Markdown en roxygen2 que utiliza Commonmark a través de [{commonmark}](https://cran.r-project.org/web/packages/commonmark/index.html),
-   Hugo, por [blogdown](https://pkgs.rstudio.com/blogdown/) o [hugodown](https://hugodown.r-lib.org/) que soportan la [especificaciones Commonmark y GFM](https://gohugo.io/content-management/formats/#markdown),
-   Jekyll que utiliza GFM con peculiaridades mediante [kramdown](https://jekyllrb.com/docs/configuration/markdown/).

Muchas herramientas que utilizan Markdown también aceptan *encabezados* (frontmatter): metadatos en la parte superior de los archivos Markdown, por ejemplo YAML, TOML o JSON. Aquí tienes un ejemplo con un encabezado YAML:

``` md
---
title: Mi cosa bonita
author: Yo misma
---

Contenido, contenido *bueno*.
```

Lo más habitual es que los usuarios de R escriban Markdown manualmente, o con la ayuda de un editor como el [editor visual Positron](https://quarto.org/docs/tools/positron/visual-editor.html) o el editor [editor visual de RStudio](https://posit.co/blog/exploring-rstudio-visual-markdown-editor/). Pero a veces, uno tendrá que crear o editar un montón de archivos Markdown a la vez, y editar todos esos archivos a mano es una enorme pérdida de tiempo. Esta artículo te proporcionará recursos en R que puedes utilizar para crear, analizar y editar documentos Markdown, ¡para que puedas convertirte en el mago de Markdown que siempre has soñado ser :mage:!

### Trozos de código y programación literaria

En Markdown puedes añadir trozos de código, que se formatearán y resaltarán correctamente, utilizando la siguiente sintaxis:

    ```r
    1 + 1
    ```

Herramientas de programación literaria como knitr (para R Markdown y Quarto) te permitirán añadir trozos de código que se ejecutarán para renderizar el documento:

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'>```{r}
#| label: my-chunk
#| echo: true
1 + 1
```
</code></pre>

</div>

Esta última sintaxis, los trozos de código ejecutables, no son necesariamente tratados adecuadamente por herramientas "normales" como Pandoc. Esto es algo que debes tener en cuenta si trabajas con documentos que contienen trozos de código ejecutables.

## Herramientas de creación de plantillas para documentos repetitivos

Imagina que necesitas crear un montón de archivos R Markdown diferentes, por ejemplo para que tus estudiantes los utilicen como ejercicios personalizados. En ese caso, puedes crear un documento modelo como plantilla, y crear sus diferentes versiones de salida utilizando una herramienta de creación de plantillas.

Entre las herramientas de plantillas están:

-   [`knitr::knit_expand()`](https://bookdown.org/yihui/rmarkdown-cookbook/knit-expand.html) por Yihui Xie;
-   el [paquete whisker](https://github.com/edwindj/whisker) mantenido por Edwin de Jonge (utilizado, por ejemplo, en pkgdown);
-   el [paquete brew](https://github.com/gregfrog/brew) mantenido por Greg Hunt;
-   [Pandoc](/blog/2023/06/01/troubleshooting-pandoc-problems-as-an-r-user/) de John MacFarlane a través de su [plantillas](https://pandoc.org/MANUAL.html#templates).

El ejemplo más sencillo del paquete de whisker puede recordarte además el [paquete glue](https://glue.tidyverse.org/).

Un flujo de trabajo habitual sería

-   Creas una plantilla en un archivo, donde las partes variables se indican mediante cadenas como `{{name}}`.
-   Lees esta plantilla en R utilizando, por ejemplo, el [paquete brio](https://brio.r-lib.org/).
-   Mapea sobre tu conjunto de variables, renderiza la plantilla utilizando whisker y guarda cada versión en un archivo utilizando el paquete brio.

### Ejemplo

Aquí tienes un archivo Markdown de ejemplo que podemos utilizar como plantilla:

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'>---
title: "Tarea 1"
author: "{{nombre}}"
---

Crea una distribución normal con una media de {{media}} y una desviación estándar de {{sd}}:

```{r solution-1}
# pista: usa la función rnorm
```
</code></pre>

</div>

Utilizando el flujo de trabajo siguiente, podemos crear distintos documentos Markdown correspondientes a distintos estudiantes.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'># genera las variables de los estudiantes ----</span></span>
<span><span class='nv'>estudiantes</span> <span class='o'>&lt;-</span> <span class='nf'><a href='https://rdrr.io/r/base/c.html'>c</a></span><span class='o'>(</span><span class='s'>"Maëlle"</span>, <span class='s'>"Christophe"</span>, <span class='s'>"Zhian"</span><span class='o'>)</span></span>
<span><span class='nv'>n</span> <span class='o'>&lt;-</span> <span class='nf'><a href='https://rdrr.io/r/base/length.html'>length</a></span><span class='o'>(</span><span class='nv'>estudiantes</span><span class='o'>)</span></span>
<span><span class='nv'>llave</span> <span class='o'>&lt;-</span> <span class='nf'><a href='https://rdrr.io/r/base/data.frame.html'>data.frame</a></span><span class='o'>(</span></span>
<span>  nombre <span class='o'>=</span> <span class='nv'>estudiantes</span>,</span>
<span>  media <span class='o'>=</span> <span class='nf'><a href='https://rdrr.io/r/stats/Poisson.html'>rpois</a></span><span class='o'>(</span><span class='nv'>n</span>, <span class='m'>5</span><span class='o'>)</span>,</span>
<span>  sd <span class='o'>=</span> <span class='nf'><a href='https://rdrr.io/r/base/sprintf.html'>sprintf</a></span><span class='o'>(</span><span class='s'>"%.1f"</span>, <span class='nf'><a href='https://rdrr.io/r/stats/Uniform.html'>runif</a></span><span class='o'>(</span><span class='nv'>n</span><span class='o'>)</span><span class='o'>)</span>,</span>
<span>  archivo <span class='o'>=</span> <span class='nf'><a href='https://rdrr.io/r/base/sprintf.html'>sprintf</a></span><span class='o'>(</span><span class='s'>"%s-hw.es.md"</span>, <span class='nv'>estudiantes</span><span class='o'>)</span></span>
<span><span class='o'>)</span></span>
<span><span class='c'># renderiza tareas usando la plantilla ----</span></span>
<span><span class='nv'>crea_tarea</span> <span class='o'>&lt;-</span> <span class='kr'>function</span><span class='o'>(</span><span class='nv'>llave</span>, <span class='nv'>plantilla</span><span class='o'>)</span> <span class='o'>&#123;</span></span>
<span>  <span class='nf'><a href='https://rdrr.io/r/base/lapply.html'>lapply</a></span><span class='o'>(</span><span class='nf'><a href='https://rdrr.io/r/base/seq.html'>seq</a></span><span class='o'>(</span><span class='nv'>n</span><span class='o'>)</span>, <span class='kr'>function</span><span class='o'>(</span><span class='nv'>i</span><span class='o'>)</span> <span class='o'>&#123;</span></span>
<span>    <span class='nv'>new</span> <span class='o'>&lt;-</span> <span class='nf'>whisker</span><span class='nf'>::</span><span class='nf'><a href='https://rdrr.io/pkg/whisker/man/whisker.render.html'>whisker.render</a></span><span class='o'>(</span><span class='nv'>plantilla</span>, data <span class='o'>=</span> <span class='nv'>llave</span><span class='o'>[</span><span class='nv'>i</span>, <span class='o'>]</span><span class='o'>)</span></span>
<span>    <span class='nf'>brio</span><span class='nf'>::</span><span class='nf'><a href='https://brio.r-lib.org/reference/write_lines.html'>write_lines</a></span><span class='o'>(</span><span class='nv'>new</span>, <span class='nv'>llave</span><span class='o'>$</span><span class='nv'>archivo</span><span class='o'>[</span><span class='nv'>i</span><span class='o'>]</span><span class='o'>)</span></span>
<span>  <span class='o'>&#125;</span><span class='o'>)</span></span>
<span>  <span class='kr'><a href='https://rdrr.io/r/base/function.html'>return</a></span><span class='o'>(</span><span class='nf'><a href='https://rdrr.io/r/base/invisible.html'>invisible</a></span><span class='o'>(</span><span class='o'>)</span><span class='o'>)</span></span>
<span><span class='o'>&#125;</span></span>
<span><span class='nv'>md</span> <span class='o'>&lt;-</span> <span class='nf'>brio</span><span class='nf'>::</span><span class='nf'><a href='https://brio.r-lib.org/reference/read_lines.html'>read_lines</a></span><span class='o'>(</span><span class='s'>"hw-template.es.md"</span><span class='o'>)</span></span>
<span><span class='nf'>crea_tarea</span><span class='o'>(</span><span class='nv'>llave</span>, plantilla <span class='o'>=</span> <span class='nv'>md</span><span class='o'>)</span></span>
<span><span class='nf'><a href='https://rdrr.io/r/base/print.html'>print</a></span><span class='o'>(</span><span class='nv'>llave</span><span class='o'>)</span></span>
<span><span class='c'>#&gt;       nombre media  sd             archivo</span></span>
<span><span class='c'>#&gt; 1     Maëlle     4 0.6     Maëlle-hw.es.md</span></span>
<span><span class='c'>#&gt; 2 Christophe     9 1.0 Christophe-hw.es.md</span></span>
<span><span class='c'>#&gt; 3      Zhian     7 0.8      Zhian-hw.es.md</span></span>
<span></span></code></pre>

</div>

Así son los deberes de Zhian:

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'>---
title: "Tarea 1"
author: "Zhian"
---

Crea una distribución normal con una media de 7 y una desviación estándar de 0.8:

```{r solution-1}
# pista: usa la función rnorm
```
</code></pre>

</div>

<div class="highlight">

</div>

## Herramientas de manipulación de cadenas

Puedes utilizar herramientas de manipulación de cadenas para analizar Markdown si estás seguro de las variantes de Markdown que tu código recibirá como entrada, o si estás dispuesto a hacer crecer tu base de código para dar cabida a muchos casos extremos... lo que al final significa que estás escribiendo un analizador Markdown real. No es para los débiles de corazón... ni necesario si lees la sección que sigue a ésta. :aliviado:

Detectarías los encabezados utilizando, por ejemplo `grep("^#", markdown_lines)` [^2].

Algunos ejemplos de herramientas de manipulación de cadenas son las funciones de R base ([`sub()`](https://rdrr.io/r/base/grep.html), [`grep()`](https://rdrr.io/r/base/grep.html) y amigos), [stringr](https://stringr.tidyverse.org/) (y [stringi](https://stringi.gagolewski.com/index.html)), [`xfun::gsub_file()`](https://rdrr.io/pkg/xfun/man/gsub_file.html).

Aunque las herramientas de manipulación de cadenas tienen una utilidad limitada al analizar Markdown, pueden *complementar* las propias herramientas de análisis. Aunque utilizar herramientas específicas de análisis sintáctico de Markdown te ayudará a escribir menos expresiones regulares tú mismo... no te liberarán completamente de ellas.

## Herramientas de manipulación de representaciones abstractas

Las herramientas de manipulación de representaciones abstractas son fantásticas, y numerosas. Éstas traducen el documento Markdown a una estructura de datos llamada [abstracto abstracto (AST)](https://en.wikipedia.org/wiki/Abstract_syntax_tree) que te proporciona un control detallado sobre elementos concretos del documento (por ejemplo, títulos individuales o enlaces, independientemente de cómo estén escritos). Con una estructura de datos formal, puedes manipular programáticamente el documento Markdown añadiendo, eliminando o manipulando piezas de Markdown de forma estandarizada.

Algunas de estas herramientas te permiten leer, editar y *volver a escribir* al documento.

Sólo mencionaremos las herramientas que puedes utilizar directamente desde R.

### Ejemplo de uso

Supongamos que has creado un montón de tutoriales que enlazan con un sitio web que contiene una galería de extensiones para un popular paquete de visualización de datos. Supongamos también que un día, alguien descubre que el enlace al sitio web está de repente [redirigido a un sitio potencialmente malicioso que, con toda seguridad, no está relacionado con la gramática de los gráficos](https://github.com/ggplot2-exts/gallery/issues/112) y tú tienes que sustituir todas las instancias de ese enlace por `**redacted**`. Como los enlaces en Markdown pueden escribirse de muchas maneras, las expresiones regulares no te ayudarán, ¡pero un analizador sintáctico de Markdown sí!

Un flujo de trabajo para esta situación sería

-   leer el AST de Markdown con tu analizador sintáctico favorito
-   sacar todos los enlaces que apunten al enlace roto
-   sustituirlos por un texto enfatizado que diga "redactado".
-   convertir el AST y volver a escribirlo en el archivo

### {tinkr}

En [paquete tinkr](https://docs.ropensci.org/tinkr/) ideado por Maëlle Salmon y mantenido por Zhian Kamvar, transforma Markdown en XML utilizando Commonmark, y te permite extraer y manipular Markdown utilizando XPath a través del paquete [xml2](https://xml2.r-lib.org/). Tinkr vuelve a escribir el XML en Markdown utilizando XSLT. Los metadatos YAML están disponibles como cadena. Tinkr admite trozos de código ejecutables.

El paquete tinkr se utiliza en los paquetes [babeldown](https://docs.ropensci.org/babeldown/) y [eolo](https://docs.ropensci.org/aeolus/).

### {md4r}

En [paquete md4r](https://rundel.github.io/md4r/) es un paquete experimental mantenido por Colin Rundel. Es una envoltura en R de la biblioteca MD4C (Markdown para C) y representa el AST como una lista anidada con atributos en R. La versión de desarrollo del paquete tiene utilidades para construir documentos Markdown mediante programación.

### Pandoc

Con Pandoc que presentamos en un [nota técnica](/blog/2023/06/01/troubleshooting-pandoc-problems-as-an-r-user/) puedes convertir un archivo Markdown en un Árbol de Sintaxis Abstracta Pandoc (en su formato nativo o en JSON).

¿Cómo utilizarías Pandoc para editar y volver a escribir un archivo Markdown?

-   Utilizando filtros Lua: Pandoc convierte a AST en su formato nativo, los filtros Lua permiten procesarlo para retocarlo, y luego Pandoc puede volver a escribir a markdown.

-   Utilizando filtros JSON: Pandoc convierte a AST generando una representación JSON del mismo, luego cualquier herramienta puede modificar este archivo JSON y proporcionar una versión modificada a Pandoc para que lo convierta de nuevo a markdown.

Ten en cuenta que Pandoc no admite trozos de código ejecutable, ya que no podrá analizar trozos de código ejecutable como `Codeblock`.

### {parseqmd}

Nic Crane tiene un paquete experimental llamado [parseqmd](https://github.com/thisisnic/parseqmd) que utiliza esta estrategia, analizando la salida con el paquete [jsonlite](https://jeroen.r-universe.dev/jsonlite). También puedes convertirlo, por ejemplo, a HTML, y luego volver a Markdown. La ventaja de convertirlo a HTML es que puedes utilizar un paquete como [xml2](https://xml2.r-lib.org/) o [rvest](https://rvest.tidyverse.org/) para extraer y manipular los elementos.

### {parsermd}

El paquete [parsermd](https://rundel.github.io/parsermd/) es otro paquete mantenido por Colin Rundel y es una "implementación de una gramática formal y un analizador sintáctico para documentos R Markdown utilizando la biblioteca Boost Spirit X3". También incluye una colección de funciones de alto nivel para trabajar con el árbol sintáctico abstracto resultante".

Este paquete tiene funciones para un flujo de trabajo ordenado que te permiten seleccionar distintas secciones del documento. Una característica útil es que tiene la función [`rmd_check_template()`](https://rundel.github.io/parsermd/articles/templates.html) que te permite comparar los envíos Markdown de tus estudiantes con una plantilla estándar. Puedes ver su charla en [RStudio::conf(2021) donde presenta este tema](https://posit.co/resources/videos/parsermd-parsing-r-markdown-for-fun-and-profit/).

El paquete parsermd te permite incluso [modificar documentos](https://github.com/rundel/parsermd/issues/21).

### {lightparser}

El paquete [lightparser](https://cloud.r-project.org/web/packages/lightparser/index.html) de Sébastien Rochette "divide tus archivos rmarkdown o quarto por secciones en un tibble: títulos, texto, trozos; reconstruye el archivo a partir del tibble". Puede utilizarse para [traducir documentos](https://edenian-prince.github.io/blog/posts/2024-08-21-translate-md-files/) por ejemplo.

### La imposibilidad de una ida y vuelta perfecta

Al analizar y editar Markdown, y luego escribirlo de nuevo en Markdown, pueden aparecer algunos cambios no deseados. Por ejemplo, con [tinkr](https://docs.ropensci.org/tinkr/#general-principles-and-solution) todos los elementos de la lista empiezan por `-` aunque en el documento original empezaran por `*`. Con md4r, se reajustarán las listas que tengan sangría con espacio de más.

Dependiendo de tu caso de uso, puede que quieras encontrar formas de mitigar esas pérdidas, por ejemplo, reescribiendo sólo las líneas en las que hiciste ediciones intencionadas.

### ¿Cómo elegir un analizador sintáctico?

Puedes elegir un analizador en función de con qué te permita manipular el Markdown: si prefieres XML [^3] y HTML a las listas anidadas, por ejemplo, puede que prefieras utilizar tinkr o Pandoc. Si las funciones de alto nivel de md4r o parsermd son adecuadas para tu caso de uso, puede que prefieras uno de ellos.

Es importante que, si tus documentos contienen trozos de código ejecutable, utilices una herramienta que los admita, como parsermd, lightparser, tinkr.

Otro criterio importante es elegir un analizador sintáctico lo más parecido posible al caso de uso de tus archivos Markdown. Si sólo vas a trabajar con archivos Markdown para GitHub, commonmark/tinkr es una opción excelente, ya que el propio GitHub utiliza commonmark. Ahora bien, tu trabajo puede abarcar diferentes tipos de archivos Markdown que serán utilizados por diferentes herramientas. Por ejemplo, [babeldown](https://docs.ropensci.org/babeldown/) procesa cualquier archivo Markdown [^4]: Markdown, R Markdown, Quarto, Hugo. En ese caso, o si no hay un analizador sintáctico de R que haga exactamente lo que hace el usuario final de tu Markdown, tienes que prestar atención a las peculiaridades de ese usuario final. Quizá tengas que lanzar [Pandoc atributos brutos](/blog/2023/06/01/troubleshooting-pandoc-problems-as-an-r-user/#raw-attributes) alrededor de un shortcode Hugo, por ejemplo. Además, si necesitas analizar ciertos elementos, como de nuevo los atajos de códigos de Hugo, puede que tengas que escribir tú mismo el código de análisis, es decir, las expresiones regulares.

## ¿Qué pasa con los trozos de código?

El análisis sintáctico y la edición programática del código R están fuera del alcance de este artículo, pero están lo suficientemente relacionados como para dar algunos consejos.

### Expresiones regulares

Al igual que con Markdown, puede que necesites utilizar expresiones regulares, pero es un enfoque arriesgado ya que, por ejemplo `plot (x)` y `plot(x)` son ambas llamadas a funciones válidas en R.

### {xmlparsedata}

Puedes analizar el código en XML utilizando el análisis sintáctico de R base y [xmlparsedata](https://r-lib.github.io/xmlparsedata/) y luego manipular el XML con [XPath](https://masalmon.eu/2022/04/08/xml-xpath/). Para volver a escribir código, puedes utilizar los atributos de cada nodo que indican las líneas y columnas originales.

Así que un posible flujo de trabajo, como se ejemplifica en el [ejemplo de Maëlle](https://masalmon.eu/2024/05/15/refactoring-xml/).

-   parsear el código a XML, utilizar xmlparsedata para informar qué cambiar y dónde. De estos pasos obtendrías una lista de posiciones de elementos, por ejemplo.
-   utilizar brio para leer las líneas, cambiar algunas de ellas con herramientas básicas de R, y volver a utilizar brio para escribir las líneas.

### {treesitter}

[treesitter](https://github.com/DavisVaughan/r-tree-sitter) de Davis Vaughan "proporciona enlaces de R a tree-sitter, un sistema de análisis incremental".

## ¿Qué pasa con los metadatos?

Hemos dedicado todo este post al *cuerpo* de los documentos Markdown. ¿Qué pasa con los metadatos contenidos en su encabezados, como:

``` yaml
---
title: "Cool doc"
author: "Jane Doe"
---
```

Para extraer o editar metadatos YAML/TOML/JSON, primero tienes que decapitar los documentos Markdown. Por ejemplo, rmarkdown tiene una función llamada [`rmarkdown::yaml_front_matter()`](https://pkgs.rstudio.com/rmarkdown/reference/yaml_front_matter.html) para extraer los metadatos YAML de un documento Markdown de R; el paquete R quarto tiene una función llamada [`quarto::quarto_inspect()`](https://quarto-dev.github.io/quarto-r/reference/quarto_inspect.html) que, entre otras cosas, extrae los metadatos.

Puedes leer las *líneas* del documento Markdown utilizando [`readLines()`](https://rdrr.io/r/base/readLines.html) o [`brio::read_lines()`](https://brio.r-lib.org/reference/read_lines.html) antes de recurrir a expresiones regulares para identificar el inicio y el final del encabezado en función de su formato.

Entonces, para manejar YAML utilizarías [{yaml}](https://github.com/vubiostat/r-yaml/), para manejar TOML podrías utilizar [{tomledit}](https://github.com/extendr/tomledit) o [{RcppTOML}](https://cran.r-project.org/web/packages/RcppTOML/index.html). Para manejar JSON podrías utilizar [{jsonlite}](https://jeroen.r-universe.dev/jsonlite).

Por último, si necesitas volver a escribir el documento Markdown, volverías a escribir sus líneas utilizando [`writeLines()`](https://rdrr.io/r/base/writeLines.html) o [`brio::write_lines()`](https://brio.r-lib.org/reference/write_lines.html).

## Ejemplos de análisis y edición de Markdown

El [paquete pegboard](https://carpentries.github.io/pegboard/) creado por Zhian Kamvar y mantenido por The Carpentries, analiza y valida las lecciones de Carpentries en busca de elementos estructurales de Markdown, incluyendo enlaces válidos, alt-text y los conocidos fenced-divs gracias a tinkr. Este paquete fue fundamental para convertir toda la infraestructura de las lecciones de The Carpentries de la sintaxis Markdown de Jekyll a Markdown de Pandoc. [^5] .

En [paquete babeldown](https://docs.ropensci.org/babeldown/) mantenido por Maëlle Salmon transforma Markdown en XML, lo envía a la API DeepL para su traducción, y escribe los resultados de nuevo en Markdown, también utilizando tinkr.

## Conclusión

En este post hemos explicado la mejor forma de analizar y editar archivos Markdown. Para crear documentos repetitivos (como mailmerge), recomendamos herramientas de plantillas como [`knitr::knit_expand()`](https://bookdown.org/yihui/rmarkdown-cookbook/knit-expand.html), el [paquete whisker](https://github.com/edwindj/whisker), el [paquete brebaje](https://github.com/gregfrog/brew) y Pandoc. Para editar pequeñas partes de un documento, utilizamos herramientas de manipulación de cadenas, es decir, expresiones regulares, con las funciones de R base ([`sub()`](https://rdrr.io/r/base/grep.html), [`grep()`](https://rdrr.io/r/base/grep.html) y amigos), [stringr](https://stringr.tidyverse.org/) (y stringi), [`xfun::gsub_file()`](https://rdrr.io/pkg/xfun/man/gsub_file.html). Para una manipulación más pesada y segura, enumeramos herramientas basadas en herramientas que manipulan la representación abstracta de los documentos: tinkr, md4r, Pandoc, parseqmd, parsermd, lightparser. También mencionamos herramientas para trabajar con el *código R* dentro de las celdas de código, y para trabajar con el *frontmatter* YAML/TOML/JSON.

¿Qué es lo que *tú* utilizas para manejar archivos Markdown?

[^1]: A 2024-06-20, hay [76 programas que analizan Markdown](https://web.archive.org/web/20250328101117/https://github.com/markdown/markdown.github.com/wiki/Implementations) algunos con su propio sabor único.

[^2]: ¡Pero esto también detectaría los comentarios del código! ¡No lo hagas!

[^3]: Tanto Maëlle como Zhian son *enormes* fans de XML y XPath (ver: <https://masalmon.eu/2022/04/08/xml-xpath/> y <https://zkamvar.netlify.app/blog/gh-task-lists/>).

[^4]: O al menos eso se supone :sweat_smile: Afortunadamente, los usuarios informan de casos extremos que aún no están cubiertos.

[^5]: Para ver ejemplos, consulta [*The Carpentries Workbench Transition Guide*](https://carpentries.github.io/workbench/transition-guide.html).

