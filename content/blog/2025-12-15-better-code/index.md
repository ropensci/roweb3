---
title: Better Code, Without Any Effort, Without Even AI
author: 
- Maëlle Salmon
editor:
- Etienne Bacher
- Steffi LaZerte
date: '2025-12-15'
slug: better-code
description: Useful local, free, deterministic tools to improve your code
output: hugodown::md_document
tags:
  - best practice
  - tech notes
  - package development
params:
  doi: "10.59350/98899-51c03"
rmd_hash: e498b6ad828a7f2b

---

We are experiencing a programming revolution, with the democratization of artificial intelligence, *but* also with the creation and improvement of more traditional software tools to improve your code: local, free, deterministic.

In this post, we will introduce you to

-   :package: [lintr](https://lintr.r-lib.org/), by [Michael Chirico and many others](https://lintr.r-lib.org/authors.html), an R package that detects many ways to improve your code;
-   :computer:\$ [Air](https://posit-dev.github.io/air/), by Lionel Henry and Davis Vaughan, a fast CLI (command-line interface) for formatting R code automatically and almost instantly;
-   :computer:\$ [jarl](https://jarl.etiennebacher.com/), by Etienne Bacher, another fast CLI (command-line interface) tool to find and automatically fix lints;
-   :package: [flir](https://flir.etiennebacher.com/), by Etienne Bacher, an R package to efficiently rewrite patterns of code, either built-in ones or custom ones.

With these four wonderful tools, you can effortlessly improve your code, your colleagues' code... and even code proposed by AI. With a bit more effort, you might even internalize best practice and write better code from the get go in the future!

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

### The R console vs the terminal

Note that in this post, some tools are used in the R console, but others are used in the terminal, that you might also know as command line or [shell](https://12days.cmdchallenge.com/#/12days_2).

### Learn what to improve with {lintr} :package:

A first instinct might be to run the lintr package on the script. The `lint()` function performs static analysis and highlights potential problems in your R code, including formatting and programming suggestions.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'>lintr</span><span class='nf'>::</span><span class='nf'><a href='https://lintr.r-lib.org/reference/lint.html'>lint</a></span><span class='o'>(</span><span class='s'>"test.R"</span>, linters <span class='o'>=</span> <span class='nf'>lintr</span><span class='nf'>::</span><span class='nf'><a href='https://lintr.r-lib.org/reference/all_linters.html'>all_linters</a></span><span class='o'>(</span><span class='o'>)</span><span class='o'>)</span></span></code></pre>

</div>

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='c'>#&gt; <span style='color: #0000BB; font-weight: bold;'>index.Rmd:148:32</span><span style='font-weight: bold;'>: </span><span style='color: #BB00BB;'>warning: </span>[nonportable_path_linter] <span style='font-weight: bold;'>Use file.path() to construct portable file paths.</span></span></span>
<span><span class='c'>#&gt; flir::fix("test.R", linters = "flir/rules/custom/stop_abort.yml")</span></span>
<span><span class='c'>#&gt;                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</span></span>
<span><span class='c'>#&gt; <span style='color: #0000BB; font-weight: bold;'>test.R:1:7</span><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[infix_spaces_linter] <span style='font-weight: bold;'>Put spaces around all infix operators.</span></span></span>
<span><span class='c'>#&gt; lleno &lt;-!any(is.na(x))</span></span>
<span><span class='c'>#&gt;       ^~</span></span>
<span><span class='c'>#&gt; <span style='color: #0000BB; font-weight: bold;'>test.R:1:10</span><span style='font-weight: bold;'>: </span><span style='color: #BB00BB;'>warning: </span>[any_is_na_linter] <span style='font-weight: bold;'>anyNA(x) is better than any(is.na(x)).</span></span></span>
<span><span class='c'>#&gt; lleno &lt;-!any(is.na(x))</span></span>
<span><span class='c'>#&gt;          ^~~~~~~~~~~~~</span></span>
<span><span class='c'>#&gt; <span style='color: #0000BB; font-weight: bold;'>test.R:2:3</span><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[infix_spaces_linter] <span style='font-weight: bold;'>Put spaces around all infix operators.</span></span></span>
<span><span class='c'>#&gt; ok&lt;- !(x[1] == y[1])</span></span>
<span><span class='c'>#&gt;   ^~</span></span>
<span><span class='c'>#&gt; <span style='color: #0000BB; font-weight: bold;'>test.R:2:6</span><span style='font-weight: bold;'>: </span><span style='color: #BB00BB;'>warning: </span>[comparison_negation_linter] <span style='font-weight: bold;'>Use x != y, not !(x == y).</span></span></span>
<span><span class='c'>#&gt; ok&lt;- !(x[1] == y[1])</span></span>
<span><span class='c'>#&gt;      ^~~~~~~~~~~~~~~</span></span>
<span><span class='c'>#&gt; <span style='color: #0000BB; font-weight: bold;'>test.R:2:11</span><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[implicit_integer_linter] <span style='font-weight: bold;'>Use 1L or 1.0 to avoid implicit integers.</span></span></span>
<span><span class='c'>#&gt; ok&lt;- !(x[1] == y[1])</span></span>
<span><span class='c'>#&gt;          ~^</span></span>
<span><span class='c'>#&gt; <span style='color: #0000BB; font-weight: bold;'>test.R:2:19</span><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[implicit_integer_linter] <span style='font-weight: bold;'>Use 1L or 1.0 to avoid implicit integers.</span></span></span>
<span><span class='c'>#&gt; ok&lt;- !(x[1] == y[1])</span></span>
<span><span class='c'>#&gt;                  ~^</span></span>
<span><span class='c'>#&gt; <span style='color: #0000BB; font-weight: bold;'>test.R:3:10</span><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[infix_spaces_linter] <span style='font-weight: bold;'>Put spaces around all infix operators.</span></span></span>
<span><span class='c'>#&gt; if (ok) z&lt;- x +  1</span></span>
<span><span class='c'>#&gt;          ^~</span></span>
<span><span class='c'>#&gt; <span style='color: #0000BB; font-weight: bold;'>test.R:3:19</span><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[implicit_integer_linter] <span style='font-weight: bold;'>Use 1L or 1.0 to avoid implicit integers.</span></span></span>
<span><span class='c'>#&gt; if (ok) z&lt;- x +  1</span></span>
<span><span class='c'>#&gt;                  ~^</span></span>
<span><span class='c'>#&gt; <span style='color: #0000BB; font-weight: bold;'>test.R:4:6</span><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[infix_spaces_linter] <span style='font-weight: bold;'>Put spaces around all infix operators.</span></span></span>
<span><span class='c'>#&gt; if (z&gt;3) stop("ouch")</span></span>
<span><span class='c'>#&gt;      ^</span></span>
<span><span class='c'>#&gt; <span style='color: #0000BB; font-weight: bold;'>test.R:4:8</span><span style='font-weight: bold;'>: </span><span style='color: #0000BB;'>style: </span>[implicit_integer_linter] <span style='font-weight: bold;'>Use 3L or 3.0 to avoid implicit integers.</span></span></span>
<span><span class='c'>#&gt; if (z&gt;3) stop("ouch")</span></span>
<span><span class='c'>#&gt;       ~^</span></span>
<span><span class='c'>#&gt; <span style='color: #0000BB; font-weight: bold;'>test.R:4:10</span><span style='font-weight: bold;'>: </span><span style='color: #BB00BB;'>warning: </span>[condition_call_linter] <span style='font-weight: bold;'>Use stop(., call. = FALSE) not to display the call in an error message.</span></span></span>
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

Air is software which automatically formats your R code according to a set of rules.

In the terminal:

``` sh
air format test.R
```

And this returns:

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

Note that lintr and Air might have conflicting advice on styling: you can [deactivate lintr's styling](https://lintr.r-lib.org/articles/lintr.html#the--lintr-file) related rules if you use Air.

### Improve with the new jarl CLI! :computer:\$

The jarl CLI lints and fixes your code, and like lintr, identifies potential problems, but unlike lintr, jarl also applies fixes!

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

The jarl CLI is as fast for checking and fixing lints as Air is for styling. Furthermore, because it is a simple binary that does not need R to run, it's quicker to install on continuous integration than an R package (that needs R to be installed for instance).

However, since jarl is newer than lintr, it supports fewer rules for now.

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
message: Use `rlang::abort()` instead of `stop()`.
```

We then run

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'>flir</span><span class='nf'>::</span><span class='nf'><a href='https://flir.etiennebacher.com/reference/fix.html'>fix</a></span><span class='o'>(</span><span class='s'>"test.R"</span>, linters <span class='o'>=</span> <span class='s'>"flir/rules/custom/stop_abort.yml"</span><span class='o'>)</span></span>
<span><span class='c'>#&gt; <span style='color: #00BBBB;'>ℹ</span> Going to check 1 file.</span></span>
<span></span><span><span class='c'>#&gt; <span style='color: #00BB00;'>✔</span> Fixed 1 lint in 1 file.</span></span>
<span></span></code></pre>

</div>

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nv'>lleno</span> <span class='o'>&lt;-</span> <span class='o'>!</span><span class='nf'><a href='https://rdrr.io/r/base/NA.html'>anyNA</a></span><span class='o'>(</span><span class='nv'>x</span><span class='o'>)</span></span>
<span><span class='nv'>ok</span> <span class='o'>&lt;-</span> <span class='o'>!</span><span class='o'>(</span><span class='nv'>x</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span> <span class='o'>==</span> <span class='nv'>y</span><span class='o'>[</span><span class='m'>1</span><span class='o'>]</span><span class='o'>)</span></span>
<span><span class='kr'>if</span> <span class='o'>(</span><span class='nv'>ok</span><span class='o'>)</span> <span class='o'>&#123;</span></span>
<span>  <span class='nv'>z</span> <span class='o'>&lt;-</span> <span class='nv'>x</span> <span class='o'>+</span> <span class='m'>1</span></span>
<span><span class='o'>&#125;</span></span>
<span><span class='kr'>if</span> <span class='o'>(</span><span class='nv'>z</span> <span class='o'>&gt;</span> <span class='m'>3</span><span class='o'>)</span> <span class='o'>&#123;</span></span>
<span>  <span class='nf'>rlang</span><span class='nf'>::</span><span class='nf'><a href='https://rlang.r-lib.org/reference/abort.html'>abort</a></span><span class='o'>(</span><span class='nf'><a href='https://rdrr.io/r/base/paste.html'>paste0</a></span><span class='o'>(</span><span class='s'>"ouch"</span><span class='o'>)</span><span class='o'>)</span></span>
<span><span class='o'>&#125;</span></span></code></pre>

</div>

The call to [`stop()`](https://rdrr.io/r/base/stop.html) was automatically replaced. Now, we might want to then manually remove the useless [`paste0()`](https://rdrr.io/r/base/paste.html), but we're already closer to an ideal script.


## Integrating these tools into your workflow

Locally, you can use those tools as needed. For instance, when inheriting an older project, the first thing I do is renovate the project by applying these tools. A real game changer is using the integration of these tools with your IDE. For instance, I have Positron set up so that [Air](https://posit-dev.github.io/air/editors.html) runs on my scripts when I save them. The jarl CLI also provides [integrations with IDEs](https://jarl.etiennebacher.com/editors).

You can also use those tools on continuous integration. For instance, a useful workflow might be to [suggest formatting changes on Pull Requests](https://posit-dev.github.io/air/integration-github-actions.html#format-with-github-suggestions). The use of suggestions rather than a direct commit means the contributor gets a chance to learn about the improvements.

Another aspect to consider is whether you want flir and jarl to *make* the changes as opposed to *alerting* you about them. Which you choose depends on the context, for example, you might learn more by doing the changes yourself. In any case, having a proper look at modifications before committing them is important!

## What about artificial intelligence?

Artificial intelligence can be useful in coding applications but...

-   The best LLMs are not local;

-   They cost money and are slower;

-   They are not deterministic so you don't necessarily get the same result every time you use it;

-   Their usage may entail some ideological and ethical problems which can be concerning or unattractive.

Ultimately, for such alerts and fixes, you just don't need to use an LLM... Air, flir, jarl, and lintr already do an excellent job, are faster, and are free (not to mention FOSS)!

## Conclusion

You can improve your code without effort, without even AI, using:

-   {lintr} to signal "bad" patterns, including [customizable ones](https://github.com/r-lib/pkgdown/blob/c07d935583c90125586821e3b39ed52f16593e42/.lintr.R#L1);

-   Air, to efficiently reformat code;

-   jarl, to detect and fix "bad" patterns;

-   {flir}, to efficiently refactor code with custom rules.

As with all tools that modify your code, their usage is best complemented by a human review.

