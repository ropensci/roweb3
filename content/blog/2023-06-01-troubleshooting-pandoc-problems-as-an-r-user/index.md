---
slug: "troubleshooting-pandoc-problems-as-an-r-user"
title: Troubleshooting Pandoc Problems as an R User
author:
  - Maëlle Salmon
  - Christophe Dervieux
# Set the date below to the publication date of your post
date: 2023-06-01
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

The Pandoc CLI by [John MacFarlane](https://johnmacfarlane.net/) is a really useful tool: for instance, rOpenSci community manager Yanina Bellini Saibene recently asked Maëlle whether she could convert a Google Document into a Quarto book.
Maëlle solved the request with a combination of Pandoc (conversion from docx to HTML then to Markdown through [`pandoc::pandoc_convert()`](https://cderv.github.io/pandoc/reference/pandoc_convert.html)) and XPath.
You can find the resulting experimental package [quartificate](https://github.com/ropenscilabs/quartificate) on GitHub.
Pandoc is not only anecdotally useful: it's part of the [R Markdown](https://rmarkdown.rstudio.com/) machinery, and powers [Quarto](https://quarto.org/).
So, whether you're juggling documents in various formats or simply trying to publish your reproducible analysis, you might have been using Pandoc (even if you didn't know!), or maybe you *should* be using Pandoc.

Sometimes, all goes well, sometimes, you think of Pandoc because it seems to be the source of an error.
In such cases, Maëlle, who's witnessed Christophe's detective work[^1] in several GitHub issues, tends to wonder "What would Christophe do?".
The answer is probably "read the docs and investigate".
In this post, we gather resources and tips to help you troubleshoot Pandoc as an R user.

[^1]: If you want to read examples of troubleshooting, see this [rmarkdown issue](https://github.com/rstudio/rmarkdown/issues/2437) and the corresponding [Pandoc issue](https://github.com/jgm/pandoc/issues/8499); or this [Pandoc issue](https://github.com/jgm/pandoc/issues/7352).

## Pandoc 101

Say we have a Markdown file and want to convert it to HTML.
We can do it from R calling the [`pandoc::pandoc_convert()`](https://cderv.github.io/pandoc/reference/pandoc_convert.html)[^2] function that handily wraps Pandoc.
If you are rather a terminal first user, the [`pandoc` CLI tool](https://pandoc.org/MANUAL.html) is your friend.
In the rest of this post, we will use the pandoc R package for examples.

[^2]: The R package pandoc is quite a recent development <https://github.com/cderv/pandoc>, and provides access to the Pandoc CLI from R.
    You can also use the more usual [`rmarkdown::pandoc_convert()`](https://pkgs.rstudio.com/rmarkdown/reference/pandoc_convert.html) to access pandoc used with R Markdown.


```r
# Create an example temporary markdown file
md_lines <- c(
  "# Important announcement", "",
  "[Pandoc](https://pandoc.org/) is **great**!"
)
md_file <- withr::local_tempfile()
brio::write_lines(md_lines, md_file)

# Convert to temporary html file!
html_file <- withr::local_tempfile()
pandoc::pandoc_convert(
  file = md_file, 
  from = "markdown", 
  to = "html", 
  output = html_file
)
```

```
## /tmp/Rtmpr85706/file279e54e1cb0f
```

```r
# Read what we've got!
brio::read_lines(html_file)
```

```
## [1] "<h1 id=\"important-announcement\">Important announcement</h1>"
## [2] "<p><a href=\"https://pandoc.org/\">Pandoc</a> is"             
## [3] "<strong>great</strong>!</p>"
```

That magic of **going from one Markup language to another** is Pandoc's job.
Pandoc supports many input and output formats, with tweaks available for various elements.

For instance, we could change the call slightly to not get an identifier for the h1 heading in the HTML (i.e., remove the `id` part of the `<h1>` tag).


```r
pandoc::pandoc_convert(
  file = md_file, 
  from = "markdown-auto_identifiers", 
  to = "html", 
  output = html_file
)
```

```
## /tmp/Rtmpr85706/file279e54e1cb0f
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

If you're calling Pandoc yourself, directly or via Christophe's [pandoc package](https://cderv.github.io/pandoc/), you will obviously know when Pandoc is at play.

In other cases, Pandoc might be buried under layers of other software.
For instance with R Markdown, rmarkdown package will first call knitr before calling Pandoc.
Same with Quarto that will call knitr or jupyter before calling Pandoc.

Here are some elements to help you pinpoint whether Pandoc is the thing tripping you up:

-   Basically, if you're getting an error with your R code, Pandoc is not at fault.

-   You might actually see a Pandoc error in the output, which usually mean something is wrong during the Pandoc conversion step.
    Debugging using the input file passed to Pandoc will be the easiest.
    If the tool you use is creating this input for you (like R Markdown or Quarto), add the configuration to keep the Markdown input. See next subsection for more details!

-   If you're having a case of "but it worked yesterday!", for instance "I did not change anything on R side but this does not work anymore: maybe the Pandoc version changed? Switching the Pandoc version, perhaps using [the pandoc package's functionality for handling the Pandoc version](https://cderv.github.io/pandoc/reference/index.html#handle-pandoc-version), can show a problem with a new Pandoc version, however this is rare.

In all cases, Pandoc might also be your problem if you're pushing the limits of what you can achieve with another tool using Pandoc.
For instance, if you want some particular conversion, like having emojis à la `:grin:` rendered to actual emojis in your Quarto reveal.js slides, you might need to tweak something related to Pandoc.

### How to access Pandoc's input

Even though Pandoc is a generic converter that can handle several formats as inputs and outputs, in the R Markdown and Quarto ecosystem, the input format will be always be Markdown through a `.md` file.

When using a `.Rmd` or a `.qmd`, the document will be converted to a `.md` version by knitr with all code and results sewed together.
This is the input that Pandoc will used to convert to the desired output.
The R Markdown cookbook by Yihui Xie, Christophe Dervieux and Emily Riederer features a [handy diagram](https://bookdown.org/yihui/rmarkdown-cookbook/rmarkdown-process.html) to understand this relation.

Usually tools like these will have some configuration so that you can keep the intermediates for debugging more easily: `keep_md` or `keep-md` respectively for R Markdown and Quarto formats.

Exploring this intermediate file input for Pandoc can help understand what will be seen by Pandoc and can help you debug, or at least build a better reproducible example of your problem.

## Speaking Pandoc linguo

Now that you understand the relationship between R and Pandoc, the next step is to understand how Pandoc works.
Did you think we wouldn't get this far?
Unfortunately, it is when we start troubleshooting a tool that all the *magic* is unveiled 😉.

First of all, how do you find Pandoc docs?
You can type [`pandoc::pandoc_browse_manual()`](https://cderv.github.io/pandoc/reference/pandoc_browse_manual.html).
Or you can bookmark the [Pandoc manual URL](https://pandoc.org/MANUAL.html).
It's actually all-caps MANUAL which underlines the importance of reading it: if you skim through it at least once, you will have a better idea of what's there... and of how things are referenced in the Pandoc world, so you can ask better questions to your search engine or collaborators!
You can even be [rewarded for having read the Pandoc MANUAL](https://yihui.org/en/2017/11/thanks-tj-mahr/) !

Now, how else does one learn how to "speak Pandoc"?

You can use a search engine to refine your keywords: you might find threads with questions by people using the same rough vocabulary as yours, with more refined answers.
For instance, Maëlle was recently looking for an option that she knew existed, to transform things that look like URLs in Markdown, say `https://ropensci.org`, into links in HTML, say `<a href="https://ropensci.org">https://ropensci.org</a>`.
She first looked for "raw/naked links", before (re)discovering they're called bare URIs, with the extension called `autolink_bare_uris`.

Speaking of extensions!
What is the basic vocabulary one needs to troubleshoot a Pandoc issue?
It comes with time but a good starting list would be...

### Formats

The format (doh) Pandoc converts from and to.
There's an impressive list on the [Pandoc homepage](https://pandoc.org/).
docx, gfm (GitHub flavored Markdown), HTML, RTF...

In Quarto and R Markdown you are by default[^3] expected to be writing in "Pandoc's Markdown" which is a special flavor of Markdown.

[^3]: So many things to customize!
    The format, the extensions (see below) of the format...

### Extension

[Extensions](https://pandoc.org/MANUAL.html#extensions) modify the behavior of Pandoc readers and writers.
Extensions are extensions (or contractions, since they can be turned off) of *formats*, not of *Pandoc*.
For instance, the ["smart"](https://pandoc.org/MANUAL.html#extension-smart) extension will interpret some typography elements, like two dashes as en-dash[^4], and is enabled by default for Markdown. 
So if you want to convert from Markdown to HTML without transforming the two dashes, you'd use `markdown-smart` as input format. 
That means `markdown` *minus* the `smart` extension.
Not all extensions work for a format, so make sure you read the docs (😉). You can use [`pandoc::pandoc_list_extensions()`](https://cderv.github.io/pandoc/reference/pandoc_list_extensions.html) to list extensions available for a format.
A format Maëlle often uses when producing slides with Quarto is

[^4]: Maëlle thought these were called "long dashes".
    Speaking Pandoc sometimes required having some typography vocabulary!

``` yaml
format:
  revealjs:  
    from: markdown+emoji
```

to turn on the _indispensable_ emoji support.
🎉

Below is an example where we call Pandoc directly.
Note that in this example, we use text strings directly, without writing anything to files, which can be handy at times!


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

Usually, using R Markdown or Quarto, there is not need to modify extensions but they can be the source of the troubles or differences you see sometimes.

### Options

See how we refrained from framing extensions as "options", because [options](https://pandoc.org/MANUAL.html#options) are another thing!
They're sort of arguments to Pandoc calls.
For instance `--mathml` is an option for rendering math to MathML.

Some options might be hidden by the tool you use to call Pandoc, or handily exposed as argument: for instance, the `to` argument of the [`pandoc::pandoc_convert()`](https://cderv.github.io/pandoc/reference/pandoc_convert.html) function is actually a Pandoc option.

Below, we use an option to shift heading levels by 1 which increases the heading level number thereby reducing the heading importance.


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

See how the "Important announcement" header becomes an h *2* in the output.

Those options can be set with Pandoc using YAML format through a [default file](https://pandoc.org/MANUAL.html#defaults-files).
This is another advanced technique which we won't cover in any detail... but now you know about default files[^5].

[^5]: By the way, this is what Quarto leverages internally so that YAML options from document can be passed to Pandoc.
    Useful to know if you're debugging Pandoc within Quarto.

### Variables

[Variables](https://pandoc.org/MANUAL.html#variables) are the metadata you might be accustomed to passing to Pandoc via the YAML header (for R Markdown and Quarto).
They will generally be used in templates to opt-in some specific content and behavior for the output format.

They can also be passed via the command line, for instance rmarkdown's output format function can create these as command line arguments with [`rmarkdown::pandoc_variable_arg()`](https://pkgs.rstudio.com/rmarkdown/reference/pandoc_args.html).

### Templates

If you ask Pandoc to create a reveal.js slidedeck, it will do so using its default [reveal.js template](https://github.com/jgm/pandoc-templates/blob/master/default.revealjs).
The template is filled with your Markup content but also with variables like author names.
You can supply your own [custom templates](https://pandoc.org/MANUAL.html#templates) by using the `--template` option.
[pandoc::pandoc_export_template()](https://cderv.github.io/pandoc/reference/pandoc_export_template.html) will create a file with the default template for a specific version of Pandoc which you can explore, or use as a starting point for creating your own.

### Raw attributes

Say you have raw HTML in your Markdown document.
You can protect it from Pandoc parsing by wrapping it in a ["raw attribute"](https://pandoc.org/MANUAL.html#generic-raw-attribute).
This is for instance used by [hugodown](https://github.com/r-lib/hugodown/pull/53) to protect Hugo shortcodes.

Be careful, this is part of the `raw_attribute` extension so might not be included by default and may not be supported by your chosen format.

### How to use these things?

What you need to solve a given Pandoc challenge might be a format or extension or option.
It's up to you to find the correct combination, but having some vague understanding of what these things are and how to use them, will help you.
Another thing that will help you, is to know how to pass these things to Pandoc using the Pandoc interface of your choice:

-   If you're calling Pandoc directly or with the pandoc package, it should be relatively straightforward (see the links and examples above).
-   If you're using R Markdown or Quarto you might need to search for, say ["R Markdown custom Pandoc templates"](https://bookdown.org/yihui/rmarkdown/template-pandoc.html). Besides, there might be a more native R Markdown or Quarto way to reach your goal without messing with Pandoc. It is important to keep in mind that those tools leverage Pandoc extensively and aim to make it more user friendly: concepts are the same but they should be easier to use, if not quite as varied.

## How to experiment with Pandoc?

Once you know your issue is Pandoc, how do you create a reproducible example?
Interestingly, although it's great to create a Pandoc reprex, you **cannot** create it with reprex, because reprex uses R Markdown machinery.

In this post we've shown a few examples, calling Pandoc directly on strings, or on [temporary files created with withr](#pandoc-101).

Here's Christophe's usual Rmd reprex provided as an RStudio [snippet](https://support.posit.co/hc/en-us/articles/204463668-Code-Snippets-in-the-RStudio-IDE):

``` r
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

When troubleshooting pandoc behavior through other tools here is some useful tips:

-   You can test Pandoc in your browser on [pandoc.org/try](https://pandoc.org/try/).

-   With Quarto, you can access the bundled pandoc with `quarto pandoc` command.
    It will be like calling `pandoc` directly, but using the version bundled with the Quarto version you are using

-   With R Markdown, [`rmarkdown::find_pandoc()`](https://pkgs.rstudio.com/rmarkdown/reference/find_pandoc.html) will allow you to know where is the Pandoc binary located.
    You can run it in terminal, or use the [`rmarkdown::pandoc_*` family of functions](https://pkgs.rstudio.com/rmarkdown/reference/index.html#pandoc).

-   Within R, the pandoc package can help you run a specific version, compare between versions and isolate your Pandoc work.
    Whichever tool you are using, once you know the version number, you can easily run Pandoc itself.

## Keeping up with Pandoc, or freezing Pandoc!

Keeping up with Pandoc is really not mandatory and reading the changelog could be hard to follow without proper understanding of how Pandoc works.
You *could* subscribe to [Pandoc mailing list](https://groups.google.com/g/pandoc-announce).
But you might need to comb through the [changelog](https://pandoc.org/releases.html) when noticing something amiss.

Pay attention to the Pandoc version that you're using locally and on continuous integration, especially when something only works on your machine.

To know what Pandoc version you're running you can use...

-   [`rmarkdown::pandoc_version()`](https://pkgs.rstudio.com/rmarkdown/reference/pandoc_available.html) which returns the version used by **rmarkdown**;
-   `quarto pandoc --version` (in a command line) which returns the version internal to Quarto;
-   [`pandoc::pandoc_version()`](https://cderv.github.io/pandoc/reference/pandoc_version.html) which returns the version for the default pandoc (the active one, usually the most recent one among the pandoc version **installed with the R package**);
-   [`pandoc::pandoc_system_version()`](https://cderv.github.io/pandoc/reference/system_pandoc.html) which returns the version of `pandoc` found in PATH;
-   [`pandoc::pandoc_rstudio_version()`](https://cderv.github.io/pandoc/reference/rstudio_pandoc.html) which returns the version of the Pandoc built in the IDE (could be different version of [`rmarkdown::pandoc_version()`](https://pkgs.rstudio.com/rmarkdown/reference/pandoc_available.html) which could be one from PATH or `RSTUDIO_PANDOC` environment variable).

So yes, paying attention to the Pandoc version does require some  attention.

With Quarto it is less of an issue than with R Markdown since Quarto will pin a Pandoc version.
With R Markdown, the design is to work well with the latest Pandoc version while still working with older versions.
This is important to understand as it could mean different systems may get different results even if they have the same rmarkdown version because Pandoc version is not the same.
As often with R, [update regularly](https://bookdown.org/yihui/rmarkdown-cookbook/install-pandoc.html) unless you a specific reason not to.
  
Special advice if you build with Pandoc on CI: Pin a pandoc version for your production setup (GitHub Actions workflow for instance) so that it matches your local development environment.[^6]

[^6]: That's also a strategy one can use with Hugo when building a static website!
    Saving oneself many headaches.

The pandoc package also has very handly withr-like helpers to run code with a given Pandoc version: [`pandoc::local_pandoc_version()` and `pandoc::with_pandoc_version()`](https://cderv.github.io/pandoc/reference/with_pandoc_version.html); as well as a `version` argument in [`pandoc::pandoc_convert()`](https://cderv.github.io/pandoc/reference/pandoc_convert.html).
This special feature aims at making testing and debugging between several Pandoc versions very easy!

## Beyond the official docs, beyond Pandoc

If reading the docs and experimenting doesn't get you where you need to be, what to do?

-   John MacFarlane's answers in GitHub issues can be enlightening. See this [example](https://github.com/jgm/pandoc/issues/6259#issuecomment-841859989).
-   You could scour, or participate in, the [Pandoc discussion mailing list](https://groups.google.com/g/pandoc-discuss).
-   If your problem is related to Pandoc for R Markdown or Quarto specifically, head over to the [Posit community forum](https://community.rstudio.com/) or their respective Github repositories.

Or what if Pandoc is not enough for your use case?

-   [Quarto](https://quarto.org/) is in fact a very user friendly layer of Pandoc with a lot of additional features and new defaults to make Pandoc better for scientific publishing. So usually if Pandoc is not enough (or hard to use), go look at Quarto (which has projects, etc.). Using Quarto with straight Markdown files (.md) is a like using a cleverer Pandoc (no R, no computation, only text conversion).
-   You could *build upon* Pandoc. Christophe recommends learning about [Lua filters](https://pandoc.org/lua-filters.html). See also [Lua filters for Quarto](https://quarto.org/docs/extensions/filters.html); [Lua filters for R Markdown](https://bookdown.org/yihui/rmarkdown-cookbook/lua-filters.html). Maëlle hasn't learnt about them yet, and tends to convert things into HTML then parse them with xml2[^7].
-   You could open a Pandoc feature request
-   You could use something else than Pandoc, like the [commonmark R package by Jeroen Ooms](https://docs.ropensci.org/commonmark/) or the [markdown package by Yihui Xie](https://pkgs.rstudio.com/rmarkdown/articles/rmarkdown.html) or the [tinkr package by Zhian Kamvar](https://docs.ropensci.org/tinkr/) that build upon it.

[^7]: Although this might might make workflows feel like [The Incredible Machine](https://en.wikipedia.org/wiki/The_Incredible_Machine_(video_game)).

## Conclusion

In this post we shared some useful resources for troubleshooting your Pandoc problems.
It's crucial to remember that while this can seem like a lot, your Pandoc skills and vocabulary will improve with practice!

As an R user, do not forget that Pandoc supports a lot of your publication tools; and that there's a handy R package for interacting with Pandoc: pandoc 🎉.

If you enjoy playing with files in various formats, you might also appreciate reading about [rtika](/blog/2018/04/25/rtika-introduction/) by Sasha Goodman.
