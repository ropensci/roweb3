---
slug: "examples"
title: Blog Post Technical Examples
author:
  - Steffi LaZerte
  - Maëlle Salmon
  - Yanina Bellini Saibene
date: 2026-10-21
tags:
  - howto
description: "A Blog post demonstrating how implement technical content in blog psots"
params:
  doi: "10.59350/f7tdn-np971"
---

This isn't a real blog post 😉.
This is a post demonstrating technical details of how to include things like images, math, citations, and block quotes.
While these details *are* documented in the ["Adding Content" chapter of our blog guide](https://blogguide.ropensci.org/authortechnical.html#usetemplates), it is hard to demonstrate[^1] what the outputs look like because the blog guide is created on a different system than the rOpenSci Blog.

So here we demonstrate how to add various types of content to your blog post, and, importantly, how it will look on the rOpenSci Blog.

[^1]: It's also hard for us to notice problems if, for example, a Hugo update breaks something.

## Images

```
{{< figure src = "image-name.png" alt = "informative description" class = "center" >}}
```

```
{{< imgtxt src = "image-name.png" alt = "informative description">}} 
Text to right 
{{< /imgtxt >}}
```

`width`

```
{{< figure src = "image-name.png" width = "400" alt = "informative description">}}
```

`link`

```
{{< figure src = "image-name.png" alt = "informative description" link = "http://hyperlink">}}
```

### Galleries

```
{{< gallery >}}
{{< figureforgallery src="search2.png" alt="Screenshot of r-universe simple search results." >}}
{{< figureforgallery src="search3.png" alt="Screenshot of r-universe advanced search query." >}}
{{< figureforgallery src="search4.png" alt="Screenshot of r-universe advanced search results." >}}
{{< /gallery >}}
```

## Citations and footnotes

```
Citation of the primary literature[^1].
Citation of an R package[^2].
Citation of a website[^3].

[^1]: Sciaini, M., Fritsch, M., Scherer, C., & Simpkins, C. E. (2018). NLMR and landscapetools: An integrated environment for simulating and modifying neutral landscape models in R. Methods in Ecology and Evolution, 9(11), 2240-2248. <https://doi.org/10.1111/2041-210X.13076>
[^2]: Elin Waring, Michael Quinn, Amelia McNamara, Eduardo Arino de la Rubia, Hao Zhu and Shannon Ellis (2019). skimr: Compact and Flexible Summaries of Data. R package version 2.0.2. https://CRAN.R-project.org/package=skimr
[^3]: Hugo static site generator. https://gohugo.io/

```

## Math

## Block quotes

```
> blabla
blabla
blabla
{.blockquote .text-right}
```
```
> blabla
blabla
blabla
{.blockquote .text-center}
```

```
> blabla
blabla
blabla
{.blockquote .text-left}
```

If you want to center the block quote add the align variable:

```
{{< quote footer="Author Name" cite="[good book](url)" align="center">}}
Blablablabla  
{{< /quote >}}
```

With Attribution

```
{{< quote footer="Author Name">}}
Blablablabla  
{{< /quote >}}
```

With Attribution and a source

```
{{< quote footer="Author Name" cite="[good book](url)">}}
Blablablabla  
{{< /quote >}}
```

## Tables

```
Header   | Other Header | Another Header
---------|----------------|-------------------
Value 11 | Value 12       | Value 13
Value 21 | Value 22       | Value 23
Value 31 | Value 32       | Value 33
{.table .table-responsive .table-striped}
```
