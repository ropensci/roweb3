---
slug: "mapscanner"
title: Rectifying Hand-Drawn Marks on Maps With the mapscanner Package
package_version: 0.0.3
author:
  - Mark Padgham
# Set the date below to the publication date of your post
date: 2020-09-29
# Minimal tags for a post about a community-contributed package
# that has passed software peer review are listed below
# Consult the Technical Guidelines for information on choosing other tags
tags:
  - Software Peer Review
  - packages
  - R
  - mapscanner
  - spatial
  - maps
  - survey
# The summary below will be used by e.g. Twitter cards
description: "The mapscanner package enables lines drawn by hand on maps to be converted to spatial objects"
# If you have no preferred image for Twitter cards,
# delete the twitterImg line below
# Note there is no '/' symbol before 'img' here
# if needed replace blog with technotes
twitterImg: blog/2020/09/29/mapscanner/poly-aggr-plot.png
twitterAlt: "Polygons aggregated with mapscanner::ms_aggregate_polys()"
---

## mapscanner

It is sometimes easy in the midst of the cutting-edge world of unique
software development that is rOpenSci to forget that even though our
software might be freely available from anywhere in the world, access to
adequate hardware is often restricted. Restricted access to hardware is
rarely acknowledged as a reason for differing outcomes from the practice
of science in different parts of the world, yet being in a part of the
world that is relatively less financially advantaged must translate to
being relatively less able to take advantage of the abilities of
computer hardware.

Just as many people might argue that social media have transformed our
quotidian social lives, developments in computer hardware, and
particularly in portable screen-based devices, have transformed the
practice of social sciences. I would happily wager that almost everyone
would admit that the last survey or questionnaire they completed was
done with some kind of computer hardware, rather than with pen and
paper. And yet conducting social research with computer hardware remains
impossible for very many scientists, who are instead restricted to what
many would generally refer to as “less” technologically sophisticated
solutions like pens and paper.

One technological development that has particularly impacted both life
in general, and the practice of social sciences, has been interactive
mapping systems – think how easy it is to use a smartphone to find
somewhere to eat in an unfamiliar city. Coupled with portable
screen-based devices, such systems greatly expand abilities to generate
detailed, spatially explicit data on all aspects of social and natural
environments. Yet screen-based systems for social and other research
which allow for the input of spatially explicit data are often
prohibitively expensive, and require those conducting such research to
have access to large numbers of portable, screen-based devices in order
to generate sufficient data. The comparative disadvantage placed upon
scientists and scientific communities who do not have access to the
kinds of funds necessary to conduct such research can easily accumulate
to become systemic disadvantage.

With due acknowledgement that no single measure can be effective in
overcoming systemic disadvantage, the new rOpenSci package
[mapscanner](https://github.com/ropensci/mapscanner) aims to enable and
empower the kinds of technologically sophisticated social research
previously only available at considerable price. The package is able to
convert scanned hand-drawn marks on a physical map to spatial objects
suitable for any and all kinds of subsequent analyses. It therefore
enables spatially detailed social research to be conducted with pen and
paper, minimally requiring little more than a printer to print survey
maps, a mobile phone with a camera to digitise any marks made by hand
upon the printed maps, and a single computer capable of running R. The
package is likely to be of general utility for spatial analyses in
general, in domains such as geography, ethnography, anthropology,
archaeology, ecology, botany, political science, and many more, with
potential use cases as diverse as the variety of hand-drawn marks on
maps.

The following section provides a very brief overview of functionality,
followed by considering a few use cases to which the package may be
applied.

### Package functionality

Package functionality is described in the [main
vignette](https://docs.ropensci.org/mapscanner/articles/mapscanner.html),
with this section providing only a very brief overview necessary to
contextualise what follows. The package has only two primary functions,
[`ms_generate_map()`](https://docs.ropensci.org/mapscanner/reference/ms_generate_map.html)
to generate maps for printing, and
[`ms_rectify_map()`](https://docs.ropensci.org/mapscanner/reference/ms_rectify_map.html)
for rectifying a scanned or photographed map against the original
printed version. The typical workflow as described in the vignette runs
something like the following:

1.  Use
    [`ms_generate_map()`](https://docs.ropensci.org/mapscanner/reference/ms_generate_map.html)
    to generate your desired map in both `.pdf` and `.png` formats. At
    least one of those files must be retained to enable subsequent
    rectification in step 5, below.
2.  Print however many copies of the map you desire.
3.  Go outside and conduct your research, getting people to draw on the
    paper maps. Markings must be made in colour, and must be either dots
    or lines enclosing defined areas.
4.  Scan or photograph all drawn-upon maps back in to some appropriate
    digital form.
5.  Use
    [`ms_rectify_map()`](https://docs.ropensci.org/mapscanner/reference/ms_rectify_map.html)
    to rectify the drawn-upon versions against the spatial coordinates
    of the original map, and thereby to convert all markings to
    [`sf`-format](https://github.com/r-spatial/sf) spatial
    representations.
6.  Analyse your results.

### Use Case \#1 – Point-based analyses

[mapscanner](https://github.com/ropensci/mapscanner) rectifies points by
allocating each distinct mark on a map to its geometric centroid,
enabling points to be drawn as dots of arbitrary size, crosses,
asterisks, or any marks with distinct centres. Such point-based marks
can be converted through the functionality of the package into estimates
of local densities, or any other measure applicable to a particular
study.

For this use case, we’ll consider applying the package to map urban
trees. Trees are very important for healthy urban life. Knowing the
locations of trees can be very useful for urban planners, yet very few
cities provide openly available databases of tree locations (exceptions
include the comprehensive database of [Vancouver,
Canada](https://opendata.vancouver.ca/explore/dataset/street-trees/information/?disjunctive.species_name&disjunctive.common_name&disjunctive.height_range_id)).
One of the difficulties of tree databases is that they require constant
updating as trees grow and decline, get injured, or die and get removed.
Updating corresponding databases generally requires extensive manual
intervention, which is why, for example, the Open Street Map (OSM)
database contains relatively few comprehensive data sets on urban trees.
The database for Vancouver lists almost 150,000 trees, for example, yet
only a tiny fraction of these are contained within the OSM database
(1,304 at the time of writing).

Mapping trees is obviously best done as a collective exercise, yet any
attempt to collate and maintain a tree data base faces three primary
hurdles:

1.  Finding sufficiently many participants to ensure adequate coverage;
2.  Ensuring that each participant has access to an appropriate
    technological device; and
3.  Ensuring that each participant is able to use the software deemed
    appropriate for a particular mapping exercise.

The [mapscanner](https://github.com/ropensci/mapscanner) package can at
least entirely remove two of these three impediments to the successful
collation and maintenance of a tree data base, leaving only the problem
of finding sufficiently many participants. Perhaps more importantly, the
package will largely remove barriers to participation, through requiring
that participants be provided with nothing more than a printed map of
their local area of the city. Each tree could then be simply marked on
each map, all maps scanned or photographed back in, the results
rectified to the original coordinate system, and aggregated to generate
a unified data base of tree locations. (Some data cleaning may of course
be necessary, for example to remove duplicate entries through imposing
minimal-distance criteria or similar.)

A city could effectively construct and maintain a tree data base using
the [mapscanner package](https://github.com/ropensci/mapscanner) through
encouraging community groups to simply spend a short amount of time on a
regular basis (such as an hour or two per year) walking around their
neighbourhoods and marking trees on a piece of paper. If the data were
also uploaded to Open Street Map, then the results from previous years
could be made visible on the initially printed maps, and participants
need only note any changes from the previous year.

### Use Case \#2 – Where is downtown?

A paper from 2003 by Montello, Goodchild, Gottsegen, and Fohl ([*Spatial
Cognition and Computation* 3,
185–204](http://geog.ucsb.edu/~montello/pubs/downtown.pdf)) posited the
question of “Where’s downtown?”. The authors were mostly based in Santa
Barbara, USA, and asked 36 people to sketch their understanding of the
spatial extent of the downtown area of that city. The results were
presented in two primary forms, either as a series of overlapping lines
representing the boundaries drawn by each participant, or as an
equivalent series of rasterized dots, shaded according to numbers of
polygons containing each dot. A similar, possibly slightly less
academic, analysis was conducted for the [London (UK) neighborhood of
Dalston](https://sites.google.com/view/tifd/home), clearly indicating
that, while “official” boundaries may be clean-cut, people’s lived
understandings are often much less so. ([Click
here](https://www.openstreetmap.org/way/188435186) for an interactive
map featuring part of the road traversed for that study.) The
[mapscanner package](https://github.com/ropensci/mapscanner) can be used
to analyse collective subjective perspectives of space.

Consider, for example, Dalston. Dalston is not, nor has ever been, an
official administrative location in London, and there are therefore [no
official boundaries](https://en.wikipedia.org/wiki/Dalston). (This has
the effect that typing “Dalston” into your preferred online map service
will generally return a single point, whereas typing in
officially-recognized locations like neighboring or partially-enclosing
“Hackney” will return a polygonal boundary.) Nevertheless, those for whom
Dalston is a part of their everyday life know where Dalston is. The
problem is that each person has a slightly different idea. My own
delineation of Dalston might look something like the following:

{{< figure src = "dalston-bdry.png" width = "150" alt = "Subjective boundary of Dalston, UK" caption = "Subjective boundary of Dalston, UK" class = "pull-left">}}

That boundary that I drew by hand on top of the map can be immediately
converted to a spatially rectified polygon via the [`ms_rectify_map()`
function](https://docs.ropensci.org/mapscanner/reference/ms_rectify_map.html).

    library (mapscanner)
    x <- ms_rectify_map (map_original = "dalston.png",      # name of original map
                         map_modified = "dalston-bdry.png") # scanned version shown above
    x
    #> Simple feature collection with 1 feature and 0 fields
    #> geometry type:  POLYGON
    #> dimension:      XY
    #> bbox:           xmin: -0.07591964 ymin: 51.53912 xmax: -0.05802125 ymax: 51.55294
    #> geographic CRS: WGS 84
    #>                         geometry
    #> 1 POLYGON ((-0.05814729 51.54...

The resultant object contains one polygon representing the red
hand-drawn boundaries of Dalston. What the original 2003 study described
above did was to ask their 36 participants to drawn the similarly
unofficial area of “downtown” Santa Barbara, so that they could gain
insight into the collectively subjective location of this area. In their
case, their main result was simply represented as a series of overlaid
lines from which a central tendency was able to be visually perceived.
The [mapscanner package](https://github.com/ropensci/mapscanner) enables
more powerful analyses through the
[`ms_aggregate_polys()`](https://docs.ropensci.org/mapscanner/reference/ms_aggregate_polys.html)
function which aggregates multiple polygons into a single “multipolygon”
object in which each component corresponds to the overlap of some number
of individual polygons. The following figure shows an example of the output of
[`ms_aggregate_polys()`](https://docs.ropensci.org/mapscanner/reference/ms_aggregate_polys.html).

<!--html_preserve--> 
{{< figure src = "poly-aggr-plot.png" width = "300" alt = "Polygons aggregated with ms_aggregate_polys" caption = "Polygons aggregated with ms_aggregate_polys" class = "center">}}
<!--/html_preserve-->

These aggregate multipolygons can then be analysed in any number of
ways, such as in terms of relationships between area and degrees of
overlap (as numbers of individual polygons enclosing the specified
area), or through applying further spatial processing routines to
determine an “average” boundary of a delineated area, along with
estimates of uncertainty at each point.

### Use Case \#3 – Line-based analyses

Who has ever wanted to construct a GPS track to provide guidance while
embarking on some kind of outdoor adventure? I quite often do that for
bicycle adventures, and have generally resorted to my preferred tool,
`gpsies.com`. That brilliant web-based service was, however, recently
bought out, re-branded to [`alltrails.com`](https://alltrails.com), and
has lost much of the original functionality which drew me to the site.
The current version of
[mapscanner](https://github.com/ropensci/mapscanner) can rectify points
and polygons, as described above, and yet can not currently rectify
lines. The ability to rectify lines would enable anyone to generate GPS
tracks through simply drawing a desired route on a piece of paper. Even
if `gpsies` existed in its original form, I suspect it would be much
simpler and easier to simply draw a desired route on a piece of paper
than otherwise needing to click one or two hundred times on a screen in
order to generate an equivalent digital representation.

Implementing line-based analyses requires solving one, and only one,
technical hurdle, so if you think that functionality might be useful to
you, please get it touch, and even better, please offer to help to
overcome [the final
hurdle](https://github.com/ropensci/mapscanner/issues/5) and help extend
[mapscanner](https://github.com/ropensci/mapscanner) beyond
rectification of points and polygons, so that it can also convert lines
drawn on maps into geographical line objects.

### Acknowledgements

This package was enormously improved through the rOpenSci [peer review
process](https://github.com/ropensci/software-review/issues/330), in
particular through the insightful reviews of [Kelly
Hondula](https://github.com/khondula) and [Nicholas
Potter](/author/nicholas-potter/). The contributions of co-author
[Michael Sumner](/author/michael-sumner) were particularly invaluable in
the development of the `ms_aggregate_polys()` function.
