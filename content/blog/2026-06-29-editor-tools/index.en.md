---
slug: "editor-tools"
title: "FOSS Tools for Lazy Editors"
author:
  - Steffi LaZerte
date: 2026-06-29
tags:
  - community manager tools
  - editor
  - welcome
  - how-to
description: "How we streamlined the editing of our blog posts using 4 open-source tools that you could adopt too"
social: "@steffilazerte@fosstodon.org shares four tools she uses to streamline editing rOpenSci blog posts."
editor:
params:
  doi: "10.59350/3rymp-he260"
---

<!--- cSpell: ignore xkcd wordlists roweb chrischinchilla jolars  --->

I recently had the opportunity to learn what the term "nerd sniping" meant.
[Maëlle](/author/maëlle-salmon) pointed out a conversation on the rOpenSci Slack about something called Vale, meant for text linting.
I'd seen the comment, but honestly hadn't really understood what it was all about until Maëlle asked if I thought it'd be useful for editing the blog...

...time passes...

About three days later, I've hardly finished any of the blog post reviews I was planning to do.
I've been sucked down a rabbit hole of Vale setup, custom rules, and overrides.

It turns out that "Nerd Sniping" refers to the practice of throwing problems at nerds that distract them from what they were doing.

{{< figure src = "nerd_sniping.png" caption = "[xkcd Nerd Sniping](https://xkcd.com/356)" class = "center" width = 500 alt = "xkcd comic #356 Nerd Sniping. A comic where a shouted physics problem stops an engineer crossing the street so they are hit by a bus while contemplating the solution." >}}

That being said, it was a glorious hole to fall down!
It was just too bad that Maëlle sniped me two more times by asking me about my spell check setup in Positron and then by asking if Panache would help with translations.

I was pretty slow at my editorial duties that week!
But I did come out of the dive with a great editorial setup.

I've [edited](/author/steffi-lazerte) **a lot** of posts on the rOpenSci blog.
I take pride in helping writers get their ideas across with clarity, while not losing their own style.
I'm an opinionated editor, so I also try hard to ensure that writers understand when my suggestions are just my opinion, and when I think there are mistakes in style or content that really do need to be fixed.
I am also fussy about the details, about being consistent with capitalizations, about keeping ideas parallel, and about making sure that readers without the same background might still understand the gist of the post[^1].

[^1]: Don't judge *this* post by these ideals, I said I'm a opinionated *editor*, writing is completely different 😉.

As such, my post reviews can get a bit lengthy and it's not unreasonable for me to have 20-30 comments on a standard post.
That's not too problematic, but if I had to complain it might be about the technical edits, like fixing the capitalization of 'rOpenSci'[^2], ensuring headings are in sentence case, and that links to ropensci.org pages are relative.
These aren't complicated fixes, but if you have to remember to keep an eye out for them, and then create a GitHub PR review suggestion for each fix, it can become a tad tedious.

[^2]: It's **rO**pen**S**ci.
    Not Ropensci, not RopenSci and not ropenSci.

Maëlle's timely sniping helped me finalize my collection of tools to help streamline editorial tasks.

- Text Linting with [Vale](https://vale.sh/)
- Text Formatting with [Panache](https://panache.bz/)
- Text Spell checking with [CSpell](https://cspell.org/)
- Edits to GitHub PR suggestions with [GitHub Pull Requests](https://github.com/Microsoft/vscode-pull-request-github)

All of these tools can be installed and used in different ways.
They are also powerful with many different ways they can be customized or configured.
Here, I'll share with you how I use these tools as extensions in [Positron](https://positron.posit.co/) to help make it easier to write and edit posts for the rOpenSci blog.
Hopefully this inspires you to explore how you might set them up to support your workflows!

## General setup

For each tool, you'll want to install the Positron extension, and then set up your configuration.
Configurations can usually be specified at three different levels: the user (your system-wide setup which is how you want things to work in general), the project (project-wide setup which overrides your user setup if the project does things differently), and the file (file or file section setup which works at a very local scale).

This means you can have different rules for different projects, and override them as needed.
In the following examples, I'll show you how I do this for posts on the rOpenSci blog.

### Code Spell Checker (CSpell)

First is my spell checker, which probably doesn't need much explanation.
However, it's nice to use a spell checker which also works on code.
I use the [Code Spell Checker (cSpell)](https://github.com/streetsidesoftware/vscode-spell-checker) extension by Street Side Software and installed the languages extensions individually:

- Canadian English - Code Spell Checker
- French - Code Spell Checker
- Portuguese - Code Spell Checker
- Spanish - Code Spell Checker

Alternatively, you could also install the [`CSpell Bundled Dictionaries`](https://github.com/streetsidesoftware/vscode-cspell-dict-extensions#readme) instead.

To configure this extension, I added a project-level [`.cspell.json`](https://github.com/ropensci/roweb3/blob/main/.cspell.json) file which lists language overrides (to ensure `index.es.md` files go through the Spanish spellchecker, while `index.pt.md` files go through the Portuguese spellchecker, etc.), and dictionaries of words to consider 'correct'.

These dictionaries are initially created by functions from my [promoutils](https://docs.ropensci.org/promoutils) package, an R package for all my rOpenSci community workflows.
`wordlist_create()` creates a wordlist based on rOpenSci packages and author names, so they don't trigger the spell check if they aren't recognized.
`wordlist_update()` updates this list with new names as we need.

We keep these dictionaries in a [`.wordlists`](https://github.com/ropensci/roweb3/tree/main/.wordlists) folder.
Names are stored in the `.wordlists/names.txt` file, and we also have a `.wordlists/words.txt` file which stores words which are considered correct in the rOpenSci context (like 'usecases').

Finally, I include a list of globs for file paths we can ignore (I'm really not interested in spelling mistakes in the .git folder).

I should also note that I have a personal list of user words stored in my Positron user settings which lists words (like my name!)
which I want to be considered correct across all projects.

When writing posts, we can also override the language settings within a post using a special comment.
For example if we want to use [English and Portuguese for a post](https://github.com/ropensci/roweb3/blob/98a419ebb3efc5dcecc35b05265e83e6baa4f32a/content/blog/2026-06-02-ftc-guide/index.en.md?plain=1#L44) we could add `<--- cSpell: language en,pt-->` to the document.

We can also include post-specific words to ignore, which is handy for acronyms.
For example, if we wanted to [ignore the acronym `CSCW`](https://github.com/ropensci/roweb3/blob/98a419ebb3efc5dcecc35b05265e83e6baa4f32a/content/blog/2026-06-02-ftc-guide/index.en.md?plain=1#L76) we could use `<!--- cSpell: ignore CSCW --->`.

Spell check issues pop up as a warning in my text window, or as a list under "Spell Checker Issues By File" my lower window pane so I can review them, add them to word lists, or just mentally ignore them.

### Vale

For linting text (checking the *style* and *meaning* of the words) I use the [Vale VSCode](https://github.com/chrischinchilla/vale-vscode) extension by chrischinchilla[^3].

[^3]: There is also [Vale](https://github.com/vale-cli/vale-vscode) by errata-ai, but this extension has been [deprecated](https://github.com/vale-cli/vale-vscode#vale--vs-code) in favour of Vale VSCode.

To setup Vale I created a project-specific vale configuration file [`.vale.ini`](https://github.com/ropensci/roweb3/blob/main/.vale.ini)[^4] in the roweb3 repository.
I keep my personal `.vale.ini` file in a higher level folder that holds all my R projects.
In addition to the Vale configuration file, I also created a Vale styles folder in [`roweb3/.vale-styles`](https://github.com/ropensci/roweb3/tree/main/.vale-styles/).
This is where Vale rules are installed if we use predefined rules, and where I can put rOpenSci-specific rules for the blog.
The first time you use Vale you'll want to run `vale sync` in the terminal to install the rules.
I `.gitignore` all rules which are installed, but track and push custom rules.

[^4]: If you get an error on startup, you may need to tell Vale where this is explicitly by modifying Projects' settings.json file to include `"vale.valeCLI.config": ".vale.ini"`

Vale is where I've made the most customizations, especially with the rOpenSci Blog.

<!-- TODO: Add links to the configuration file for these items -->

- I've added a [specific Blog vocab list](https://github.com/ropensci/roweb3/blob/main/.vale-styles/config/vocabularies/Blog/accept.txt) to ensure proper capitalization of rOpenSci projects and (not to mention "rOpenSci" 😉)
- I've [turned off a lot of specific rules](https://github.com/ropensci/roweb3/blob/4d7e22b1487a589b3e639109aa5fdc320acf21ff/.vale.ini#L18) which are a bit too aggressive for a blog which allows people to write casually and informally as they like (including using words like "very" 😄).
- I've created custom rules to modify existing rules [^5]
- I've created custom rules to enforce our style guide, like using [Title Case](https://github.com/ropensci/roweb3/blob/main/.vale-styles/rOpenSci/title.yml) for blog post titles[^6], sentence case for subheadings, and using [relative links](https://github.com/ropensci/roweb3/blob/main/.vale-styles/rOpenSci/ropensci_links.yml) for ropensci.org pages.

[^5]: For example, [`alex`](https://github.com/get-alex/alex) worries that the word "Mexican" is racist, but at rOpenSci, it's usually stated with pride and I don't want Vale to flag our community members for mentioning their nationality 😅

[^6]: But awesomely, we can enforce this rule for English, but not Spanish posts!

This is just the start!
I imagine the more I use these rules the more fine tuning I'll do.

Vale problems are classified as messages, warnings, or errors, and are highlighted in the text window as a quick fix and listed in the Problems pane in my lower window.

I should also note that for all the rules I've disabled, there are a lot of opinionated rules left.
We keep them as prompts to think about our writing, not because we *must* follow them!

{{< figure src = "there_is.png" class = "center" caption = "Vale's write-good rule doesn't want me to start a sentence with 'There is', but I'm going to anyway!" width = 500 alt = "" >}}

### Panache

For formatting text, I use the [Panache](https://github.com/jolars/panache) extension by jolars to format the (R)markdown files for the blog.
This is probably the smallest amount of setup, as all we need is a minimal [`.panache.toml`](https://github.com/ropensci/roweb3/blob/main/.panache.toml) configuration file in the roweb3 repository.
However, this file instructs Panache to do one super awesome thing for us, especially for multilingual publishing and translations:

```
[format]
wrap = "sentence"
```

If you set up Positron to format on save, Panache automatically wraps text by sentence every time you save the file.
This means that when a blog post is sent for a first pass translation using babeldown, the translation comes back pretty good.
Alternatively, if the line breaks are in the middle of a sentence, the translation can become garbled as lines are treated as disjointed sections of text.

For my other work, I use `wrap = "reflow"`, set in my user configuration file in `~/.config/panache/config.toml`.

### GitHub Pull Requests

Finally, once I've got all the fiddly edits ready to go, I use the [GitHub Pull Requests](https://github.com/Microsoft/vscode-pull-request-github) extension.
This is really handy if you find yourself making many small suggested changes to GitHub PRs.
I use this to convert my edits on a post's (R)md file to GitHub PR review suggestions.

To review blog posts, I fetch the PR with `usethis::pr_fetch()`, and then open the blog post (R)md file in Positron side by side with the html preview of the post in my web browser.

Then I review the html preview and make the edits directly in the (R)md file.
When I'm done, I right click on the edited file name in the Source Control > Changes and select Create Pull Request Suggestions.

{{< figure src = "suggestions.png" width = "500" alt = "" class = "center" >}}

This converts my edits to GitHub PR review suggestions which I can then review in Positron, or as I prefer, in a web browser (and fix weird ones, as it's not always a perfect process).
Once all the suggestions are converted, the extension asks me if I want to revert my changes (which I usually do).

A note of caution, I find this tool a bit confusing to use on a PR that has a lot of comments already.
The comments it makes are sometimes hidden or split in odd ways and it's easy to accidentally create duplicates.

## Why so many tools?

Each of these tools provides me a specific solution to a problem.
There is some overlap among them; Vale can do spell checks, and Panache can do linting.
However, I find that by using the tools separately I can achieve an especially detailed and customized setup that works really well with the rOpenSci blog in particular, and with my work in general.

By including the configuration files in the roweb3 repository, people who also use these tools will automatically use the configurations we've setup for the rOpenSci blog when they write a post.
However, even if other writers don't use these tools, it's still very useful for me to see a list of potential problems to double check at the end of my review without having to remember to check for them manually.
It means I can focus more on the review of the content rather than worry about whether it's Ropensci or rOpenSci 😄
