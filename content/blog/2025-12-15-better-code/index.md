---
title: Better Code, Without Any Effort, Without Even AI
author: 
- Maëlle Salmon
editor:
date: '2025-12-15'
slug: better-code
description: Useful local, free, deterministic tools to improve your code
output: hugodown::md_document
tags:
  - best practice
  - tech notes
params:
  doi: "10.59350/98899-51c03"
rmd_hash: f9b3d485c2880b07

---

We are experiencing a programming revolution, with the democratization of artificial intelligence... But also with the creation and improvement of more old-school tools to improve your code: local, free, deterministic. In this post, we will introduce you to Air, a tool for formatting R code automatically and almost instantly; lintr, an R package that detects more and more reasons to improve your code; flir, an R package that not only detects some of lintr's checks faster, but also repairs them automatically; jarl, a CLI that is equivalent to flir. With these four wonderful tools, you can effortlessly improve your code, your colleagues' code... and even code proposed by AI. With a bit more effort, you might even internalize best practice and write better code from the get go in the future!

<div class="highlight">

</div>

## An example script

Let's start with a script containing a few problems... Can you spot them?

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>lleno</span> <span class='o'>&lt;-</span><span class='o'>!</span><span class='nf'><a href='https://rdrr.io/r/base/any.html'>any</a></span><span class='o'>(</span><span class='nf'><a href='https://rdrr.io/r/base/NA.html'>is.na</a></span><span class='o'>(</span><span class='nv'>x</span><span class='o'>)</span><span class='o'>)</span></span>
<span><span class='nv'>ok</span><span class='o'>&lt;-</span> <span class='o'>!</span><span class='o'>(</span><span class='nv'>x</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span> <span class='o'>==</span> <span class='nv'>y</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span><span class='o'>)</span></span>
<span><span class='kr'>if</span> <span class='o'>(</span><span class='nv'>ok</span><span class='o'>)</span> <span class='nv'>z</span><span class='o'>&lt;-</span> <span class='nv'>x</span> <span class='o'>+</span>  <span class='m'>1</span></span></code></pre>

</div>

### Format with Air :computer:\$

In the terminal:

``` sh
air format test.R
```

<div class="highlight">

</div>

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>lleno</span> <span class='o'>&lt;-</span> <span class='o'>!</span><span class='nf'><a href='https://rdrr.io/r/base/any.html'>any</a></span><span class='o'>(</span><span class='nf'><a href='https://rdrr.io/r/base/NA.html'>is.na</a></span><span class='o'>(</span><span class='nv'>x</span><span class='o'>)</span><span class='o'>)</span></span>
<span><span class='nv'>ok</span> <span class='o'>&lt;-</span> <span class='o'>!</span><span class='o'>(</span><span class='nv'>x</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span> <span class='o'>==</span> <span class='nv'>y</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span><span class='o'>)</span></span>
<span><span class='kr'>if</span> <span class='o'>(</span><span class='nv'>ok</span><span class='o'>)</span> <span class='o'>&#123;</span></span>
<span>  <span class='nv'>z</span> <span class='o'>&lt;-</span> <span class='nv'>x</span> <span class='o'>+</span> <span class='m'>1</span></span>
<span><span class='o'>&#125;</span></span></code></pre>

</div>

Now, the spacing in the code is regular! The `if` condition is furthermore formatted on three lines instead of only one. Overall, the code is easier to read because it now follows popular conventions.

### Improve with the {flir} :package:

In the R console:

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'>flir</span><span class='nf'>::</span><span class='nf'><a href='https://flir.etiennebacher.com/reference/fix.html'>fix</a></span><span class='o'>(</span><span class='s'>"test.R"</span><span class='o'>)</span></span>
<span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> Going to check 1 file.</span></span>
<span></span><span><span class='c'>#&gt; <span style='color: #00BB00;'>✔</span> Fixed 1 lint in 1 file.</span></span>
<span></span></code></pre>

</div>

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>lleno</span> <span class='o'>&lt;-</span> <span class='o'>!</span><span class='nf'><a href='https://rdrr.io/r/base/NA.html'>anyNA</a></span><span class='o'>(</span><span class='nv'>x</span><span class='o'>)</span></span>
<span><span class='nv'>ok</span> <span class='o'>&lt;-</span> <span class='o'>!</span><span class='o'>(</span><span class='nv'>x</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span> <span class='o'>==</span> <span class='nv'>y</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span><span class='o'>)</span></span>
<span><span class='kr'>if</span> <span class='o'>(</span><span class='nv'>ok</span><span class='o'>)</span> <span class='o'>&#123;</span></span>
<span>  <span class='nv'>z</span> <span class='o'>&lt;-</span> <span class='nv'>x</span> <span class='o'>+</span> <span class='m'>1</span></span>
<span><span class='o'>&#125;</span></span></code></pre>

</div>

`!any(is.na(x))` became `!anyNA(x)` which is more efficient. Such code patterns are what flir can identify.

### Improve with the new jarl CLI! :computer:\$

In the terminal:

``` sh
jarl check test2.R --fix
```

<div class="highlight">

</div>

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>lleno</span> <span class='o'>&lt;-</span> <span class='o'>!</span><span class='nf'><a href='https://rdrr.io/r/base/NA.html'>anyNA</a></span><span class='o'>(</span><span class='nv'>x</span><span class='o'>)</span></span>
<span><span class='nv'>ok</span> <span class='o'>&lt;-</span> <span class='o'>!</span><span class='o'>(</span><span class='nv'>x</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span> <span class='o'>==</span> <span class='nv'>y</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span><span class='o'>)</span></span>
<span><span class='kr'>if</span> <span class='o'>(</span><span class='nv'>ok</span><span class='o'>)</span> <span class='o'>&#123;</span></span>
<span>  <span class='nv'>z</span> <span class='o'>&lt;-</span> <span class='nv'>x</span> <span class='o'>+</span> <span class='m'>1</span></span>
<span><span class='o'>&#125;</span></span></code></pre>

</div>

The jarl CLI produces the same results as the flir R package, but faster. Furthermore, because it is a simple binary that does not need R to run, it's quicker to install on continuous integration.

### Learn what more to improve with {lintr} :package:

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'>lintr</span><span class='nf'>::</span><span class='nf'><a href='https://lintr.r-lib.org/reference/lint.html'>lint</a></span><span class='o'>(</span><span class='s'>"test.R"</span>, linters <span class='o'>=</span> <span class='nf'>lintr</span><span class='nf'>::</span><span class='nf'><a href='https://lintr.r-lib.org/reference/all_linters.html'>all_linters</a></span><span class='o'>(</span><span class='o'>)</span><span class='o'>)</span></span>
<span><span class='c'>#&gt; <a href='file:///home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R'><span style='color: #0000BB; font-weight: bold;'>/home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R:2:7</span></a><span style='font-weight: bold;'>: </span><span style='color: #BB00BB;'>warning: </span>[comparison_negation_linter] <span style='font-weight: bold;'>Use x != y, not !(x == y).</span></span></span>
<span><span class='c'>#&gt; ok &lt;- !(x[1] == y[1])</span></span>
<span><span class='c'>#&gt;       ^~~~~~~~~~~~~~~</span></span>
<span><span class='c'>#&gt; <a href='file:///home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R'><span style='color: #0000BB; font-weight: bold;'>/home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R:2:12</span></a><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[implicit_integer_linter] <span style='font-weight: bold;'>Use 1L or 1.0 to avoid implicit integers.</span></span></span>
<span><span class='c'>#&gt; ok &lt;- !(x[1] == y[1])</span></span>
<span><span class='c'>#&gt;           ~^</span></span>
<span><span class='c'>#&gt; <a href='file:///home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R'><span style='color: #0000BB; font-weight: bold;'>/home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R:2:20</span></a><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[implicit_integer_linter] <span style='font-weight: bold;'>Use 1L or 1.0 to avoid implicit integers.</span></span></span>
<span><span class='c'>#&gt; ok &lt;- !(x[1] == y[1])</span></span>
<span><span class='c'>#&gt;                   ~^</span></span>
<span><span class='c'>#&gt; <a href='file:///home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R'><span style='color: #0000BB; font-weight: bold;'>/home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R:4:13</span></a><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[implicit_integer_linter] <span style='font-weight: bold;'>Use 1L or 1.0 to avoid implicit integers.</span></span></span>
<span><span class='c'>#&gt;   z &lt;- x + 1</span></span>
<span><span class='c'>#&gt;            ~^</span></span>
<span></span></code></pre>

</div>

Then we modify the script by hand: `(x[1L] != y[1L])` with `!=` and with explicit integers. The rule on explicit integers could be ignored as it's not one everyone agrees on. When using lintr, one can configurate it to pick some rules. One can also add exception comments, which is something Air, flir, jarl all support too.

``` r
lleno <- !anyNA(x)
ok <- (x[1L] != y[1L])
if (ok) {
  z <- x + 1L
}
```

<div class="highlight">

</div>

Since lintr has been around for a longer time, it has an impressive collection of rules, the "linters". Even reading their documentation can teach you a lot, especially as the [list](https://lintr.r-lib.org/reference/index.html#individual-linters) grows over time!

## Tooling

The tools we used are:

-   :computer:\$ [Air](https://posit-dev.github.io/air/): CLI to format code, by Lionel Henry and Davis Vaughan.
-   :package: [{flir}](https://flir.etiennebacher.com/): R package to fix code patterns, by Etienne Bacher.
-   :computer:\$ [jarl](https://jarl.etiennebacher.com/): CLI to fix code patterns, by Etienne Bacher.
-   :package: [{lintr}](https://lintr.r-lib.org/): R package to get informed of even more code patterns, by [Michael Chirico and many others](https://lintr.r-lib.org/authors.html).

## How to use those tools

You could use those tools locally on your machine from time to time. For instance, when inheriting an older project, I will first renovate it using them.

You could also use those tools on continuous integration. For instance, a workflow might suggest formatting changes in Pull Requests. The use of suggestions rather than a direct commit means the contributor get a chance to learn about the improvements.

Whether to ask flir and jarl to do changes as opposed to *alerting* you about them depends on the context. You might learn more by doing the changes yourself. In any case, having a proper look at modifications before committing them is crucial!

## What about artificial intelligence?

Sure, artificial intelligence can be handy but...

-   The best LLMs are not local;

-   They cost;

-   They are not deterministic so might miss a rule whereas the tools in this post don't;

-   Their usage entail some ideological and ethical problems that we won't list here.

Furthermore, for such alerts and fixes, you don't need to use an LLM... Air, flir, jarl, lintr already do an excellent job!

## Conclusion

You can improve your code without effort, without even AI, using:

-   Air

-   {flir} or jarl

-   {lintr}

The usage of those tools is best complemented by review by humans.

