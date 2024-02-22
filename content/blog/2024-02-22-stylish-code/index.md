---
title: Beautiful Code, Because We’re Worth It!
author: 
- Maëlle Salmon
- Yanina Bellini Saibene
date: '2024-02-22'
slug: beautiful-code
output: hugodown::md_document
tags:
  - champions program
  - tech notes
  - beginner
  - package development
  - clean code
---

rOpenSci's [second cohort of champions was onboarded](/blog/2024/02/15/champions-program-champions-2024/)!
Their training started with a session on code style, which we will summarize here in this post.
Knowing more about code quality is relevant to all Champion projects, be it creating a new package, submitting a package to software review, or reviewing a package.
This training session consisted of a talk and discussion, whereas the next package development training sessions will be more hands-on. 

## Why write beautiful code?

Although your code will be executed by machines, it will be read by humans.
Those humans, whether they are future you, collaborators you know or collaborators you don't know, will need to understand your code to check that it has no mistake, to fix potential bugs, and to build upon it by adding new features.
Making it easier to understand your code is therefore crucial.

## Well-proportioned code

In the first part, we shared tips that made the code more "well-proportioned".
It is not only a matter of aesthetics.
Well-proportioned code is easier to parse by humans.

### Regular spacing between elements

Compare

```r
starwars%>%
  select(name,height, mass,homeworld) %>%
  mutate(
    mass=NULL,
    height =height *0.0328084 # convert to feet
  )
```

to 

```r
starwars %>%
  select(name, height, mass, homeworld) %>%
  mutate(
    mass = NULL,
    height = height * 0.0328084 # convert to feet
  )
```

In the first chunk, spacing between elements is irregular.
For instance, there is no space before `height`, no space around the equal sign that comes after `mass`.

We instead recommend to follow spacing (and line-breaking!) rules consistently.
Unless you have a [strongly differing opinion](https://github.com/ropensci-review-tools/spaceout), the easiest strategy is to follow your collaborators' style guide, or a popular style guide like the [tidyverse style guide](https://style.tidyverse.org/).

So how do you implement these rules in practice?
First you'll need to be accustomed to using a particular style.
Automatic tools like the [styler package](https://styler.r-lib.org/) or your IDE can help you.
For example, in the RStudio IDE, the keyboard shortcut `Ctrl+I` fixes indentation.

### Not too wide

A traditional rule is to not have more than 80 characters per line.
The exact number isn't important, what's important is to prevent too much horizontal scrolling!

The [lintr package](https://lintr.r-lib.org/) can warn you about too wide lines, among many other things.
Compared to styler, lintr does not fix things itself.

There is a also a setting in RStudio IDE to show a margin at 80 characters (Code > Display > Show Margin).

### Not too long: paragraphs, existing and home-made functions

Vertical space is limited in code both by the screen and by what the reader can see at a glance (never mind limits to how much they can hold in their head).

One way to make your code shorter, but still easy to parse is to use _code paragraphs_.
Line breaks are not free since they take up vertical space.
Use line breaks to separate blocks of code that do a related thing.
As in prose, one paragraph should roughly correspond to one idea.
For instance, in the example code below, the first block does something related to a website page head, while the second block handles the body of the website page.

```r
head <- collect_metadata(website)
head_string <- stringify(head)

body <- create_content(website)
body_string <- stringify(body)
```

A second way to make your code less long is to break down your code into functions.
In a main function, you can outsource tasks to other functions.
This way, a reader can see at a glance what the main function does, and then head to the other functions to read more details, as in the example below where `create_content()` calls other functions to create a title, a page, and then create its output that combines the two.

```r
create_content <- function(website) {
  title <- create_title(website)
  page <- create_page(website)
  combine_elements(title = title, page = page)
}
```

In their book [Learn AI-Assisted Python Programming](https://www.manning.com/books/learn-ai-assisted-python-programming), Leo Porter and Daniel Zingaro share the attributes of good functions: One clear task to perform, clearly defined behavior, short in number of lines of code, clear input and output, general value over specific use.

It is also helpful to know how to quickly navigate between functions in your IDE!
In RStudio IDE, you can use `Ctrl+click` on the function name, or type its name in the search bar accessed with `Ctrl+.`.

A third way to shorten your code is to use existing functions from base R or add-on packages.
For instance, to combine a list of default values with a list of custom values, you can use the [`modifyList()` function](https://masalmon.eu/2023/06/06/basic-patterns/#combine-a-list-of-default-values-with-a-list-of-custom-values).
As with human languages, we learn more R words [over time](https://masalmon.eu/tags/useful-functions/), by reading other people's code and having them read our code..

### Not too wordy: just the right amount of comments

This part of the training was a shorter version of the R-hub blog post [Why comment your code as little (and as well) as possible](https://blog.r-hub.io/2023/01/26/code-comments-self-explaining-code/).

Code comments are not a narrator's voice-over of the code, they should be little alerts.
The more comments there are, the more likely it is that the reader will skip them.

Code comments should not be a band-aid for bad naming or overly complex code: instead of adding a comment, can you rename a variable or refactor a piece of code?

A useful idea is to use [self-explanatory functions or variables](https://blog.r-hub.io/2023/01/26/code-comments-self-explaining-code/#use-helper-functions-or-explaining-variables), where code like

```r
if (!is.na(x) && nzchar(x)) {
  use_string(x)
}
```

becomes

```r
x_is_not_empty_string <- (!is.na(x) && nzchar(x))
if (x_is_not_empty_string) {
  use_string(x)
}
```

Of course code comments remain important when needed!
Examples of good comments include: 

- function documentation with roxygen2, 
- aspects you’d like to point out to a code reviewer, such as `# This query can not be done via GraphQL, so have to use v3 REST API`,
- [comments that provide a table of contents](https://blog.r-hub.io/2023/01/26/code-comments-self-explaining-code/#use-comments-for-the-scripts-outline).

## Clear code

In the second part of the training, we shared tips that improve code clarity.

### Self-explanatory names

Naming things is notoriously hard.
We shared these ideas:

- Follow fashion, meaning, use the same words as others in your field or programming language.

- Felienne Hermans, in her book [The Programmer's Brain](https://www.manning.com/books/the-programmers-brain), advises choosing the concepts that go into the name, the words to say it, then putting them together. This approach in three steps is a good way to get unstuck.

- Following the previous advice, names should be consistent across code base and _name molds_ are a very good tool for that. Name molds are patterns in which the elements of a name are combined, for example if you calculate the maximum value of crop yield, you need to agree if `maximum` will be `max` or `maximum` and if the word will be at the beginning or at the end of the variable name: should be `maxYield` or `yieldMax`?  By normalizing how to name things, our code will be easier to read.     

- “The greater the distance between a name’s declaration and its uses, the longer the name should be” (Andrew Gerrand). However, no matter how close to defining a variable you use it, don't use a smart very short abbreviation.

- There are several ways to write variable names. camelCase style leads to higher accuracy when reading code (Dave Binkley, 2009) and is better for reading the code with screen readers.  We know it is difficult to change the style of an existing project, but if you are in a situation where you can decide from scratch, then consider using Camel Case? If you're not sure about case names, refer to Allison Horst's [cartoon of cases](https://allisonhorst.com/everything-else) (scroll down to "Cartoon representations of common cases in coding"). 

- A name is clear if the person reviewing your code agrees. 😉

A further tip is that it's absolutely ok to create functions that wrap existing functions just to change their name.
This strategy is common to change the argument order, but fine for naming too.
Say you prefer your function names to be actions (verbs) rather than passive descriptions, you can have:

```r
# In utils.R
remove_extension <- function(path) {
  tools::file_path_sans_ext(path)
}

# In other scripts
remove_extension(path)
```

### Logic tips: early `return()`, `switch()`

In a function,

```r
do_thing <- function(x) {
  if (is.na(x)) {
    NA
  } else {
    x + 1
  }
}
```

is equivalent to

```r
do_thing <- function(x) {
  if (is.na(x)) {
    return(NA)
  } 
  
  x + 1
}
```

but the latter, with the early `return()` has less nesting and emphasizes the ["happy path"](https://github.com/jennybc/code-smells-and-feels).

The [`switch()`](https://rdrr.io/r/base/switch.html) function can also help you remove nested if-else.
With it,

```r
if (type == "mean") {
  mean(x)
} else if (type == "median") {
  median(x)
} else if (type == "trimmed") {
  mean(x, trim = .1)
}
```

becomes

```r
switch(type,
  mean = mean(x),
  median = median(x),
  trimmed = mean(x, trim = .1)
)
```

### Less code

The code you *don't* write has no bug (that you are responsible for) and does not need to be read. :tada:

First of all, be strict about the scope of what you are trying to accomplish.

Second, use trusted dependencies to outsource part of the work.
The ["Dependencies: Mindset and Background
"](https://r-pkgs.org/dependencies-mindset-background.html) chapter of the R packages book by Hadley Wickham and Jenny Bryan is a great read on the topic.

## How can you improve your code?

In practice, how do you apply your code style learnings?
And how do you update your legacy codebases created before you knew about some of these aspects?

### Spring cleaning

Maybe you can work on code styling and refactoring regularly

- Once a year? Andy Teucher wrote an interesting blog post about the [tidyverse spring cleaning](https://www.tidyverse.org/blog/2023/06/spring-cleaning-2023/).

- More often?

- A good strategy is also to work a bit on refactoring every time you enter a codebase to fix a bug or add a feature. The refactoring does not need to go into the same commit / branch, keep your code changes nuclear and easy to review.


### lintr

The lintr package is a fantastic package.
Its linters, or rules, will remind you or teach you of elements to fix that you didn't know about or couldn't keep in your head.
You can run it every once in a while or have it run on continuous integration.

Even simply reading through its [reference](https://lintr.r-lib.org/reference/index.html) might show you functions or patterns you were not aware of.
A true gem of the R ecosystem!

### Human review

Other humans will have a good external perspective on your code and probably good tips for you!

- Read your colleagues’ code and vice versa! The tidyverse team has a [code review guide](https://code-review.tidyverse.org/).

- At rOpenSci, we run a [software peer-review system of packages](/software-review/) :grin:

## Further resources

These are the references for most of the training content. :smile_cat:

- Jenny Bryan's talk [Code Smells and Feels](https://github.com/jennybc/code-smells-and-feels)

- Book [The Art of Readable Code](https://www.oreilly.com/library/view/the-art-of/9781449318482/) by Dustin Boswell and Trevor Foucher

- Book [Tidy Design by Hadley Wickham, in progress](https://design.tidyverse.org/), with [associated newsletter](https://tidydesign.substack.com/)

- Book [A Philosophy of Software Design by John Ousterhout](https://masalmon.eu/2023/10/19/reading-notes-philosophy-software-design/)
