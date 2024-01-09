---
title: How to Update a Translation with Babeldown
author: 
- Maëlle Salmon
date: '2024-02-09'
slug: deepl-update-babeldown
categories: []
output: hugodown::md_document
tags:
  - tech notes
  - multilingual
---


As part of our [multilingual publishing project](/multilingual-publishing/), and with [funding from the R Consortium](https://www.r-consortium.org/all-projects/awarded-projects/2022-group-2), we've worked on the R package [babeldown](https://docs.ropensci.org/babeldown/) for translating Markdown-based content using the DeepL API.
In this tech note, we'll show how you can use babeldown to update a translation after you've slightly edited a document in its main language version!

## Initial situation: an English document and its French translation

Let's assume we have an English document called `bla.md`.


```r
dir <- withr::local_tempdir()
file <- file.path(dir, "bla.md")
fs::file_create(file)
english_text <- c("# header", "", "this is some text", "", "## subtitle", "", "nice!")
brio::write_lines(english_text, file)
```


```
# header

this is some text

## subtitle

nice!
```

We'd have translated it with babeldown, then edited the translation manually.


```r
Sys.setenv("DEEPL_API_URL" = "https://api.deepl.com")
Sys.setenv(DEEPL_API_KEY = keyring::key_get("deepl"))

out_file <- file.path(dir, "bla.fr.md")
deepl_translate(
  path = file,
  out_path = out_file,
  source_lang = "EN",
  target_lang = "FR",
  formality = "less",
  yaml_fields = NULL
)
```



Here's the French text:



```
# titre

ceci est du texte

## sous-titre

chouette !
```

At this stage let's set up the Git infrastructure for the folder containing the two documents.
In real life, we might already have it in place.
The important thing is to start tracking changes before we edit the English document again.


```r
gert::git_init(dir)
gert::git_config_set("user.name", "Jane Doe", repo = dir)
gert::git_config_set("user.email", "jane@example.com", repo = dir)
gert::git_add(c(fs::path_file(file), fs::path_file(out_file)), repo = dir)
```

```
       file status staged
1 bla.fr.md    new   TRUE
2    bla.md    new   TRUE
```

```r
gert::git_commit_all("First commit", repo = dir)
```

```
[1] "743c99423b3374d834503b3beb3317bdf454bf4d"
```

```r
gert::git_log(repo = dir)
```

```
                                    commit                      author
1 743c99423b3374d834503b3beb3317bdf454bf4d Jane Doe <jane@example.com>
                 time files merge        message
1 2024-01-09 15:57:10     2 FALSE First commit\n
```

## 
