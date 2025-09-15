---
slug: markdown-programmatique
title: Toutes les façons d'éditer ou d'analyser programmatiquement des documents R Markdown
  / Quarto
author:
- Maëlle Salmon
- Christophe Dervieux
- Zhian N. Kamvar
editor: Steffi LaZerte
translator: 
- Maëlle Salmon
- Christophe Dervieux
date: '2025-09-18'
tags:
- pandoc
- rmarkdown
- tinkr
- quarto
- markdown
- tech notes
- babeldown
description: "Aperçu des manières programmatiques permettant d'analyser et de modifier les fichiers Markdown : Markdown, R Markdown, Quarto, fichiers Hugo, etc."
output: hugodown::md_document
params:
  doi: 10.59350/etdf6-t7k64
rmd_hash: 9772be635c33b3b9

---

Si la vie te donne un tas de fichiers Markdown à analyser ou à éditer, est-ce que tu fais chauffer tes muscles regex avant de te lancer ? Et si tu utilisais plutôt des outils plus spécifiques ? Dans ce billet, nous allons donner un aperçu des moyens programmatiques d'analyser et d'éditer les fichiers Markdown : Markdown, R Markdown, Quarto, fichiers Hugo, et plus encore.

## Qu'est-ce que Markdown ?

Markdown est un langage de balisage créé par John Gruber et Aaron Swartz. Voici un exemple :

``` md
# Mon premier titre

Contenu, avec des parties en **gras** ou *italique*.
J'ajoute un [lien](https://ropensci.org).
```

Différents fichiers Markdown peuvent conduire au même résultat, par exemple ceci est équivalent à notre premier exemple :

``` md
Mon premier titre
===============

Contenu, avec des parties en __gras__ ou _italique_. J'ajoute un [lien](https://ropensci.org).
```

De plus, il existe différents *flavours* (*saveurs*) ou *spécifications (specs)* de Markdown [^1] qui ajoute des [syntaxe étendues](https://www.markdownguide.org/extended-syntax/) comme les emojis écrits avec des deux-points.

Les utilisateur·rice·s de R interagissent généralement avec les différentes saveurs de Markdown par le biais de leurs outils habituels :

-   R Markdown qui utilise Pandoc sous le capot,
-   Quarto (qui utilise Pandoc sous le capot... tu vois une tendance ?),
-   GitHub qui utilise [GitHub Flavored Markdown (GFM)](https://github.github.com/gfm/),
-   Markdown dans roxygen2 qui utilise Commonmark par l'intermédiaire de [{commonmark}](https://cran.r-project.org/web/packages/commonmark/index.html),
-   Hugo, pour [blogdown](https://pkgs.rstudio.com/blogdown/) ou [hugodown](https://hugodown.r-lib.org/) qui utilisent [Commonmark et GFM](https://gohugo.io/content-management/formats/#markdown),
-   Jekyll qui utilise GFM avec des spécificités à travers [kramdown](https://jekyllrb.com/docs/configuration/markdown/).

De nombreux outils utilisant Markdown acceptent également un *frontmatter* (*en-tête*): métadonnées en tête des fichiers Markdown, par exemple YAML, TOML ou JSON. Voici un exemple avec un en-tête YAML :

``` md
---
title: Mon truc cool
author: Moi-même
---

Contenu, *bon* contenu.
```

Le plus souvent, les utilisateur·rice·s de R écrivent du Markdown manuellement, ou à l'aide d'un éditeur tel que [l'éditeur visuel Positron](https://quarto.org/docs/tools/positron/visual-editor.html) ou [l'éditeur visuel RStudio IDE](https://posit.co/blog/exploring-rstudio-visual-markdown-editor/). Mais parfois, il faut créer ou modifier un grand nombre de fichiers Markdown en même temps, et modifier tous ces fichiers à la main est une énorme perte de temps. Cet article de blog te donnera des ressources en R que tu pourras utiliser pour créer, analyser et modifier des documents Markdown, afin que tu puisses devenir le·a magicien·ne Markdown que tu as toujours rêvé de devenir :mage: !

### Morceaux de code et programmation lettrée

En Markdown, tu peux ajouter des morceaux de code, qui seront correctement formatés et mis en évidence, en utilisant la syntaxe suivante :

    ```r
    1 + 1
    ```

Les outils de programmation lettrée tels que knitr (pour R Markdown et Quarto) te permettront d'ajouter des morceaux de code qui seront exécutés pour rendre le document :

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'>```{r}
#| label: my-chunk
#| echo: true
1 + 1
```
</code></pre>

</div>

Cette dernière syntaxe, les chunks de code exécutables, n'est pas forcément bien gérée par les outils "normaux" comme Pandoc. C'est quelque chose qu'il faut garder à l'esprit si tu as affaire à des documents qui contiennent des morceaux de code exécutables.

## Outils de création pour les documents standard

Imagine que tu doives créer un tas de fichiers R Markdown différents, par exemple pour que les élèves les utilisent comme exercices personnalisés. Dans ce cas, tu peux créer un document comme modèle, et créer ses différentes versions de sortie à l'aide d'un outil de création de modèles.

Les outils de création de modèles comprennent :

-   [`knitr::knit_expand()`](https://bookdown.org/yihui/rmarkdown-cookbook/knit-expand.html) par Yihui Xie ;
-   le [paquet whisker](https://github.com/edwindj/whisker) maintenu par Edwin de Jonge (utilisé par exemple dans pkgdown) ;
-   le [paquet brew](https://github.com/gregfrog/brew) maintenu par Greg Hunt ;
-   [Pandoc](/blog/2023/06/01/troubleshooting-pandoc-problems-as-an-r-user/) de John MacFarlane par le biais de son [modèles](https://pandoc.org/MANUAL.html#templates).

L'exemple le plus simple du paquet whisker pourrait en outre te rappeler le... [paquet glue](https://glue.tidyverse.org/).

Un flux de travail courant serait le suivant :

-   Tu crées un modèle dans un fichier, où les parties variables sont indiquées par des chaînes de caractères telles que `{{name}}`.
-   Tu lis ce modèle dans R en utilisant par exemple le [paquet brio](https://brio.r-lib.org/).
-   En faisant correspondre ton ensemble de variables, tu rends le modèle à l'aide de Whisker et tu enregistres chaque version dans un fichier à l'aide du paquet brio.

### Exemple

Voici un exemple de fichier Markdown que nous pouvons utiliser comme modèle :

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'>---
title: "Devoir maison 1"
author: "{{nom}}"
---

Créez une distribution normale avec une moyenne de {{moyenne}} et un écart-type de {{sd}} :

```{r solution-1}
# indice: utilisez la fonction rnorm
```
</code></pre>

</div>

En utilisant le flux de travail ci-dessous, nous pouvons créer différents documents Markdown correspondant à différents élèves.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'># génération des variables ----</span></span>
<span><span class='nv'>etudiants</span> <span class='o'>&lt;-</span> <span class='nf'><a href='https://rdrr.io/r/base/c.html'>c</a></span><span class='o'>(</span><span class='s'>"Maëlle"</span>, <span class='s'>"Christophe"</span>, <span class='s'>"Zhian"</span><span class='o'>)</span></span>
<span><span class='nv'>n</span> <span class='o'>&lt;-</span> <span class='nf'><a href='https://rdrr.io/r/base/length.html'>length</a></span><span class='o'>(</span><span class='nv'>etudiants</span><span class='o'>)</span></span>
<span><span class='nv'>clef</span> <span class='o'>&lt;-</span> <span class='nf'><a href='https://rdrr.io/r/base/data.frame.html'>data.frame</a></span><span class='o'>(</span></span>
<span>  nom <span class='o'>=</span> <span class='nv'>etudiants</span>,</span>
<span>  moyenne <span class='o'>=</span> <span class='nf'><a href='https://rdrr.io/r/stats/Poisson.html'>rpois</a></span><span class='o'>(</span><span class='nv'>n</span>, <span class='m'>5</span><span class='o'>)</span>,</span>
<span>  sd <span class='o'>=</span> <span class='nf'><a href='https://rdrr.io/r/base/sprintf.html'>sprintf</a></span><span class='o'>(</span><span class='s'>"%.1f"</span>, <span class='nf'><a href='https://rdrr.io/r/stats/Uniform.html'>runif</a></span><span class='o'>(</span><span class='nv'>n</span><span class='o'>)</span><span class='o'>)</span>,</span>
<span>  fichier <span class='o'>=</span> <span class='nf'><a href='https://rdrr.io/r/base/sprintf.html'>sprintf</a></span><span class='o'>(</span><span class='s'>"%s-hw.fr.md"</span>, <span class='nv'>etudiants</span><span class='o'>)</span></span>
<span><span class='o'>)</span></span>
<span><span class='c'># création des devoirs à partir du modèle ----</span></span>
<span><span class='nv'>make_assignment</span> <span class='o'>&lt;-</span> <span class='kr'>function</span><span class='o'>(</span><span class='nv'>clef</span>, <span class='nv'>modele</span><span class='o'>)</span> <span class='o'>&#123;</span></span>
<span>  <span class='nf'><a href='https://rdrr.io/r/base/lapply.html'>lapply</a></span><span class='o'>(</span><span class='nf'><a href='https://rdrr.io/r/base/seq.html'>seq</a></span><span class='o'>(</span><span class='nv'>n</span><span class='o'>)</span>, <span class='kr'>function</span><span class='o'>(</span><span class='nv'>i</span><span class='o'>)</span> <span class='o'>&#123;</span></span>
<span>    <span class='nv'>new</span> <span class='o'>&lt;-</span> <span class='nf'>whisker</span><span class='nf'>::</span><span class='nf'><a href='https://rdrr.io/pkg/whisker/man/whisker.render.html'>whisker.render</a></span><span class='o'>(</span><span class='nv'>modele</span>, data <span class='o'>=</span> <span class='nv'>clef</span><span class='o'>[</span><span class='nv'>i</span>, <span class='o'>]</span><span class='o'>)</span></span>
<span>    <span class='nf'>brio</span><span class='nf'>::</span><span class='nf'><a href='https://brio.r-lib.org/reference/write_lines.html'>write_lines</a></span><span class='o'>(</span><span class='nv'>new</span>, <span class='nv'>clef</span><span class='o'>$</span><span class='nv'>fichier</span><span class='o'>[</span><span class='nv'>i</span><span class='o'>]</span><span class='o'>)</span></span>
<span>  <span class='o'>&#125;</span><span class='o'>)</span></span>
<span>  <span class='kr'><a href='https://rdrr.io/r/base/function.html'>return</a></span><span class='o'>(</span><span class='nf'><a href='https://rdrr.io/r/base/invisible.html'>invisible</a></span><span class='o'>(</span><span class='o'>)</span><span class='o'>)</span></span>
<span><span class='o'>&#125;</span></span>
<span><span class='nv'>md</span> <span class='o'>&lt;-</span> <span class='nf'>brio</span><span class='nf'>::</span><span class='nf'><a href='https://brio.r-lib.org/reference/read_lines.html'>read_lines</a></span><span class='o'>(</span><span class='s'>"hw-template.fr.md"</span><span class='o'>)</span></span>
<span><span class='nf'>make_assignment</span><span class='o'>(</span><span class='nv'>clef</span>, modele <span class='o'>=</span> <span class='nv'>md</span><span class='o'>)</span></span>
<span><span class='nf'><a href='https://rdrr.io/r/base/print.html'>print</a></span><span class='o'>(</span><span class='nv'>clef</span><span class='o'>)</span></span>
<span><span class='c'>#&gt;          nom moyenne  sd             fichier</span></span>
<span><span class='c'>#&gt; 1     Maëlle       5 0.8     Maëlle-hw.fr.md</span></span>
<span><span class='c'>#&gt; 2 Christophe       4 0.7 Christophe-hw.fr.md</span></span>
<span><span class='c'>#&gt; 3      Zhian       7 0.8      Zhian-hw.fr.md</span></span>
<span></span></code></pre>

</div>

Voici à quoi ressemblent les devoirs de Zhian :

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'>---
title: "Devoir maison 1"
author: "Zhian"
---

Créez une distribution normale avec une moyenne de 7 et un écart-type de 0.8 :

```{r solution-1}
# indice: utilisez la fonction rnorm
```
</code></pre>

</div>

<div class="highlight">

</div>

## Outils de manipulation des chaînes de caractères

Tu peux utiliser des outils de manipulation de chaînes pour analyser Markdown si tu es sûr·e des variantes de Markdown que ton code recevra en entrée, ou si tu es prêt·e à développer ta base de code pour prendre en compte de nombreux cas de figure... ce qui signifie en fin de compte que tu écris un véritable analyseur Markdown. Ce n'est pas pour les âmes sensibles... et ce n'est pas nécessaire si tu lis la section qui suit celle-ci :relieved:

Tu détectes les titres en utilisant par exemple `grep("^#", markdown_lines)` [^2] .

Parmi les exemples d'outils de manipulation de chaînes de caractères, on peut citer R base ([`sub()`](https://rdrr.io/r/base/grep.html), [`grep()`](https://rdrr.io/r/base/grep.html) et ses amis), [stringr](https://stringr.tidyverse.org/) (et [stringi](https://stringi.gagolewski.com/index.html)), [`xfun::gsub_file()`](https://rdrr.io/pkg/xfun/man/gsub_file.html).

Bien que les outils de manipulation de chaînes de caractères soient d'une utilité limitée lors de l'analyse de Markdown, ils peuvent *compléter* les outils d'analyse proprement dits. Même si l'utilisation d'outils d'analyse Markdown spécifiques t'aidera à écrire moins d'expressions régulières toi-même... ils ne t'en libéreront pas complètement.

## Outils de manipulation des représentations abstraites

Les outils de manipulation des représentations abstraites sont fantastiques et nombreux. Ils traduisent le document Markdown en une structure de données appelée [abstrait Syntax Tree (AST)](https://en.wikipedia.org/wiki/Abstract_syntax_tree) qui te permet de contrôler finement des éléments spécifiques du document (par exemple, des titres ou des liens individuels, quelle que soit la façon dont ils sont écrits). Grâce à une structure de données formelle, tu peux manipuler par programme le document Markdown en ajoutant, en supprimant ou en manipulant des éléments de Markdown d'une manière standardisée.

Certains de ces outils te permettent de lire, d'éditer et de manipuler des documents Markdown et de les réécrire.

Nous ne mentionnerons que les outils que tu peux utiliser directement à partir de R.

### Exemple de cas d'utilisation

Disons que tu as créé une série de tutoriels qui renvoient à un site Web contenant une galerie d'extensions pour un paquet populaire de visualisation de données. Disons aussi qu'un jour, quelqu'un découvre que le lien vers le site Web soudainement... [redirige vers un site potentiellement malveillant qui n'a certainement rien à voir avec la grammaire des graphiques](https://github.com/ggplot2-exts/gallery/issues/112) et tu dois remplacer toutes les occurrences de ce lien par `**redacted**`. Étant donné que les liens en Markdown peuvent être écrits de plusieurs façons, les expressions régulières ne t'aideront pas, mais un analyseur Markdown à granularité fine le fera !

Un flux de travail pour cette situation serait le suivant :

-   lis l'AST Markdown avec ton analyseur préféré
-   retire tous les liens qui pointent vers le lien pourri
-   remplace-les par un texte en surbrillance qui dit "modifié".
-   convertis l'AST et écris-le dans le fichier

### {tinkr}

Le [paquet tinkr](https://docs.ropensci.org/tinkr/) créé par Maëlle Salmon et maintenu par Zhian Kamvar, analyse Markdown en XML en utilisant Commonmark, te permet d'extraire et de manipuler Markdown en utilisant XPath via le paquet [xml2](https://xml2.r-lib.org/). Tinkr réécrit le XML en Markdown à l'aide de XSLT. Les métadonnées YAML sont disponibles sous forme de chaîne de caractères. Tinkr prend en charge les morceaux de code exécutables.

Le paquet tinkr est utilisé dans les paquets [babeldown](https://docs.ropensci.org/babeldown/) et [aeolus](https://docs.ropensci.org/aeolus/).

### {md4r}

Le [paquet md4r](https://rundel.github.io/md4r/) est un paquet expérimental récent maintenu par Colin Rundel. Il s'agit d'une enveloppe R autour de la bibliothèque MD4C (Markdown for C) qui représente l'AST sous forme de liste imbriquée avec des attributs dans R. La version de développement du paquet comporte des utilitaires permettant de construire des documents Markdown de manière programmatique.

### Pandoc

Avec Pandoc que nous avons présenté dans un [note technique](/fr/blog/2023/06/01/troubleshooting-pandoc-problems-as-an-r-user/) tu peux transformer un fichier Markdown en un arbre syntaxique abstrait Pandoc (soit dans son format natif, soit en JSON).

Comment utiliser Pandoc pour éditer et réécrire un fichier Markdown ?

-   En utilisant des filtres Lua : Pandoc convertit en AST dans son format natif, les filtres Lua permettent de le traiter pour le modifier, puis Pandoc peut écrire en markdown.

-   Utilisation de filtres JSON : Pandoc convertit en AST en produisant une représentation JSON, puis n'importe quel outil peut modifier ce fichier JSON et fournir une version modifiée à Pandoc pour qu'il la convertisse à nouveau en markdown.

Note que Pandoc ne prend pas en charge les morceaux de code exécutables, car il ne sera pas en mesure d'analyser les morceaux de code exécutables en tant que `Codeblock`.

### {parseqmd}

Nic Crane a créé un paquet expérimental appelé [parseqmd](https://github.com/thisisnic/parseqmd) qui utilise cette stratégie, en analysant la sortie à l'aide de l'outil [jsonlite](https://jeroen.r-universe.dev/jsonlite) . Tu peux aussi transformer le Markdown en HTML, par exemple, puis revenir à Markdown. L'avantage du HTML est que tu peux utiliser un paquet tel que [xml2](https://xml2.r-lib.org/) ou [rvest](https://rvest.tidyverse.org/) pour extraire et manipuler les éléments.

### {parsermd}

Le [paquet parsermd](https://rundel.github.io/parsermd/) est également maintenu par Colin Rundel et est une "implémentation d'une grammaire formelle et d'un analyseur pour les documents R Markdown en utilisant la bibliothèque Boost Spirit X3. Il comprend également une collection de fonctions de haut niveau pour travailler avec l'arbre syntaxique abstrait résultant."

Ce paquet possède des fonctionnalités pour un flux de travail "tidy" te permettant de sélectionner différentes sections du document. Une caractéristique utile est qu'il possède la fonction [`rmd_check_template()`](https://rundel.github.io/parsermd/articles/templates.html) qui te permet de comparer les documents Markdown soumis par des étudiants par exemple, à un modèle standard. Tu peux regarder sa présentation à la conférence [RStudio::conf(2021)](https://posit.co/resources/videos/parsermd-parsing-r-markdown-for-fun-and-profit/).

Le paquet parsermd te permet même de [modifier les documents](https://github.com/rundel/parsermd/issues/21).

### {lightparser}

Le paquet [lightparser](https://cloud.r-project.org/web/packages/lightparser/index.html) de Sébastien Rochette "divise tes fichiers rmarkdown ou quarto par sections dans un tibble : titres, texte, chunks ; reconstruit le fichier à partir du tibble". Il peut être utilisé pour [traduire des documents](https://edenian-prince.github.io/blog/posts/2024-08-21-translate-md-files/) par exemple.

### L'impossibilité d'un aller-retour parfait

Lorsque l'on analyse et modifie du Markdown, puis que l'on réécrit en Markdown, certaines modifications indésirables peuvent apparaître. Par exemple, avec [tinkr](https://docs.ropensci.org/tinkr/#general-principles-and-solution) les éléments de la liste commencent tous par un `-` même si dans le document original ils commençaient par un `*`. Avec md4r, les listes qui sont indentées avec un espace supplémentaire seront réajustées.

En fonction de ton cas d'utilisation, tu peux trouver des moyens d'atténuer ces pertes, par exemple en ne réécrivant que les lignes sur lesquelles tu as fait des modifications intentionnelles.

### Comment choisir un analyseur ?

Tu peux choisir un analyseur en fonction de ce qu'il te permet de manipuler avec le Markdown : si tu préfères XML[^3] et HTML aux listes imbriquées, par exemple, tu préféreras utiliser tinkr ou Pandoc. Si les fonctions de haut niveau de md4r ou parsermd conviennent à ton cas d'utilisation, tu peux préférer l'un d'entre eux.

Il est important de noter que si tes documents contiennent des morceaux de code exécutable, tu dois utiliser un outil qui les prend en charge, comme parsermd, lightparser, tinkr.

Un autre critère important est de choisir un analyseur syntaxique qui se rapproche le plus possible du cas d'utilisation de tes fichiers Markdown. Si tu ne comptes travailler avec des fichiers Markdown que pour GitHub, commonmark/tinkr est un excellent choix puisque GitHub lui-même utilise commonmark. Maintenant, ton travail peut englober différentes sortes de fichiers Markdown qui seront utilisés par différents outils. Par exemple, l'outil [babeldown](https://docs.ropensci.org/babeldown/) traite n'importe quel fichier Markdown[^4]: Markdown, R Markdown, Quarto, Hugo. Dans ce cas, ou si aucun analyseur R ne fait exactement ce que fait l'utilisateur·rice final·e de ton Markdown, tu dois faire attention aux bizarreries de cet utilisateur·rice final·e. Tu devras peut-être ajouter des [attributs bruts de Pandoc](/blog/2023/06/01/troubleshooting-pandoc-problems-as-an-r-user/#raw-attributes) autour d'un shortcode Hugo, par exemple. De plus, si tu as besoin d'analyser certains éléments, comme encore une fois les shortcodes Hugo, tu peux avoir besoin d'écrire le code d'analyse toi-même, c'est-à-dire des expressions régulières.

## Qu'en est-il des morceaux de code ?

L'analyse et l'édition programmatiques du code R n'entrent pas dans le cadre de ce billet, mais sont suffisamment proches pour que tu y ajoutes quelques conseils.

### Expressions régulières

Comme pour Markdown, tu peux avoir besoin d'utiliser des expressions régulières, mais c'est une approche risquée, car par exemple `plot (x)` et `plot(x)` sont tous deux des appels de fonction valides dans R.

### {xmlparsedata}

Tu peux analyser le code en XML à l'aide de l'analyseur de base R et de l'analyseur de code XML. [xmlparsedata](https://r-lib.github.io/xmlparsedata/) puis tu manipules le XML avec [XPath](https://masalmon.eu/2022/04/08/xml-xpath/). Pour réécrire le code, tu peux utiliser les attributs de chaque nœud qui indiquent les lignes et les colonnes d'origine.

Ainsi, un flux de travail possible, tel qu'il est [illustré dans l'article de Maëlle](https://masalmon.eu/2024/05/15/refactoring-xml/) est le suivant :

-   Transforme le code en XML, utiliser xmlparsedata pour savoir ce qu'il faut changer et où. Ces étapes te permettront d'obtenir une liste des positions des éléments, par exemple.
-   Utilise brio pour lire les lignes, modifie-en quelques-unes avec les outils de base de R, puis utilise à nouveau brio pour réécrire les lignes.

### {treesitter}

[tree-sitter](https://github.com/DavisVaughan/r-tree-sitter) par Davis Vaughan "fournit des liens R à tree-sitter, un système d'analyse incrémentielle".

## Qu'en est-il des métadonnées ?

Nous avons consacré tout ce billet à la question du *corps* des documents Markdown. Qu'en est-il des métadonnées contenues dans leur frontmatter, comme par exemple :

``` yaml
---
title: "Cool doc"
author: "Jane Doe"
---
```

Pour extraire ou modifier les métadonnées YAML/TOML/JSON, tu dois d'abord décapiter les documents Markdown. Par exemple, rmarkdown possède une fonction appelée [`rmarkdown::yaml_front_matter()`](https://pkgs.rstudio.com/rmarkdown/reference/yaml_front_matter.html) pour extraire les métadonnées YAML d'un document R Markdown ; le paquet R quarto possède une fonction appelée [`quarto::quarto_inspect()`](https://quarto-dev.github.io/quarto-r/reference/quarto_inspect.html) qui, entre autres choses, produit les métadonnées.

Tu peux lire les *lignes* du document Markdown en utilisant [`readLines()`](https://rdrr.io/r/base/readLines.html) ou [`brio::read_lines()`](https://brio.r-lib.org/reference/read_lines.html) avant de recourir à des expressions régulières pour identifier le début et la fin de la page de garde en fonction de son format.

Ensuite, pour gérer YAML, tu utiliseras [{yaml}](https://github.com/vubiostat/r-yaml/) et pour gérer TOML, tu pourrais utiliser [{tomledit}](https://github.com/extendr/tomledit) ou [{RcppTOML}](https://cran.r-project.org/web/packages/RcppTOML/index.html) Pour gérer JSON, tu peux utiliser [{jsonlite}](https://jeroen.r-universe.dev/jsonlite).

Enfin, si tu as besoin de réécrire le document Markdown, tu écriras ses lignes en utilisant [`writeLines()`](https://rdrr.io/r/base/writeLines.html) ou [`brio::write_lines()`](https://brio.r-lib.org/reference/write_lines.html).

## Exemples d'analyse et d'édition Markdown

Le paquet [pegboard](https://carpentries.github.io/pegboard/) créé par Zhian Kamvar et maintenu par The Carpentries, analyse et valide les leçons de Carpentries pour les éléments structurels de Markdown, y compris les liens valides, le texte alt, et les fenced-divs connus grâce à tinkr. Ce paquet a permis de convertir toute l'infrastructure des leçons de The Carpentries de la syntaxe Markdown de Jekyll à la syntaxe Markdown de Pandoc. [^5] .

Le [paquet babeldown](https://docs.ropensci.org/babeldown/) maintenu par Maëlle Salmon transforme Markdown en XML, l'envoie à l'API DeepL pour traduction, et réécrit les résultats en Markdown, en utilisant également tinkr.

## Conclusion

Dans ce billet, nous avons expliqué comment analyser et éditer au mieux les fichiers Markdown. Pour créer des documents à partir d'un modèle (comme du publipostage), nous avons recommandé des outils de modélisation tels que [`knitr::knit_expand()`](https://bookdown.org/yihui/rmarkdown-cookbook/knit-expand.html), le [paquet whisker](https://github.com/edwindj/whisker), le [paquet brew](https://github.com/gregfrog/brew), Pandoc. Pour éditer de petites parties d'un document, nous avons fait appel à des outils de manipulation de chaînes de caractères, c'est-à-dire des expressions régulières, avec R base ([`sub()`](https://rdrr.io/r/base/grep.html), [`grep()`](https://rdrr.io/r/base/grep.html) et ses amis), [stringr](https://stringr.tidyverse.org/) (et stringi), [`xfun::gsub_file()`](https://rdrr.io/pkg/xfun/man/gsub_file.html). Pour une manipulation plus lourde, et plus sûre, nous avons listé des outils basés sur des outils qui manipulent la représentation abstraite des documents : tinkr, md4r, Pandoc, parseqmd, parsermd, lightparser. Nous avons également mentionné des outils permettant de travailler avec le *code R* à l'intérieur des cellules de code, et pour travailler avec le *frontmatter* YAML/TOML/JSON.

Qu'est-ce que *tu* utilises pour gérer les fichiers Markdown ?

[^1]: En date du 2024-06-20, il y a [76 programmes qui analysent Markdown](https://web.archive.org/web/20250328101117/https://github.com/markdown/markdown.github.com/wiki/Implementations) dont certains ont une saveur particulière.

[^2]: Mais cela détecterait également les commentaires de code ! Ne fais pas ça !

[^3]: Maëlle et Zhian sont*énormes* fans de XML et de XPath (voir : <https://masalmon.eu/2022/04/08/xml-xpath/> et <https://zkamvar.netlify.app/blog/gh-task-lists/>).

[^4]: Ou du moins c'est censé être le cas :sweat_smile : Heureusement, les utilisateur·rice·s signalent des cas limites qui ne sont pas encore couverts.

[^5]: Pour des exemples, voir [The Carpentries Workbench Transition Guide](https://carpentries.github.io/workbench/transition-guide.html).

