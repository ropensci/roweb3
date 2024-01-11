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

In a previous tech note we exemplified the [use of babeldown for translating a blog post](/blog/2023/09/26/how-to-translate-a-hugo-blog-post-with-babeldown/), in a workflow supported by Git.
Now, we use babeldown for translating **living** documents, such as our regularly updated dev guide, where translations do not only need to be created but also kept in sync with the main language version.

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
[1] "29dd0b4c308a63952a2905140620f8ead24d1f11"
```

```r
gert::git_log(repo = dir)
```

```
                                    commit                      author
1 29dd0b4c308a63952a2905140620f8ead24d1f11 Jane Doe <jane@example.com>
                 time files merge        message
1 2024-01-11 12:11:34     2 FALSE First commit\n
```

## Changing the English document

Now imagine we change the English document.


```r
new_english_text <- c("# a title", "", "this is some text", "", "awesome", "", "## subtitle", "")
brio::write_lines(
  new_english_text,
  file
)
gert::git_add(fs::path_file(file), repo = dir)
```

```
    file   status staged
1 bla.md modified   TRUE
```

```r
gert::git_commit("Second commit", repo = dir)
```

```
[1] "19adf911871eb4588b4d529db6c02db2fce3fb2d"
```


```
# a title

this is some text

awesome

## subtitle
```

## Updating the translation

We don't want to send the whole document to DeepL API again!
Indeed, the translation of text fragments that haven't changed shouldn't change: that translation results from careful work by human translators. 
Furthermore, if we were to send it to the API again, we'd use credits again.

Fortunately we have two babeldown functions at our disposal:

- `babeldown::deepl_translate_markdown_string()` in case we can easily see what fragment of text has bee changed. In that case we copy-paste it into the function. We won't exemplify this approach here.
- `babeldown::deepl_update()` that operates more automatically, but might change more text than needed as it will send a whole paragraph to DeepL API if it changed, as opposed to a single sentence.


```r
Sys.setenv("DEEPL_API_URL" = "https://api.deepl.com")
Sys.setenv(DEEPL_API_KEY = keyring::key_get("deepl"))
babeldown::deepl_update(
 path = file,
 out_path = out_file,
 source_lang = "EN",
 target_lang = "FR",
 formality = "less",
 yaml_fields = NULL
)
```

Let's look at the new French document:


```
# titre

ceci est du texte

## sous-titre

chouette !
```

One would then carefully look at the Git diff to ensure only what was needed was changed, then commit the automatic translation.
That translation would then be reviewed by human translators, at least in rOpenSci's processes.

You can also find an example of `babeldown::deepl_update()` in a [Pull request](https://github.com/maelle/auto-update-translations/pull/1): the first two commits update the English document, the third one uses the function to update the Spanish document.

## How `babeldown::deepl_update()` works under the hood

Contrary to what one might guess, `babeldown::deepl_update()` doesn't use the Git diff at all!
Although that definitely was the first idea we explored.

`babeldown::deepl_update()` does scour the Git log to use the snapshot of the main language version that was in sync with the translation.
It's the "old English document", that goes with the "old French document".
The old English document is the English document as it was the last time the French document was featured in a Git commit.
The French document is the French document was it was in that same commit snapshot.

We have the "new English document" and what's missing is the "new French document".
We want that new French document to use as much as possible of the old French document, only using an automatic translation for the parts that are new.

The function uses an XML representation of the documents, as created by [tinkr](https://docs.ropensci.org/tinkr).
A necessary condition for using `babeldown::deepl_update()` is that the old English document and the old French document need to have the same XML structure: say, one heading followed by two paragraphs then a list.

For each child of the body of the new English document (a paragraph, a list, a heading...), `babeldown::deepl_update()` tries finding the same tag in the old English document ([identified by having the same `xml2::xml_text()` and children of the same type](https://github.com/ropensci-review-tools/babeldown/blob/e8ef563eca232f1ba08b84c7bb0f999d4f452938/R/update.R#L136)).
If it finds the same tag, it uses the tag located at the same position in the old French document.
If it does not find it, it sends it to DeepL API.

A limitation of the approach is that for a list where we changed one item for instance, the whole list would be sent to the API, as opposed to only the item.

## Conclusion

In this post we explained how to use babeldown to update translations of living document.
We at rOpenSci are ourselves users of babeldown for this scenario!
Maintaining translations is time consuming but important work.
We'd be thrilled to hear your feedback if you use `babeldown::deepl_update()`!
