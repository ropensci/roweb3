---
title: "Package for downloading shapefiles using piggyback"
reporter: "Isabella Velásquez"
date: 2020-05-11
image: package-for-downloading-shapefiles-using-piggyback.png
resource: "[piggyback](https://docs.ropensci.org/piggyback)"
original_url: "https://discuss.ropensci.org/t/package-for-downloading-shapefiles-using-piggyback/2073"
language: [English]
---

#### rOpenSci package or resource used*
piggyback

#### What did you do? 
I created a package called {leaidr} to use facilitate the download and use of U.S. school district shapefiles. The shapefile is over GitHub's allowed limit of 100MB. Originally, I tried to use GitHub LFS as a way to upload the file. Unfortunately, GitHub LFS is not reproducible in that when others download the package, they wouldn't be able to access the file.

{piggyback} allowed for easy upload of the shapefile as an R Data file to GitHub. In one of the {leaidr} functions, there is a call to download the shapefile into the user's specified file path. From there, the user can prep and plot the shapefile according to their needs.

#### URL or code snippet for your use case*
https://github.com/ivelasq/leaidr
https://ivelasq.rbind.io/blog/leaid-shapefiles/

#### Sector
non-profit

#### Field(s) of application 
K-12, education, policy


