---
slug: "examples"
title: So You Want to Write a Blog Post?
author:
  - Steffi LaZerte
  - Maëlle Salmon
  - Yanina Bellini Saibene
date: 2026-10-21
math: true
tags:
  - howto
description: "An invitation to write blog posts and examples showing how implement technical content."
params:
  doi: "10.59350/f7tdn-np971"
---

You’re probably aware that rOpenSci has a blog 😄.
You may even be aware that many blog posts are created by community members (see our list of [Authors](/author), or the [Community tag](/tags/community/)).

But did you know that anyone can write a blog post?
To facilitate this, we have a full [Blog Guide](https://blogguide.ropensci.org), which provides guidance on content, as well as technical things like how to add figures, or footnotes to a post.

If you want to contribute a blog post, review the [Blog Guide’s Content Guidelines](https://blogguide.ropensci.org/authorcontent.html) to ensure what you want to write about suits the rOpenSci blog, then [reach out](https://blogguide.ropensci.org/)!

The rest of this post is a demonstration of the technical details of how to include things like images, math, citations, and block quotes.
While these details *are* documented in the [“Adding Content” chapter of our blog guide](https://blogguide.ropensci.org/authortechnical.html#usetemplates), it is hard to demonstrate what the outputs look like because the Blog Guide is deployed with Quarto while the rOpenSci Blog uses Hugo.
It’s also hard for us to notice problems if a Hugo update breaks something.

Therefore, here we demonstrate how to add various types of content to your blog post, and, importantly, how it will look on the rOpenSci Blog.

## Technical content

### Images

    {{< figure src = "image-name.png" alt = "informative description" class = "center" >}}

    {{< imgtxt src = "image-name.png" alt = "informative description">}} 
    Text to right 
    {{< /imgtxt >}}

`width`

    {{< figure src = "image-name.png" width = "400" alt = "informative description">}}

`link`

    {{< figure src = "image-name.png" alt = "informative description" link = "http://hyperlink">}}

### Image galleries

    {{< gallery >}}
    {{< figureforgallery src="search2.png" alt="Screenshot of r-universe simple search results." >}}
    {{< figureforgallery src="search3.png" alt="Screenshot of r-universe advanced search query." >}}
    {{< figureforgallery src="search4.png" alt="Screenshot of r-universe advanced search results." >}}
    {{< /gallery >}}

### Citations and footnotes

    Citation of the primary literature[^1].
    Citation of an R package[^2].
    Citation of a website[^3].

    [^1]: Sciaini, M., Fritsch, M., Scherer, C., & Simpkins, C. E. (2018). NLMR and landscapetools: An integrated environment for simulating and modifying neutral landscape models in R. Methods in Ecology and Evolution, 9(11), 2240-2248. <https://doi.org/10.1111/2041-210X.13076>
    [^2]: Elin Waring, Michael Quinn, Amelia McNamara, Eduardo Arino de la Rubia, Hao Zhu and Shannon Ellis (2019). skimr: Compact and Flexible Summaries of Data. R package version 2.0.2. https://CRAN.R-project.org/package=skimr
    [^3]: Hugo static site generator. https://gohugo.io/

### Math

Math is a bit complex to add and requires using the [katex](https://docs.ropensci.org/katex/), which therefore means that you must write your blog post as an Rmd or qmd (not md) and then compile it to md, and you will also need to add `math: true` to your YAML.

See the [Blog Guide’s math section](https://blogguide.ropensci.org/authortechnical.html#math) for the full details.

To include inline math: `` `r katex::katex_html("y_1,\\ldots,y_T", displayMode = FALSE)` `` Which displays as <span class="katex"><span class="katex-mathml"><math xmlns="http://www.w3.org/1998/Math/MathML"><semantics><mrow><msub><mi>y</mi><mn>1</mn></msub><mo separator="true">,</mo><mo>…</mo><mo separator="true">,</mo><msub><mi>y</mi><mi>T</mi></msub></mrow><annotation encoding="application/x-tex">y_1,\ldots,y_T</annotation></semantics></math></span><span class="katex-html" aria-hidden="true"><span class="base"><span class="strut" style="height:0.625em;vertical-align:-0.1944em;"></span><span class="mord"><span class="mord mathnormal" style="margin-right:0.03588em;">y</span><span class="msupsub"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height:0.3011em;"><span style="top:-2.55em;margin-left:-0.0359em;margin-right:0.05em;"><span class="pstrut" style="height:2.7em;"></span><span class="sizing reset-size6 size3 mtight"><span class="mord mtight">1</span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height:0.15em;"><span></span></span></span></span></span></span><span class="mpunct">,</span><span class="mspace" style="margin-right:0.1667em;"></span><span class="minner">…</span><span class="mspace" style="margin-right:0.1667em;"></span><span class="mpunct">,</span><span class="mspace" style="margin-right:0.1667em;"></span><span class="mord"><span class="mord mathnormal" style="margin-right:0.03588em;">y</span><span class="msupsub"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height:0.3283em;"><span style="top:-2.55em;margin-left:-0.0359em;margin-right:0.05em;"><span class="pstrut" style="height:2.7em;"></span><span class="sizing reset-size6 size3 mtight"><span class="mord mathnormal mtight" style="margin-right:0.13889em;">T</span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height:0.15em;"><span></span></span></span></span></span></span></span></span></span>.

To include a block of math.

``` r
string <- "
\\begin{aligned} 
  x_t & \\sim N(-0.5 y_{t-1} + x_{t-1} + z_{t-1}, 0.3^2)\\\\ 
  y_t & \\sim N(0.7x_{t-1}, 0.3^2)\\\\ 
\\end{aligned}"

katex::katex_html(string, include_css = TRUE)
```

<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/katex@0.16.9/dist/katex.min.css" data-external="1">
<span class="katex-display"><span class="katex"><span class="katex-mathml"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block"><semantics><mtable rowspacing="0.25em" columnalign="right left" columnspacing="0em"><mtr><mtd><mstyle scriptlevel="0" displaystyle="true"><msub><mi>x</mi><mi>t</mi></msub></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="true"><mrow><mrow></mrow><mo>∼</mo><mi>N</mi><mo stretchy="false">(</mo><mo>−</mo><mn>0.5</mn><msub><mi>y</mi><mrow><mi>t</mi><mo>−</mo><mn>1</mn></mrow></msub><mo>+</mo><msub><mi>x</mi><mrow><mi>t</mi><mo>−</mo><mn>1</mn></mrow></msub><mo>+</mo><msub><mi>z</mi><mrow><mi>t</mi><mo>−</mo><mn>1</mn></mrow></msub><mo separator="true">,</mo><mn>0.</mn><msup><mn>3</mn><mn>2</mn></msup><mo stretchy="false">)</mo></mrow></mstyle></mtd></mtr><mtr><mtd><mstyle scriptlevel="0" displaystyle="true"><msub><mi>y</mi><mi>t</mi></msub></mstyle></mtd><mtd><mstyle scriptlevel="0" displaystyle="true"><mrow><mrow></mrow><mo>∼</mo><mi>N</mi><mo stretchy="false">(</mo><mn>0.7</mn><msub><mi>x</mi><mrow><mi>t</mi><mo>−</mo><mn>1</mn></mrow></msub><mo separator="true">,</mo><mn>0.</mn><msup><mn>3</mn><mn>2</mn></msup><mo stretchy="false">)</mo></mrow></mstyle></mtd></mtr></mtable><annotation encoding="application/x-tex">
\begin{aligned} 
  x_t &amp; \sim N(-0.5 y_{t-1} + x_{t-1} + z_{t-1}, 0.3^2)\\ 
  y_t &amp; \sim N(0.7x_{t-1}, 0.3^2)\\ 
\end{aligned}</annotation></semantics></math></span><span class="katex-html" aria-hidden="true"><span class="base"><span class="strut" style="height:3.0482em;vertical-align:-1.2741em;"></span><span class="mord"><span class="mtable"><span class="col-align-r"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height:1.7741em;"><span style="top:-3.91em;"><span class="pstrut" style="height:3em;"></span><span class="mord"><span class="mord"><span class="mord mathnormal">x</span><span class="msupsub"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height:0.2806em;"><span style="top:-2.55em;margin-left:0em;margin-right:0.05em;"><span class="pstrut" style="height:2.7em;"></span><span class="sizing reset-size6 size3 mtight"><span class="mord mathnormal mtight">t</span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height:0.15em;"><span></span></span></span></span></span></span></span></span><span style="top:-2.3859em;"><span class="pstrut" style="height:3em;"></span><span class="mord"><span class="mord"><span class="mord mathnormal" style="margin-right:0.03588em;">y</span><span class="msupsub"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height:0.2806em;"><span style="top:-2.55em;margin-left:-0.0359em;margin-right:0.05em;"><span class="pstrut" style="height:2.7em;"></span><span class="sizing reset-size6 size3 mtight"><span class="mord mathnormal mtight">t</span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height:0.15em;"><span></span></span></span></span></span></span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height:1.2741em;"><span></span></span></span></span></span><span class="col-align-l"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height:1.7741em;"><span style="top:-3.91em;"><span class="pstrut" style="height:3em;"></span><span class="mord"><span class="mord"></span><span class="mspace" style="margin-right:0.2778em;"></span><span class="mrel">∼</span><span class="mspace" style="margin-right:0.2778em;"></span><span class="mord mathnormal" style="margin-right:0.10903em;">N</span><span class="mopen">(</span><span class="mord">−</span><span class="mord">0.5</span><span class="mord"><span class="mord mathnormal" style="margin-right:0.03588em;">y</span><span class="msupsub"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height:0.3011em;"><span style="top:-2.55em;margin-left:-0.0359em;margin-right:0.05em;"><span class="pstrut" style="height:2.7em;"></span><span class="sizing reset-size6 size3 mtight"><span class="mord mtight"><span class="mord mathnormal mtight">t</span><span class="mbin mtight">−</span><span class="mord mtight">1</span></span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height:0.2083em;"><span></span></span></span></span></span></span><span class="mspace" style="margin-right:0.2222em;"></span><span class="mbin">+</span><span class="mspace" style="margin-right:0.2222em;"></span><span class="mord"><span class="mord mathnormal">x</span><span class="msupsub"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height:0.3011em;"><span style="top:-2.55em;margin-left:0em;margin-right:0.05em;"><span class="pstrut" style="height:2.7em;"></span><span class="sizing reset-size6 size3 mtight"><span class="mord mtight"><span class="mord mathnormal mtight">t</span><span class="mbin mtight">−</span><span class="mord mtight">1</span></span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height:0.2083em;"><span></span></span></span></span></span></span><span class="mspace" style="margin-right:0.2222em;"></span><span class="mbin">+</span><span class="mspace" style="margin-right:0.2222em;"></span><span class="mord"><span class="mord mathnormal" style="margin-right:0.04398em;">z</span><span class="msupsub"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height:0.3011em;"><span style="top:-2.55em;margin-left:-0.044em;margin-right:0.05em;"><span class="pstrut" style="height:2.7em;"></span><span class="sizing reset-size6 size3 mtight"><span class="mord mtight"><span class="mord mathnormal mtight">t</span><span class="mbin mtight">−</span><span class="mord mtight">1</span></span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height:0.2083em;"><span></span></span></span></span></span></span><span class="mpunct">,</span><span class="mspace" style="margin-right:0.1667em;"></span><span class="mord">0.</span><span class="mord"><span class="mord">3</span><span class="msupsub"><span class="vlist-t"><span class="vlist-r"><span class="vlist" style="height:0.8641em;"><span style="top:-3.113em;margin-right:0.05em;"><span class="pstrut" style="height:2.7em;"></span><span class="sizing reset-size6 size3 mtight"><span class="mord mtight">2</span></span></span></span></span></span></span></span><span class="mclose">)</span></span></span><span style="top:-2.3859em;"><span class="pstrut" style="height:3em;"></span><span class="mord"><span class="mord"></span><span class="mspace" style="margin-right:0.2778em;"></span><span class="mrel">∼</span><span class="mspace" style="margin-right:0.2778em;"></span><span class="mord mathnormal" style="margin-right:0.10903em;">N</span><span class="mopen">(</span><span class="mord">0.7</span><span class="mord"><span class="mord mathnormal">x</span><span class="msupsub"><span class="vlist-t vlist-t2"><span class="vlist-r"><span class="vlist" style="height:0.3011em;"><span style="top:-2.55em;margin-left:0em;margin-right:0.05em;"><span class="pstrut" style="height:2.7em;"></span><span class="sizing reset-size6 size3 mtight"><span class="mord mtight"><span class="mord mathnormal mtight">t</span><span class="mbin mtight">−</span><span class="mord mtight">1</span></span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height:0.2083em;"><span></span></span></span></span></span></span><span class="mpunct">,</span><span class="mspace" style="margin-right:0.1667em;"></span><span class="mord">0.</span><span class="mord"><span class="mord">3</span><span class="msupsub"><span class="vlist-t"><span class="vlist-r"><span class="vlist" style="height:0.8641em;"><span style="top:-3.113em;margin-right:0.05em;"><span class="pstrut" style="height:2.7em;"></span><span class="sizing reset-size6 size3 mtight"><span class="mord mtight">2</span></span></span></span></span></span></span></span><span class="mclose">)</span></span></span></span><span class="vlist-s">​</span></span><span class="vlist-r"><span class="vlist" style="height:1.2741em;"><span></span></span></span></span></span></span></span></span></span></span></span>

### Block quotes

<!-- panache-ignore-start -->

Right-aligned

    > blabla\
    > blabla
    > blabla
    {.blockquote .text-right}

> blabla\
> blabla blabla
> {.blockquote .text-right}

Center-aligned

    > blabla\
    > blabla
    > blabla
    {.blockquote .text-center}

> blabla\
> blabla
> blabla
> {.blockquote .text-center}

Left-aligned

    > blabla\
    > blabla
    > blabla
    {.blockquote .text-left}

> blabla\
> blabla
> blabla
> {.blockquote .text-left}

If you want to center the block quote add the align variable:

    {{</* quote align="center" */>}}
    blabla\
    blabla
    blabla 
    {{</* /quote */>}}

{{< quote align="center" >}}\
blabla\
blabla
blabla
{{< /quote >}}

Or left

    {{</* quote align="left" */>}}
    blabla\
    blabla
    blabla 
    {{</* /quote */>}}

{{< quote align="left" >}}\
blabla\
blabla
blabla
{{< /quote >}}

With Attribution

    {{</* quote footer="Author Name" */>}}
    blabla\
    blabla
    blabla 
    {{</* /quote */>}}

{{< quote footer="Author Name" >}}\
blabla\
blabla
blabla
{{< /quote >}}

With Attribution and a source

    {{</* quote footer="Author Name" cite="[good book](url)" */>}}
    blabla\
    blabla
    blabla  
    {{</* /quote */>}}

{{< quote footer="Author Name" cite="[good book](url)" >}}\
blabla\
blabla
blabla
{{< /quote >}}

<!-- panache-ignore-end -->

### Tables

    | Header   | Other Header | Another Header |
    | -------- | ------------ | -------------- |
    | Value 11 | Value 12     | Value 13       |
    | Value 21 | Value 22     | Value 23       |
    | Value 31 | Value 32     | Value 33       |
    {.table .table-responsive .table-striped}

| Header   | Other Header | Another Header |
|----------|--------------|----------------|
| Value 11 | Value 12     | Value 13       |
| Value 21 | Value 22     | Value 23       |
| Value 31 | Value 32     | Value 33       |

{.table .table-responsive .table-striped}

## Troubleshooting

Interestingly (or annoyingly), when your post is an Rmd file compiled to md, sometimes the quotes (`"`) in a short code are converted to curly quotes (“), which Hugo doesn’t understand in this context.

This can result in the following error, where XXX would be part of the contents of a short code argument (like `footer="Author Name"`).

    ERROR error building site: [additional details] got positional parameter 'XXX'. Cannot mix named and positional parameters

You can fix this problem by surrounding the short codes with `html` code fences:

    ```{=html}
    {{</* quote footer="Author Name" */>}}
    blabla\
    blabla
    blabla 
    {{</* /quote */>}}
    ```
