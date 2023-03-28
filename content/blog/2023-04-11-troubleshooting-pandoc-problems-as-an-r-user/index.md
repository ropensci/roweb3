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
description: "How to solve your Pandoc problems thanks to documentation reading, experimentation"
---

Pandoc by John MacFarlane is a really useful tool: for instance, 
rOpenSci community manager Yanina Bellini Saibene recently asked Maëlle whether she could convert a Google Docs into a Quarto book.
Maëlle solved the request with a combination of Pandoc (conversion from docx to HTML then to Markdown through [`pandoc::pandoc_convert()`](https://cderv.github.io/pandoc/reference/pandoc_convert.html)) and XPath.
You can find the resulting experimental package [quartificate](https://github.com/ropenscilabs/quartificate) on GitHub.
Pandoc is not only anecdotically useful: it's part of the [R Markdown](https://bookdown.org/yihui/rmarkdown-cookbook/) machinery, and powers [Quarto](https://quarto.org/).
So, whether you're juggling documents in various formats or simply trying to publish your reproducible analysis, you might have been using Pandoc, or maybe you _should_ be using Pandoc.

Sometimes, all goes well, sometimes, you think of Pandoc because it seems to be the source of an error.
In such cases, Maëlle, who's witnessed Christophe's detective work in several GitHub issues, tend to wonder "What would Christophe do?".
The answer is probably "read the docs and investigate".
In this post, we gather resources and tips to help you troubleshoot Pandoc as an R user.

## When is Pandoc the problem (or solution)?

If you're calling Pandoc yourself, directly or via the [pandoc package](https://cderv.github.io/pandoc/) by Christophe, you will obviously know when Pandoc is at play.

In other cases, Pandoc might be buried under layers of other software.
For instance, when rendering an R Markdown document, Pandoc is an important step between knitr's work and the actual output document.
The R Markdown cookbook by Yihui Xie, Christophe Dervieux and Emily Riederer features a [handy diagram](https://bookdown.org/yihui/rmarkdown-cookbook/rmarkdown-process.html).

Here are some elements to help you pinpoint whether Pandoc is the thing tripping you up:

- Basically, if you're getting an error with your R code, Pandoc is not at fault.

- You might actually see a Pandoc error in the output. TODO: explain keep_md

- If you're having a case of "but it worked yesterday!", for instance "I did not change anything on R side but this does not work anymore: maybe the Pandoc version changed? Switching the Pandoc version, perhaps using [the pandoc package's functionality for handling the Pandoc version](https://cderv.github.io/pandoc/reference/index.html#handle-pandoc-version), can show a problem with a new Pandoc version, however this is rare.

In all cases, Pandoc might also be your problem if you're pushing the limits of what to achieve with another tool using Pandoc. For instance, if you want some particular conversion, like having emojis à la `:grin:` rendered to actual emojis, you might need to tweak something related to Pandoc.

## Speaking Pandoc linguo

First of all, how do you find Pandoc docs?
You can type [`pandoc::pandoc_browse_manual()`](https://cderv.github.io/pandoc/reference/pandoc_browse_manual.html).
Or you can bookmark the [Pandoc manual URL](https://pandoc.org/MANUAL.html).
It's actually all-caps MANUAL which underlines the importance of reading it:
if you skim through it at least once, 
you will have a better idea of what's there... and of how things are called in the Pandoc world, so you can ask better questions to your search engine or collaborators!

Now, how else does one learn how to "speak Pandoc"?

You can use a search engine to refine your keywords: you might find threads with questions by people using the same rough vocabulary as yours, with more refined answers. For instance, Maëlle was recently looking for an option that she knew existed, to transform things that look like URLs, say `https://ropensci.org` in Markdown, into links in HTML, say `<href="https://ropensci.org">https://ropensci.org</a>`.
She first looked for “raw/naked links”, before (re)discovering they're called bare URIs, with the extension called `autolink_bare_uris`.

Speaking of extensions! What is the basic vocabulary one needs to troubleshoot a Pandoc issue? It comes with time but a good starting list would be

- **format**. The format (doh) Pandoc converts from and to. There's an impressive list on [Pandoc homepage](https://pandoc.org/). docx, gfm (GitHub flavored Markdown), HTML, RTF...

- **extension**. [Extensions](https://pandoc.org/MANUAL.html#extensions) are modifiers of the behavior of Pandoc readers and writers. Extensions are extensions (or contractions, since they can be turned off) of _formats_, not of _Pandoc_. For instance, the ["smart" like two dashes as en-dash[^dash], is enabled by default for markdown so if you want to convert from Markdown to HTML without transforming the two dashes, you'd use `markdown-smart` as input format. Not all extensions work for a format, make sure you read the docs (:wink:), use [`pandoc::pandoc_list_extensions()`](https://cderv.github.io/pandoc/reference/pandoc_list_extensions.html) to list extensions available for a format.
A format Maëlle has used when producing slide with Quarto is

``` yaml
format:
  revealjs:  
    from: markdown+emoji
```

to turn on the indispensable emoji support. :tada:

- **option**. See how we refrained to frame extensions as options, because [options](https://pandoc.org/MANUAL.html#options) are another thing! They're sort of arguments to Pandoc calls. For instance `--mathml` is an option for rendering math to MathML. 

- **variable**. [variables](https://pandoc.org/MANUAL.html#variables) are the metadata you might be used to passing to Pandoc via YAML metadata (for R Markdown and Quarto).
- **raw attribute**. Say you have raw HTML in your Markdown document. You can protect it from Pandoc parsing by wrapping it in a "raw attribute". This is for instance used by [hugodown](https://github.com/r-lib/hugodown/pull/53) to protect Hugo shortcodes. 

What you _need_ to solve a given Pandoc challenge might be a format or extension or option.
It's up to you to find the correct combination, but having some vague understanding of what these things are and how to use them, will help you.

## How to experiment with Pandoc?

Once you know your issue is Pandoc, how do you create a reproducible example?
Interestingly, although it's great to create a Pandoc reprex, you **cannot** create it with reprex, because reprex uses R Markdown machinery.

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

## Keeping up with Pandoc, or freezing Pandoc!

Keeping up with Pandoc is really not mandatory and reading the changelog could be hard to follow without proper understanding of how Pandoc is working. 
You _could_ subscribe to [Pandoc mailing list](https://groups.google.com/g/pandoc-announce).
But you might definitely need to comb through the [changelog](https://pandoc.org/releases.html) when noticing something amiss.

Pay attention to the Pandoc version that you're using locally, on continuous integration, etc. 
To know what Pandoc version you're running you can use [`pandoc::pandoc_version()`](https://cderv.github.io/pandoc/reference/pandoc_version.html).
With Quarto it is less of an issue as with say R Markdown since Quarto will pin a Pandoc version.

The pandoc package also has very handly withr-like helpers to run code with a given Pandoc version: [`pandoc::local_pandoc_version()` and `pandoc::with_pandoc_version()`](https://cderv.github.io/pandoc/reference/with_pandoc_version.html)

## Beyond the official docs, beyond Pandoc

If reading the docs and experimenting doesn't get you where you need to be, what to do?
- John MacFarlane's answers in GitHub issues can be enlightening. See this [example](https://github.com/jgm/pandoc/issues/6259#issuecomment-841859989).
- You could scour, or participate in, the [Pandoc discussion mailing list](https://groups.google.com/g/pandoc-discuss).
- If your problem is related to Pandoc for R Markdown or Quarto specifically, head over to the [Posit community forum](https://community.rstudio.com/).

Or what if Pandoc is not enough for your use case?

- You could _build upon_ Pandoc.
Christophe recommends learning about [Lua filters](https://pandoc.org/lua-filters.html). See also [Lua filters for Quarto](https://quarto.org/docs/extensions/filters.html);
[Lua filters for R Markdown](https://bookdown.org/yihui/rmarkdown-cookbook/lua-filters.html).
Maëlle hasn't learnt about them yet, and tends to convert things into HTML then parse them with xml2.

- The rarest case would be to open a Pandoc feature request.

- You could use something else than Pandoc, like the [commonmark R package by Jeroen Ooms](https://docs.ropensci.org/commonmark/) or the [markdown package by Yihui Xie](https://github.com/rstudio/markdown) that builds upon it.

## Conclusion

In this post we shared some useful resources for troubleshooting your Pandoc problems.
It's crucial to remember your Pandoc skills and vocabulary will improve with practice.

As an R user, do not forget that Pandoc is under a lot of your publication tools; and that there's a handy R package to interact with Pandoc: pandoc.



[^dash]: Maëlle thought these were called "long dashes". Speaking Pandoc sometimes required having some typography vocabulary!