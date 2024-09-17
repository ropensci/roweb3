---
title: Capturing Screenshots Programmatically With R
author: 
- Maëlle Salmon
editor: Steffi LaZerte
date: '2024-09-10'
slug: script-screenshots
categories: []
output: hugodown::md_document
tags:
  - tech notes
  - how to
  - r-universe
  - screenshot
  - magick
---


As part of our work [documenting R-Universe](/blog/2024/04/12/gsod-announcement/), 
we're adding screenshots of the interface to the [documentation website](https://docs.r-universe.org).
Taking screenshots manually could quickly become very cumbersome, especially as we expect they'll need updating in future: we might want to change the universes we feature, the interface might improve [yet again](/blog/2024/06/12/runiverse-frontend/) and therefore look slightly different.
Therefore, we decided to opt for a programmatic approach.
In this post we shall present our learnings from using the R packages [chromote](https://rstudio.github.io/chromote/) and [magick](https://docs.ropensci.org/magick/) to produce screenshots.

## Main packages needed

### The chromote R package

To take a screenshot programmatically, we need to somehow get control of a browser from a script.
The [chromote R package](https://rstudio.github.io/chromote/) is an actively maintained wrapper for [Chrome Remote Interface](https://github.com/cyrus-and/chrome-remote-interface), authored by Winston Chang and Barrett Schloerke.
With chromote, you can open a browser in the background, navigate to the page of your choice, interact with it, and capture screenshots.
chromote powers the experimental [live web-scraping in the rvest package](https://rvest.tidyverse.org/reference/read_html_live.html) and is also used in [shinytest2](https://rstudio.github.io/shinytest2/).

### The magick R package

Generally, [Jeroen Ooms'](/author/jeroen-ooms) [magick R package](https://docs.ropensci.org/magick/) isn't required to take screenshots, but we wanted to format the images by adding _shadows_. 
Therefore this tool for image manipulation was necessary.

## A first screenshot

We start by initiating a chromote session of a standard screen size.
We found the default screen size too narrow for our needs.


``` r
library("chromote")
screen_width <- 1920
screen_height <- 1080
b <- ChromoteSession$new(height = screen_height, width = screen_width)
```

We created a function that wraps `b$screenshot()` while still exposing 
the parameters we need to tweak for some of the pages.
The chromote package, like Shiny, uses R6.

Our function also calls the handy [`magick::image_shadow()`](https://docs.ropensci.org/magick/reference/composite.html) for adding a shadow to the image.


``` r
screenshot <- function(b, img_path,
                       selector = "html",
                       cliprect = c(top = 0, left = 0, width = 1920, height = 1080),
                       expand = NULL) {

  b$screenshot(
    img_path,
    selector = selector,
    delay = 2,
    cliprect = cliprect,
    expand = expand
  )

  magick::image_read(img_path) |>
    magick::image_shadow() |>
    magick::image_write(img_path, quality = 100)
}
```

We can now capture the search interface of R-Universe.
In our script, we've added a generous `Sys.sleep()` call to ensure pages are properly loaded.


``` r
b$Page$navigate("https://r-universe.dev/search/")
Sys.sleep(1)
screenshot(b, "search.png")
```

This example captures the screenshot below.

{{< figure src="search.png" alt="Screenshot of R-universe search interface, showing the search bar">}}

## Screenshots after filling a text input area

We also wanted to demonstrate searching for something.
We followed the example in a [gist](https://gist.github.com/oganm/50a8020f718842aa3eee04dcfd57c198) to enter text into the search navbar[^action]: 

- we needed to find the search input area, whose idea is "search-input", by a call to `b$DOM$querySelector()`;
- then we focussed on that area through `b$DOM$focus()`;
- finally we added text with `b$Input$insertText()`.

It was easier to reload the page than to try and delete the current text before doing a new search.


``` r
screenshot_search <- function(query, screen_width) {
  b$Page$navigate("https://r-universe.dev/search/")
  Sys.sleep(2)
  search_box <- b$DOM$querySelector(b$DOM$getDocument()$root$nodeId, "#search-input")
  b$DOM$focus(search_box$nodeId)
  b$Input$insertText(text = query)
  Sys.sleep(2)
  screenshot(
    b, sprintf("search-%s.png", snakecase::to_lower_camel_case(query))
  )
}
purrr::walk(
  c('"missing-data"', "author:jeroen json", "exports:tojson"),
  screenshot_search,
  screen_width = screen_width
)
```

[^action]: Our need to interact with the webpage *before* capturing the screenshot prevented our using [webshot2](https://rstudio.github.io/webshot2/).

## Screenshots after clicking on something

The search interface of R-universe suggests some advanced research fields if one clicks on the arrow-down button near the search button.
Through a GitHub search for code we found an example of clicking in the [source code of rvest](https://github.com/tidyverse/rvest/blob/c9be5b8dd9d672e84dd0dc515e3a37ab5c03111f/R/live.R#L145) that we were able to adapt.

The code finds the arrow-down button through its class rather than id so it might be a bit brittle over time.
Once the class is found, we retrieve its "box model" which is a bunch of coordinates, and then calculate the centre coordinates.
After that, a "click" which is actually a three-step action: moving the mouse, pressing the mouse, releasing the mouse.



``` r
# Searching, advanced fields ----
b$Page$navigate("https://r-universe.dev/search/")
Sys.sleep(1)
search_info <- b$DOM$querySelector(
  b$DOM$getDocument()$root$nodeId,
  "button.btn.btn-outline-secondary.dropdown-toggle.dropdown-toggle-split"
)
quads <- b$DOM$getBoxModel(search_info$nodeId)
content_quad <- as.numeric(quads$model$content)
center_x <- mean(content_quad[c(1, 3, 5, 7)])
center_y <- mean(content_quad[c(2, 4, 6, 8)])
b$Input$dispatchMouseEvent(
  type = "mouseMoved",
  x = center_x,
  y = center_y,
)
b$Input$dispatchMouseEvent(
  type = "mousePressed",
  x = center_x,
  y = center_y,
  button = "left",
  clickCount = 1
)
b$Input$dispatchMouseEvent(
  type = "mouseReleased",
  x = center_x,
  y = center_y,
  button = "left",
  clickCount = 1
)
Sys.sleep(2)
screenshot(b, "search-advanced.png")
```

{{< figure src="search-advanced.png" alt="Screenshot of R-universe search interface, showing the search bar and the advanced search fields">}}

## Other gotchas about using chromote

The package pages on R-universe are quite exhaustive. 
We needed to capture screenshots of different sections.
When using an URL with a fragment, for instance `https://r-spatial.r-universe.dev/sf#citation`, 
we got the exact same screenshot as for `https://r-spatial.r-universe.dev/sf`.

We therefore had to use the `cliprect` argument of the screenshot method.
Figuring out we needed it was a first gotcha.

A second gotcha is that `cliprect` is ["a (unnamed) vector/list with left, top, width and height"](https://github.com/rstudio/chromote/issues/168#issuecomment-2302422282)[^support]:
and it's the *order*, not the names, that matters.

[^support]: We appreciated the fast and helpful user support!

## Conclusion

In this post we explained how we used the chromote and magick R packages to produce screenshots for the documentation website of R-universe.
Find the [current version of our script](https://github.com/r-universe-org/hitchhikers-guide/blob/main/R/screenshots.R).
Do you use sometimes chromote or a similar programmatic browser interface?
