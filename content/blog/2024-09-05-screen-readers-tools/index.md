---
slug: screen-readers-tools
title: Resources For Using R With Screen Readers
author:
  - Liz Hare
editor:
  - Yanina Bellini Saibene
date: "2024-09-05"
tags:
  - tech-notes
  - screen-readers
  - champions program
  - community
  - accesibility
description: "Tools and resources to use R with screen readers."
---

There are several ways to use R with a screen reader.
People choose tools depending on their operating system and personal preference.
This guide may not be complete and we welcome suggestions from other users.

## All operating Systems

[The R Project for Statistical Computing](https://www.r-project.org) is the site where you can download R for Windows, Linux, and Mac.

When you install R, it has basic statistical functions.
We call this installation "base R."
Users add functionality by writing packages in the R language.
Dr. Jonathan Godfrey has written a package called BrailleR that produces statistical output in text or Braille format that are more accessible than base R functions.
[Dr. Godfrey's website](https://r-resources.massey.ac.nz/BrailleR/) has information about this package as well as general advice about using R as a Braille or screen reader user.

The [Blind R Users mailing list](https://www.nfbnet.org/mailman/listinfo/blindrug_nfbnet.org) is another place you can go for answers about using R.

The popular  RStudio IDe (Integrated Development Environment) is not accessible for screen reader users on any platform.
It is very important for teachers to understand that blind students won't have access to this environment and so won't be using its buttons or shortcuts. 

### So how do you interact with R?

Possibilities include:

* Running R at the command prompt in a terminal. This has the large disadvantage of not saving your commands and output.
* Using a text editor to write scripts (groups of R commands) and submitting them at the command line. This used to be the preferred approach for many blind users, but is less convenient than in interactive tool..
* Using R's GUI (graphical user interface). This might be accessible on Windows, but it is inaccessible on Mac.
* Using an accessible IDE for writing, editing, submitting, and reusing R code (see next section).

## IDEs and Operating Systems

IDEs have several advantages over working at the command prompt or in the R GUI: 

* Specialized commands for running code and reviewing results.
* Telp with editing by doing things like notifying the user of mismatched parentheses
* Easily switch between editing code and reading output
* Ease of saving your work and reusing it again later

### Windows

Many blind R users use the [Visual Studio Code(VS Code)](https://code.visualstudio.com) IDE with screen readers.
The [R extension for VS code](https://marketplace.visualstudio.com/items?itemName=REditorSupport.r)
provides additional functionality to make working in R more convenient.


### Mac and Linux

The software listed below works together to provide an environment for working with R:

* [Emacs](https://www.gnu.org/software/emacs/) is a powerful and customizable IDE that
can be used with R, although there are many commands to learn at first.
* [Emacspeak](https://github.com/tvraman/emacspeak) is a screen reader designed specifically for use 
in a Linux (or Mac) terminal with Emacs. 
It works mucj better than VoiceOver, Apple's native screen reader, in the terminal.
Emacspeak is powerful but also involves learning many keyboard commands.
* [Emacs Speaks Statistics (ESS)](https://ess.r-project.org) is a package you can add to Emacs that will allow you to edit and submit code and view your output in another text window. 
It customizes the emacs environment for R.
* Another useful emacs package is [Polymode](https://polymode.github.io) which facilitates using R Markdown to produce documents like reports and slides that are very accessible if you output them in HTML format.

The last time I tested VScode on a Mac, it was not fully accessible with VoiceOver.


## Useful R Features

* Learning `quarto` or R Markdown is super useful because it produces HTML
output that you can easily navigate in similar ways to sighted colleagues. 
It lets you write text as well as commands for working with data, so it's great for reports, homework, or web sites. 
I haven't included documentation here because it's hard to find documentation that doesn't assume the use of RStudio.


## Learning to Use R

It's important to practice reading and learning from R's documentation, but it takes time to learn to understand it. There are lots of helpful resources out there including:

* UCLA has great [learning modules and FAQs](https://stats.oarc.ucla.edu/r/) on R that are in simple text formats.
* Searching the Web for examples and tutorials (as long as they aren't videos) for the kind of analysis you want to do can help a lot. Avoid the commercial sites with lots of ads that interfere with screen reader navigation. I prefer the ones hosted on personal or academic sites.
* [Oscar Baruffa's website](https://www.bigbookofr.com) lists free, online books about R. Many of them are quite accessible except for the data visualizations. Also, many of them assume you're using RStudio, so you'll have to adapt your work to your own environment.
* [Bookshare](https://bookshare.org) is an electronic book repository for print disabled people in some countries. They have many books on R, but accessibility can vary. Sometimes the code snippets are missing, wihch is not helpful. Sometimes these books can be quite helpful, though.