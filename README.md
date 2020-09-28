
# roweb3

<!-- badges: start -->
[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![Netlify Status](https://api.netlify.com/api/v1/badges/53f54832-bf31-49a7-b9a7-4e63dfcfbd31/deploy-status)](https://app.netlify.com/sites/ropensci/deploys)
<!-- badges: end -->

The goal of roweb3 is to hold the source of rOpenSci website, 2020 edition.

## Developer notes

### Featured posts and tech notes

To feature a blog post or tech note add

```yaml
featured: true
```

to its metadata. 
No need to remove the field afterwards:

* the featured post or tech note at the top of the homepage is the latest featured one.
* the two featured posts or tech notes at the bottom of the homepage and at the top of the blog list page is the latest featured ones.

Criteria for selecting featured posts and tech notes:
- always one by a community member (about peer reviewed package or other); could be most-recent or most-compelling post
- second featured post or tech note by rOpenSci team or team member about rOpenSci announcement, big collaborative post, infrastructure, package, etc. In absence of a recent compelling post this would be the most recent post or tech note by team member. Will never be 2months in 2mins. 

### Highlighted blog "categories"

For the three blue cards that are on the blog page, edit `data/blog/highlights.json`

### Featured events

To feature an event or comm call add

```yaml
featured: true
```

to its metadata.

The featured event or comm call at the top of the events page is the nearest featured event.

### Events

To add a new event, add a Markdown file under content/events called YYYY-MM-DD-slug.md.

````markdown
---
title: Call Title in Title Case
dateStart: 2020-12-05T10:00:00 # UTC!!
dateEnd: 2020-12-05T11:00:00 # UTC!!
date: 2020-12-05T11:00:00 # UTC!! same as dateEnd
description: short summary
location: 'online' # free text
slug: "informative-slug"
country: "\U0001F310" # emoji
outputs: 
- HTML
- Calendar 
attendees:
  - Jane Doe # each attendee needs an author page
deets: "Register at [blabla](#)" # not necessary but useful
resources: # can be added later, one entry per talk (don't add while still empty, add once there are resources)
  - title: # talk title
    speaker: # name
    slides: # URL to slidedeck
    video: # URL to recording (optional)
---

Info including links.

````

### Comm calls

To add a new comm call, add a folder under content/commcalls with a Markdown file called index.md.

Use the YAML to store information, except from the event summary that is the content of the Markdown file. 
Store speaker pictures in the folder.
If needed create author files for the organizer(s) and speaker(s).

````markdown
---
title: Call Title in Title Case
dateStart: 2020-12-05T10:00:00 # UTC!!
dateEnd: 2020-12-05T11:00:00 # UTC!!
date: 2020-12-05T11:00:00 # UTC!! same as dateEnd
publishDate: 2020-07-07
description: shorter description of the call
author:
  - Steffi LaZerte
  - Rich FitzJohn
organizer: Stefanie Butland
location: Community call (teleconference)
country: "\U0001F310"
attendees: All are welcome
slug: informative-slug
notes: #link to collaborative notes
outputs: 
- HTML
- Calendar 
vimeo:
  - id: '378010209'
resources:
  - url: relative or absolute URL
    name: link text
    details: more info about the link
speakers:
  - name: Jane Doe
    bio: Jane Doe is a brilliant speaker.
    img: jane-doe.jpg
  - name: John FooBar
    bio: John FooBar knows their stuff.
    img: john-foobar.jpg
tags:
  - tag1
  - tag2
deets: "Zoom meeting ID 297 967 525. [Join Meeting](#)."
zoomurl: zoom.blabla
---

Summary of the event.
````

### Careers

To add a new job posting, add a file under content/careers.

```markdown
---
slug: "unique-slug"
title: "Job Title in Title Case"
date: YYYY-MM-DD
expirydate: YYYY-MM-DD
location: Well, the location
conditions: Here you can add if it's full-time, an internship, in a few words
---

Markdown text, details of the posting, including application deadline.
```

`expirydate` is the expiry date of the job posting _page_: from that day, when the website is built, the job ad will disappear from the website. 
Ideally, set a deadline prominently in the text, and set `expirydate` to 2 days after that to not be bitten by time zones stuff.

### Brands

To add a new partner for the homepage bottom section

* add an image (SVG) under `themes/ropensci/assets/brands` (the image will be minified by Hugo so don't worry about size)
* add an entry in `data/partners/brand.json` (don't forget commas in and before the entry)

```json
{
   "name": "NASA",
   "img": "NASA_logo_gray.svg",
   "url": "https://www.nasa.gov/"
}
```

### Papers

To add a new paper to the resources page, add an entry under data/papers/papers.json.
If there is no DOI add a field called "otherid".

```json
{
"authors": "Ram, K., Boettiger, C., Chamberlain, S., Ross, N., Salmon, M., & Butland, S.",
"year": "2018",
"title": "A Community of Practice Around Peer-review for Long-term Research Software Sustainability",
"journal": "Computing in Science & Engineering",
"doi": "10.1109/MCSE.2018.2882753",
"url": "https://doi.org/10.1109/MCSE.2018.2882753",
"pdf": "/pdfs/2019-ropensci-software-review.pdf",
"type": "organization"
}
```

### Team member

Edit the JSON file under data/team.

* For adding someone, create a new entry.
* For changing someone's role, move information between the "roles" and "past_roles" field.
* To list someone in the alumni section also add an "alumnus" field.
* Do not forget to update the "image" field, and store a high-res square picture (at least 500x500px) under themes/ropensci/static/img/team.

The data is used for the about page and, for the editors, for the software-review page.

If the person also authors blog post, also make sure the file under author/ uses the right title and img.

### Tweaking CSS, JS

Cf https://github.com/ropensci-org/roweb3-styles

Note that main.min.css that contains all the CSS is stored under themes/ropensci/assets so that Hugo can fingerprint it (to prevent browsers from using a cached version after we've tweaked the CSS).
