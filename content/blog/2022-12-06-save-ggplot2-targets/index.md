---
slug: "save-ggplot2-targets"
title: How to Save ggplot2 Plots in a targets Workflow?
author:
  - Matthias Grenié
# Set the date below to the publication date of your post
date: 2022-12-06
# Minimal tags for a post about a community-contributed package 
# that has passed software peer review are listed below
# Consult the Technical Guidelines for information on choosing tags
tags:
  - targets
  - ggplot2
  - workflow
  - tech notes
  - community
# The summary below will be used by e.g. Twitter cards
description: "A short exploration of how to save ggplot2 objects in targets workflow"
# If you have no preferred image for Twitter cards,
# delete the twitterImg and twitterAlt lines below 
# - Replace "blog" with "technotes" as needed
# - Note no "/" symbol before "blog" here
# - Note "/" between year/month/day
# the text below is for populating the "share on Twitter" button
# if deleted, the title of the post will be used
tweet: "A post about saving efficiently {ggplot2} objects in a {targets} workflow by @LeNematode!"
---




I really enjoy using [targets](https://docs.ropensci.org/targets) for all of my data analysis projects, especially because it helps me structure all of the projects nicely in the same folder.
For targets projects, I often produce several figures using ggplot2.
However, there are no formal recommendations for saving ggplot2 objects (as opposed to static images) in a targets workflow.

I want to keep my plots accessible to be able to revisit them any time and to assemble them with [patchwork](https://patchwork.data-imaginist.com/) into more complex figures for a potential paper.
In a regular project I generate 10 to 20 figures, some only diagnostic ones and some polished ones for the finished manuscript.
I do revisit the list of figures often, as co-authors or reviewers ask me for more detailed analyses and visualizations.

In most cases, I don't know before hand the sizes of the figures nor their formats, so I like to save the ggplot2 plots as R objects and not images in my targets workflow.
I sometimes edit them for a presentation, a paper, or a poster, so I like  the flexibility of saving them as R objects.
This allows me to change their aspect ratio or their style on the fly without having to re-create them.

However, how the plot objects are saved can have different consequences for the size of stored cache, the loading time, the flexibility, and ease of use of the plots.
In this blog post I explore the different possible options for saving plots in a targets workflow and discuss their pros and cons, with some insights from both ggplot2 and targets communities.
I will show the consequences of using each one of them through a simple workflow making a plot with the `mtcars` dataset.


## First solution: saving the entire ggplot2 objects without worrying

My first solution was to not worry about the plots and leverage the very clever system from targets that saves objects.

Let's say our workflow loads the data and makes a simple plot:

```r 
library("targets")
library("ggplot2")

# Create a simple demo workflow
tar_script({
  library("ggplot2")
  library("targets")
  
  list(
    tar_target(mtcars_df, mtcars),
    tar_target(
      simple_plot,
      ggplot(mtcars_df, aes(cyl, mpg)) +
        geom_point()
    )
  )
}, ask = FALSE)

# Run the workflow
tar_make()
```

```
• start target mtcars_df
• built target mtcars_df [0 seconds]
• start target simple_plot
• built target simple_plot [0.02 seconds]
• end pipeline [0.18 seconds]
```

Then if you want to access the plot you can use `tar_read()` or `tar_load()` and you'll get back a modifiable ggplot2 object

```r 
tar_read(simple_plot)
```
{{<figure src="first-load-plot-1.png" alt="Scatterplot of the mtcars dataset showing miles per gallon as a function of number of cylinders.">}}

```r 
# It's modifiable (we can add a theme after the fact)
tar_read(simple_plot) +
  theme_bw()
```
{{<figure src="first-mod-plot-1.png" alt="Same scatterplot as before but styled differently with a white background instead of grey background.">}}

For now, the plot is pretty simple and lightweight.
Throughout the blog post, we'll be using the `obj_size()` function from  [lobstr](https://lobstr.r-lib.org/) package to evaluate the object size.

```r 
lobstr::obj_size(tar_read(simple_plot))
```

```
880.76 kB
```

The problem arises when you start having plots with a lot going on in the plot function.
If we retake the same targets workflow but have a more busy plot function we'll be able to measure the size of the plot object again:

```r 
tar_script({
  library("ggplot2")
  library("targets")
  
  list(
    tar_target(mtcars_df, mtcars),
    tar_target(
      simple_plot,
      ggplot(mtcars_df, aes(cyl, mpg)) +
        geom_point()
    ),
    tar_target(
      complex_plot,
      {
        
        # Add many useless manipulations here to mimic object creation
        mtcars_df2 = mtcars_df
        mtcars_df3 = rbind(mtcars_df, mtcars_df2)
        mtcars_df4 = rbind(mtcars_df3, mtcars_df3)
        
        # Note how the code of the plot hasn't changed
        ggplot(mtcars_df, aes(cyl, mpg)) +
          geom_point()
        
      }
    )
  )
}, ask = FALSE)

# Run the workflow
tar_make()
```

```
✔ skip target mtcars_df
✔ skip target simple_plot
• start target complex_plot
• built target complex_plot [0.02 seconds]
• end pipeline [0.17 seconds]
```

We now have two plot targets, the `simple_plot` target which is the same as previously, and `complex_plot` which differs from `simple_plot` only by having data manipulation and object creation prior to the plotting, **which does not affect the plot in itself**.

If we compare their sizes:

```r 
# The 'simple_plot' object hasn't changed size
lobstr::obj_size(tar_read(simple_plot))
```

```
880.76 kB
```

```r 
# The 'complex_plot' object is actually larger
lobstr::obj_size(tar_read(complex_plot))
```

```
912.54 kB
```

We observe that the `complex_plot` is larger in size than `simple_plot`! This seems very surprising as we haven't changed a line of the plotting code *per se*.
So what is happening here?
Well the issue comes from the way ggplot2 works: it doesn't save the graphical plots in themselves, it saves their **environments** and generates the plots only when called from this saved environment (see [this GitHub issue](https://github.com/tidyverse/ggplot2/issues/4056) for example).
If you're not familiar with the concept of environment, don't worry!
It's a rather hard concept to grasp (and I'm not even sure I do understand it).
If you want to know more about it you can read the [dedicated chapter](https://adv-r.hadley.nz/environments.html) in [Advanced R](https://adv-r.hadley.nz/).

If we simplify the concept, the `ggplot()` function saves the plotting functions themselves **plus** all of the objects lying around where it's called, because they may be useful for the plot (which ones are actually useful, ggplot2 doesn't know yet; remember that the plot is only really rendered when called).
Because targets saves the entire object it also saves its entire environment.
This problem was [also](https://github.com/ropensci/drake/issues/882) [known](https://github.com/ropensci/drake/issues/1258) with targets' predecessor [drake](https://docs.ropensci.org/drake).

In our workflow example above, the size difference between both objects isn't much, so it does not change the performance of the plot nor the total size taken by the saved targets workflow.
However, with a real life example including many complex objects and several intermediate computations in the plotting function, it can increase loading and plotting times dramatically.
So we need to think about solutions to circumvent the issue.


### Pros

* Works out of the box
* Have nothing to worry about
* Flexible with the size of the plots

### Cons

* Increased saved object size (and thus workflow size)
* If object is big, then slow to load


## Second (partial) solution: transform ggplot2 objects into `grobs` using target hooks

My workflows started to grow big and the plots were slow, so I asked around the targets community for a solution.
While it was proposed at one point to create [a specific storage for ggplot2 objects](https://github.com/ropensci/drake/issues/882#issuecomment-580053751) in drake (the predecessor of targets), the reliance of the objects on environments made this problem impossible to solve.
These objects simply had to be stored with their environment.

ggplot2 needs to render the plots when they are shown.
This transformation relies on the framework of the grid package and the transformation of ggplot2 objects into `Grob` objects (short for **Gr**aphical **ob**jects).
The plots then are purely graphical and do not contain the initial data nor the plotting environment.
These objects are thus much lighter.

So a natural idea would be to save, within the targets workflow, the ggplot2 plots as `Grobs` to keep only the information to the plots themselves and not the initial data.
This can be done using the `ggplot2::ggplotGrob()` function.

We can compare the size of the stored objects using our previous workflow and adding conversion to Grobs:

```r 
tar_script({
  library("ggplot2")
  library("targets")
  
  list(
    tar_target(mtcars_df, mtcars),
    tar_target(
      simple_plot,
      ggplot(mtcars_df, aes(cyl, mpg)) +
        geom_point()
    ),
    tar_target(
      complex_plot,
      {
        
        # Add many useless manipulations here to mimic object creation
        mtcars_df2 = mtcars_df
        mtcars_df3 = rbind(mtcars_df, mtcars_df2)
        mtcars_df4 = rbind(mtcars_df3, mtcars_df3)
        
        # Note how the code of the plot hasn't changed
        ggplot(mtcars_df, aes(cyl, mpg)) +
          geom_point()
        
      }
    ),
    tar_target(simple_grob, ggplotGrob(simple_plot)),
    tar_target(complex_grob, ggplotGrob(complex_plot))
  )
}, ask = FALSE)

# Run the workflow
tar_make()
```

```
✔ skip target mtcars_df
✔ skip target simple_plot
✔ skip target complex_plot
• start target simple_grob
• built target simple_grob [0.15 seconds]
• start target complex_grob
• built target complex_grob [0.07 seconds]
• end pipeline [0.37 seconds]
```

We added 2 new targets `simple_grob` and `complex_grob` that transform the previous plots into Grobs.

If we compare their sizes now:

```r 
lobstr::obj_size(tar_read(simple_grob))
```

```
339.66 kB
```

```r 
lobstr::obj_size(tar_read(complex_grob))
```

```
339.66 kB
```

Both objects are more than twice as small as the original plot object, and now they are both almost the same size!
So this may seem like a solution to us.

Let's check if we still can display them:

```r 
tar_read(simple_grob)
```

```
TableGrob (12 x 9) "layout": 18 grobs
    z         cells       name                                         grob
1   0 ( 1-12, 1- 9) background               rect[plot.background..rect.40]
2   5 ( 6- 6, 4- 4)     spacer                               zeroGrob[NULL]
3   7 ( 7- 7, 4- 4)     axis-l           absoluteGrob[GRID.absoluteGrob.27]
4   3 ( 8- 8, 4- 4)     spacer                               zeroGrob[NULL]
5   6 ( 6- 6, 5- 5)     axis-t                               zeroGrob[NULL]
6   1 ( 7- 7, 5- 5)      panel                      gTree[panel-1.gTree.17]
7   9 ( 8- 8, 5- 5)     axis-b           absoluteGrob[GRID.absoluteGrob.22]
8   4 ( 6- 6, 6- 6)     spacer                               zeroGrob[NULL]
9   8 ( 7- 7, 6- 6)     axis-r                               zeroGrob[NULL]
10  2 ( 8- 8, 6- 6)     spacer                               zeroGrob[NULL]
11 10 ( 5- 5, 5- 5)     xlab-t                               zeroGrob[NULL]
12 11 ( 9- 9, 5- 5)     xlab-b titleGrob[axis.title.x.bottom..titleGrob.31]
13 12 ( 7- 7, 3- 3)     ylab-l   titleGrob[axis.title.y.left..titleGrob.34]
14 13 ( 7- 7, 7- 7)     ylab-r                               zeroGrob[NULL]
15 14 ( 4- 4, 5- 5)   subtitle         zeroGrob[plot.subtitle..zeroGrob.36]
16 15 ( 3- 3, 5- 5)      title            zeroGrob[plot.title..zeroGrob.35]
17 16 (10-10, 5- 5)    caption          zeroGrob[plot.caption..zeroGrob.38]
18 17 ( 2- 2, 2- 2)        tag              zeroGrob[plot.tag..zeroGrob.37]
```

This doesn't display a plot but shows us how the plot is stored as a `Grob` in the grid package system (it's included as a base package in R).
To display it we need to use a function that transforms this object into an actual plot.
For example, with the `grid::grid.draw()` function:

```r 
grid::grid.draw(tar_read(simple_grob))
```
{{<figure src="second-grob-plot-1.png" alt="Scatterplot of the mtcars dataset showing miles per gallon as a function of number of cylinders.">}}

We got our plot back!
It is still resizable, can still be exported as a file through RStudio or graphical devices.
However, as it's not a ggplot2 object anymore, we cannot tweak its theme nor use the `ggsave()` function to save it with custom dimensions.

If you have tens of plots, it maybe quite cumbersome to call `ggplot2::ggplotGrob()` at the end of all your plot functions.
That's where someone in the community (it was [Miles McBain](/author/miles-mcbain/) on rOpenSci Slack space 🎉) suggested using [tarchetypes](https://docs.ropensci.org/tarchetypes) [hooks](https://docs.ropensci.org/tarchetypes/reference/index.html#hooks).
I wasn't aware at the time, but tarchetypes, which is an extension of targets to more easily generate a list of targets, has a system of ["hooks"](https://docs.ropensci.org/tarchetypes/reference/index.html#hooks) that can apply functions to your targets automatically (to all or to a subset based on their names).
These are accessible through the functions `tar_hook_before()`, `tar_hook_inner()`, and `tar_hook_outer()` in tarchetypes.
They will respectively, transform the target to execute a function *before*, wrap the dependencies of given target in a function call, or call a function around each target.
We have to indicate with `.x` where the previous command should be executed.
This means that if using `tar_hook_outer()` we would be able to automatically execute `ggplotGrob()` on all our plot targets like so:

```r 
tar_script({
  library("ggplot2")
  library("targets")
  
  list(
    tar_target(mtcars_df, mtcars),
    tar_target(
      simple_plot,
      ggplot(mtcars_df, aes(cyl, mpg)) +
        geom_point()
    ),
    tar_target(
      complex_plot,
      {
        
        # Add many useless manipulations here to mimic object creation
        mtcars_df2 = mtcars_df
        mtcars_df3 = rbind(mtcars_df, mtcars_df2)
        mtcars_df4 = rbind(mtcars_df3, mtcars_df3)
        
        # Note how the code of the plot hasn't changed
        ggplot(mtcars_df, aes(cyl, mpg)) +
          geom_point()
        
      }
    )
  ) |>
    # The hook from tarchetypes
    tarchetypes::tar_hook_outer(
      ggplot2::ggplotGrob(.x),
      names = ends_with("plot")
    )
}, ask = FALSE)

# Run the workflow
tar_make()
```

```
✔ skip target mtcars_df
• start target simple_plot
• built target simple_plot [0.15 seconds]
• start target complex_plot
• built target complex_plot [0.06 seconds]
• end pipeline [0.36 seconds]
```

We can check our plot objects:

```r 
tar_read(simple_plot)
```

```
TableGrob (12 x 9) "layout": 18 grobs
    z         cells       name                                         grob
1   0 ( 1-12, 1- 9) background               rect[plot.background..rect.40]
2   5 ( 6- 6, 4- 4)     spacer                               zeroGrob[NULL]
3   7 ( 7- 7, 4- 4)     axis-l           absoluteGrob[GRID.absoluteGrob.27]
4   3 ( 8- 8, 4- 4)     spacer                               zeroGrob[NULL]
5   6 ( 6- 6, 5- 5)     axis-t                               zeroGrob[NULL]
6   1 ( 7- 7, 5- 5)      panel                      gTree[panel-1.gTree.17]
7   9 ( 8- 8, 5- 5)     axis-b           absoluteGrob[GRID.absoluteGrob.22]
8   4 ( 6- 6, 6- 6)     spacer                               zeroGrob[NULL]
9   8 ( 7- 7, 6- 6)     axis-r                               zeroGrob[NULL]
10  2 ( 8- 8, 6- 6)     spacer                               zeroGrob[NULL]
11 10 ( 5- 5, 5- 5)     xlab-t                               zeroGrob[NULL]
12 11 ( 9- 9, 5- 5)     xlab-b titleGrob[axis.title.x.bottom..titleGrob.31]
13 12 ( 7- 7, 3- 3)     ylab-l   titleGrob[axis.title.y.left..titleGrob.34]
14 13 ( 7- 7, 7- 7)     ylab-r                               zeroGrob[NULL]
15 14 ( 4- 4, 5- 5)   subtitle         zeroGrob[plot.subtitle..zeroGrob.36]
16 15 ( 3- 3, 5- 5)      title            zeroGrob[plot.title..zeroGrob.35]
17 16 (10-10, 5- 5)    caption          zeroGrob[plot.caption..zeroGrob.38]
18 17 ( 2- 2, 2- 2)        tag              zeroGrob[plot.tag..zeroGrob.37]
```

```r 
tar_read(complex_plot)
```

```
TableGrob (12 x 9) "layout": 18 grobs
    z         cells       name                                         grob
1   0 ( 1-12, 1- 9) background               rect[plot.background..rect.77]
2   5 ( 6- 6, 4- 4)     spacer                               zeroGrob[NULL]
3   7 ( 7- 7, 4- 4)     axis-l           absoluteGrob[GRID.absoluteGrob.65]
4   3 ( 8- 8, 4- 4)     spacer                               zeroGrob[NULL]
5   6 ( 6- 6, 5- 5)     axis-t                               zeroGrob[NULL]
6   1 ( 7- 7, 5- 5)      panel                      gTree[panel-1.gTree.57]
7   9 ( 8- 8, 5- 5)     axis-b           absoluteGrob[GRID.absoluteGrob.61]
8   4 ( 6- 6, 6- 6)     spacer                               zeroGrob[NULL]
9   8 ( 7- 7, 6- 6)     axis-r                               zeroGrob[NULL]
10  2 ( 8- 8, 6- 6)     spacer                               zeroGrob[NULL]
11 10 ( 5- 5, 5- 5)     xlab-t                               zeroGrob[NULL]
12 11 ( 9- 9, 5- 5)     xlab-b titleGrob[axis.title.x.bottom..titleGrob.68]
13 12 ( 7- 7, 3- 3)     ylab-l   titleGrob[axis.title.y.left..titleGrob.71]
14 13 ( 7- 7, 7- 7)     ylab-r                               zeroGrob[NULL]
15 14 ( 4- 4, 5- 5)   subtitle         zeroGrob[plot.subtitle..zeroGrob.73]
16 15 ( 3- 3, 5- 5)      title            zeroGrob[plot.title..zeroGrob.72]
17 16 (10-10, 5- 5)    caption          zeroGrob[plot.caption..zeroGrob.75]
18 17 ( 2- 2, 2- 2)        tag              zeroGrob[plot.tag..zeroGrob.74]
```

Both our plot objects were indeed transformed intro `Grob` objects! And with the smaller sizes.
With the hooks, we could easily transform all of the figures of a workflow into `Grobs`.

If this solution seems to solve all of our problems (though not as flexible), then why does this post continue?

Well, ggplot2 maintainers officially [discourage users from saving `ggplotGrobs`](https://github.com/tidyverse/ggplot2/issues/4649#issuecomment-952029317).
This is because they are not guaranteed to be reloadable.
So this presents quite a big concern for the reusability of objects in the future.

So, let's continue to explore other options in the next sections.
However, we still learned what happens in ggplot2 to generate an actual plot and how to transform it into a `grob`, and we have learned about tarchetypes hooks.

### Pros

* Very lightweight
* Flexible final image size and format
* Leverages the amazing (and not so known) hooks in a targets workflow

### Cons

* Can't edit the ggplot2 object after the fact
* May need to add a hook to the targets workflow
* `grid` objects can be strange to work with
* Officially not recommended by ggplot2 maintainers


## Third solution: save the plots as images

A third solution would be to save all of the plots as images.
This can be done through the use of the target hooks we learned about in the last section, or by invoking `ggsave()` as a new target.

We thus have to fix an image size and a file location in advance but at least the saved object would be clear: an actual image.

Here's how we could proceed with our previous workflow (and without the targets hooks):

```r 
tar_script({
  library("ggplot2")
  library("targets")
  
  list(
    tar_target(mtcars_df, mtcars),
    tar_target(
      simple_plot,
      {
        given_plot = ggplot(mtcars_df, aes(cyl, mpg)) +
          geom_point()
        
        ggsave("simple_plot.png", given_plot)
      },
      format = "file"
    ),
    tar_target(
      complex_plot,
      {
        
        mtcars_df2 = mtcars_df
        mtcars_df3 = rbind(mtcars_df, mtcars_df2)
        mtcars_df4 = rbind(mtcars_df3, mtcars_df3)
        
        given_plot = ggplot(mtcars_df, aes(cyl, mpg)) +
          geom_point()
        
        ggsave("complex_plot.png", given_plot)
      },
      format = "file"
    )
  )
}, ask = FALSE)

# Run the workflow
tar_make()
```

```
✔ skip target mtcars_df
• start target simple_plot
Saving 7 x 7 in image
• built target simple_plot [0.6 seconds]
• start target complex_plot
Saving 7 x 7 in image
• built target complex_plot [0.41 seconds]
• end pipeline [1.12 seconds]
```

Note that because `ggsave()` returns a file path, we had to indicate to `tar_target()` that the target was a file using the argument `format = "file"` (to learn more about file targets refer to the [dedicated section](https://books.ropensci.org/targets/data.html#external-files) of the targets manual).
We can now check our saved targets:

```r 
tar_read(simple_plot)
```

```
[1] "simple_plot.png"
```

We only got `"simple_plot.png"` because the target in itself only stores the file path to the actual saved file.
So to visualize it, we need to go into the folder and open the file:


{{< figure src = "simple_plot.png" alt = "Scatterplot of the mtcars dataset showing miles per gallon as a function of number of cylinders." >}}


And our plots were saved! I will leave adapting this workflow to use tarchetypes hooks as an exercise to the reader 😉

I generally dislike saving my plots as images because I don't know their final size beforehand, and I like to be able to tweak them after the fact, to tailor them to the context where they are going to be displayed.
So that's why I'm going to add my final solution.

### Pros

* Lightweight
* Easy file type

### Cons

* Fixed size a priori
* Can't edit easily the object after the fact (unless using external software)


## Fourth (& final) solution: save ggplot2 objects but thin the plotting environment

As you may have guessed, the solution was in front of our eyes all this time: instead of trying to bypass the ggplot2 limitations by saving plots into intermediate objects, we could embrace ggplot2 specificity and tackle the problem at its source, by limiting the environment to only what is strictly needed for the plot.

One way to do it is to use `rm()` before calling `ggplot()` in the plotting functions to remove any objects lying around in the function environment.
With our workflow example it would mean:

```r 
tar_script({
  library("ggplot2")
  library("targets")
  
  list(
    tar_target(mtcars_df, mtcars),
    tar_target(
      simple_plot,
      ggplot(mtcars_df, aes(cyl, mpg)) +
        geom_point()
    ),
    tar_target(
      complex_plot,
      {
      
        mtcars_df2 = mtcars_df
        mtcars_df3 = rbind(mtcars_df, mtcars_df2)
        mtcars_df4 = rbind(mtcars_df3, mtcars_df3)
        
        ggplot(mtcars_df, aes(cyl, mpg)) +
          geom_point()
        
      }
    ),
    tar_target(
      complex_but_slim_plot,
      
      {
        
        # Add many useless manipulations here to mimic object creation
        mtcars_df2 = mtcars_df
        mtcars_df3 = rbind(mtcars_df, mtcars_df2)
        mtcars_df4 = rbind(mtcars_df3, mtcars_df3)
        
        # Remove all unnecessary objects
        rm(mtcars_df4, mtcars_df2, mtcars_df3)
        
        ggplot(mtcars_df, aes(cyl, mpg)) +
          geom_point()
        
      }
    )
  )
}, ask = FALSE)

# Run the workflow
tar_make()
```

```
✔ skip target mtcars_df
• start target simple_plot
• built target simple_plot [0 seconds]
• start target complex_but_slim_plot
• built target complex_but_slim_plot [0 seconds]
• start target complex_plot
• built target complex_plot [0 seconds]
• end pipeline [0.25 seconds]
```

Now we added a new target `complex_but_slim_plot` that still plot the same thing as `complex_plot` but has a specific line where it removes all intermediate objects lying around.
We can compare their sizes:

```r 
lobstr::obj_size(tar_read(complex_plot))
```

```
912.54 kB
```

```r 
lobstr::obj_size(tar_read(complex_but_slim_plot))
```

```
880.76 kB
```

Indeed, the second plot takes less size on the disk! So this strategy works by using the strength (and weakness) of ggplot2 objects and tidying up the local environments before generating the plot.
Of course our toy example only shows a reduction of around 20 kB, but as I said above, if your plotting function requires a lot of data wrangling, this gain can be substantial.
With this trick you can reduce the file size of your targets workflow and the speed at which your saved plot objects load.

### Pros

* Works out of the box
* No need to fiddle with the workflow
* Lighter file size
* Flexible image size
* Can edit object after the fact

### Cons

* Have to edit carefully what's happening in the plotting functions


## Summary

In this blog post, we explored solutions to save ggplot2 objects in targets workflows:

* The first solution is to use ggplot2 objects directly without consideration, which may accidentally save bigger objects because it saves the entire plot environment.
* The second solution is to convert ggplot2 objects into `Grobs`, which are much lighter, this can be painlessly implemented through targets hooks, however, saving the ggplot2 grobs is **officially discouraged by the ggplot2 maintainers** as it could break anytime.
* The third solution is to save images directly (with or without targets hooks) through `ggsave`, this makes sure that only the images are saved (and not the plot environments), but is much less flexible regarding the re-styling of the plot after the fact.
* The fourth (and my recommended) solution is to use ggplot2 while paying great attention to what objects are present in the plot environment.
By thinning any object that may be staying in the environment, the size of the final object can decrease dramatically (and as such the size of the saved targets).
This is only a concern if your plotting functions contain a lot of data wrangling with many intermediate objects.


## Conclusion

From my simple problem of finding the "best" way of saving ggplot2 objects in targets workflows, I've learned a ton about both targets and ggplot2 internals.
I hope you liked the journey as much as I enjoyed writing about it.
For sure, writing this tech note led me to dive into the details of what's happening on both the targets and ggplot2 side.


## Going Further

* To learn more about R environments, read [Chapter 7 of Advanced R](https://adv-r.hadley.nz/environments.html), it carefully examines the properties of environments and builds up your understanding progressively.
* To better understand the grid package which is the base upon which ggplot2 is built, you can read the tutorial ["Fun with the R Grid Package"](https://doi.org/10.1080/10691898.2010.11889587) by Lutong Zhou & W.
John Braun.
* To understand the interaction between the grid package and ggplot2, Roger D.
Peng provides [a great tutorial](https://bookdown.org/rdpeng/RProgDA/the-grid-package.html).
* To go even deeper into the understanding of ggplot2, the [3rd version of "ggplot2: elegant graphics for data analysis"](https://ggplot2-book.org/index.html) has [a full chapter on "ggplot2 internals"](https://ggplot2-book.org/internals.html).
* To learn more about targets hooks, read [the dedicated section in the targets manual](https://ggplot2-book.org/index.html).

## Acknowledgments

Thanks to [Will Landau](/author/will-landau/) for creating targets and always answering the silly questions I may ask in the dedicated channel of the rOpenSci slack.
Thanks as well to [Noam Ross](/author/noam-ross/) & [Miles McBain](/author/miles-mcbain/) who both wrote first about that issue that I also experienced and inspired me to dive deeper into the solutions.
