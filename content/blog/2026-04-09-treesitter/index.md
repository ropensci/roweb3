---
title: A better R programming experience thanks to tree-sitter
author: 
- Maëlle Salmon
editor: 
- Etienne Bacher
- Davis Vaughan
- Steffi LaZerte
date: '2026-03-26'
slug: tree-sitter-overview
description: Modern tooling for parsing, searching, formatting, editing R code, just like for other programming languages.
tags:
  - package development
  - tech notes
  - best practice
params:
  doi: "10.59350/57mzc-7e212"
output: hugodown::md_document
rmd_hash: 759cf9f53986a75b

---

A little bit less than two years ago, building on work by Jim Hester and Kevin Ushey, Davis Vaughan completed a very impactful JSON file for the R community: an R grammar for the tree-sitter parsing generator. He even got a round of applause for it during a talk at the useR! 2024 conference! So, did he get cheered for... grammatical rules in a [JavaScript file](https://github.com/r-lib/tree-sitter-r/blob/next/grammar.js)? :sweat_smile:

No, the audience got excited about the *improved developer experience for R* that this file unlocked. R tooling around tree-sitter is how you get

-   reformatting through [Air](https://posit-dev.github.io/air/) and linting through [Jarl](https://jarl.etiennebacher.com/);
-   auto-completion or help on hover in the [Positron IDE](https://lionel-.github.io/slidedecks/2024-07-11-ark);
-   better [search](https://github.com/orgs/community/discussions/120397) for R on GitHub;
-   ...

In this post, we'll explain what tree-sitter is, and what tools built upon it can bring to your workflow writing R software.

## Code parsing: what is tree-sitter

[Tree-sitter](https://tree-sitter.github.io/tree-sitter/) is a code parsing generator written in C, with bindings existing in several languages including Rust (and R!).

Let's rewind a little bit. What does it mean to parse code?

Basically, given a string of code like

``` r
a <- mean(x, na.rm = TRUE)
```

How do you know that `mean` is a function name, `na.rm` an argument name, `TRUE` a logical? You have to *parse* that code into what's called a parse tree. You do that in your head when reading R code. :smile_cat:

R itself can obviously parse R code, thanks to its [grammar](https://github.com/wch/r-source/blob/trunk/src/main/gram.y). See for instance the [commit that introduced R's native pipe](https://github.com/wch/r-source/commit/a1425adea54bcc98eef86081522b5dbb3e149cdc#diff-ba804d7fa3fa053c1f57d46369f4432cb55c9c4f69f46ae6510d0d1fcc59f382), which necessitated extending R's syntax thus modifying its grammar.

You can use [`parse()`](https://rdrr.io/r/base/parse.html) and [`getParseData()`](https://rdrr.io/r/utils/getParseData.html) to parse R code.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'><a href='https://rdrr.io/r/base/parse.html'>parse</a></span><span class='o'>(</span></span>
<span>  text <span class='o'>=</span> <span class='s'>"a &lt;- mean(x, na.rm = TRUE)"</span>,</span>
<span>  keep.source <span class='o'>=</span> <span class='kc'>TRUE</span></span>
<span><span class='o'>)</span> <span class='o'>|&gt;</span></span>
<span>  <span class='nf'><a href='https://rdrr.io/r/utils/getParseData.html'>getParseData</a></span><span class='o'>(</span><span class='o'>)</span></span>
<span><span class='c'>#&gt;    line1 col1 line2 col2 id parent                token terminal  text</span></span>
<span><span class='c'>#&gt; 23     1    1     1   26 23      0                 expr    FALSE      </span></span>
<span><span class='c'>#&gt; 1      1    1     1    1  1      3               SYMBOL     TRUE     a</span></span>
<span><span class='c'>#&gt; 3      1    1     1    1  3     23                 expr    FALSE      </span></span>
<span><span class='c'>#&gt; 2      1    3     1    4  2     23          LEFT_ASSIGN     TRUE    &lt;-</span></span>
<span><span class='c'>#&gt; 21     1    6     1   26 21     23                 expr    FALSE      </span></span>
<span><span class='c'>#&gt; 4      1    6     1    9  4      6 SYMBOL_FUNCTION_CALL     TRUE  mean</span></span>
<span><span class='c'>#&gt; 6      1    6     1    9  6     21                 expr    FALSE      </span></span>
<span><span class='c'>#&gt; 5      1   10     1   10  5     21                  '('     TRUE     (</span></span>
<span><span class='c'>#&gt; 7      1   11     1   11  7      9               SYMBOL     TRUE     x</span></span>
<span><span class='c'>#&gt; 9      1   11     1   11  9     21                 expr    FALSE      </span></span>
<span><span class='c'>#&gt; 8      1   12     1   12  8     21                  ','     TRUE     ,</span></span>
<span><span class='c'>#&gt; 13     1   14     1   18 13     21           SYMBOL_SUB     TRUE na.rm</span></span>
<span><span class='c'>#&gt; 14     1   20     1   20 14     21               EQ_SUB     TRUE     =</span></span>
<span><span class='c'>#&gt; 15     1   22     1   25 15     16            NUM_CONST     TRUE  TRUE</span></span>
<span><span class='c'>#&gt; 16     1   22     1   25 16     21                 expr    FALSE      </span></span>
<span><span class='c'>#&gt; 17     1   26     1   26 17     21                  ')'     TRUE     )</span></span>
<span></span></code></pre>

</div>

Or you could transform that same data into XML using Gábor Csárdi's [{xmlparsedata}](https://r-lib.github.io/xmlparsedata/):

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='nf'><a href='https://rdrr.io/r/base/parse.html'>parse</a></span><span class='o'>(</span></span>
<span>  text <span class='o'>=</span> <span class='s'>"a &lt;- mean(x, na.rm = TRUE)"</span>,</span>
<span>  keep.source <span class='o'>=</span> <span class='kc'>TRUE</span></span>
<span><span class='o'>)</span> <span class='o'>|&gt;</span></span>
<span>  <span class='nf'>xmlparsedata</span><span class='nf'>::</span><span class='nf'><a href='https://rdrr.io/pkg/xmlparsedata/man/xml_parse_data.html'>xml_parse_data</a></span><span class='o'>(</span>pretty <span class='o'>=</span> <span class='kc'>TRUE</span><span class='o'>)</span> <span class='o'>|&gt;</span></span>
<span>  <span class='nf'>xml2</span><span class='nf'>::</span><span class='nf'><a href='http://xml2.r-lib.org/reference/read_xml.html'>read_xml</a></span><span class='o'>(</span><span class='o'>)</span> <span class='o'>|&gt;</span></span>
<span>  <span class='nf'><a href='https://rdrr.io/r/base/character.html'>as.character</a></span><span class='o'>(</span><span class='o'>)</span> <span class='o'>|&gt;</span></span>
<span>  <span class='nf'><a href='https://rdrr.io/r/base/cat.html'>cat</a></span><span class='o'>(</span><span class='o'>)</span></span>
<span><span class='c'>#&gt; &lt;?xml version="1.0" encoding="UTF-8" standalone="yes"?&gt;</span></span>
<span><span class='c'>#&gt; &lt;exprlist&gt;</span></span>
<span><span class='c'>#&gt;   &lt;expr line1="1" col1="1" line2="1" col2="26" start="28" end="53"&gt;</span></span>
<span><span class='c'>#&gt;     &lt;expr line1="1" col1="1" line2="1" col2="1" start="28" end="28"&gt;</span></span>
<span><span class='c'>#&gt;       &lt;SYMBOL line1="1" col1="1" line2="1" col2="1" start="28" end="28"&gt;a&lt;/SYMBOL&gt;</span></span>
<span><span class='c'>#&gt;     &lt;/expr&gt;</span></span>
<span><span class='c'>#&gt;     &lt;LEFT_ASSIGN line1="1" col1="3" line2="1" col2="4" start="30" end="31"&gt;&amp;lt;-&lt;/LEFT_ASSIGN&gt;</span></span>
<span><span class='c'>#&gt;     &lt;expr line1="1" col1="6" line2="1" col2="26" start="33" end="53"&gt;</span></span>
<span><span class='c'>#&gt;       &lt;expr line1="1" col1="6" line2="1" col2="9" start="33" end="36"&gt;</span></span>
<span><span class='c'>#&gt;         &lt;SYMBOL_FUNCTION_CALL line1="1" col1="6" line2="1" col2="9" start="33" end="36"&gt;mean&lt;/SYMBOL_FUNCTION_CALL&gt;</span></span>
<span><span class='c'>#&gt;       &lt;/expr&gt;</span></span>
<span><span class='c'>#&gt;       &lt;OP-LEFT-PAREN line1="1" col1="10" line2="1" col2="10" start="37" end="37"&gt;(&lt;/OP-LEFT-PAREN&gt;</span></span>
<span><span class='c'>#&gt;       &lt;expr line1="1" col1="11" line2="1" col2="11" start="38" end="38"&gt;</span></span>
<span><span class='c'>#&gt;         &lt;SYMBOL line1="1" col1="11" line2="1" col2="11" start="38" end="38"&gt;x&lt;/SYMBOL&gt;</span></span>
<span><span class='c'>#&gt;       &lt;/expr&gt;</span></span>
<span><span class='c'>#&gt;       &lt;OP-COMMA line1="1" col1="12" line2="1" col2="12" start="39" end="39"&gt;,&lt;/OP-COMMA&gt;</span></span>
<span><span class='c'>#&gt;       &lt;SYMBOL_SUB line1="1" col1="14" line2="1" col2="18" start="41" end="45"&gt;na.rm&lt;/SYMBOL_SUB&gt;</span></span>
<span><span class='c'>#&gt;       &lt;EQ_SUB line1="1" col1="20" line2="1" col2="20" start="47" end="47"&gt;=&lt;/EQ_SUB&gt;</span></span>
<span><span class='c'>#&gt;       &lt;expr line1="1" col1="22" line2="1" col2="25" start="49" end="52"&gt;</span></span>
<span><span class='c'>#&gt;         &lt;NUM_CONST line1="1" col1="22" line2="1" col2="25" start="49" end="52"&gt;TRUE&lt;/NUM_CONST&gt;</span></span>
<span><span class='c'>#&gt;       &lt;/expr&gt;</span></span>
<span><span class='c'>#&gt;       &lt;OP-RIGHT-PAREN line1="1" col1="26" line2="1" col2="26" start="53" end="53"&gt;)&lt;/OP-RIGHT-PAREN&gt;</span></span>
<span><span class='c'>#&gt;     &lt;/expr&gt;</span></span>
<span><span class='c'>#&gt;   &lt;/expr&gt;</span></span>
<span><span class='c'>#&gt; &lt;/exprlist&gt;</span></span>
<span></span></code></pre>

</div>

In both cases, you recognize words such as `LEFT_ASSIGN` or `SYMBOL_FUNCTION_CALL`. Parsing is an essential step before the code is actually executed, but parsed code can also be used for other purposes, such as analyzing code (does it call such and such [function](https://nrennie.rbind.io/blog/how-to-make-your-own-rstats-wrapped/)? and this without your own brittle regular expressions), navigating code (going from a function call to the definition of that function), modifying code (replacing all occurrences of a function with another one).

Now, tree-sitter allows such code parsing but **faster** especially thanks to its support of incremental parsing -- which is key to update the syntax tree as you are typing in your editor for instance! Tree-sitter is agnostic in that it can parse any code as long as there is a grammar for it (think, Rosetta Stone plugins). It's been used for many languages which means many tools have been built around it.

To make tree-sitter "learn" a new language you need to give it a file containing the definition of the syntax of that language, what's called a *grammar*. This is where the aforementioned JavaScript file by Davis Vaughan and collaborators comes into play! The treesitter-r repo, which provides a translation of the R grammar in the format expected by tree-sitter, is key to all tools presented in this post that use R code as their input.

The JavaScript file, when run through tree-sitter at the command line, outputs different files including one called `parser.c` which gets linked in to tools like the R package for treesitter.r.

Here's how to use the {treesitter} R package for the same code as earlier.

<div class="highlight">

<pre class='chroma'><code class='language-r' data-lang='r'><span><span class='kr'><a href='https://rdrr.io/r/base/library.html'>library</a></span><span class='o'>(</span><span class='nv'><a href='https://github.com/DavisVaughan/r-tree-sitter'>treesitter</a></span><span class='o'>)</span></span>
<span><span class='nv'>language</span> <span class='o'>&lt;-</span> <span class='nf'>treesitter.r</span><span class='nf'>::</span><span class='nf'><a href='https://rdrr.io/pkg/treesitter.r/man/language.html'>language</a></span><span class='o'>(</span><span class='o'>)</span></span>
<span><span class='nv'>parser</span> <span class='o'>&lt;-</span> <span class='nf'><a href='https://davisvaughan.github.io/r-tree-sitter/reference/parser.html'>parser</a></span><span class='o'>(</span><span class='nv'>language</span><span class='o'>)</span></span>
<span><span class='nv'>text</span> <span class='o'>&lt;-</span> <span class='s'>"a &lt;- mean(x, na.rm = TRUE)"</span></span>
<span><span class='nf'><a href='https://davisvaughan.github.io/r-tree-sitter/reference/parser-parse.html'>parser_parse</a></span><span class='o'>(</span><span class='nv'>parser</span>, <span class='nv'>text</span><span class='o'>)</span></span>
<span><span class='c'>#&gt; &lt;tree_sitter_tree&gt;</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; ── Text ──────────────────────────────────────────────────────────────────────────────────────────────────</span></span>
<span><span class='c'>#&gt; a &lt;- mean(x, na.rm = TRUE)</span></span>
<span><span class='c'>#&gt; </span></span>
<span><span class='c'>#&gt; ── S-Expression ──────────────────────────────────────────────────────────────────────────────────────────</span></span>
<span><span class='c'>#&gt; <span style='color: #0000BB;'>(</span>program <span style='color: #555555;'>[(0, 0), (0, 26)]</span></span></span>
<span><span class='c'>#&gt;   <span style='color: #00BB00;'>(</span>binary_operator <span style='color: #555555;'>[(0, 0), (0, 26)]</span></span></span>
<span><span class='c'>#&gt;     lhs: <span style='color: #BB0000;'>(</span>identifier <span style='color: #555555;'>[(0, 0), (0, 1)]</span><span style='color: #BB0000;'>)</span></span></span>
<span><span class='c'>#&gt;     operator: "&lt;-" <span style='color: #555555;'>[(0, 2), (0, 4)]</span></span></span>
<span><span class='c'>#&gt;     rhs: <span style='color: #BB0000;'>(</span>call <span style='color: #555555;'>[(0, 5), (0, 26)]</span></span></span>
<span><span class='c'>#&gt;       function: <span style='color: #00BBBB;'>(</span>identifier <span style='color: #555555;'>[(0, 5), (0, 9)]</span><span style='color: #00BBBB;'>)</span></span></span>
<span><span class='c'>#&gt;       arguments: <span style='color: #00BBBB;'>(</span>arguments <span style='color: #555555;'>[(0, 9), (0, 26)]</span></span></span>
<span><span class='c'>#&gt;         open: "(" <span style='color: #555555;'>[(0, 9), (0, 10)]</span></span></span>
<span><span class='c'>#&gt;         argument: <span style='color: #BBBB00;'>(</span>argument <span style='color: #555555;'>[(0, 10), (0, 11)]</span></span></span>
<span><span class='c'>#&gt;           value: <span style='color: #BB00BB;'>(</span>identifier <span style='color: #555555;'>[(0, 10), (0, 11)]</span><span style='color: #BB00BB;'>)</span></span></span>
<span><span class='c'>#&gt;         <span style='color: #BBBB00;'>)</span></span></span>
<span><span class='c'>#&gt;         <span style='color: #BBBB00;'>(</span>comma <span style='color: #555555;'>[(0, 11), (0, 12)]</span><span style='color: #BBBB00;'>)</span></span></span>
<span><span class='c'>#&gt;         argument: <span style='color: #BBBB00;'>(</span>argument <span style='color: #555555;'>[(0, 13), (0, 25)]</span></span></span>
<span><span class='c'>#&gt;           name: <span style='color: #BB00BB;'>(</span>identifier <span style='color: #555555;'>[(0, 13), (0, 18)]</span><span style='color: #BB00BB;'>)</span></span></span>
<span><span class='c'>#&gt;           "=" <span style='color: #555555;'>[(0, 19), (0, 20)]</span></span></span>
<span><span class='c'>#&gt;           value: <span style='color: #BB00BB;'>(</span>true <span style='color: #555555;'>[(0, 21), (0, 25)]</span><span style='color: #BB00BB;'>)</span></span></span>
<span><span class='c'>#&gt;         <span style='color: #BBBB00;'>)</span></span></span>
<span><span class='c'>#&gt;         close: ")" <span style='color: #555555;'>[(0, 25), (0, 26)]</span></span></span>
<span><span class='c'>#&gt;       <span style='color: #00BBBB;'>)</span></span></span>
<span><span class='c'>#&gt;     <span style='color: #BB0000;'>)</span></span></span>
<span><span class='c'>#&gt;   <span style='color: #00BB00;'>)</span></span></span>
<span><span class='c'>#&gt; <span style='color: #0000BB;'>)</span></span></span>
<span></span></code></pre>

</div>

Tree-sitter is the workhorse of many tools, that are mentioned in the diagram below. All of them are dependent on tree-sitter and the R grammar provided to it. Some of them are CLI, while others are R packages.

{{< figure src="tree-sitter.png" alt="Diagram of tree-sitter tooling for R. At the center is tree-sitter especially its Rust bindings and the R grammar for treesitter. At the top is the input, R scripts. At the bottom from treesitter is the treesitter R package,; ast-grep that is used by astgrepr which is used by flir and that is used by the CLAUDE.md instructions for parsing code; Air that is used by Jarl; Ark that is used by the Positron IDE; R code browsing on GitHub." >}}

Let's dive into these tools in more details!

## Browsing code interactively: Positron IDE, GitHub

The real reason why the audience applauded Davis Vaughan is that he explained how the R grammar for tree-sitter had been [deployed to GitHub](https://github.com/orgs/community/discussions/120397) so that we get almost as good experience browsing R code on GitHub as browsing, say, JS code. If we search for a function name in a repository for instance, its definition will be indicated in the search results. See [Davis' slides](https://www.youtube.com/watch?v=Gm0ikRBAfwc) (also available in [PDF](https://github.com/DavisVaughan/2024-07-09_useR-2024)), or refer to the video below showing how typing `vetiver_model` in the search bar from the R vetiver repo makes the function definition the first result, on which one can click to land into the definition.

{{< video src="searching-for-vetiver-model-r-new" >}}

Also very useful is the use of tree-sitter by [Ark](https://github.com/posit-dev/ark), the R kernel [used in the Positron IDE](https://lionel-.github.io/slidedecks/2024-07-11-ark/#/language-server-protocol-1). Ark is how in Positron you get autocompletion, help on hover, etc. The video below shows how in Positron you can extend the selection to further steps of a pipeline.

{{< video src="expand-selection-2" >}}

This use case of tree-sitter is also featured in [Davis' slides](https://www.youtube.com/watch?v=Gm0ikRBAfwc). See also Lionel Henry's and Davis Vaughan's talk about Ark at [posit conf 2024](https://youtu.be/8uRcB34Hhsw?si=UeWqIi9PtEOWqRsp&t=2109), especially the part about [code assistance](https://youtu.be/8uRcB34Hhsw?si=GBqntC6tW7D2WhBN&t=2455).

Other development environments such as [Emacs](https://lists.gnu.org/archive/html/emacs-devel/2022-11/msg01443.html) have support for tree-sitter.

## Searching/browsing code: {treesitter}, ast-grep

You can parse and search R code using the {treesitter} R package and [treesitter query syntax](https://tree-sitter.github.io/tree-sitter/4-code-navigation.html). The {treesitter} R package is a dependency of the [{gander} package](https://simonpcouch.github.io/gander/) by Simon Couch, that is meant to be used for a better experience with LLMs when writing R code. Another use case of the {treesitter} R package is the {igraph.r2cdocs} [extension](https://roxygen2.r-lib.org/dev/articles/extending.html) to {roxygen2} for the {igraph} package, that [parses all of igraph R code](https://github.com/igraph/igraph.r2cdocs/blob/6be2a327a18deb823302caeab8b60a916f6fac62/R/roxygen.R#L119) to then be able to identify, for each exported function, whether it (in)directly calls a function whose name ends with `_impl`, indicating a wrapper to a C igraph function whose docs can be then be linked from the manual of the R function.

[ast-grep](https://ast-grep.github.io/) is a useful tool built on top of tree-sitter, for searching and re-writing code, with a clearer query syntax than tree-sitter's. Its name reminds of grep, but with ast-grep we do not need to write brittle regular expressions. :smile_cat:[{astgrepr}](https://astgrepr.etiennebacher.com/) by Etienne Bacher is an R wrapper to the Rust bindings of ast-grep. It is in particular used in Etienne's [{flir} package](https://flir.etiennebacher.com/) for [refactoring](https://flir.etiennebacher.com/articles/adding_rules) code.

The ast-grep command-line interface (CLI) itself is featured in a useful [blog post by Emil Hvitfeldt](https://emilhvitfeldt.com/post/ast-grep-r-claude-code/) where he explains how to document the usage of ast-grep for Claude.

## Formatting and linting: Air, Jarl

Speaking of CLIs...

{{< figure src="meme.png" alt="Cute kitten attacked by robots. The text says 'Everytime you use Claude for something a CLI can do, a kitten dies'." >}}

[Air](https://posit-dev.github.io/air/cli.html), by Davis Vaughan and Lionel Henry, is a CLI built on tree-sitter, in Rust. It *reformats* code blazingly fast.

[Jarl](https://jarl.etiennebacher.com/), by Etienne Bacher, is a CLI built on Air, therefore also on tree-sitter, in Rust. It *lints* and *fixes* code, also blazingly fast. It can even detect [unreachable code](https://jarl.etiennebacher.com/rules/unreachable_code), [unused functions](https://jarl.etiennebacher.com/rules/unused_function) and [duplicated function definitions](https://jarl.etiennebacher.com/rules/duplicated_function_definition).

For both these examples, the creation of *CLIs* wrapping Rust bindings is more efficient than the creation of R packages wrapping the treesitter R package, for several reasons:

-   the Rust CLIs can edit code very fast[^1];
-   the CLI are integrated in extensions for popular IDEs (for instance Positron);
-   a CLI is easier to install on CI than an R package that needs, well, an R installation.

## More tools

A brief mention of some other interesting tools we've explored a bit less.

### Configuring: {ts} for parsing JSON and TOML (not R!)

The [{ts}](https://github.com/r-lib/ts) package by Gábor Csárdi is the backbone of two packages useful for editing and manipulating, from R:

-   TOML ([{tstoml}](https://gaborcsardi.github.io/tstoml/));
-   JSON ([{tsjson}](https://gaborcsardi.github.io/tsjsonc/)).

Compared to existing parsers in R for those formats, these two packages preserve comments.

### Testing code: {muttest}

[Mutation testing](https://en.wikipedia.org/wiki/Mutation_testing) is a kind of testing where you, say, randomly swap `+` with `-` in your code (you *mutate* it) and you run your tests to see whether they catch the mutant. The [{muttest} package](https://github.com/jakubsob/muttest) is an R package for mutation testing, that depends on the {treesitter} R package.

### Diffing code: difftastic

The difftastic CLI is "a structural diff tool that understands syntax". ✨ This means that difftastic doesn't only compare line or "words" but actual syntax by looking at lines around the lines that changed (by default, 3). Even better, it understands R out of the box. See this [blog post with examples of R code diffing](https://masalmon.eu/2026/03/30/difftastic/).

## Conclusion: more to come?

In this post, we've presented an overview of tree-sitter based tooling for R or in R.

Note that this ecosystem of tools is very actively developed, so some tools might come and go. However, the idea that plugging the R grammar into a general parsing generator brings cool features to us R developers, will remain true. Maybe *you* will contribute to this ecosystem, either in an existing tool or by creating a new one?

[^1]: Rust is a lower level language than R so has less overhead; furthermore this kind of Rust code can be easily parallelized.

