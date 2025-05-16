---
slug: thanking-reviewers-in-metadata
title: 'Agradeciendo a tus revisores y revisoras: la gratitud a través de los metadatos semánticos'
date: '2018-03-16'
author:
- Noam Ross
- Maëlle Salmon
- Karthik Ram
- Scott Chamberlain
translator: Juan Cruz Enrique 
topicid: 1101
tags:
- comunidad
- Revisión de Software
- metadatos
description: Aprende como agregar el reconociento al rol de las personas que revisan tu paquete al archivo DESCRIPTION.
params:
  doi: 10.59350/68k6q-0ap17
---

En rOpenSci, nuestro [proceso de revisión por pares de paquetes R](/blog/2017/09/01/nf-softwarereview/) se basa en el duro trabajo de muchos revisores voluntarios. Estos miembros de la comunidad donan su [tiempo](/blog/2016/03/28/software-review/#review-takes-a-lot-of-time) y su experiencia para mejorar la calidad de los paquetes de rOpenSci y ayudar a introducir las mejores prácticas en el software científico.

Nuestro proceso de revisión *abierto*, en el que las revisiones y los revisores son públicos, significa que uno de los beneficios para las personas que revisan es que pueden obtener reconocimiento por sus revisiones. Queremos que los revisores obtengan el mayor beneficio posible, y que sus contribuciones queden registradas como parte del intelecto académico, por lo que hemos estado trabajando para que las revisiones sean visibles y detectables.

Por eso estamos muy entusiasmados por el pequeño cambio en la versión de ayer de R 3.4.4.

Si estás utilizando R 3.4.3 y escribes `utils:::MARC_relator_db_codes_used_with_R` en la consola, obtendrás lo siguiente:

```r
> utils:::MARC_relator_db_codes_used_with_R
 [1] "aut" "com" "ctr" "ctb" "cph" "cre" "dtc" "fnd" "ths" "trl"
```

Con la versión 3.4.4, obtendrás esto:

```r
> utils:::MARC_relator_db_codes_used_with_R
 [1] "aut" "com" "ctr" "ctb" "cph" "cre" "dtc" "fnd" "rev" "ths" "trl"
```

¿Qué es ese pequeño `"rev"` que aparece noveno? ¡Es la inclusión oficial de "Revisor" como función de autor del paquete R!

Estos códigos de tres letras proceden del [términos MARC (Catalogación legible por máquina)](https://en.wikipedia.org/wiki/MARC_standards) un conjunto estándar de tipos de autoría creado originalmente para algunos de los primeros sistemas informatizados de bibliotecas. R utiliza estos códigos para distinguir entre distintos tipos de autores de paquetes. Puede que estés familiarizado con algunos de estos términos que aparecen en `DESCRIPTION` por ejemplo.

```
Authors@R: person("Scott", "Chamberlain", role = c("aut", "cre"), 
       comment = c(ORCID = "0000-0003-1444-9135"))
```

Aquí `aut` y `cre` significan "Autor" y "Creador", indicando que Scott es el creador original y principal de un paquete. También habrás visto `ctb` (Colaborador) o `cph` (Titular de los derechos de autor [^1] ).

[^1]: No puedo terminar este post sin mencionar que *Su Majestad la Reina por Derecho de Canadá, representada por el Ministro de Recursos Naturales de Canadá* es `cph` en [ocho paquetes CRAN](https://github.com/search?utf8=%E2%9C%93&q=org%3Acran+Her+Majesty+the+Queen+in+Right+of+Canada%2C+as+represented+by+the+Minister+of+Natural+Resources+Canada+filename%3ADESCRIPTION&type=Code).

Los descriptores estándar como éste son importantes porque permiten que la información sobre la autoría sea legible por una máquina y que se catalogue y transfiera el crédito del trabajo de los autores. Cuando los metadatos sobre los paquetes de R se muestran en los archivos de ayuda o en los sitios web, queda claro el papel que ha desempeñado cada uno. Estos metadatos también son fundamentales para [crédito transitivo](https://openresearchsoftware.metajnl.com/articles/10.5334/jors.be/) la importante tarea de seguir las contribuciones a través de cadenas de dependencias para proporcionar un reconocimiento a los desarrolladores de software y a los proveedores de datos que el sistema tradicional de citas a menudo pasa por alto.

Aunque hay muchos más [^2] términos de relator MARC, R sólo permite un pequeño conjunto que tienen sentido en el contexto de los paquetes de software. Éstos se encuentran en`utils:::MARC_relator_db_codes_used_with_R`. Los códigos que queden fuera de este conjunto no pasarán la comprobación CMD de R y no estarán permitidos en CRAN.

[^2]: Encontrado[aquí](https://www.loc.gov/marc/relators/relaterm.html) o como un práctico marco de datos con descripciones en `utils:::MARC_relator_db`

Creemos que los revisores contribuyen de forma importante a la calidad del software publicado. Por eso el año pasado pedimos a R-Core que añadiera `"rev"` (Revisor), a la lista de tipos de colaboradores permitidos. Y he aquí que Kurt Hornik hizo el [cambio](https://github.com/wch/r-source/blame/cb9b0506cced030613e06fb92799a1d1807bc257/src/library/utils/R/sysdata.R#L37) en nuestro nombre [^3] . Ya está en la versión de lanzamiento de R.

[^3]: También se ha añadido el núcleo R`"fnd"` (Financiador) en R 3.4.3.

Dado que CRAN utiliza la versión de desarrollo de R para comprobar y diseñar paquetes, la opción ha estado realmente disponible en CRAN durante un tiempo. Un grupo de autores ya ha estado avisando a los revisores de esta forma en sus [archivos DESCRIPTION del paquete](https://github.com/search?utf8=%E2%9C%93&q=user%3Acran+filename%3ADESCRIPTION+person+role+rev+ropensci&type=Code).

Esperamos ver la inclusión de los agradecimientos de los revisores en los metadatos de software más allá de rOpenSci. Pueden adoptarlo los autores que envían a [JSS](https://www.jstatsoft.org/), [JOSS](https://joss.theoj.org/) o cualquier revista o proceso en el que los revisores hagan comentarios significativos sobre el código o la documentación del software.  Para el software no R, estamos [trabajando en](https://github.com/codemeta/codemeta/issues/177) incluir a los revisores en [codemeta](https://codemeta.github.io/) una norma de metadatos de software multilingüe.

Algunas notas sobre cómo este desarrollo se relaciona específicamente con el proceso de revisión por pares de rOpenSci:

- En primer lugar, es 100% decisión de los autores del paquete decidir si los revisores hicieron una contribución suficiente para ser incluidos en `Authors` de esta forma. Aunque promovemos esta opción *en general* nunca pediremos a un autor que incluya específicamente a un revisor. Al igual que la sección de agradecimientos de un manuscrito, la sección `Author` está bajo el control de los desarrolladores. También depende de los revisores si *quieren* que se incluya, por lo que los autores de paquetes deben preguntar primero a los revisores.

- En segundo lugar, los editores de rOpenSci deben *no* figurar en `Authors`. `"edt"` (Editor) no es una función de autoría R válida, y estamos demasiado lejos para que se nos incluya. Pero nos sentimos halagados por quienes nos lo han pedido.

- Por último, si incluyes a los revisores de este modo, creemos que lo mejor seria incluir información que se enlace de nuevo a la revisión, de este modo:
  
  ```
  person("Bea", "Hernández", role = "rev",
         comment = "Bea reviewed the package for rOpenSci, see 
                    https://github.com/ropensci/software-review/issues/116")
  ```

Estamos muy entusiasmados con este desarrollo y con cómo puede mejorar los incentivos para la revisión por pares. Gracias a R-core por subirse a bordo con esto, ¡y a los primeros usuarios que lo probaron!

Atentamente,

```
c(
    person("Noam", "Ross", role = c("aut", "cre", "lbt")),
    person("Maëlle", "Salmon", role = c("rev", "med"),
           comment = "Comments to improve structure of the introduction")
    person("Karthik", "Ram", role = c("rev", "elt"),
         comment = "Fixed a small typo"),
    person("Scott", "Chamberlain", role = c("rev", "sce"),
           comment = "Agrees with Maëlle about the intro.")
  )
```




