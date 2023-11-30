---
title: Comment traduire un billet de blog Hugo avec Babeldown
author:
- Maëlle Salmon
- Yanina Bellini Saibene
date: '2023-09-26'
slug: comment_traduire_un_billet_de_blog_hugo_avec_babeldown
categories: []
tags:
- tech notes
- multilingue
---

Dans le cadre de notre [projet d'édition multilingue](/multilingual-publishing/) et avec un [financement du R Consortium](https://www.r-consortium.org/all-projects/awarded-projects/2022-group-2) nous avons travaillé sur le paquet R [babeldown](https://docs.ropensci.org/babeldown/) pour la traduction de contenu Markdown à l'aide de l'API DeepL.
Dans cette note technique, nous allons montrer comment on peut utiliser babeldown pour traduire un article de blog Hugo !

## Motivation

Traduire un article de blog en Markdown depuis la console R est non seulement plus confortable (quand on a déjà écrit ledit article de blog en R), mais aussi moins frustrant.
Avec babeldown, comparé au copier-coller du contenu d'un billet de blog dans un quelconque service de traduction, la syntaxe Markdown ne sera pas cassée[^md], et les morceaux de code ne seront pas traduits.
Cela fonctionne, car en pratique, babeldown utilise [tinkr](https://docs.ropensci.org/tinkr) pour produire du XML qu'il envoie ensuite à l'API DeepL, en signalant certaines balises comme ne devant pas être traduites. Il convertit ensuite le XML traduit par DeepL en Markdown.

[^md]: Mais il faut se référer à la [documentation de tinkr](https://docs.ropensci.org/tinkr/#loss-of-markdown-style) pour voir ce qui pourrait changer dans le style de syntaxe Markdown.

Comme on peut s'en douter, ce contenu traduit automatiquement n'est pas encore parfait !
Il faudra encore le travail d'un ou deux humains pour réviser et modifier la traduction.
Pourquoi ne pas demander aux humains de traduire l'article à partir de zéro ?
Nous avons observé que l'édition d'une traduction automatique est plus rapide que la traduction de l'ensemble du billet, et qu'elle libère de l'espace mental pour se concentrer sur la mise en œuvre de règles de traduction telles que la formulation non sexiste.

## Configuration

### Pré-requis sur le site Hugo

[`babeldown::deepl_translate_hugo()`](https://docs.ropensci.org/babeldown/reference/deepl_translate_hugo.html) suppose que le site web Hugo utilise

- "leaf bundles" (chaque post dans un dossier, `content/path-to-leaf-bundle/index.md`) ;
- le multilinguisme, de sorte qu'un message en espagnol se retrouve dans par exemple) `content/path-to-leaf-bundle/index.es.md`.

babeldown pourrait être étendu à d'autres configurations multilingues Hugo. Si vous souhaitez utiliser babeldown avec une configuration différente, ouvrez une "issue" dans le [dépôt de babeldown](https://github.com/ropensci-review-tools/babeldown/)!

À noter, babeldown ne pourra pas déterminer la langue par défaut du site web[^config] donc même si la langue par défaut du site web est l'anglais, babeldown placera une traduction anglaise dans un fichier appelé ".en.md" et non ".md".
Hugo reconnaîtra tout de même le nouveau fichier (du moins dans notre configuration).

[^config]: ajout de code pour gérer l'interface d'Hugo. ["l'ensemble déconcertant d'emplacements de configuration possibles"](https://github.com/r-lib/hugodown/issues/14#issuecomment-632850506) et les deux formats possibles (YAML et TOML) est hors de portée de babeldown pour le moment.

### Pré-requis DeepL

Il faut d'abord vérifier que les langues source et cible souhaitées sont prises en charge par l'API DeepL !
On peut se référer à la documentation des [paramètres de l'API `source_lang` et `target_lang`](https://www.deepl.com/docs-api/translate-text) pour une liste complète.

Une fois sûr·e qu'on peut profiter de l'API DeepL, il faut créer un compte pour [l'API du service de traduction DeepL](https://www.deepl.com/en/docs-api/).
Même l'obtention d'un compte gratuit nécessite l'enregistrement d'un moyen de paiement auprès d'eux.

### Pré-requis R

Commençons par installer babeldown à partir de l'univers R de rOpenSci :

```r
install.packages('babeldown', repos = c('https://ropensci.r-universe.dev', 'https://cloud.r-project.org'))
```

Ensuite, dans chaque session R, on définit sa clé API DeepL via la variable d'environnement `DEEPL_API_KEY`. 
On peut l'enregistrer une fois pour toutes avec le paquet [keyring](https://r-lib.github.io/keyring/index.html) et la récupérer dans les scripts comme suit :

```r
Sys.setenv(DEEPL_API_KEY = keyring::key_get("deepl"))
```

Enfin, l'URL de l'API DeepL dépend de votre plan API.
babeldown utilise par défaut l'URL d'API gratuite DeepL.
Quand on utilise un plan Pro, on doit définir l'URL de l'API dans chaque session/script R via

```r
Sys.setenv("DEEPL_API_URL" = "https://api.deepl.com")
```

## Traduction !

On pourrait exécuter le code ci-dessous

```r
babeldown::deepl_translate_hugo(
  post_path = <path-to-post>, 
  source_lang = "EN",
  target_lang = "ES",
  formality = "less" # that's how we roll here!
)
```

mais nous recommandons d'en faire un peu plus pour de meilleurs résultats.

## Traduction à l'aide d'un flux de travail Git/GitHub

Quand on utilise le contrôle de version, avoir la traduction sous forme de diff est très pratique !

### Premièrement : En mots et en images

- Dans la branche de l'article à traduire (appelons-la "new-post"), on crée un fichier pour "garder la place", en enregistrant l'article de blog original (`index.es.md`) sous le nom de l'article cible (`index.en.md`) et en faisait un Git commit et un Git push.

{{< figure src="placeholder.png" alt="Diagramme avec à gauche le dossier 'leaf' dans la branche new-post avec l'article en espagnol avec le texte 'Hola' et une image ; à droite le dossier 'leaf' dans la branche new-post avec l'article en espagnol avec le texte 'hola', l'article avec le nom de fichier cible en anglais avec le texte 'hola', et l'image."  >}}

- Ensuite on crée une nouvelle branche, "auto-translate" par exemple.
- Puis on exécute `babeldown::deepl_translate_hugo()` avec `force = TRUE`.

{{< figure src="translate.png" alt="Diagramme avec à gauche le dossier 'leaf' dans la branche de traduction automatique avec l'article en espagnol avec le texte 'hola', l'article avec le nom de fichier cible en anglais avec le texte 'hola', et l'image ; à droite la seule chose qui a changé est que le contenu de l'article avec le nom de fichier cible en anglais est maintenant 'hello'."  >}}

- Git commit et Git push le résultat.
- On ouvre alors une PR à partir de la page **"auto-translate"** à la branche **"new-post"**.
  La seule différence entre les deux branches est la traduction automatique du billet. La Git diff pour l'article de blog cible sera la différence entre la langue source et la langue cible ! En ayant la bonne habitude de commencer une nouvelle ligne après chaque phrase / partie de phrase, c'est encore mieux.

{{< figure src="pr.png" alt="Dessin de la pull request de la branche auto-translate vers la branche new-post où la différence est que le contenu du post avec le nom de fichier cible anglais a maintenant été traduit en anglais."  >}}

- Les traducteur·rice·s humain·e·s peuvent alors ouvrir une deuxième PR à la branche de traduction avec leurs modifications ! Ou il·elle·s peuvent ajouter leurs modifications en tant que [suggestions de PR](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/commenting-on-a-pull-request#adding-comments-to-a-pull-request).

### Encore une fois : En code

Reprenons l'exercice, mais avec des exemples de code. Ici, nous utiliserons fs et gert (mais à chacun·e ses outils favoris !), et nous supposerons que le répertoire courant est la racine du dossier du site Web, et aussi la racine du dépôt Git.

- Dans la branche post, (encore une fois, appelons-la "new-post"), enregistrer l'article de blog original (`index.es.md`) sous le nom de l'article cible (`index.en.md`) et Git commit et Git push.

```r
fs::file_copy(
  file.path("content", "blog", "2023-10-01-r-universe-interviews", "index.es.md"),
  file.path("content", "blog", "2023-10-01-r-universe-interviews", "index.en.md")
)
gert::git_add(file.path("content", "blog", "2023-10-01-r-universe-interviews", "index.en.md"))
gert::git_commit("Add translation placeholder")
gert::git_push()
```

- Créer une nouvelle branche, "translation-tech-note" par exemple.

```r
gert::git_branch_create("translation-tech-note")
```

- Exécuter `babeldown::deepl_translate_hugo()` avec `force = TRUE`.

```r
babeldown::deepl_translate_hugo(
  post_path = file.path("content", "blog", "2023-10-01-r-universe-interviews", "index.es.md"),
  force = TRUE,
  yaml_fields = c("title", "description", "tags"),
  source_lang = "ES",
  target_lang = "EN-US"
)
```

On peut aussi omettre le `post_path` si on exécute le code à partir de l'IDE RStudio et si le fichier ouvert et focalisé (celui que l'on voit au-dessus de la console) est le billet à traduire.

```r
babeldown::deepl_translate_hugo(
  force = TRUE,
  yaml_fields = c("title", "description", "tags"),
  source_lang = "ES",
  target_lang = "EN-US"
)
```

- Git commit et Git push le résultat avec le code ci-dessous.

```r
gert::git_add(file.path("content", "blog", "2023-10-01-r-universe-interviews", "index.en.md"))
gert::git_commit("Add translation")
gert::git_push()
```

- Ouvrir une PR à partir de la page **"translation-tech-note"** à la branche **"new-post"**.
  La seule différence entre les deux branches est la traduction automatique de `"content/blog/2023-10-01-r-universe-interviews/index.en.md"`.

- Les traducteur·rice·s humains peuvent alors a ouvrir une *deuxième* PR à la branche de traduction avec leurs modifications ! Ou il·elle·s peuvent ajouter leurs modifications en tant que [suggestions de RP](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/commenting-on-a-pull-request#adding-comments-to-a-pull-request).

### Résumé des branches et des PR

Au final, il devrait y avoir deux ou trois branches :

- branche A avec un article de blog en espagnol et un article de blog de remplacement pour l'anglais (avec un contenu espagnol) -- PR vers la branche défaut (main) ;
- branche B avec un article de blog traduit automatiquement en anglais -- PR vers la branche A ;
- Optionnellement, branche C avec la traduction automatique en anglais de l'article de blog éditée par un humain -- PR vers la branche B. Si la branche C n'existe pas, les éditions par un humain sont faites en tant que suggestions de révision PR dans le PR de B à A.

Les PR sont fusionnées dans cet ordre :

- PR vers la branche B ;
- PR vers la branche A ;
- PR vers la branche principale.

### Exemple réel

- [PR ajoutant un article au blog rOpenSci](https://github.com/ropensci/roweb3/pull/629). Il s'agit d'un PR du blog rOpenSci **"r-univers-interviews"** à la branche **"main" (par défaut)** ;
- [PR ajoutant la traduction automatique](https://github.com/ropensci/roweb3/pull/639). Il s'agit d'un PR vers la branche **"r-universe-interviews"** .

{{< figure src="pr-diff.png" alt="Capture d'écran de l'onglet files de la pull request ajoutant la traduction automatique, où l'on observe que le texte espagnol dans les métadonnées YAML et le contenu Markdown a été traduit en anglais."  >}}

Yanina a peaufiné la traduction automatique en suggérant des changements sur la PR, puis en les acceptant.

{{< figure src="pr-comments.png" alt="Capture d'écran de l'onglet principal de la pull request ajoutant la traduction automatique, où l'on observe un commentaire de Yanina remplaçant le mot 'article' par 'blog post' et fixant le nom de 'R-universe'."  >}}

### Champs YAML

Par défaut, babeldown traduit les champs YAML "title" et "description".
S'il y a du texte dans d'autres champs, il faut utiliser l'argument `yaml_fields` de `babeldown::deepl_translate_hugo()`.

Si babeldown traduit le titre, il met à jour le slug.

### Glossaire

Imaginons avoir quelques préférences pour certains mots -- quelque chose que l'on accumule au fil du temps.

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

On peut enregistrer ces traductions préférées dans un glossaire sur notre compte DeepL.

```r
deepl_upsert_glossary(
  <path-to-csv-file>,
  glossary_name = "rstats-glosario",
  target_lang = "Spanish",
  source_lang = "English"
)
```

On utilisera exactement le même code pour *mettre à jour* le glossaire, d'où le nom "upsert" de la fonction.
Il faut un glossaire par paire langue source / langue cible : le glossaire anglais-espagnol ne peut pas être utilisé pour l'espagnol vers l'anglais par exemple.

Dans l'appel `babeldown::deepl_translate_hugo()` on utilise alors le nom du glossaire (ici "rstats-glosario") pour la paire de langues source et cible. `glossary` argument.

### Formalité

`deepl_translate_hugo()` a un argument `formality`.
Or, l'API DeepL ne prend en charge que certaines langues, comme l'explique la documentation du [paramètre `formality` de l'API](https://www.deepl.com/docs-api/translate-text):

> Définit si le texte traduit doit pencher vers un langage formel ou informel. Cette fonction ne fonctionne actuellement que pour les langues cibles DE (allemand), FR (français), IT (italien), ES (espagnol), NL (néerlandais), PL (polonais), PT-BR et PT-PT (portugais), JA (japonais) et RU (russe). (...) Le réglage de ce paramètre avec une langue cible qui ne prend pas en charge la formalité échouera, à moins que l'une des options prefer\_... ne soit utilisée.

Par conséquent, pour être sûr qu'une traduction fonctionnera, au lieu d'écrire `formality = "less"` il faut écrire `formality = "prefer_less"` qui n'utilisera la formalité que si elle est disponible.

## Conclusion

Dans ce billet, nous avons expliqué comment traduire un article de blog Hugo à l'aide de babeldown.
Bien que l'essentiel soit d'utiliser un appel à `babeldown::deepl_translate_hugo()`,

- il faut indiquer l'URL et la clé de l'API,
- on peut améliorer les résultats en utilisant les différents arguments de la fonction,
- nous recommandons d'associer la traduction à un flux de travail Git + GitHub (ou GitLab, gitea...).

babeldown a des [fonctions](https://docs.ropensci.org/babeldown/reference/index.html) pour traduire les chapitres de livres Quarto, n'importe quel fichier Markdown et n'importe quelle chaîne de caractères Markdown, avec des arguments et une utilisation recommandée similaires, alors explorez sa référence !

Nous serions ravis d'entendre parler de vos [cas d'utilisation](/usecases/).


