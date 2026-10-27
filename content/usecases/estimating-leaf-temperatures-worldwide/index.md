---
title: "Estimating leaf temperatures worldwide"
reporter: "Paul Melloy"
date: 2022-04-21
image: estimating-leaf-temperatures-worldwide.png
resource: "[nasapower](https://docs.ropensci.org/nasapower)"
original_url: "https://discuss.ropensci.org/t/estimating-leaf-temperatures-worldwide/2908"
language: [English]
---

#### rOpenSci package or resource used*
[nasapower](https://ropensci.github.io/nasapower/articles/nasapower.html). 

#### What did you do? 
As a plant pathologist, I am interested in improving the characterisation of environmental influences on pathogen infection. This piqued my interest if there are any R packages that estimate leaf temperatures and/or humidity from ambient weather variables. A cursory search led me to the [tealeaves](https://doi.org/10.1093/aobpla/plz054). 

However, the [tealeaves](https://doi.org/10.1093/aobpla/plz054) package requires additional parameters which are not logged by common weather stations, such as _short wave solar radiation_ and _albedo_. However, I was aware that [nasapower](https://ropensci.github.io/nasapower/articles/nasapower.html) provides all the weather inputs required on a 0.5 degree grid from satellite remote sensing. 

By using both these packages together I could obtain estimates of leaf temperatures for anywhere in the world.

#### URL for the use case
[Open Plant Pathology: Estimating leaf temperatures for spatial epidemiology](https://openplantpathology.netlify.app/posts/2022-04-01-powerful-tea-using-nasapower-and-tealeaves-to-obtain-leaf-temperatures/)


#### Image
![image|690x424](estimating-leaf-temperatures-worldwide.png)



#### Sector
academic


#### Field(s) of application 
ecology, phytology, epidemiology, plant pathology



