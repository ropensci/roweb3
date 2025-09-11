---
slug: gentle-openscience
title: Une introduction en douceur à la science ouverte
author:
- Steffi LaZerte
date: '2025-09-16'
tags:
- open science
- welcome
- community
description: Steffi passe en revue une conférence sur la science ouverte. N'oubliez
  pas qu'il faut du courage ; soyez gentil avec vous-même !
social: '@steffilazerte@fosstodon.org explore une conférence sur la science ouverte pour les ornithologues,une introduction en douceur à la science ouverte.'
params:
  doi: 10.59350/mp76s-rkp03
editor: Maëlle Salmon
---

{{< figure src = "sunny_and_steffi.jpg" width = "300" alt = "Une photo de Sunny Tseng et Steffi LaZerte souriant à l'appareil photo et brandissant des autocollants hexagonaux pour différents paquets R de rOpenSci." class = "pull-right" caption = "Sunny et Steffi montrent leurs autocollants R hex !">}}

Cet été, j'ai eu le plaisir de participer à la [Société des ornithologues du Canada](https://www.sco-soc.ca/) à [Saskatoon](https://fr.wikipedia.org/wiki/Saskatoon) Canada.
C'était super excitant de croiser [Sunny Tseng](/author/yi-chin-sunny-tseng/) Championne rOpenSci et collègue [ornithologue](https://fr.wikipedia.org/wiki/Ornithologie)!
Il n'est pas fréquent que je rencontre les deux types de collègues (développeurs R et ornithologues) lors d'une même conférence, alors je chéris ces expériences.

Avant de rejoindre rOpenSci, j'ai commencé ma carrière professionnelle en tant qu'écologiste comportemental et ornithologue, étudiant les effets du bruit urbain et de l'habitat sur la communication chez les [mésanges](https://fr.wikipedia.org/wiki/mésanges).
Alors que je me suis reconverti dans le conseil et l'assistance en matière de R, j'ai décidé de me concentrer sur la gestion de l'information [Yani](/author/yanina-bellini-saibene) ici à rOpenSci avec notre incroyable communauté, je travaille encore aujourd'hui principalement pour d'autres ornithologues ou des organisations à but non lucratif de conservation des oiseaux.

Cela signifie que les [Société des ornithologues du Canada](https://www.sco-soc.ca/) est toujours mon organisation d'origine et je suis toujours enthousiaste à l'idée d'assister à des réunions et de renouer avec mes collègues.
Mais conférence ornithologique ou pas, j'essaie toujours d'apporter un peu de R, de Science Ouverte et de rOpenSci à la réunion.

Dans le passé, j'ai organisé des symposiums sur des sujets tels que "[R pour ornithologue : Points de vue des utilisateuRs et programmeuRs](https://github.com/steffilazerte/Presentations/tree/master/2019-08%20SOC%20-%20R%20Symposium#readme)" ou " [Comment les ornithologues peuvent-ils trouver des packages R ?](https://github.com/steffilazerte/Presentations/tree/master/2021-08%20AOS%7CSOC%20-%20R%20Symposium#readme)" et ont participé à l'organisation d'ateliers sur les packages R pour l'ornithologie (comme [bbsBayes2](https://github.com/bbsBayes/bbsBayes2)).

Cette année, j'ai eu envie d'aller un peu plus loin que R et j'ai décidé de parler de " [Conseils pratiques pour la science ouverte en ornithologie](https://github.com/steffilazerte/Presentations/tree/master/2025-08-Open-Science#readme)".
Mon objectif était d'encourager les ornithologues (ou d'autres scientifiques) à essayer la science ouverte.
Pour se rendre compte qu'il n'est pas nécessaire d'avoir une formation en informatique, ni d'avoir beaucoup d'argent !
Et comme l'ornithologie compte de nombreux scientifiques qui travaillent déjà avec des données ouvertes, des méthodes ouvertes et la science ouverte, je voulais partager quelques idées sur la manière dont ils pourraient encourager un plus grand nombre de leurs collègues à se joindre à eux.

Pour la communauté rOpenSci, il s'agit d'un véritable "retour aux sources".
Les conversations que nous avons sont plus souvent sur la façon dont vous pouvez être *mieux* à la science ouverte ?
Comment pouvez-vous faire en sorte que cette étude *complètement* reproductible ?
Comment pouvons-nous *améliorer* la qualité du code ouvert [^1] ?

[^1]: Trisovic A, Lau MK, Pasquier T, et al.
[A large-scale study on research code quality and execution](https://www.nature.com/articles/s41597-022-01143-6).
Sci Data 9, 60 (2022).
<https://doi.org/10.1038/s41597-022-01143-6>

{{< figure src = "alot.png" width = "400" alt = "Diapositive représentant une grue à couronne grise à l'air surpris, avec une grande couronne de plumes autour de la tête. Le texte est le suivant : 'Whoa ! C'est beaucoup ! Pourquoi faire de la science ouverte ?'" class = "pull-right" caption = "Diapositive reconnaissant que la science ouverte peut être un défi<br>([Grey-crowned crane](https://upload.wikimedia.org/wikipedia/commons/1/1c/Grey_Crowned_Crane_2.jpg) - Kuribo, CC BY-SA 2.0)">}}

Mais je pense que nous oublions parfois qu'en plus du temps, des compétences et parfois du financement, **la pratique de la science ouverte demande beaucoup de courage**[^2].

[^2]: **Insécurité:**
Gomes DGE, Pottier P, Crystal-Ornelas R, et al.
[Why don't we share data and code? Perceived barriers and benefits to public archiving practices](https://pmc.ncbi.nlm.nih.gov/articles/PMC9682438/).
Proc Biol Sci 289(1987):20221113 (2022).
<https://doi.org/10.1098/rspb.2022.1113>

Pour ceux qui débutent (comme les étudiants) ou ceux qui n'ont pas de soutien en matière de science ouverte (comme les chercheurs des petites institutions), la pratique de la science ouverte peut sembler écrasante et extrêmement intimidante.
Il est effrayant de penser aux critiques si l'on ne "fait pas de la science ouverte correctement", ou aux conséquences si l'on commet une erreur.

J'ai voulu mettre l'accent sur les petits pas, pour qu'il soit clair que c'est l'effort qui est important, et non la perfection !

En plus de quelques conseils pratiques, j'ai donc donné quatre conseils généraux :

1. **[Ne pas essayer de tout faire](https://steffilazerte.ca/Presentations/2025-08-Open-Science/index_fr.html#/conseil-n-1-nessayez-pas-de-tout-faire)**
  
  - Soyez gentil avec vous-même
  - Vous avez le droit d'être petit et de grandir !

2. **[Faites une nouvelle chose](https://steffilazerte.ca/Presentations/2025-08-Open-Science/index_fr.html#/conseil-n-2-faites-une-chose-nouvelle)**
  
  - Pour chaque projet, essayez d'élargir vos compétences, d'apprendre une nouvelle chose.

3. **[Il n'y a pas de mal à être nerveux](https://steffilazerte.ca/Presentations/2025-08-Open-Science/index_fr.html#/conseil-n-3-cest-normal-d%C3%AAtre-nerveuxse)**
  
  - Les erreurs arrivent, mais n'oubliez pas qu'en pratiquant la science ouverte, vous êtes déjà génial !

4. **[Travailler avec d'autres](https://steffilazerte.ca/Presentations/2025-08-Open-Science/index_fr.html#/conseil-n-4-travaillez-avec-les-autres)**
  
  - Trouver sa communauté

Je pense que ce qui m'a le plus plu dans cette conférence, c'est le nombre d'étudiants qui m'ont abordé par la suite, enthousiastes (et nerveux) à l'idée de commencer à partager leur code en ligne.
Ils m'ont posé de nombreuses questions, qu'il s'agisse de questions pratiques sur l'utilisation de GitHub ou de questions générales sur la qualité de leur code pour qu'il soit partagé.
Ma réponse à cette dernière question a été : "Si vous l'avez utilisé, partagez-le.
(Mais annotez-le comme un fou)"

Quels sont vos conseils préférés pour encourager la science ouverte ?

### Remerciements

Remerciements à [Alex Koiter](/author/alex-koiter) pour les idées et le brainstorming pour mon exposé, ainsi que pour son exposé génial (et beaucoup plus long), [Open and Reproducible Soil Science](https://alexkoiter.ca/presentations/UM_Soil_Science_2023/Open_reproducible_science.html).

