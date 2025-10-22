---
title: En route pour le lancement ! Paquets expédiés au R-Multiverse
author: Maëlle Salmon
editor: Steffi LaZerte
translator: Maëlle Salmon
date: '2025-10-22'
slug: paquets-r-multiverse
description: Paquets soumis au R-multiverse lors de notre récente session de coworking.
output: hugodown::md_document
tags:
- r-multiverse
- r-universe
- packages
- community
params:
  doi: 10.59350/qr4vb-b2h80
---

Will Landau a récemment présenté le R-multiverse, [une nouvelle façon de publier des paquets R](/commcalls/r-multiverse/) lors d'une réunion de la communauté de rOpenSci[^posit]. 
Après cet événement, une session [coworking](/blog/2023/06/21/coworking/) a permis à Will, à ses collègues administrateurs du R-multiverse Jeroen Ooms et Maëlle Salmon, ainsi qu'aux membres de la communauté, de discuter encore davantage.

Une mission clé de cette session de coworking était de soumettre des paquets au R-multiverse en direct !
À la suite de la session de [instructions](https://r-multiverse.org/contributors.html) tout responsable de paquet souhaitant envoyer son logiciel dans le dépôt communautaire doit :

- créer une "release" GitHub ou GitLab de son paquet ;
- ouvrir une Pull Request au dépôt [contributions](https://github.com/r-multiverse/contributions) GitHub, en ajoutant un fichier texte contenant l'URL du dépôt[^json]. 

Will a également partagé une fonction R qui vous permet d'effectuer des vérifications de paquets R-multiverse localement avant de les soumettre : [`multiverse.internals::review_package()`](https://r-multiverse.org/multiverse.internals/reference/review_package.html).

Trois paquets ont été soumis lors de la session de coworking !

## Paquets soumis

### riem, pour obtenir des données météorologiques des stations ASOS (aéroports) via l'Iowa Environment Mesonet.

J'ai soumis mon paquets [riem](https://github.com/r-multiverse/contributions/pull/238) qui accède aux données météorologiques des aéroports, même s'il est également distribué sur CRAN : je voulais explorer différentes possibilités de publication.
Parce que les vérifications automatiques (de la licence par exemple) ont passé et parce que je suis une membre public d'une organisation GitHub à laquelle le multivers fait confiance (ropensci), ma PR a été automatiquement fusionnée.

En savoir plus sur [riem](https://docs.ropensci.org/riem/).

### geotargets, qui étend targets pour travailler avec des formats de données géospatiales

Eric R. Scott a soumis le [paquet geotargets](https://github.com/r-multiverse/contributions/pull/239) qui étend le champ d'application de targets aux formats de données géospatiales, tels que les rasters et les vecteurs (par exemple, les "shapefiles").
Eric a co-écrit geotargets avec Nick Tierney et Andrew Brown, mais Nick est le principal mainteneur.
Cependant, il est tout à fait acceptable qu'Eric ait soumis le paquet plutôt que Nick.
En effet, R-multiverse vous permet de contribuer à des paquets que vous n'avez pas écrits du tout [^3] à condition que la licence accorde[l'autorisation claire de distribuer et de modifier le code](https://en.wikipedia.org/wiki/Free_and_open-source_software).

En savoir plus sur [geotargets](https://docs.ropensci.org/geotargets/).

[^3]: La liste d'auteur·rice·s du paquet reste inchangée.

### weathercan, pour trouver et télécharger des données météorologiques historiques d'Environnement et Changement Climatique Canada (ECCC)

Steffi LaZerte a soumis son [paquet weathercan](https://github.com/r-multiverse/contributions/pull/240/) également un paquet météo mais pour le Canada !
Steffi s'est demandé s'il était judicieux de soumettre weathercan avant d'effectuer un certain nombre de corrections et d'améliorations qu'elle avait planifiées pour les semaines à venir. Il s'avère que, oui, cela a du sens ! En effet, le multivers récupère automatiquement la dernière version.
Steffi doit seulement se rappeler de créer une nouvelle "release" après avoir amélioré weathercan.

En savoir plus sur [weathercan](https://docs.ropensci.org/weathercan/).

## Quelle est la suite pour ces paquets ?

Maintenant que ces paquets sont arrivés, ils sont distribués par l'intermédiaire du dépôt de [**communauté**](https://r-multiverse.org/community.html).
Il s'agit d'une sorte d'aperçu des nouvelles versions.

Dans quelques semaines, lorsque R-multiverse commencera à construire le prochain instantané de [**production**](https://r-multiverse.org/production.html) ils seront vérifiés en même temps que les autres paquets.
S'ils sont acceptables, leur version à ce moment-là sera celle qui sera intégrée à la production.
S'il y a des problèmes, le responsable peut toujours apporter des corrections.

Tant que ces paquets sont listés dans le R-multiverse, ils participeront aux snapshots de production trimestriels.
Les responsables n'ont qu'à continuer à créer des "releases" (bonne pratique de toute façon) et à suivre la procédure [statut](https://r-multiverse.org/status/) de leur paquet dans R-multiverse.

Pour que les utilisateur·rice·s du paquet sachent qu'il·elle·s peuvent l'installer à partir du dépôt [communauté](https://r-multiverse.org/community.html) ou du dépôt [production](https://r-multiverse.org/production.html) les responsables des paquets devront mettre à jour les instructions d'installation dans le README de leur paquet.
Ils peuvent également ajouter un [badge](https://r-multiverse.org/contributors.html#badges).

## Quelle est la suite pour le multivers R ?

Après la conférence posit, l'appel à la communauté rOpenSci et la session de coworking rOpenSci, R-multiverse vise à augmenter la participation à son système pour le renforcer et le diversifier.
Les soumissions de nouveaux paquets sont les bienvenues, tout comme les [questions et demandes de fonctionnalités](https://github.com/r-multiverse/help).
Vous pouvez également poser votre candidature pour devenir [modérateur de paquet](https://r-multiverse.org/moderators.html) pour aider à gérer les nouvelles soumissions.

[^posit]: Et avant cela, lors d'une conférence à posit::conf ! Restez à l'écoute pour la publication des enregistrements des conférences publiques sur YouTube.
[^json]: Ou un fichier JSON un peu plus complexe si le paquet se trouve dans un sous-répertoire, par exemple.


