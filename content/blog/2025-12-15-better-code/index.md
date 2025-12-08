---
title: Better Code, Without Any Effort, Without Even AI
author: 
- Maëlle Salmon
editor:
- Etienne Bacher
date: '2025-12-15'
slug: better-code
description: Useful local, free, deterministic tools to improve your code
output: hugodown::md_document
tags:
  - best practice
  - tech notes
params:
  doi: "10.59350/98899-51c03"
rmd_hash: ed0fbe5c2e3ab302

---

We are experiencing a programming revolution, with the democratization of artificial intelligence... But also with the creation and improvement of more old-school tools to improve your code: local, free, deterministic. In this post, we will introduce you to Air, a tool for formatting R code automatically and almost instantly; lintr, an R package that detects more and more reasons to improve your code; jarl, a fast CLI tool to find and automatically fix lints; flir, an R package to efficiently rewrite patterns of code, either built-in ones or custom ones. With these four wonderful tools, you can effortlessly improve your code, your colleagues' code... and even code proposed by AI. With a bit more effort, you might even internalize best practice and write better code from the get go in the future!

<div class="highlight">

</div>

## An example script

Let's start with a script containing a few problems... Can you spot them?

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>lleno</span> <span class='o'>&lt;-</span><span class='o'>!</span><span class='nf'><a href='https://rdrr.io/r/base/any.html'>any</a></span><span class='o'>(</span><span class='nf'><a href='https://rdrr.io/r/base/NA.html'>is.na</a></span><span class='o'>(</span><span class='nv'>x</span><span class='o'>)</span><span class='o'>)</span></span>
<span><span class='nv'>ok</span><span class='o'>&lt;-</span> <span class='o'>!</span><span class='o'>(</span><span class='nv'>x</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span> <span class='o'>==</span> <span class='nv'>y</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span><span class='o'>)</span></span>
<span><span class='kr'>if</span> <span class='o'>(</span><span class='nv'>ok</span><span class='o'>)</span> <span class='nv'>z</span><span class='o'>&lt;-</span> <span class='nv'>x</span> <span class='o'>+</span>  <span class='m'>1</span></span>
<span><span class='kr'>if</span> <span class='o'>(</span><span class='nv'>z</span><span class='o'>&gt;</span><span class='m'>3</span><span class='o'>)</span> <span class='kr'><a href='https://rdrr.io/r/base/stop.html'>stop</a></span><span class='o'>(</span><span class='s'>"ouch"</span><span class='o'>)</span></span></code></pre>

</div>

### Learn what to improve with {lintr} :package:

A first instinct might be to run the lintr package on the script. The `lint()` function performs static analysis.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'>lintr</span><span class='nf'>::</span><span class='nf'><a href='https://lintr.r-lib.org/reference/lint.html'>lint</a></span><span class='o'>(</span><span class='s'>"test.R"</span>, linters <span class='o'>=</span> <span class='nf'>lintr</span><span class='nf'>::</span><span class='nf'><a href='https://lintr.r-lib.org/reference/all_linters.html'>all_linters</a></span><span class='o'>(</span><span class='o'>)</span><span class='o'>)</span></span>
<span><span class='c'>#&gt; <a href='file:///home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R'><span style='color: #0000BB; font-weight: bold;'>/home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R:1:7</span></a><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[infix_spaces_linter] <span style='font-weight: bold;'>Put spaces around all infix operators.</span></span></span>
<span><span class='c'>#&gt; lleno &lt;-!any(is.na(x))</span></span>
<span><span class='c'>#&gt;       ^~</span></span>
<span><span class='c'>#&gt; <a href='file:///home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R'><span style='color: #0000BB; font-weight: bold;'>/home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R:1:10</span></a><span style='font-weight: bold;'>: </span><span style='color: #BB00BB;'>warning: </span>[any_is_na_linter] <span style='font-weight: bold;'>anyNA(x) is better than any(is.na(x)).</span></span></span>
<span><span class='c'>#&gt; lleno &lt;-!any(is.na(x))</span></span>
<span><span class='c'>#&gt;          ^~~~~~~~~~~~~</span></span>
<span><span class='c'>#&gt; <a href='file:///home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R'><span style='color: #0000BB; font-weight: bold;'>/home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R:2:3</span></a><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[infix_spaces_linter] <span style='font-weight: bold;'>Put spaces around all infix operators.</span></span></span>
<span><span class='c'>#&gt; ok&lt;- !(x[1] == y[1])</span></span>
<span><span class='c'>#&gt;   ^~</span></span>
<span><span class='c'>#&gt; <a href='file:///home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R'><span style='color: #0000BB; font-weight: bold;'>/home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R:2:6</span></a><span style='font-weight: bold;'>: </span><span style='color: #BB00BB;'>warning: </span>[comparison_negation_linter] <span style='font-weight: bold;'>Use x != y, not !(x == y).</span></span></span>
<span><span class='c'>#&gt; ok&lt;- !(x[1] == y[1])</span></span>
<span><span class='c'>#&gt;      ^~~~~~~~~~~~~~~</span></span>
<span><span class='c'>#&gt; <a href='file:///home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R'><span style='color: #0000BB; font-weight: bold;'>/home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R:2:11</span></a><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[implicit_integer_linter] <span style='font-weight: bold;'>Use 1L or 1.0 to avoid implicit integers.</span></span></span>
<span><span class='c'>#&gt; ok&lt;- !(x[1] == y[1])</span></span>
<span><span class='c'>#&gt;          ~^</span></span>
<span><span class='c'>#&gt; <a href='file:///home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R'><span style='color: #0000BB; font-weight: bold;'>/home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R:2:19</span></a><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[implicit_integer_linter] <span style='font-weight: bold;'>Use 1L or 1.0 to avoid implicit integers.</span></span></span>
<span><span class='c'>#&gt; ok&lt;- !(x[1] == y[1])</span></span>
<span><span class='c'>#&gt;                  ~^</span></span>
<span><span class='c'>#&gt; <a href='file:///home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R'><span style='color: #0000BB; font-weight: bold;'>/home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R:3:10</span></a><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[infix_spaces_linter] <span style='font-weight: bold;'>Put spaces around all infix operators.</span></span></span>
<span><span class='c'>#&gt; if (ok) z&lt;- x +  1</span></span>
<span><span class='c'>#&gt;          ^~</span></span>
<span><span class='c'>#&gt; <a href='file:///home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R'><span style='color: #0000BB; font-weight: bold;'>/home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R:3:19</span></a><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[implicit_integer_linter] <span style='font-weight: bold;'>Use 1L or 1.0 to avoid implicit integers.</span></span></span>
<span><span class='c'>#&gt; if (ok) z&lt;- x +  1</span></span>
<span><span class='c'>#&gt;                  ~^</span></span>
<span><span class='c'>#&gt; <a href='file:///home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R'><span style='color: #0000BB; font-weight: bold;'>/home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R:4:6</span></a><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[infix_spaces_linter] <span style='font-weight: bold;'>Put spaces around all infix operators.</span></span></span>
<span><span class='c'>#&gt; if (z&gt;3) stop("ouch")</span></span>
<span><span class='c'>#&gt;      ^</span></span>
<span><span class='c'>#&gt; <a href='file:///home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R'><span style='color: #0000BB; font-weight: bold;'>/home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R:4:8</span></a><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[implicit_integer_linter] <span style='font-weight: bold;'>Use 3L or 3.0 to avoid implicit integers.</span></span></span>
<span><span class='c'>#&gt; if (z&gt;3) stop("ouch")</span></span>
<span><span class='c'>#&gt;       ~^</span></span>
<span><span class='c'>#&gt; <a href='file:///home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R'><span style='color: #0000BB; font-weight: bold;'>/home/maelle/Documents/ropensci/WEBSITE/roweb3/content/blog/2025-12-15-better-code/test.R:4:10</span></a><span style='font-weight: bold;'>: </span><span style='color: #BB00BB;'>warning: </span>[condition_call_linter] <span style='font-weight: bold;'>Use stop(., call. = FALSE) not to display the call in an error message.</span></span></span>
<span><span class='c'>#&gt; if (z&gt;3) stop("ouch")</span></span>
<span><span class='c'>#&gt;          ^~~~~~~~~~~~</span></span>
<span></span></code></pre>

</div>

We therefore get alerts about

-   styling: space around infix operators for instance; implicit integer.
-   performance: `anyNA(x)` is better than `any(is.na(x))`.

Since lintr has been around for a long time, it has an impressive collection of rules, the "linters". Even reading their documentation can teach you a lot, especially as the [list](https://lintr.r-lib.org/reference/index.html#individual-linters) grows over time!

Now, based on these alerts, how could we improve the code?

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
<span><span class='o'>&#125;</span></span>
<span><span class='kr'>if</span> <span class='o'>(</span><span class='nv'>z</span> <span class='o'>&gt;</span> <span class='m'>3</span><span class='o'>)</span> <span class='o'>&#123;</span></span>
<span>  <span class='kr'><a href='https://rdrr.io/r/base/stop.html'>stop</a></span><span class='o'>(</span><span class='s'>"ouch"</span><span class='o'>)</span></span>
<span><span class='o'>&#125;</span></span></code></pre>

</div>

Now, the spacing in the code is regular! The `if` condition is furthermore formatted on three lines instead of only one. Overall, the code is easier to read because it now follows popular conventions.

Note that lintr and Air might have conflicting advice on styling: you can deactivate lintr's styling related rules if you use Air.

### Improve with the new jarl CLI! :computer:\$

In the terminal:

``` sh
jarl check test.R --fix
```

<div class="highlight">

</div>

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>lleno</span> <span class='o'>&lt;-</span> <span class='o'>!</span><span class='nf'><a href='https://rdrr.io/r/base/NA.html'>anyNA</a></span><span class='o'>(</span><span class='nv'>x</span><span class='o'>)</span></span>
<span><span class='nv'>ok</span> <span class='o'>&lt;-</span> <span class='o'>!</span><span class='o'>(</span><span class='nv'>x</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span> <span class='o'>==</span> <span class='nv'>y</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span><span class='o'>)</span></span>
<span><span class='kr'>if</span> <span class='o'>(</span><span class='nv'>ok</span><span class='o'>)</span> <span class='o'>&#123;</span></span>
<span>  <span class='nv'>z</span> <span class='o'>&lt;-</span> <span class='nv'>x</span> <span class='o'>+</span> <span class='m'>1</span></span>
<span><span class='o'>&#125;</span></span>
<span><span class='kr'>if</span> <span class='o'>(</span><span class='nv'>z</span> <span class='o'>&gt;</span> <span class='m'>3</span><span class='o'>)</span> <span class='o'>&#123;</span></span>
<span>  <span class='kr'><a href='https://rdrr.io/r/base/stop.html'>stop</a></span><span class='o'>(</span><span class='s'>"ouch"</span><span class='o'>)</span></span>
<span><span class='o'>&#125;</span></span></code></pre>

</div>

`any(is.na(x))` was automatically replaced with `anyNA(x)`!

The jarl CLI is as fast as Air is for styling. Furthermore, because it is a simple binary that does not need R to run, it's quicker to install on continuous integration.

Nevertheless, since jarl is newer than lintr, it supports fewer rules for now.

### Improve with the {flir} :package:

You could complement the usage of lintr, Air and jarl with flir which is better at [*custom rules*](https://flir.etiennebacher.com/articles/adding_rules). For instance, what if you'd prefer your codebase to use [`rlang::abort()`](https://rlang.r-lib.org/reference/abort.html) instead of [`stop()`](https://rdrr.io/r/base/stop.html)?

We first run

``` r
flir::setup_flir(getwd())
```

We save the file below under `flir/rules/custom/stop_abort.yml`.

``` yaml
id: stop_abort-1
language: r
severity: warning
rule:
  pattern: stop($$$ELEMS)
fix: rlang::abort(paste0(~~ELEMS~~))
message: Use [`rlang::abort()`](https://rlang.r-lib.org/reference/abort.html) instead of [`stop()`](https://rdrr.io/r/base/stop.html).
```

We then run

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'>flir</span><span class='nf'>::</span><span class='nf'><a href='https://flir.etiennebacher.com/reference/fix.html'>fix</a></span><span class='o'>(</span><span class='s'>"test.R"</span>, linters <span class='o'>=</span> <span class='s'>"stop_abort"</span><span class='o'>)</span></span></code></pre>

</div>

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>lleno</span> <span class='o'>&lt;-</span> <span class='o'>!</span><span class='nf'><a href='https://rdrr.io/r/base/NA.html'>anyNA</a></span><span class='o'>(</span><span class='nv'>x</span><span class='o'>)</span></span>
<span><span class='nv'>ok</span> <span class='o'>&lt;-</span> <span class='o'>!</span><span class='o'>(</span><span class='nv'>x</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span> <span class='o'>==</span> <span class='nv'>y</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span><span class='o'>)</span></span>
<span><span class='kr'>if</span> <span class='o'>(</span><span class='nv'>ok</span><span class='o'>)</span> <span class='o'>&#123;</span></span>
<span>  <span class='nv'>z</span> <span class='o'>&lt;-</span> <span class='nv'>x</span> <span class='o'>+</span> <span class='m'>1</span></span>
<span><span class='o'>&#125;</span></span>
<span><span class='kr'>if</span> <span class='o'>(</span><span class='nv'>z</span> <span class='o'>&gt;</span> <span class='m'>3</span><span class='o'>)</span> <span class='o'>&#123;</span></span>
<span>  <span class='kr'><a href='https://rdrr.io/r/base/stop.html'>stop</a></span><span class='o'>(</span><span class='s'>"ouch"</span><span class='o'>)</span></span>
<span><span class='o'>&#125;</span></span></code></pre>

</div>

<div class="highlight">

</div>

## Tooling

The tools we used are:

-   :computer:\$ [Air](https://posit-dev.github.io/air/): CLI to format code, by Lionel Henry and Davis Vaughan.
-   :package: [{flir}](https://flir.etiennebacher.com/): R package to fix code patterns, by Etienne Bacher.
-   :computer:\$ [jarl](https://jarl.etiennebacher.com/): CLI to fix code patterns, by Etienne Bacher.
-   :package: [{lintr}](https://lintr.r-lib.org/): R package to get informed of even more code patterns, by [Michael Chirico and many others](https://lintr.r-lib.org/authors.html).

## How to use those tools

You could use those tools locally on your machine from time to time. For instance, when inheriting an older project, I will first renovate it using them. Locally, a real game changer is using the integration of your IDE with the tools. For instance, I have Positron set up so that [Air](https://posit-dev.github.io/air/editors.html) is run on my scripts when I save them. The jarl CLI also provides [integrations with editors](https://jarl.etiennebacher.com/editors).

You could also use those tools on continuous integration. For instance, a workflow might [suggest formatting changes in Pull Requests](https://posit-dev.github.io/air/integration-github-actions.html#format-with-github-suggestions). The use of suggestions rather than a direct commit means the contributor get a chance to learn about the improvements.

Whether to ask flir and jarl to do changes as opposed to *alerting* you about them depends on the context. You might learn more by doing the changes yourself. In any case, having a proper look at modifications before committing them is crucial!

## What about artificial intelligence?

Sure, artificial intelligence can be handy but...

-   The best LLMs are not local;

-   They cost money;

-   They are not deterministic so might miss a rule whereas the tools in this post don't;

-   Their usage entail some ideological and ethical problems that we won't list here.

Furthermore, for such alerts and fixes, you don't need to use an LLM... Air, flir, jarl, lintr already do an excellent job!

## Conclusion

You can improve your code without effort, without even AI, using:

-   Air, to efficiently reformat code;

-   {flir}, to efficiently refactor code;

-   jarl, to fix "bad" practice;

-   {lintr} to get "bad" patterns, including custom ones, flagged.

The usage of those tools is best complemented by review by humans.

