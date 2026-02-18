---
title: "Map of linguae francae of Dagestan, Russia"
reporter: "George Moroz"
date: 2022-06-02
image: map-of-linguae-francae-of-dagestan-russia.jpeg
resource: "[lingtypology](https://docs.ropensci.org/lingtypology)"
original_url: "https://discuss.ropensci.org/t/map-of-linguae-francae-of-dagestan-russia/2957"
language: English
---

#### rOpenSci package or resource used

* [`lingtypology`](https://ropensci.github.io/lingtypology/)

#### What did I do? 
There is a long tradition in linguistics of drawing polygons to delimit the areas in which languages are spoken. However, in typological studies in linguistics, a lot of languages need to be represented on maps, so the “one dot per language” approach is used. In multilingual areas with high language density like Dagestan (see the [Multidagestan project](https://multidagestan.com/about) (Dobrushina et al. 2017) that shows this), it is common for people to know more than one language, including linguae francae, i.e., languages used by speakers of different languages to communicate with one another. Nowadays, for all Post-Soviet states, the common lingua franca is Russian. However, historically, there were three linguae francae in Dagestan. Nina Dobrushina and I decided to create a map to show this old distribution of linguae francae. In order to do so, I used the [dataset of East Caucasian villages](https://github.com/sverhees/master_villages) (Moroz, Verhees 2020), which contains information about modern settlements of Dagestan with language attribution. Afterwards, I used the `density.estimation` argument from `lingtypology`, hid dots used in the extrapolation and overlayed with another map based on the “one dot per language” approach.

#### URL or code snippet for your use case
I wrote a [gist](https://gist.github.com/agricolamz/97b83d99ec72fc74a31b9f92859b0b8e), which contains the code and data.

#### Image
![v3|592x499](map-of-linguae-francae-of-dagestan-russia.jpeg)

#### Sector
Linguistics

#### Field(s) of application 
Geospatial


