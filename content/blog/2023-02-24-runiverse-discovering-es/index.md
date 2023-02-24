---
slug: runiverse-discovering-es
title: Descubrir y aprender todo lo que hay que saber sobre los paquetes de R utilizando
  r-universe
date: '2023-02-24'
author: Jeroen Ooms
description: El objetivo de r-universe es proporcionar un lugar central para navegar
  por el ecosistema de R y descubrir lo que existe; hacerse una idea de la
  finalidad y la calidad de cada paquete, y ayudar a empezar en cuestión
  de segundos.
photogallery: yes
featured: yes
tags:
- registry
- search
- packages
- dashboard
---

## Encontrar la herramienta adecuada para el trabajo

Lo más difícil de usar R con eficacia es encontrar los mejores paquetes para el problema que intentas resolver. Creo que esto es incluso, más importante que dominar el lenguaje en sí. Cosa que irás adquiriendo a medida que empieces a utilizar R con más frecuencia. Sin embargo, construir tu código sobre bases fiables es esencial para obtener buenos resultados, y difícil de arreglar más adelante en un proyecto.

Hay unos 20.000 paquetes en CRAN, y más en otras redes como BioConductor y GitHub. Todos los días se publican nuevos paquetes. Las personas que desarrollan son una mezcla de voluntarios y voluntarias, desde ingenieros de software profesionales hasta estudiantes y aficionadas. La calidad y el alcance de los paquetes varían enormemente, lo que puede hacer difícil juzgar qué herramientas son la mejor opción para una tarea determinada.

El objetivo último de [r-universe](https://r-universe.dev) es ayudarte a navegar eficazmente por el ecosistema de R para descubrir lo que hay disponible, hacerte una idea de la finalidad y la calidad de cada paquete, del equipo que los desarrolla y empezar a utilizar estos paquetes inmediatamente y sin complicaciones.

## Tres niveles de navegación en r-universe

Podemos distinguir tres niveles de navegación en r-universe cuando vayas a buscar paquetes de R:

1. Buscar en el ecosistema global: encontrar paquetes, por tema, palabra clave, clasificación, etc.
2. Busca por la persona/organización que lo mantiene: explora todo el trabajo de un grupo o de un investigador o investigadora particular.
3. Busca por el paquete individual: obtén información detallada sobre todo lo que hay que saber sobre un proyecto e instrucciones para empezar a utilizarlo.

Si recien empiezas con R o estás explorando paquetes para una determinada tarea, puedes empezar buscando todo lo que hay utilizando el motor de búsqueda r-universe. Una vez que te familiarices con el ecosistema, puede que te interese acercarte a un conjunto específico de paquetes de una determinada persona u organización y con el tiempo aprender más sobre los detalles de paquetes concretos.

## Nivel 1: buscar en todo el ecosistema R

La página de inicio en [https://r-universe.dev](https://r-universe.dev) te lleva directamente al motor de búsqueda global. Aquí puedes realizar una búsqueda de texto libre de una palabra clave, que se coteja con nombres de paquetes, descripciones, temas y títulos de páginas de manuales, viñetas, etc. Los resultados se ordenan mediante una combinación de una puntuación de coincidencia (con qué frecuencia y dónde aparece el término buscado), y una clasificación de calidad[^1].

{{< figureforgallery src="../runiverse-discovering/search1.png" alt="Screenshot of r-universe search engine landing page." >}}

La parte derecha del cuadro de búsqueda contiene un botón de expansión que revela los filtros de powersearch. Aquí puedes introducir criterios de búsqueda avanzados, para coincidir específicamente con campos concretos. Por ejemplo, puedes buscar paquetes de un autor determinado, o que tengan una función o dependencia específica.

{{< gallery >}}
{{< figureforgallery src="../runiverse-discovering/search2.png" alt="Screenshot of r-universe simple search results." >}}
{{< figureforgallery src="../runiverse-discovering/search3.png" alt="Screenshot of r-universe advanced search query." >}}
{{< figureforgallery src="../runiverse-discovering/search4.png" alt="Screenshot of r-universe advanced search results." >}}
{{< /gallery >}}

La página de búsqueda también muestra una lista aleatoria de organizaciones que publican paquetes de R (ordenados por actividad reciente), que es una forma divertida de descubrir lo que se está desarrollando actualmente en el ecosistema de R.

## Nivel 2: explorar el trabajo de un mantenedor u organización

Cada usuario y organización de r-universo tiene un subdominio único bajo `r-universe.dev` con un repositorio personal de paquetes tipo cran desde el que se pueden instalar directamente los paquetes. Por ejemplo, los paquetes y la información de rOpenSci pueden encontrarse en [https://ropensci.r-universe.dev](https://ropensci.r-universe.dev) y los paquetes que yo mantengo están listados en [https://jeroen.r-universe.dev](https://jeroen.r-universe.dev) (observa cómo se solapan estos dos conjuntos).

{{< figureforgallery src="../runiverse-discovering/user1.png" alt="Screenshot of builds tab of a repository." >}}

Las pestañas superiores te permiten explorar diferentes recursos dentro de Universo. La página **construye** muestra el estado actual del repositorio: una tabla con el nombre y la versión de cada paquete, incluyendo la fecha de confirmación, el autor y el estado de construcción. Hacer clic en el nombre del paquete en la tabla te envía a la página principal del paquete (más sobre esto más adelante), y el nombre del mantenedor enlaza con el subdominio de ese mantenedor, que enumera otros proyectos mantenidos por esta persona.

La página **paquetes** muestra información descriptiva de todos los paquetes del repositorio, y la pestaña **artículos** muestra todos los documentos (por ejemplo, viñetas). La página **colaboradores** muestra un gráfico con las estadísticas de los colaboradores de la organización o del mantenedor. Hacer clic en una barra del gráfico te envía a este otro universo donde puedes explorar más trabajos de esta persona.

{{< gallery >}}
{{< figureforgallery src="../runiverse-discovering/user2.png" alt="Screenshot of packages tab of a repository." >}}
{{< figureforgallery src="../runiverse-discovering/user3.png" alt="Screenshot of articles tab of a repository." >}}
{{< figureforgallery src="../runiverse-discovering/user4.png" alt="Screenshot of contributors tab of a repository." >}}
{{< /gallery >}}

El mismo subdominio aloja el repositorio real de paquetes tipo cran para este usuario u organización. Por tanto, para listar o instalar paquetes de rOpenSci en R, utilizarías:

```r
# List available packages
available.packages(repos = "https://ropensci.r-universe.dev")

# Install a package
install.packages("magick", repos = "https://ropensci.r-universe.dev")
```

## Nivel 3: información individual de los paquetes

Finalmente llegamos al nivel de paquete individual. Hacer clic en un paquete en los resultados de la búsqueda o en una visión general del universo te llevará a la página de inicio de ese paquete. También puedes enlazar directamente con esta página a través de la url `https://{owner}.r-universe.dev/{package}` por ejemplo [https://r-spatial.r-universe.dev/sf](https://r-spatial.r-universe.dev/sf) abajo.

{{< figureforgallery src="../runiverse-discovering/package1.png" alt="Screenshot of r-universe package homepage" >}}

Estas páginas de paquetes se generan automáticamente y proporcionan información detallada sobre cada proyecto, así como toda la información y recursos para instalar y probar rápidamente el paquete localmente en R.

### Información del paquete

La sección inicial de la página de inicio muestra datos descriptivos y enlaces a recursos de este paquete, como los archivos fuente/binarios, el manual del paquete y el archivo NEWS. Más abajo mostramos las instrucciones de instalación para instalar el paquete en R. La instalación es rápida y sencilla porque proporcionamos binarios precompilados para Windows y MacOS, por lo que no se necesitan herramientas ni configuraciones especiales en la máquina del usuario.

{{< gallery >}}
{{< figureforgallery src="../runiverse-discovering/package2.png" alt="Screenshot of r-universe package homepage with annotations." >}}
{{< figureforgallery src="../runiverse-discovering/package21.png" alt="Screenshot of r-universe package badges and statistics." >}}
{{< figureforgallery src="../runiverse-discovering/package4.png" alt="Screenshot of r-universe package: how to cite the package." >}}
{{< /gallery >}}

Aquí también puedes encontrar más información derivada por el sistema de construcción, como sobre qué bibliotecas del sistema construye el paquete, temas y si el paquete está en CRAN. Las etiquetas de debajo muestran estadísticas sobre el paquete, como dependencias, dependencias inversas y estrellas de GitHub. Haciendo clic en la etiqueta "exportaciones" se muestran todas las funciones y conjuntos de datos exportados por el paquete, que enlazan con las secciones respectivas de la página del manual. Si se especifica, también mostramos cómo debe citarse el paquete en los artículos.

### Toda la documentación

Para que puedas empezar a utilizar los paquetes lo antes posible, r-universe ofrece toda la documentación disponible y la presenta de la forma más clara y concisa posible en la página de inicio.

La mayoría de los paquetes de R tienen 3 formas de documentación: un archivo léeme, un manual de referencia (páginas de ayuda) y una serie de artículos (viñetas). Estos artículos suelen ser un buen punto de partida, y aparecen en la página principal del paquete, justo debajo de los descriptivos. Desde aquí puedes ver tanto el documento html/pdf renderizado, como el archivo fuente rmarkdown utilizado para (re)producir el artículo.

{{< gallery >}}
{{< figureforgallery src="../runiverse-discovering/package3.png" alt="Screenshot of r-universe package, listing included articles." >}}
{{< figureforgallery src="../runiverse-discovering/package5.png" alt="Screenshot of r-universe package showing example readme content." >}}
{{< figureforgallery src="../runiverse-discovering/package6.png" alt="Screenshot of r-universe package showing reference manual index." >}}
{{< /gallery >}}

Más abajo puedes ver el contenido del "Léame" del paquete. Hoy en día, la mayoría de los paquetes incluyen un archivo README.md que se puede convertir en HTML.

Después del readme sigue una sección llamada "manual de referencia" que contiene una tabla con todas las páginas de ayuda. Éstas enlazan con los respectivos capítulos del manual de referencia html[^2], que proporciona la documentación más extensa de cada función del paquete, incluyendo descripciones, parámetros, ejemplos, etc.

{{< figureforgallery src="../runiverse-discovering/refman.png" alt="Screenshot of a chapter in the HTML reference manual for a package, showing descriptions, parameters, and examples for a function." >}}

### Actividad de uso y desarrollo

Además de familiarizarte con lo que hace el paquete, puede que te interese saber quién está trabajando en él, quién más lo utiliza y si sigue desarrollándose activamente.

La sección "desarrollo y colaboradores" muestra un gráfico de barras con el número de commits por semana durante el último año, y quiénes son los principales colaboradores. Por último, la sección "uso por otros paquetes" muestra otros paquetes de r-universo que dependen de este paquete, agrupados por propietario. Esto te da una idea de lo activo que es el proyecto y de quién está implicado.

{{< figureforgallery src="../runiverse-discovering/package7.png" alt="Screenshot of recent development activity and users of a package." >}}

## Conclusión

Este post ha explicado diferentes formas en las que puedes utilizar [r-universo](https://r-universe.dev) para explorar los paquetes de R. La página [motor de búsqueda](https://r-universe.dev/search) te permite encontrar paquetes de cualquier parte del ecosistema que coincidan con determinadas palabras clave o criterios específicos. Es un buen lugar para informarse y hacerse una idea de lo que hay disponible en un dominio determinado.

Una vez que te familiarices con el ecosistema, puede que te interese hacer zoom en un conjunto específico de paquetes de un determinado grupo o investigador. La estructura de dominios de r-universo te permite explorar paquetes y artículos por organización, y descubrir trabajos relacionados con mantenedores, colaboradores o usuarios similares.

Por último, para cada paquete R, r-universe proporciona una hermosa página de inicio que contiene abundante información en: `https://{owner}.r-universe.dev/{package}`. Esta página muestra exactamente de qué trata un paquete, quién lo está desarrollando, el estado del proyecto, y también proporciona toda la documentación y las instrucciones de instalación, muy bien representadas, para empezar a utilizar el paquete inmediatamente, sin complicaciones.

[^1]: Más información sobre esta clasificación: [¿cómo se calcula la puntuación de la clasificación por paquetes?](https://github.com/r-universe-org/help#how-is-the-package-rank-score-calculated)
[^2]: Entrada en el blog: [postdoc 1.0: manuales de paquetes HTML mínimos y despejados](/blog/2022/11/29/postdoc-docs/).
