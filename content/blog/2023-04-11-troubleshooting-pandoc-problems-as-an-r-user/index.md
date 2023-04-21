---
slug: "post-template"
title: Troubleshooting Pandoc problems as an R user
author:
  - Maëlle Salmon
  - Christophe Dervieux
# Set the date below to the publication date of your post
date: 2023-04-10
# Minimal tags for a post about a community-contributed package 
# that has passed software peer review are listed below
# Consult the Technical Guidelines for information on choosing tags
tags:
  - pandoc
  - rmarkdown
  - publication
  - quarto
  - markdown
description: "How to solve your Pandoc problems thanks to documentation reading, experimentation... and a bit of experience 😅 "
---

The Pandoc CLI by [John MacFarlane](https://johnmacfarlane.net/) is a really useful tool: for instance, 
rOpenSci community manager Yanina Bellini Saibene recently asked Maëlle whether she could convert a Google Document into a Quarto book.
Maëlle solved the request with a combination of Pandoc (conversion from docx to HTML then to Markdown through [`pandoc::pandoc_convert()`](https://cderv.github.io/pandoc/reference/pandoc_convert.html)) and XPath.
You can find the resulting experimental package [quartificate](https://github.com/ropenscilabs/quartificate) on GitHub.
Pandoc is not only anecdotically useful: it's part of the [R Markdown](https://rmarkdown.rstudio.com/) machinery, and powers [Quarto](https://quarto.org/).
So, whether you're juggling documents in various formats or simply trying to publish your reproducible analysis, you might have been using Pandoc, or maybe you _should_ be using Pandoc.

Sometimes, all goes well, sometimes, you think of Pandoc because it seems to be the source of an error.
In such cases, Maëlle, who's witnessed Christophe's detective work[^detective] in several GitHub issues, tends to wonder "What would Christophe do?".
The answer is probably "read the docs and investigate".
In this post, we gather resources and tips to help you troubleshoot Pandoc as an R user.

[^detective]: If you want to read examples of troubleshooting, see this [rmarkdown issue](https://github.com/rstudio/rmarkdown/issues/2437) and the corresponding [Pandoc issue](https://github.com/jgm/pandoc/issues/8499); or this [Pandoc issue](https://github.com/jgm/pandoc/issues/7352).

## Pandoc 101

Say we have a Markdown file and want to convert it to HTML.
We can do it from R calling the [`pandoc::pandoc_convert()`](https://cderv.github.io/pandoc/reference/pandoc_convert.html) function that handily wraps Pandoc. If you are rather a terminal first user, obviously [`pandoc` CLI tool](https://pandoc.org/MANUAL.html) is your friend. In the rest of the post, we will use the pandoc R 📦 for examples.


```r
md_lines <- c(
  "# Important announcement", "",
  "[Pandoc](https://pandoc.org/) is **great**!"
)
md_file <- withr::local_tempfile()
brio::write_lines(md_lines, md_file)

html_file <- withr::local_tempfile()
pandoc::pandoc_convert(
  file = md_file, 
  from = "markdown", 
  to = "html", 
  output = html_file
)
```

```
## /tmp/RtmpMtRzoa/file37d8376caf04
```

```r
brio::read_lines(html_file)
```

```
## [1] "<h1 id=\"important-announcement\">Important announcement</h1>"
## [2] "<p><a href=\"https://pandoc.org/\">Pandoc</a> is"             
## [3] "<strong>great</strong>!</p>"
```

That magic of **going from one Markup language to another** is Pandoc's job.
Pandoc supports many input and output formats, with tweaks available for various elements.

For instance, we could change the call slightly to not get an identifier for the h1 heading in the HTML.


```r
pandoc::pandoc_convert(
  file = md_file, 
  from = "markdown-auto_identifiers", 
  to = "html", 
  output = html_file
)
```

```
## /tmp/RtmpMtRzoa/file37d8376caf04
```

```r
brio::read_lines(html_file)
```

```
## [1] "<h1>Important announcement</h1>"                 
## [2] "<p><a href=\"https://pandoc.org/\">Pandoc</a> is"
## [3] "<strong>great</strong>!</p>"
```

This is just a glimpse of what Pandoc can do.

## When is Pandoc the problem (or solution)?

If you're calling Pandoc yourself, directly or via the [pandoc package](https://cderv.github.io/pandoc/) by Christophe, you will obviously know when Pandoc is at play.

In other cases, Pandoc might be buried under layers of other software.
For instance, when rendering an R Markdown document, Pandoc is an important step between knitr's work and the actual output document.
The R Markdown cookbook by Yihui Xie, Christophe Dervieux and Emily Riederer features a [handy diagram](https://bookdown.org/yihui/rmarkdown-cookbook/rmarkdown-process.html).

Here are some elements to help you pinpoint whether Pandoc is the thing tripping you up:

- Basically, if you're getting an error with your R code, Pandoc is not at fault.

- You might actually see a Pandoc error in the output. TODO: explain keep_md

- If you're having a case of "but it worked yesterday!", for instance "I did not change anything on R side but this does not work anymore: maybe the Pandoc version changed? Switching the Pandoc version, perhaps using [the pandoc package's functionality for handling the Pandoc version](https://cderv.github.io/pandoc/reference/index.html#handle-pandoc-version), can show a problem with a new Pandoc version, however this is rare.

In all cases, Pandoc might also be your problem if you're pushing the limits of what to achieve with another tool using Pandoc. For instance, if you want some particular conversion, like having emojis à la `:grin:` rendered to actual emojis in your Quarto reveal.js slides, you might need to tweak something related to Pandoc.

## Speaking Pandoc linguo

First of all, how do you find Pandoc docs?
You can type [`pandoc::pandoc_browse_manual()`](https://cderv.github.io/pandoc/reference/pandoc_browse_manual.html).
Or you can bookmark the [Pandoc manual URL](https://pandoc.org/MANUAL.html).
It's actually all-caps MANUAL which underlines the importance of reading it:
if you skim through it at least once, 
you will have a better idea of what's there... and of how things are called in the Pandoc world, so you can ask better questions to your search engine or collaborators!

Now, how else does one learn how to "speak Pandoc"?

You can use a search engine to refine your keywords: you might find threads with questions by people using the same rough vocabulary as yours, with more refined answers. For instance, Maëlle was recently looking for an option that she knew existed, to transform things that look like URLs, say `https://ropensci.org` in Markdown, into links in HTML, say `<a href="https://ropensci.org">https://ropensci.org</a>`.
She first looked for “raw/naked links”, before (re)discovering they're called bare URIs, with the extension called `autolink_bare_uris`.

Speaking of extensions! What is the basic vocabulary one needs to troubleshoot a Pandoc issue? It comes with time but a good starting list would be

### Formats

The format (doh) Pandoc converts from and to. There's an impressive list on [Pandoc homepage](https://pandoc.org/). docx, gfm (GitHub flavored Markdown), HTML, RTF...

In Quarto and R Markdown you are by default[^default] expected to be writing Pandoc's Markdown which is a special flavour of Markdown.

[^default]: So many things to customize! The format, the extensions (see below) of the format...

### Extension

[Extensions](https://pandoc.org/MANUAL.html#extensions) are modifiers of the behavior of Pandoc readers and writers. Extensions are extensions (or contractions, since they can be turned off) of _formats_, not of _Pandoc_. For instance, the ["smart"](https://pandoc.org/MANUAL.html#extension-smart) extension will interpret some typography elements, like two dashes as en-dash[^dash], is enabled by default for markdown so if you want to convert from Markdown to HTML without transforming the two dashes, you'd use `markdown-smart` as input format. Not all extensions work for a format, make sure you read the docs (😉), use [`pandoc::pandoc_list_extensions()`](https://cderv.github.io/pandoc/reference/pandoc_list_extensions.html) to list extensions available for a format.
A format Maëlle has used when producing slides with Quarto is

``` yaml
format:
  revealjs:  
    from: markdown+emoji
```

to turn on the indispensable emoji support. 🎉

Below is an example where we call Pandoc directly.
Note we do it on strings directly, without writing anything to files, which can be handy at times!


```r
# no emoji, terrible sadness
pandoc::pandoc_convert(
  text = "I :heart: Pandoc!",
  from = "markdown",
  to = "html"
)
```

```
## <p>I :heart: Pandoc!</p>
```

```r
# emoji, immense joy
pandoc::pandoc_convert(
  text = "I :heart: Pandoc!",
  from = "markdown+emoji",
  to = "html"
)
```

```
## <p>I <span class="emoji" data-emoji="heart">❤️</span> Pandoc!</p>
```


### Options

See how we refrained from framing extensions as "options", because [options](https://pandoc.org/MANUAL.html#options) are another thing! They're sort of arguments to Pandoc calls. For instance `--mathml` is an option for rendering math to MathML. 

Some options might be hidden by the tool you use to call Pandoc, or handily exposed as argument: for instance, the `to` argument of the `pandoc::pandoc_convert()` function is actually a Pandoc option.

Below, we use an option to shift heading levels by 1 which increases the heading level number therefore reduce the heading importance.


```r
pandoc::pandoc_convert(
  text = "# Important announcement\n\nPandoc is cool!",
  from = "markdown",
  to = "HTML", 
  args = c("--shift-heading-level-by=1")
)
```

```
## <h2 id="important-announcement">Important announcement</h2>
## <p>Pandoc is cool!</p>
```

See how the "Important announcement" header becomes a h _2_ in the output.

### Variables

[Variables](https://pandoc.org/MANUAL.html#variables) are the metadata you might be used to passing to Pandoc via YAML header (for R Markdown and Quarto).

### Templates

If you ask Pandoc to create a reveal.js slidedeck, it will do so using its default [reveal.js template](https://github.com/jgm/pandoc-templates/blob/master/default.revealjs).
The template is filled with your Markup content but also with the variables like author names.
You can use [custom templates](https://pandoc.org/MANUAL.html#templates) by using the `--template` option.
[pandoc::pandoc_export_template()](https://cderv.github.io/pandoc/reference/pandoc_export_template.html) will create a file with the default template for a version of Pandoc.

### Raw attributes

Say you have raw HTML in your Markdown document. You can protect it from Pandoc parsing by wrapping it in a ["raw attribute"](https://pandoc.org/MANUAL.html#generic-raw-attribute). This is for instance used by [hugodown](https://github.com/r-lib/hugodown/pull/53) to protect Hugo shortcodes. 

Be careful, this is part of the `raw_attribute` extension so might not be included by default, or supported for, your chosen format. 

### How to use these things?

What you need to solve a given Pandoc challenge might be a format or extension or option.
It's up to you to find the correct combination, but having some vague understanding of what these things are and how to use them, will help you.
Another thing that will help you, is to know how to pass these things to Pandoc using the Pandoc interface of your choice:

- If you're calling Pandoc directly or with the pandoc package, it should be relatively straightforward.
- If you're using R Markdown or Quarto you might need to search for, say ["R Markdown custom Pandoc templates"](https://bookdown.org/yihui/rmarkdown/template-pandoc.html). Besides, there might be a more native R Markdown or Quarto way to reach your goal without messing with Pandoc.

## How to experiment with Pandoc?

Once you know your issue is Pandoc, how do you create a reproducible example?
Interestingly, although it's great to create a Pandoc reprex, you **cannot** create it with reprex, because reprex uses R Markdown machinery.

In this post we've shown a few examples, calling Pandoc directly on strings, or on [temporary files created with withr](#pandoc-101).

Here's Christophe's usual Rmd reprex [snippet](https://support.posit.co/hc/en-us/articles/204463668-Code-Snippets-in-the-RStudio-IDE):

```r
dir.create(tmp_dir <- tempfile())
owd <- setwd(tmp_dir)
xfun::write_utf8(c(
	"---",
	"title: test",
	"---",
	"",
	"# A header",
	${1:""}
), "test.Rmd")
rmarkdown::render("test.Rmd", "${2:html_document}"${3})
setwd(owd)
unlink(tmp_dir, recursive = TRUE)
```

In any case, as with any reprex you'll want to make it minimal.

Note that you can test Pandoc in your browser on [pandoc.org/try](https://pandoc.org/try/).

## Keeping up with Pandoc, or freezing Pandoc!

Keeping up with Pandoc is really not mandatory and reading the changelog could be hard to follow without proper understanding of how Pandoc is working. 
You _could_ subscribe to [Pandoc mailing list](https://groups.google.com/g/pandoc-announce).
But you might definitely need to comb through the [changelog](https://pandoc.org/releases.html) when noticing something amiss.

Pay attention to the Pandoc version that you're using locally, on continuous integration, especially when something only works on your machine. 

To know what Pandoc version you're running you can use...

- `rmarkdown::pandoc_version()` which returns the version used by **rmarkdown**;
- `quarto pandoc --version` (in a command line) which returns the version internal to Quarto;
- [`pandoc::pandoc_version()`](https://cderv.github.io/pandoc/reference/pandoc_version.html) which returns the version for the default  pandoc (the active one, usually the most recent one among the pandoc version **installed with the R package**);
- `pandoc::pandoc_system_version()` which returns the version of `pandoc` found in PATH;
- `pandoc::pandoc_rstudio_version()` which returns the version of the Pandoc built in the IDE (could be different version of `rmarkdown::pandoc_version()` which could be one from PATH or `RSTUDIO_PANDOC` environment variable).

So yes, paying attention to the Pandoc version does require some, hum, attention.

With Quarto it is less of an issue as with say R Markdown since Quarto will pin a Pandoc version.
You can imitate this behavior: if you have a Pandoc version that works well for your use case, just install that one on your production GitHub Actions workflow for instance.[^hugo]

[^hugo]: That's the strategy one can use with Hugo when building a static website with Hugo! Saving oneself many headaches.

The pandoc package also has very handly withr-like helpers to run code with a given Pandoc version: [`pandoc::local_pandoc_version()` and `pandoc::with_pandoc_version()`](https://cderv.github.io/pandoc/reference/with_pandoc_version.html); as well as a `version` argument in `pandoc::pandoc_convert()`.

## Beyond the official docs, beyond Pandoc

If reading the docs and experimenting doesn't get you where you need to be, what to do?
- John MacFarlane's answers in GitHub issues can be enlightening. See this [example](https://github.com/jgm/pandoc/issues/6259#issuecomment-841859989).
- You could scour, or participate in, the [Pandoc discussion mailing list](https://groups.google.com/g/pandoc-discuss).
- If your problem is related to Pandoc for R Markdown or Quarto specifically, head over to the [Posit community forum](https://community.rstudio.com/) or their respective Github Repo.

Or what if Pandoc is not enough for your use case?

- [Quarto](https://quarto.org/) is in fact a very user friendly layer of Pandoc with a lot of additional features and new defaults to make Pandoc better for scientific publishing. So usually if Pandoc is not enough (or hard to use), go look at Quarto (which has projects, etc.). Quarto with .md file is a like a cleverer Pandoc (no computation or else, only like Pandoc some text to convert).
- You could _build upon_ Pandoc.
Christophe recommends learning about [Lua filters](https://pandoc.org/lua-filters.html). See also [Lua filters for Quarto](https://quarto.org/docs/extensions/filters.html);
[Lua filters for R Markdown](https://bookdown.org/yihui/rmarkdown-cookbook/lua-filters.html).
Maëlle hasn't learnt about them yet, and tends to convert things into HTML then parse them with xml2[^hammer].

[^hammer]: It might make workflows feel like [The Incredible Machine](https://en.wikipedia.org/wiki/The_Incredible_Machine_(video_game)).

- The rarest case would be to open a Pandoc feature request.

- You could use something else than Pandoc, like the [commonmark R package by Jeroen Ooms](https://docs.ropensci.org/commonmark/) or the [markdown package by Yihui Xie](https://pkgs.rstudio.com/rmarkdown/articles/rmarkdown.html) or the [tinkr package by Zhian Kamvar](https://docs.ropensci.org/tinkr/) that build upon it.

## Conclusion

In this post we shared some useful resources for troubleshooting your Pandoc problems.
It's crucial to remember your Pandoc skills and vocabulary will improve with practice.

As an R user, do not forget that Pandoc is under a lot of your publication tools; and that there's a handy R package to interact with Pandoc: pandoc.

If you enjoy playing with files in various formats, you might also appreciate reading about [rtika](/blog/2018/04/25/rtika-introduction/) by Sasha Goodman.

[^dash]: Maëlle thought these were called "long dashes". Speaking Pandoc sometimes required having some typography vocabulary!
