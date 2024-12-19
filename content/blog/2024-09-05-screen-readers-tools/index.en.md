---
slug: screen-readers-tools
title: Resources For Using R With Screen Readers
author:
  - Liz Hare
editor:
  - Yanina Bellini Saibene
date: "2024-09-05"
tags:
  - tech notes
  - screen-readers
  - champions program
  - community
  - accessibility
description: "Tools and resources to use R with screen readers." 
---

R is a language and environment for statistical computing.
There are several tools and approaches for interacting with R, but not all are accessible with screen readers. 
This guide provides an overview of the tools and techniques available to screen reader users across different operating systems, with practical tips and resources to help them navigate the R environment. 
This guide may not be complete, but I hope it serves as a valuable starting point. We welcome suggestions from other users to enhance it further.


## Where to start ? 

The set of tool and resources in this section apply for all operating systems.

[The R Project for Statistical Computing](https://www.r-project.org) is the site where you can download R for Windows, Linux, and Mac.

When you install R, it has basic statistical functions.
We call this installation "base R."
Users add functionality by writing packages in the R language.
Dr. Jonathan Godfrey has written a package called BrailleR that produces statistical output in text or Braille format that are more accessible than base R functions.
[Dr. Godfrey's website](https://r-resources.massey.ac.nz/BrailleR/) has information about this package as well as general advice about using R as a Braille or screen reader user.

The [Blind R Users mailing list](https://www.nfbnet.org/mailman/listinfo/blindrug_nfbnet.org) is another place you can go for answers about using R.

## How do you interact with R?

Possibilities include:

* Running R at the [command prompt in a terminal](https://en.wikipedia.org/wiki/Terminal_emulator). This has the large disadvantage of not saving your commands and output.
* Using a text editor to write scripts (groups of R commands) and submitting them at the [command line](https://en.wikipedia.org/wiki/Command-line_interface). This used to be the preferred approach for many blind users, but is less convenient than in interactive tool.
* Using R's GUI (graphical user interface). This might be accessible on Windows, but it is inaccessible on Mac.
* Using an accessible integrated development environment (IDE) for writing, editing, submitting, and reusing R code (see next section).

### IDEs and Operating Systems

An IDE is software that supports programmers in developing software efficiently by providing a set of tools in the same environment. There are several IDEs in the market.
IDEs have several advantages over working at the command prompt or in the R GUI: 

* Specialized commands for running code and reviewing results.
* Help with editing by doing things like notifying the user of mismatched parentheses.
* Easily switch between editing code and reading output.
* Ease of saving your work and reusing it again later.

The popular RStudio IDE is not accessible for screen reader users on any platform.
It is very important for teachers to understand that blind students won't have access to this environment and so won't be using its buttons or shortcuts. The same applies to those who write documentation. 

#### Windows

Many blind R users use the [Visual Studio Code (VS Code)](https://code.visualstudio.com) IDE with screen readers.
The [R extension for VS code](https://marketplace.visualstudio.com/items?itemName=REditorSupport.r)
provides additional functionality to make working in R more convenient.
A second option for working with R in Windows is to install [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/about)(WSL). 
With WSL, you can run a Linux command line environment on Windows. 
You can access the Terminal using the NVDA or JAWS screen readers.
An R session in the terminal would be accessible, or you could read input and output in the text editor of your choice from either the Windows or Linux operating system.
This would be a great option for people who are experienced NVDA or JAWS users who want to learn about both R and Linux.
#### Mac and Linux

The software listed below works together to provide an environment for working with R:

* [Emacs](https://www.gnu.org/software/emacs/) is a powerful and customizable IDE that
can be used with R, although there are many commands to learn at first.
* [Emacspeak](https://github.com/tvraman/emacspeak) is a screen reader designed specifically for use in a Linux (or Mac) terminal with Emacs. 
It works much better than VoiceOver, Apple's native screen reader, in the terminal.
Emacspeak is powerful but also involves learning many keyboard commands.
* [Emacs Speaks Statistics (ESS)](https://ess.r-project.org) is a package you can add to Emacs that will allow you to edit and submit code and view your output in another text window. 
It customizes the emacs environment for R.
* Another useful emacs package is [Polymode](https://polymode.github.io) which facilitates using R Markdown to produce documents like reports and slides that are very accessible if you output them in HTML format.

The last time I tested VScode on a Mac, it was not fully accessible with VoiceOver.

## Useful R Features

R Markdown and `quarto` are useful R tools. 
They allow you to make a single text file containing both plain text and R code. 
The resulting document can show both text explanation of your work and R output. 
These tools produce several file types as output. 
The HTML output is easy to navigate in similar ways to sighted colleagues. 
This accessibility makes these tools ideal for reports, homework assignments, websites, and slide presentations.

I haven't included documentation here because it's hard to find documentation that doesn't assume the use of RStudio.


## Learning to Use R

It's important to practice reading and learning from R's documentation, but it takes time to learn to understand it. There are lots of helpful resources out there including:

* UCLA has great [learning modules and FAQs](https://stats.oarc.ucla.edu/r/) on R that are in simple text formats.
* Searching the Web for examples and tutorials (as long as they aren't videos) for the kind of analysis you want to do can help a lot. Avoid the commercial sites with lots of ads that interfere with screen reader navigation. I prefer the ones hosted on personal or academic sites.
* [Oscar Baruffa's website](https://www.bigbookofr.com) lists free, online books about R. Many of them are quite accessible except for the data visualizations. Also, many of them assume you're using RStudio, so you'll have to adapt your work to your own environment.
* [Bookshare](https://bookshare.org) is an electronic book repository for print disabled people in some countries. They have many books on R, but accessibility can vary, for example, sometimes the code snippets are missing. These books can be quite helpful, though.

## Summary

This guide has outlined several ways for screen reader users to work with R across different operating systems, highlighting accessible tools like BrailleR, VS Code, and Emacs. By exploring these options, users can choose the tools that best fit their needs and preferences.
