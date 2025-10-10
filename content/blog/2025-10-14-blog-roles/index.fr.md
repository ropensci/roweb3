---
title: Reconnaissance au-delà des auteurs de billets de blog
author:
- Maëlle Salmon
- Yanina Bellini Saibene
editor: Steffi LaZerte
date: '2025-10-14'
slug: reconnaissance_au_delà_des_auteurs_de_billets_de_blog
description: Comment nous reconnaissons les différents types de contributions à notre
  blog.
output: hugodown::md_document
tags:
- metadata
- tech notes
- community manager tools
params:
  doi: 10.59350/510pg-zzf58
---

Notre propre guide de développement [états](https://devguide.ropensci.org/maintenance_collaboration.html#attributions)

> Sois généreux avec les attributions

Reconnaître les diverses formes de [contributions](https://contributing.ropensci.org/) à notre mission est très importante pour nous :
nous aimons remercier [les évaluateurs de paquets](/blog/2018/03/16/thanking-reviewers-in-metadata/) et plus généralement [tous les contributeurs de paquets](/blog/2024/11/26/allcontributors/), [les organisations ainsi que les individus](/blog/2025/05/09/ror/).

Nous avons récemment étendu nos efforts à la reconnaissance des différents rôles qu'il y a lors de la publication d'un article de blog.

## Nouveaux rôles sur le blog : rédacteurs, traducteurs, interviewés

Les métadonnées de nos articles de blog comportent désormais des caractéristiques :

- qui a édité l'article de blog
  - par exemple, [Steffi LaZerte a modifié un article récent](/blog/2025/09/18/markdown-programmatic-parsing/).
- qui a traduit l'article de blog
  - par exemple, [Yanina Bellini Saibene a traduit un article en espagnol.](/es/blog/2025/06/23/edicion-multilingue-preguntas-frecuentes/) et [Maëlle Salmon l'a traduit en français](fr/blog/2025/06/23/publication-multilingue-faq/).
- qui était *interviewé* pour un article de blog
  - par exemple, [Athanasia Mo Mowinckel a été interviewée dans la série Stars de l'univers R.](/blog/2023/03/30/r-universe-stars-3-en/).

La "page auteur" des contributeurs énumère leurs diverses contributions au contenu dans la langue actuelle (les titres d'auteur sont listés en premier, suivis des autres rôles) :

- [Page d'auteur de Steffi LaZerte](/author/steffi-lazerte)
- [Page d'auteur de Yanina Bellini Saibene en espagnol](/es/author/yanina-bellini-saibene)
- [Page d'auteur d'Athanasia Mo Mowinckel](/author/athanasia-mo-mowinckel/)

Pour réaliser cette nouvelle fonctionnalité, nous

- modifié les mises en page (modèles) de Hugo pour [les articles de blog](https://github.com/ropensci/roweb3/blob/main/themes/ropensci/layouts/partials/blogs/blog-single.html) et [pages d'auteur](https://github.com/ropensci/roweb3/blob/main/themes/ropensci/layouts/author/list.html).
- documenté les nouveaux champs de métadonnées correspondants dans nos [guide du blog](https://blogguide.ropensci.org/editorchecklistany.html).

## Conclusion

Nous sommes ravis de pouvoir reconnaître davantage de contributions à notre blog.

Cette différenciation des rôles nous permet également d'analyser plus en détail la façon dont les collaborations liées au blog se produisent parmi les membres de notre communauté. Grâce à ces informations, nous pouvons explorer différentes façons d'encourager la participation des personnes intéressées, y compris la meilleure façon de fournir le soutien nécessaire à une participation réussie.

Nous espérons également que nos résultats seront utiles à d'autres communautés pour identifier les différents types de contributions et les façons d'accorder le crédit.

Nous continuerons à travailler pour que davantage de ces contributions soient présentées dans notre fil d'actualité sur [Rogue Scholar](https://rogue-scholar.org/communities/ropensci/records?q=&l=list&p=1&s=10&sort=newest).


