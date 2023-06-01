---
slug: troubleshooting-pandoc-problems-as-an-r-user
title: Résoudre ses problèmes de Pandoc en tant qu'utilisateur·rice de R
author:
- Maëlle Salmon
- Christophe Dervieux
date: '2023-06-01'
tags:
- pandoc
- rmarkdown
- publication
- quarto
- markdown
- tech notes
description: "Comment résoudre ses problèmes Pandoc grâce à la lecture de documentation,
  l'expérimentation... et un peu d'expérience \U0001F605."
---

_Merci à [Hugo Gruson](/author/hugo-gruson) pour ses commentaires utiles sur cette traduction!_

Le logiciel libre Pandoc par [John MacFarlane](https://johnmacfarlane.net/) est un outil très utile : par exemple, Yanina Bellini Saibene, community manager de rOpenSci, a récemment demandé à Maëlle si elle pouvait convertir un document Google en livre Quarto.
Maëlle a répondu à la demande en combinant Pandoc (conversion de docx en HTML puis en Markdown par le biais de [`pandoc::pandoc_convert()`](https://cderv.github.io/pandoc/reference/pandoc_convert.html)) et XPath.
Tu peux trouver le paquet expérimental qui en résulte, [quartificate](https://github.com/ropenscilabs/quartificate), sur GitHub.
Pandoc n'est pas seulement utile de manière anecdotique : il est utilisé par [R Markdown](https://rmarkdown.rstudio.com/) et par [Quarto](https://quarto.org/).
Alors, que tu jongles avec des documents de différents formats ou que tu cherches simplement à publier tes analyses reproductibles, tu as peut-être utilisé Pandoc (même si tu ne le savais pas !), ou peut-être que tu... *devrais* utiliser Pandoc.

Parfois, tout se passe bien, parfois, tu penses à Pandoc parce qu'il semble être la source d'une erreur.
Dans ces cas-là, Maëlle, qui a assisté au travail de détective de Christophe[^1] dans plusieurs _issues_ GitHub, a tendance à se demander "Que ferait Christophe ?".
La réponse est probablement "lire la doc et enquêter".
Dans ce billet, nous rassemblons des ressources et des astuces pour t'aider à dépanner tes soucis Pandoc en tant qu'utilisateur·rice de R.

[^1]: Si tu veux lire des exemples de dépannage, vois ceci: [_issue_ dans rmarkdown](https://github.com/rstudio/rmarkdown/issues/2437) et [l'_issue_ correspondante de Pandoc](https://github.com/jgm/pandoc/issues/8499); ou ceci [Question pandoc](https://github.com/jgm/pandoc/issues/7352).

## Pandoc 101

Supposons que nous ayons un fichier Markdown et que nous voulons le convertir en HTML.
Nous pouvons le faire à partir de R en appelant la fonction [`pandoc::pandoc_convert()`](https://cderv.github.io/pandoc/reference/pandoc_convert.html)[^2] qui est une interface Pandoc pour R.
Si tu préfères le terminal, l'interface en ligne de commande [`pandoc`](https://pandoc.org/MANUAL.html) te sera utile.
Dans la suite de ce billet, nous utiliserons le paquet R pandoc pour les exemples.

[^2]: Le paquet R pandoc[https://github.com/cderv/pandoc](https://github.com/cderv/pandoc) est un développement assez récent et permet d'accéder à l'interface de programmation Pandoc à partir de R.
Tu peux aussi utiliser la méthode plus habituelle [`rmarkdown::pandoc_convert()`](https://pkgs.rstudio.com/rmarkdown/reference/pandoc_convert.html) pour accéder à Pandoc utilisé avec R Markdown.


```r
# Créons un fichier temporaire d'exemple Markdown
md_lines <- c(
  "# Important announcement", "",
  "[Pandoc](https://pandoc.org/) is **great**!"
)
md_file <- withr::local_tempfile()
brio::write_lines(md_lines, md_file)

# Convertissons-le en un fichier temporaire HTML
html_file <- withr::local_tempfile()
pandoc::pandoc_convert(
  file = md_file, 
  from = "markdown", 
  to = "html", 
  output = html_file
)
```

```
## /tmp/Rtmp1xdbdw/file273fd5b95f546
```

```r
# Lisons le résultat !
brio::read_lines(html_file)
```

```
## [1] "<h1 id=\"important-announcement\">Important announcement</h1>"
## [2] "<p><a href=\"https://pandoc.org/\">Pandoc</a> is"             
## [3] "<strong>great</strong>!</p>"
```

Cette magie de **passer d'un langage de balisage à un autre** est le travail de Pandoc.
Pandoc prend en charge de nombreux formats d'entrée et de sortie, avec des réglages disponibles pour divers éléments.

Par exemple, nous pourrions modifier légèrement l'appel pour ne pas obtenir d'identifiant pour l'en-tête h1 dans le HTML (c'est-à-dire supprimer l'élément `id` de l'en-tête `<h1>` ).


```r
pandoc::pandoc_convert(
  file = md_file, 
  from = "markdown-auto_identifiers", 
  to = "html", 
  output = html_file
)
```

```
## /tmp/Rtmp1xdbdw/file273fd5b95f546
```

```r
brio::read_lines(html_file)
```

```
## [1] "<h1>Important announcement</h1>"                 
## [2] "<p><a href=\"https://pandoc.org/\">Pandoc</a> is"
## [3] "<strong>great</strong>!</p>"
```

Ce n'est qu'un aperçu de ce que Pandoc peut faire.

## Quand Pandoc est-il le problème (ou la solution) ?

Si tu fais appel à Pandoc toi-même, directement ou par l'intermédiaire de [pandoc](https://cderv.github.io/pandoc/) de Christophe, tu sauras évidemment que Pandoc est impliqué dans le processus.

Dans d'autres cas, Pandoc peut être enfoui sous des couches d'autres logiciels.
Par exemple, avec R Markdown, le paquet rmarkdown appellera d'abord knitr avant d'appeler Pandoc.
Même chose avec Quarto qui appellera knitr ou jupyter avant d'appeler Pandoc.

Voici quelques éléments pour t'aider à déterminer si c'est Pandoc qui te fait trébucher :

- Si tu obtiens une erreur avec ton code R, Pandoc n'est pas en cause.

- Si tu peux voir une erreur Pandoc dans la sortie, cela signifie généralement que quelque chose ne va pas pendant l'étape de conversion Pandoc.
  Le débogage à l'aide du fichier d'entrée transmis à Pandoc sera le plus facile.
  Si l'outil que tu utilises crée cette entrée pour toi (comme R Markdown ou Quarto), ajoute la configuration pour conserver l'entrée Markdown. Lis la sous-section suivante pour plus de détails !

- Si tu te dis "mais ça marchait hier !", par exemple "je n'ai rien changé du côté de R mais ça ne marche plus" : peut-être que la version de Pandoc a changé ? 
Un changement de version de Pandoc, peut-être en utilisant [la fonctionnalité du paquet pandoc pour gérer la version de Pandoc](https://cderv.github.io/pandoc/reference/index.html#handle-pandoc-version), par exemple, peut révéler un problème avec une nouvelle version de Pandoc, mais c'est rare.

Dans tous les cas, Pandoc peut aussi être ton problème si tu repousses les limites de ce que tu peux réaliser avec un autre outil en utilisant Pandoc.
Par exemple, si tu veux une conversion particulière, comme avoir des emojis à la `:​grin:` dans tes diapositives Quarto reveal.js, tu devras peut-être modifier quelque chose lié à Pandoc.

### Comment accéder à l'entrée de Pandoc

Même si Pandoc est un convertisseur générique qui peut gérer plusieurs formats en entrée et en sortie, dans l'écosystème R Markdown et Quarto, le format d'entrée sera toujours Markdown par le biais d'un fichier `.md`.

Lorsque l'on utilise un `.Rmd` ou un `.qmd` le document sera converti en `.md` par knitr avec tout le code et les résultats assemblés.
C'est l'entrée que Pandoc utilisera pour convertir le document en sortie souhaitée.
Le _cookbook_ (livre de recettes) R Markdown de Yihui Xie, Christophe Dervieux et Emily Riederer propose un [diagramme pratique](https://bookdown.org/yihui/rmarkdown-cookbook/rmarkdown-process.html) pour comprendre cette relation.

En général, les outils de ce type ont une certaine configuration qui te permet de garder les intermédiaires pour déboguer plus facilement : `keep_md` ou `keep-md` respectivement pour les formats R Markdown et Quarto.

L'exploration de ce fichier intermédiaire en entrée de Pandoc peut aider à comprendre ce qui sera vu par Pandoc et peut t'aider à déboguer, ou au moins à construire un meilleur exemple reproductible de ton problème.

## Parler Pandoc

Maintenant que tu comprends la relation entre R et Pandoc, l'étape suivante consiste à comprendre le fonctionnement de Pandoc.
Pensais-tu que nous n'irions pas aussi loin ?
Malheureusement, c'est lorsqu'on commence à explorer le fonctionnement d'un outil que toute la... *magie* se dévoile 😉 .

Tout d'abord, comment trouver la documentation de Pandoc ?
Tu peux taper [`pandoc::pandoc_browse_manual()`](https://cderv.github.io/pandoc/reference/pandoc_browse_manual.html).
Ou tu peux mettre un signet sur la page [URL du manuel Pandoc](https://pandoc.org/MANUAL.html).
Il s'agit d'un MANUEL tout en majuscules, ce qui souligne l'importance de le lire : si tu le parcours au moins une fois, tu auras une meilleure idée de ce qu'il contient... et de la façon dont les choses sont référencées dans le monde Pandoc, de sorte que tu pourras poser de meilleures questions à ton moteur de recherche ou à tes collaborateur·rice·s !
Tu peux même être [récompensé pour avoir lu le MANUEL Pandoc](https://yihui.org/en/2017/11/thanks-tj-mahr/) !

Ensuite, comment apprendre à "parler Pandoc" ?

Tu peux utiliser un moteur de recherche pour affiner tes mots-clés : tu trouveras peut-être des fils de discussion avec des questions posées par des personnes utilisant le même vocabulaire approximatif que le tien, avec des réponses plus affinées.
Par exemple, Maëlle cherchait récemment une option dont elle connaissait l'existence, pour transformer des choses qui ressemblent à des URL en Markdown, comme `https://ropensci.org`, en liens en HTML, par exemple `<a href="https://ropensci.org">https://ropensci.org</a>`.
Elle a d'abord cherché des "raw/naked links", avant de (re)découvrir qu'il s'agit de _bare URIs_, avec l'extension appelée `autolink_bare_uris`.

En parlant d'extension !
Quel est le vocabulaire de base dont on a besoin pour résoudre un problème avec Pandoc ?
Cela vient avec le temps mais une bonne liste de départ serait...

### Formats

Le format que Pandoc convertit depuis et vers.
Il y a une liste impressionnante sur le site [page d'accueil de Pandoc](https://pandoc.org/).
docx, gfm (GitHub flavored Markdown), HTML, RTF...

Dans Quarto et R Markdown, tu es censé·e écrire par défaut en "Pandoc's Markdown", qui est une variante spéciale de Markdown.

### Extension

Les [Extensions](https://pandoc.org/MANUAL.html#extensions) modifient le comportement des lecteurs et des rédacteurs de Pandoc.
Les extensions sont des prolongements (ou des contractions, puisqu'elles peuvent être désactivées) de *formats* et non de *Pandoc*.
Par exemple, ["smart"](https://pandoc.org/MANUAL.html#extension-smart) interprétera certains éléments typographiques, par exemple deux tirets en tiret long[^4], et est activée par défaut pour Markdown.
Donc, si tu veux convertir du Markdown en HTML sans transformer les deux tirets, tu utiliseras `markdown-smart` comme format d'entrée.
Cela signifie que `markdown` *moins* l'extension `smart`.
Toutes les extensions ne fonctionnent pas pour un format, alors assure-toi de lire la documentation (😉 ). Tu peux utiliser [`pandoc::pandoc_list_extensions()`](https://cderv.github.io/pandoc/reference/pandoc_list_extensions.html) pour lister les extensions disponibles pour un format.
Un format que Maëlle utilise souvent lorsqu'elle produit des diapositives avec Quarto est le suivant

[^4]: Maëlle pensait qu'il s'agissait de "long dashes" en anglais alors qu'on les appelle "em dash" en anglais.
Parler pandoc nécessite parfois d'avoir un peu de vocabulaire typographique anglais !

```yaml
format:
  revealjs:  
    from: markdown+emoji
```

pour avoir l'*indispensable* conversion des emojis.
🎉

Tu trouveras ci-dessous un exemple dans lequel nous appelons directement Pandoc.
Note que dans cet exemple, nous utilisons directement des chaînes de texte, sans rien écrire dans des fichiers, ce qui peut être pratique parfois !


```r
# tiret long
pandoc::pandoc_convert(
  text = "I like Pandoc -- when it works as I want it to!",
  from = "markdown",
  to = "html"
)
```

```
## <p>I like Pandoc – when it works as I want it to!</p>
```

```r
# pas de tiret long
pandoc::pandoc_convert(
  text = "I like Pandoc -- when it works as I want it to!",
  from = "markdown-smart",
  to = "html"
)
```

```
## <p>I like Pandoc -- when it works as I want it to!</p>
```

Généralement, en utilisant R Markdown ou Quarto, il n'y a pas besoin de modifier les extensions mais elles peuvent être la source des ennuis ou des différences que tu vois parfois.

### Options

Tu vois comment nous nous sommes abstenus de qualifier les extensions d'"options" ? Parce que les [options](https://pandoc.org/MANUAL.html#options) sont autre chose !
Ce sont des sortes d'arguments pour les appels Pandoc.
Par exemple `--mathml` est une option pour rendre les mathématiques en MathML.

Certaines options peuvent être cachées par l'outil que tu utilises pour appeler Pandoc, ou facilement exposées en tant qu'argument : par exemple, l'option `to` de l'argument [`pandoc::pandoc_convert()`](https://cderv.github.io/pandoc/reference/pandoc_convert.html) est en fait une option Pandoc.

Ci-dessous, nous utilisons une option pour décaler les niveaux d'en-tête de 1, ce qui augmente le numéro de niveau de l'en-tête et réduit ainsi l'importance de l'en-tête.


```r
pandoc::pandoc_convert(
  text = "# Important announcement\n\nPandoc is cool!",
  from = "markdown",
  to = "HTML", 
  args = c("--shift-heading-level-by=1")
)
```

```
## <h2 id="important-announcement">Important announcement</h2>
## <p>Pandoc is cool!</p>
```

Vois comment l'en-tête "Annonce importante" devient un h *2* dans le résultat.

Ces options peuvent être définies avec Pandoc en utilisant le format YAML à l'aide d'un fichier de défauts, [_defaults file_](https://pandoc.org/MANUAL.html#defaults-files).
Il s'agit d'une autre technique avancée que nous n'aborderons pas en détail... mais tu connais maintenant les _defaults file_[^5].

[^5]: Au fait, c'est ce que Quarto exploite en interne pour que les options YAML du document puissent être transmises à Pandoc.
Utile à savoir si tu débogues Pandoc dans Quarto.

### Variables

Les [variables](https://pandoc.org/MANUAL.html#variables) sont les métadonnées que tu as peut-être l'habitude de transmettre à Pandoc via l'en-tête YAML (pour R Markdown et Quarto).
Elles seront généralement utilisées dans les modèles pour choisir un contenu et un comportement spécifiques pour le format de sortie.

Elles peuvent également être passées via la ligne de commande, par exemple la fonction de format de sortie de rmarkdown peut les créer en tant qu'arguments de ligne de commande avec [`rmarkdown::pandoc_variable_arg()`](https://pkgs.rstudio.com/rmarkdown/reference/pandoc_args.html).

### Templates (Modèles)

Si tu demandes à Pandoc de créer un diaporama reveal.js, il le fera en utilisant son [modèle par défaut](https://github.com/jgm/pandoc-templates/blob/master/default.revealjs).
Le modèle est rempli avec ton contenu Markup mais aussi avec des variables comme les noms des auteurs.
Tu peux fournir tes propres [_custom templates_ (modèles personnalisés)](https://pandoc.org/MANUAL.html#templates) en utilisant l'option `--template`.
[pandoc::pandoc\_export\_template()](https://cderv.github.io/pandoc/reference/pandoc_export_template.html) crée un fichier contenant le modèle par défaut pour une version spécifique de Pandoc, que tu peux explorer ou utiliser comme point de départ pour créer ton propre modèle.

### Raw attributes (Attributs bruts)

Supposons que tu aies du HTML brut dans ton document Markdown.
Tu peux le protéger de l'analyse Pandoc en l'enveloppant dans un [_raw attribute_ (attribut brut)](https://pandoc.org/MANUAL.html#generic-raw-attribute).
Ceci est par exemple utilisé par [hugodown](https://github.com/r-lib/hugodown/pull/53) pour protéger les shortcodes Hugo.

Attention, cela fait partie de l'extension `raw_attribute` et peut donc ne pas être incluse par défaut et ne pas être prise en charge par le format que tu as choisi.

### Comment utiliser ces choses ?

Ce dont tu as besoin pour résoudre un défi Pandoc donné peut être un format, une extension ou une option.
C'est à toi de trouver la bonne combinaison, mais avoir une vague compréhension de ce que sont ces choses et comment les utiliser t'aidera.
Une autre chose qui t'aidera, c'est de savoir comment passer ces choses à Pandoc en utilisant l'interface Pandoc de ton choix :

- Si tu appelles Pandoc directement ou avec le paquetage pandoc, cela devrait être relativement simple (voir les liens et les exemples ci-dessus).
- Si tu utilises R Markdown ou Quarto, tu devras peut-être rechercher, par exemple [_"R Markdown custom Pandoc templates"_ (modèles Pandoc personnalisés pour R Markdown)](https://bookdown.org/yihui/rmarkdown/template-pandoc.html). Par ailleurs, il existe peut-être une façon plus native d'utiliser R Markdown ou Quarto pour atteindre ton objectif sans avoir à utiliser Pandoc. Il est important de garder à l'esprit que ces outils exploitent largement Pandoc et visent à le rendre plus simple à prendre en main : les concepts sont les mêmes mais ils devraient être plus faciles à utiliser, même s'ils ne sont pas aussi variés.

## Comment expérimenter avec Pandoc ?

Une fois que tu sais que ton problème vient de Pandoc, comment créer un exemple reproductible ?
De manière peut-être surprenante, même si c'est très bien de créer un _reprex_ (exemple reproductible) Pandoc, tu *ne peux pas* le créer avec le paquet reprex, parce que reprex utilise la machinerie R Markdown.

Dans ce billet, nous avons montré quelques exemples, en appelant Pandoc directement sur des chaînes de caractères, ou sur [des fichiers temporaires créés avec withr](#pandoc-101).

Voici le code Rmd habituel de Christophe, fourni en tant que [RStudio snippet](https://support.posit.co/hc/en-us/articles/204463668-Code-Snippets-in-the-RStudio-IDE):

```r
dir.create(tmp_dir <- tempfile())
owd <- setwd(tmp_dir)
xfun::write_utf8(c(
    "---",
    "title: test",
    "---",
    "",
    "# A header",
    ${1:""}
), "test.Rmd")
rmarkdown::render("test.Rmd", "${2:html_document}"${3})
setwd(owd)
unlink(tmp_dir, recursive = TRUE)
```

Dans tous les cas, comme pour tout reprex, il faudra le rendre minimal.

Pour dépanner le comportement de Pandoc à l'aide d'autres outils, voici quelques conseils utiles :

- Tu peux tester Pandoc dans ton navigateur sur [pandoc.org/try](https://pandoc.org/try/).

- Avec Quarto, tu peux accéder au Pandoc intégré avec la commande `quarto pandoc`.
  C'est comme si tu appelais `pandoc` directement, mais en utilisant la version fournie avec la version de Quarto que tu utilises.

- Avec R Markdown, [`rmarkdown::find_pandoc()`](https://pkgs.rstudio.com/rmarkdown/reference/find_pandoc.html) te permettra de savoir où se trouve le binaire Pandoc.
  Tu peux l'exécuter dans un terminal, ou utiliser la famille de fonctions [`rmarkdown::pandoc_*`](https://pkgs.rstudio.com/rmarkdown/reference/index.html#pandoc).

- Dans R, le paquet pandoc peut t'aider à exécuter une version spécifique, à comparer entre les versions et à isoler ton travail Pandoc.

Quel que soit l'outil que tu utilises, une fois que tu connais le numéro de version, tu peux exécuter Pandoc lui-même (à partir de R avec le paquet pandoc, à partir d'un terminal) en installant la bonne version.

## Suivre l'évolution de Pandoc, ou épingler une version Pandoc !

Suivre l'évolution de Pandoc n'est vraiment pas obligatoire et la lecture du _changelog_ (journal des modifications) pourrait être difficile à suivre sans une bonne compréhension du fonctionnement de Pandoc.
Tu *pourrais* t'abonner à la [liste de diffusion Pandoc](https://groups.google.com/g/pandoc-announce).
Mais il se peut, rarement, que tu aies besoin de passer au peigne fin la [liste de modifications de Pandoc](https://pandoc.org/releases.html) lorsque tu remarqueras quelque chose d'anormal.

Fais attention à la version de Pandoc que tu utilises localement et en intégration continue, surtout quand quelque chose ne fonctionne que sur ta machine.

Pour savoir quelle version de Pandoc tu utilises, tu peux utiliser...

- [`rmarkdown::pandoc_version()`](https://pkgs.rstudio.com/rmarkdown/reference/pandoc_available.html) qui renvoie la version utilisée par **rmarkdown**;
- `quarto pandoc --version` (dans une ligne de commande) qui renvoie la version interne à Quarto ;
- [`pandoc::pandoc_version()`](https://cderv.github.io/pandoc/reference/pandoc_version.html) qui renvoie la version de Pandoc par défaut (la version active, généralement la plus récente parmi les versions de Pandoc **installées avec le paquetage R**) ;
- [`pandoc::pandoc_system_version()`](https://cderv.github.io/pandoc/reference/system_pandoc.html) qui renvoie la version de `pandoc` trouvée dans PATH ;
- [`pandoc::pandoc_rstudio_version()`](https://cderv.github.io/pandoc/reference/rstudio_pandoc.html) qui renvoie la version de Pandoc inclue dans RStudio IDE (il peut s'agir d'une version différente de [`rmarkdown::pandoc_version()`](https://pkgs.rstudio.com/rmarkdown/reference/pandoc_available.html) qui peut être celle de PATH ou de `RSTUDIO_PANDOC` ou de la variable d'environnement).

Alors oui, faire attention à la version de Pandoc demande un peu d'attention.

Avec Quarto, c'est moins un problème qu'avec R Markdown puisque Quarto épingle une version de Pandoc.
Dans le développement R Markdown, le but est de bien fonctionner avec la dernière version de Pandoc tout en continuant à fonctionner avec les versions plus anciennes.
Il est important de le comprendre car cela peut signifier que des systèmes différents peuvent obtenir des résultats différents même s'ils ont la même version de R Markdown parce que la version de Pandoc n'est pas la même.
Comme souvent avec R, il est préférable de [mettre à jour régulièrement](https://bookdown.org/yihui/rmarkdown-cookbook/install-pandoc.html) sauf si tu as une raison particulière de ne pas le faire.

Conseil particulier si tu construis quelque chose avec Pandoc sur un système d'intégration continue : épingle une version de Pandoc pour ta configuration de production (GitHub Actions workflow par exemple) afin qu'elle corresponde à ton environnement de développement local[^6].

[^6]: C'est aussi une stratégie que l'on peut utiliser avec Hugo lors de la construction d'un site web statique !
Cela permet de s'épargner bien des maux de tête.

Le paquet pandoc possède également des aides très pratiques de type withr pour exécuter le code avec une version donnée de Pandoc : [`pandoc::local_pandoc_version()` et `pandoc::with_pandoc_version()`](https://cderv.github.io/pandoc/reference/with_pandoc_version.html); ainsi qu'un argument `version` dans [`pandoc::pandoc_convert()`](https://cderv.github.io/pandoc/reference/pandoc_convert.html).
Cette fonction spéciale a pour but de faciliter les tests et le débogage entre plusieurs versions de Pandoc !

## Au-delà de la documentation officielle, au-delà de Pandoc

Si la lecture de la documentation et l'expérimentation ne te permettent pas d'arriver à tes fins, que faire ?

- Les réponses de John MacFarlane dans les questions GitHub peuvent être instructives. Voir cet [exemple](https://github.com/jgm/pandoc/issues/6259#issuecomment-841859989).
- Tu pourrais parcourir, ou participer, à la [liste de discussion Pandoc](https://groups.google.com/g/pandoc-discuss).
- Si ton problème est lié à Pandoc pour R Markdown ou Quarto en particulier, rends-toi sur le [forum de la communauté Posit](https://community.rstudio.com/) ou dans leurs dépôts Github respectifs.

Et si Pandoc n'est pas suffisant pour ton cas d'utilisation ?

- [Quarto](https://quarto.org/) est en fait une interface plus facile à utiliser de Pandoc avec beaucoup de fonctionnalités supplémentaires et de nouveaux paramètres par défaut pour améliorer Pandoc pour la publication scientifique. Donc en général, si Pandoc n'est pas suffisant (ou difficile à utiliser), va voir Quarto (qui a des projets, etc.). Utiliser Quarto avec des fichiers Markdown (.md) revient à utiliser un Pandoc plus intelligent (pas de R, pas de calcul, seulement une conversion de texte).
- Tu pourrais *construire sur* Pandoc. Christophe recommande de se renseigner sur [les filtres Lua](https://pandoc.org/lua-filters.html). Voir [Filtres Lua pour Quarto](https://quarto.org/docs/extensions/filters.html); [Filtres Lua pour R Markdown](https://bookdown.org/yihui/rmarkdown-cookbook/lua-filters.html). Maëlle n'a pas encore appris à les utiliser, et a tendance à convertir les choses en HTML puis à les analyser avec xml2[^7].
- Tu pourrais ouvrir une _feature request_ (demande de fonctionnalité) de Pandoc.
- Tu peux utiliser autre chose que Pandoc, comme le paquet [commonmark de Jeroen Ooms](https://docs.ropensci.org/commonmark/); ou le paquet [markdown de Yihui Xie](https://pkgs.rstudio.com/rmarkdown/articles/rmarkdown.html) ou le paquet [tinkr de Zhian Kamvar](https://docs.ropensci.org/tinkr/) qui utilisent commonmark.

[^7]: Bien que cela puisse faire en sorte que les flux de travail ressemblent au jeu [The incredible machine](https://en.wikipedia.org/wiki/The_Incredible_Machine_\(video_game\)).

## Conclusion

Dans ce billet, nous avons partagé quelques ressources utiles pour dépanner tes problèmes avec Pandoc.
Il est crucial de se rappeler que même si cela peut sembler insurmontable, tes compétences et ton vocabulaire Pandoc s'amélioreront avec la pratique, comme par exemple en [convertissant des documents Google](https://docs.ropensci.org/quartificate/) pour une collègue ! :wink:

En tant qu'utilisateur·rice de R, n'oublie pas que Pandoc soutient un grand nombre de tes outils de publication ; et qu'il existe un paquet R pratique pour interagir avec Pandoc : pandoc 🎉.

Si tu aimes jouer avec des fichiers de différents formats, tu pourrais aussi apprécier la lecture de cet article de blog sur [rtika](/blog/2018/04/25/rtika-introduction/) par Sasha Goodman.


