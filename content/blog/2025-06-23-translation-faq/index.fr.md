---
title: 'Publication multilingue : Questions fréquemment posées'
author:
- Yanina Bellini Saibene
- Maëlle Salmon
editor: Steffi LaZerte
translator: Maëlle Salmon
date: '2025-06-23'
slug: publication-multilingue-faq
output: hugodown::md_document
tags:
- multilingual
- community
- diversity
description: "Une liste de questions fréquemment posées sur notre programme multilingue et notre processus de traduction et de localisation, ainsi que nos meilleures réponses à ces questions."
params:
  doi: 10.59350/60mwx-j6x33
---


Comme nous l'avons [nous l'avons déjà dit](/multilingual-publishing), nous pensons que la publication de ressources multilingues peut abaisser la barrière d'accès au savoir, aider à démocratiser l'accès à des ressources de qualité et augmenter les possibilités de contribuer à des logiciels et à des projets de science ouverte.
Nos efforts continus de [publication multilingue](/multilingual-publishing) sont cruciaux pour la [mission de rOpenSci](/about).
En présentant ce projet à des [conférences](/talks-papers/) et [ailleurs](/commcalls/nov2023-multilingual/), nous entamons une conversation importante avec des personnes moins familières avec ce type de projet ou qui ne connaissent pas nos [méthodes de travail](https://translationguide.ropensci.org/).
Dans ce billet, nous résumons les questions fréquemment posées, et nos meilleures réponses à ces questions (encore mieux formulées que dans le feu de l'action lors d'une séances de questions après une présentation :grin:).

## Les traductions rendront-elles les gens "paresseux" en ce sens qu'il·elle·s n'apprendront pas l'anglais ?

Tout d'abord, il est important de préciser que *pas* n'apprend pas l'anglais ne signifie pas que les gens sont paresseux.
De nombreuses personnes qui ne parlent pas anglais parlent déjà plusieurs langues, et même si elles n'en parlent qu'une, travailler sur son projet avec les outils dont on dispose est déjà un travail suffisant.

Deuxièmement, notre objectif n'est pas que les gens deviennent anglophones. Les gens peuvent choisir (ou non) d'apprendre l'anglais à tout moment, mais le fait d'avoir d'abord appris à, disons, développer un logiciel en utilisant le français ne va pas les en empêcher.
 Notre objectif est que les gens puissent utiliser des logiciels libres et y contribuer, et cela ne devrait pas dépendre du fait qu'il·elle·s parlent anglais. Dans le domaine des sciences, il est déjà assez difficile de ne pas être de langue maternelle anglaise et il existe un grand "potentiel inexploité de locuteurs non natifs de l'anglais" [^amano]. Libérons ce potentiel !

[^amano]: Amano T, Ramírez-Castañeda V, Berdejo-Espinola V, Borokini I, Chowdhury S, Golivets M, et al. (2023) The manifold costs of being a non-native English speaker in science. PLoS Biol 21(7) : e3002184.<https://doi.org/10.1371/journal.pbio.3002184>

### Relatif : Est-ce si difficile de lire en anglais ?

Oui, c'est l'un des "multiples coûts liés au fait d'être un anglophone non natif dans le domaine des sciences" [^amano] .
De plus, plusieurs études ont démontré les difficultés d'apprendre à coder dans des langages de programmation basés sur l'anglais sans être anglophone, et les avantages d'avoir la possibilité d'apprendre dans sa langue maternelle.

Gou[^gou] a constaté que les personnes dont l'anglais n'est pas la langue maternelle se heurtaient à des obstacles dans la lecture de matériel pédagogique, la communication technique, la lecture et l'écriture de code, et l'apprentissage simultané de l'anglais et de la programmation.
Ces difficultés trouvent leur origine dans la nécessité de développer la compréhension de l'anglais *en même temps* que l'on attend d'elles·eux qu'il·elle·s se familiarisent avec le sujet spécifique : dans notre cas, comment développer des logiciels libre et de haute qualité pour la recherche.
 Si vous avez déjà essayé d'apprendre les statistiques et R en même temps, vous avez peut-être une idée de la difficulté de la tâche. Ce type d'apprentissage double augmente la charge cognitive, ce qui peut entraver l'apprentissage[^godin].

[^godin]: Goldin, A. (2022). Neurociencia en la escuela : Guía amigable (sin bla bla) para entender cómo funciona el cerebro durante el aprendizaje. Siglo XXI Editores.

Une autre étude [^tshukudu] suggère que si l'apprentissage de la programmation en anglais n'est pas nécessairement difficile pour tous les non-anglophones, l'inclusion de la langue maternelle des apprenant·e·s peut rendre l'expérience d'apprentissage plus claire, plus encourageante et plus agréable.

Pour en savoir plus sur le sujet, vous pouvez suivre le travail de [Felienne Hermans](https://www.felienne.com), spécialisée dans la conception de langages de programmation, qui a développé un langage de programmation multilingue pour l'enseignement.

[^gou]: Philip J. Guo. 2018. Les personnes dont l'anglais n'est pas la langue maternelle apprennent la programmation informatique : Barrières, désirs et possibilités de conception. Dans les actes de la conférence 2018 de la CHI sur les facteurs humains dans les systèmes informatiques (CHI '18). Association for Computing Machinery, New York, NY, États-Unis, document 396, 1-14.<https://doi.org/10.1145/3173574.3173970>

[^tshukudu]: Ethel Tshukudu, Emma Dodoo, Felienne Hermans, et Monkgogi Mudongo. 2024. La programmation bilingue : Une étude sur les attitudes et les expériences des étudiants dans le contexte africain. Dans les actes de la 24e conférence internationale de Koli Calling sur la recherche en éducation informatique (Koli Calling '24). Association for Computing Machinery, New York, NY, États-Unis, article 42, 1-11.<https://doi.org/10.1145/3699538.3699561>

### Relatif : Les gens devraient apprendre l'anglais

Certaines personnes assènent que l'on doit apprendre l'anglais si l'on veut travailler dans le domaine de la programmation et des sciences parce que l'anglais est la lingua franca de ces disciplines.

Malheureusement, même si c'était souhaitable, ce n'est tout simplement pas possible pour beaucoup de personnes, en particulier pour les programmeur·rice·s occasionnel·le·s ou les utilisateur·rice·s finaux·les. Il·elle·s n'ont pas forcément le temps, l'énergie ou l'argent pour apprendre la programmation et l'anglais en même temps [^swidan].

[^swidan]: Alaaeddin Swidan et Felienne Hermans. 2023. Un cadre pour la localisation des langages de programmation. Dans les actes du 2023 ACM SIGPLAN International Symposium on SPLASH-E (SPLASH-E 2023). Association for Computing Machinery, New York, NY, États-Unis, 13-25.<https://doi.org/10.1145/3622780.3623645>

Avec quelques chiffres : [Le Cadre européen commun de référence pour les langues](https://www.languagecert.org/en/guided-learning-hours) a établi un tableau des heures d'apprentissage guidé généralement nécessaires pour atteindre chaque niveau de compétence linguistique. Il s'agit des heures passées à étudier avec un·e professeur·e ou dans le cadre d'un apprentissage structuré.

Par exemple, en commençant en tant que débutant·e (A1), pour devenir intermédiaire (B1), il faudra environ **400 heures d'apprentissage guidé**.  En pouvant consacrer **5 heures par semaine** il faudra **1,5 an**  et un budget minimum de **6 000 DOLLARS AMÉRICAINS** pour apprendre l'anglais. À titre de référence, cela équivaudrait à deux ans de salaire pour une personne ayant un salaire minimum en Argentine. Ce montant ne prend pas non plus en compte le coût pour trouver le temps d'étudier (services de garde d'enfants, réduction du nombre d'heures de travail, etc.)

En traduisant les documents et les ressources, nous réduisons la charge qui pèse sur les non-anglophones. Plus il y a de personnes impliquées dans les logiciels libres et la science, plus nous bénéficions tous d'un plus grand réservoir d'expériences et d'expertise.
Enfin, nous voulons que tout le monde ait les mêmes chances d'apprendre !

## Pourquoi ne pas juste utiliser des traductions automatiques ?

Pour nos [flux de traduction](https://translationguide.ropensci.org/intro.html#general-aspects-of-the-stage-1-of-the-translation-process) les traductions automatiques constituent la première étape, suivie des révisions humaines.
Bien qu'il soit techniquement possible de publier directement des traductions automatiques ou d'utiliser des outils de traduction à la volée, il y a des inconvénients.
 Tout d'abord, il est bien documenté que la traduction automatique ne fonctionne pas bien pour les langues les moins courantes[^swidan].
Même pour les langues courantes, les traductions automatiques comportent toujours des erreurs, et font des erreurs liées au contexte, à la grammaire et à la syntaxe, ainsi qu'aux marques de genre.
La traduction automatique ne peut pas non plus localiser certains contenus, comme les expressions idiomatiques ou les symboles monétaires et numériques.

Si nous nous fions uniquement à la traduction automatique, le contenu dans des langues traduites sera de moins bonne qualité, ce qui reviendrait à accepter que les utilisateur·rice·s des langues semi-supportées ne méritent pas la même qualité que les autres.
C'est pourquoi, à rOpenSci, des traducteur·rice·s humain·e·s sont impliqué·e·s dans le processus pour s'assurer que tout notre contenu est de bonne qualité, quelle que soit la langue.

## Pourquoi ne pas utiliser `<insérer-le-nom-d'une-plateforme-de-traduction>` au lieu de Git et GitHub ?

Il existe de nombreuses plateformes différentes pour la traduction, ce qui est fantastique !
Cependant, nous sommes une communauté technique et nous traduisons et localisons du contenu technique.
Nous utilisons déjà Git et GitHub dans nos autres flux de développement et de nombreux membres de notre communauté connaissent ces outils ou prévoient de les apprendre.
Pour les membres qui ne connaissent pas Git et GitHub, nous avons des ressources et les aidons volontiers à apprendre, et il·elle·s disposent alors de nouveaux outils qu'il·elle·s peuvent appliquer à d'autres projets techniques.
Pour en savoir plus sur nos outils et nos processus, consultez notre rubrique [guide de traduction](https://translationguide.ropensci.org/intro.html#technical-infrastructure-and-workflows).

## La traduction et la maintenance des traductions ne représentent-elles pas un travail considérable ?

Oui, c'est vrai !
Mais nous pensons que cela en vaut la peine.
De plus, le travail de traduction apporte de nouveaux·elles contributeur·rice·s à la communauté, ce qui a) aide à partager la charge de travail, b) sert de tremplin à d'autres formes de contributions, et c) diversifie notre communauté.

## Conclusion

Dans ce billet, nous avons répondu aux questions courantes que nous recevons sur notre projet de publication multilingue.
Nous sommes convaincus que fournir des ressources multilingues de qualité fait partie du travail pour plus de [diversité, l'équité, l'inclusion et l'accessibilité](/blog/2025/02/05/no-science-without-deia/) dans le logiciel libre et la science ouverte.
Votre participation est la bienvenue... tout comme vos questions !