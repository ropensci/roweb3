
# roweb3

<!-- badges: start -->
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
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

To add a new event, or add to the [talks list](https://ropensci.org/talks-papers/) add a Markdown file under content/events called YYYY-MM-DD-slug.md.

````markdown
---
title: Call Title in Title Case # If you use a colon put the whole field in ""
dateStart: 2020-12-05T10:00:00 # UTC!!
dateEnd: 2020-12-05T11:00:00 # UTC!!
date: 2020-12-05T11:00:00 # UTC!! same as dateEnd
description: short summary # If you use a colon put the whole field in ""
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
  - title: # talk title # If you use a colon put the whole field in ""
    speaker: # name
    slides: # URL to slidedeck
    video: # URL to recording (optional)
---

Info including links.

````

### Comm calls

To add a new comm call, add a folder under content/commcalls with a Markdown file called index.md.

Use the YAML to store information, except from the event summary that is the content of the Markdown file.
Please do not use "&" in the description.

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
deets: |
    Meeting ID: 922 9890 9939
    
    Passcode: 896415
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

### Newsletter

* Check the number of subscribers in MailChimp doesn't go over what our current plan allows.
* Start a new post with the newsletter archetype, use the same title "Latest rOpenSci News Digest" and slug "ropensci-news".
* **Make sure you have all dependencies from roweb3 DESCRIPTION.**
* **Make sure your branch is based on the latest commit of the default branch, re-base if needed.**
* Run `get_use_cases.R` to update use cases data (you need a Discourse API key, contact Scott).
* Change the date of the last newsletter in the new post, knit it. 
  * Manually updated sections: rOpenSci HQ (issues in https://github.com/ropensci/biweekly that you should watch; look at recent/future events including comm calls; if needed poll staff), from the forum (interesting recent posts?), package development corner (poll package-maintenance channel; your recent reads), call for maintainers.
  * Automatic sections. New packages by comparing two versions of the package registry; new versions by querying GitHub releases; software review by querying GitHub API (the submitter name and URL from their GitHub profile is used. you might need to go back and fix software-review issue formatting of the DESCRIPTION block); on the blog queries YAML of posts and sorts them based on tags (if no images, try and see if some posts could get a twitterImg and twitterAlt, add it); use cases uses the use cases JSON; citations simply counts citations in total and for the year.
* Once the post is merged use the R-bloggers feed to get an HTML version of the post with absolute URLs, to be used for MailChimp. Things to change before using the content for MailChimp
    * The images URL src needs to get the URL to the post (Search and Replace in Atom)
    * Remove anchors (Search and Replace the regex `<a class="anchor d-print-none" href="#.*?"> <small>&#x1F517;</small> </a>` in Atom)
    * The lines need to be hard-wrapped (Ctrl+Shift+Q in Atom)
* In MailChimp, replicate a past campaign, changing its name, subject and preview (use the YAML field "description"). **Disable [click tracking](https://mailchimp.com/help/enable-and-view-click-tracking/#Turn_click_tracking_on_or_off).**
* Tweet about the newsletter from rOpenSci account, highlighting some numbers.

Review criteria: anything looks weird? (need to fix upstream data or code?). Special focus on manually updated sections.

### When deploys fail

* Look at the Netlify logs (linked from the commit status) for information.
* If relevant, check the YAML indentation. Try to build the website locally.
* When a problem is an embedded tweet e.g.

```
5:04:39 PM: ERROR 2021/03/29 08:04:39 Failed to get JSON resource "https://api.twitter.com/1/statuses/oembed.json?id=bla&dnt=true":
```

  * Look for the tweet with that ID on Twitter `http://twitter.com/user/status/bla` (Twitter will re-direct to the correct user). Was it deleted, or is the account now private? 
    * If the tweet was deleted or is now private, amend the Markdown file(s) where it was embedded.
    * If the tweet is available, try re-triggering the deploy.

* Check https://www.netlifystatus.com/.
* To trigger a new deploy
    * If you are a member of the rOpenSci team on Netlify, use the Netlify interface to re-trigger a deploy.
    * Alternatively make an empty commit `git commit -m "trigger deploy" --allow-empty` and push.
