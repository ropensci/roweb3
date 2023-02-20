
# roweb3

<!-- badges: start -->
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Netlify Status](https://api.netlify.com/api/v1/badges/53f54832-bf31-49a7-b9a7-4e63dfcfbd31/deploy-status)](https://app.netlify.com/sites/ropensci/deploys)
<!-- badges: end -->

The goal of roweb3 is to hold the source of rOpenSci website, 2020 edition.

## Developer notes

### Hugo version

The Hugo version used has to be recorded in netlify.toml (two places) as well as in .Rprofile and in the blog guidance.

### Featured posts and tech notes

To feature a blog post or tech note add:

```yaml
featured: true
```

to its metadata. 
No need to remove the field afterwards (unless you now want to feature an older post):

* the featured post or tech note at the top of the homepage is the latest post.
* the two featured posts or tech notes at the bottom of the homepage and at the top of the blog list page are the latest featured ones.

Criteria for selecting featured posts and tech notes:
- always one by a community member (about peer reviewed package or other); could be most-recent or most-compelling post
- second featured post or tech note by rOpenSci team or team member about rOpenSci announcement, big collaborative post, infrastructure, package, etc. In absence of a recent compelling post this would be the most recent post or tech note by team member.

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
Add the line `ropensci: yes` if the event is put together by rOpenSci.

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

### Author
* Create a folder with the name of the author on content/author
* Copy a picture for the profile in themes/ropensci/static/img/community unless they have a GitHub profile with a picture, which will be used by default.
* Create an _index.md with the following content:

```markdown
---
name: Name Of The Author
github: github user
link: web page link
img: img/community/name-of-the-author-picture.png
---
```

### Tweaking CSS, JS

Cf https://github.com/ropensci-org/roweb3-styles

Note that main.min.css that contains all the CSS is stored under themes/ropensci/assets so that Hugo can fingerprint it (to prevent browsers from using a cached version after we've tweaked the CSS).

### Newsletter

* Check the number of subscribers in Sendgrid doesn't go over what our current plan allows.
* Check "New Maintainer Wanted" issues.
* Update package categories in https://github.com/ropensci/roregistry/blob/gh-pages/scripts/update_categories.R (not directly related to the newsletter but good to do monthly!).
* Update pinned repositories of github.com/ropensci to feature new packages.
* Start a new post with the newsletter archetype, use the same title "rOpenSci News Digest, MONTH YEAR" and slug "ropensci-news-digest-month-YYYY" and tag "newsletter".
* **Make sure your branch is based on the latest commit of the default branch, re-base if needed.**
* Open the Rproj in `scripts/use-cases` (in another RStudio window), run `renv::restore()` and source `get_use_cases.R` to update use cases data (you need a Discourse API key, contact Scott).
* Change the date of the last newsletter in the new post, knit it. 
  * Manually updated sections: rOpenSci HQ (issues in https://github.com/ropensci/biweekly that you should watch; look at recent/future events including comm calls; if needed poll staff), from the forum (interesting recent posts?), package development corner (poll package-maintenance channel; your recent reads), call for maintainers.
  * If a blog post was featured on the R Weekly highlights podcast, add a link to it.
  * Automatic sections. New packages by comparing two versions of the package registry; new versions by querying GitHub releases; software review by querying GitHub API (the submitter name and URL from their GitHub profile is used. you might need to go back and fix software-review issue formatting of the DESCRIPTION block); on the blog queries YAML of posts and sorts them based on tags (if no images, try and see if some posts could get a twitterImg and twitterAlt, add it); use cases uses the use cases JSON; citations simply counts citations in total and for the year.
  * Check new packages that were peer-reviewed have a peer-reviewed badge (if they don't, less metadata in codemeta.json).
* Update the description in YAML (keywords from content) before merging.
* Once the post is merged and deployed on ropensci.org use the R-bloggers feed to get an HTML version of the post with absolute URLs, to be used for SendGrid. Use `roblog::create_newsletter_content()` Things changed:
    * The images URL src get the URL to the post (Search and Replace in Atom) & a max-width of 100%;
    * All `<a` are replaced with [`<a clicktracking=off`](https://community.auth0.com/t/howto-disable-sendgrids-click-tracking-feature-in-an-auth0-email-template/22958);
    * All `<li` contents are wrapped in a `<p` for optimal sizing.
* In Sendgrid, 
    * replicate a past campaign (choose "Arial" as font not "Arial Black"!), 
    * change its name, 
    * change its subject 
    * change its pre-header (use the YAML field "description"). 
    * Send test email.
    * After checking it send to all recipients.
* Tweet & toot about the newsletter from rOpenSci account, highlighting some numbers.

Review criteria: anything looks weird? (need to fix upstream data or code?). Special focus on manually updated sections.

### Help wanted issues

* They are hosted at https://ropensci-help-wanted.netlify.app/issues.json generated from a private repository.
* This Netlify website is hosted under the Netlify ropensci team.
* If Netlify is down, the whole website deploy anyway.

### When deploys fail or something else goes wrong

* If [Netlify is down](https://www.netlifystatus.com/) or [Cloudflare is down](https://www.cloudflarestatus.com/), the easiest thing is to wait.
* Is [GitHub down](https://www.githubstatus.com/)? If so you might need to do a manual deploy on Netlify, [dragging and dropping](https://docs.netlify.com/site-deploys/create-deploys/#drag-and-drop) your local roweb3 folder. 
* Look at the Netlify logs (linked from the commit status) for information.
* If relevant, check the YAML indentation. Try to build the website locally.
* When a problem is an embedded tweet e.g.

```
5:04:39 PM: ERROR 2021/03/29 08:04:39 Failed to get JSON resource "https://api.twitter.com/1/statuses/oembed.json?id=bla&dnt=true":
```

Look for the tweet with that ID on Twitter `http://twitter.com/user/status/bla` (Twitter will re-direct to the correct user). Was it deleted, or is the account now private? 

    * If the tweet was deleted or is now private, amend the Markdown file(s) where it was embedded.
    * If the tweet is available, try re-triggering the deploy.

* Check https://www.netlifystatus.com/.
* To trigger a new deploy
    * If you are a member of the rOpenSci team on Netlify, use the Netlify interface to re-trigger a deploy.
    * Alternatively make an empty commit `git commit -m "trigger deploy" --allow-empty` and push.

* The website depends on the package registry (for packages pages, and for the search index) and on the citations JSON files that are hosted on GitHub pages. Therefore if GitHub pages is down see https://www.githubstatus.com/, the website can't be build. GitHub Pages often isn't down for long. Now if it is down for too long, 

* Take https://github.com/ropensci-org/ropensci_citations/blob/master/citations_all_parts_clean.json and https://github.com/ropensci/roregistry/blob/gh-pages/registry.json (hopefully GitHub itself isn't down) and save them in a local folder `hack`. Drag and drop this folder to create a [new site in Netlify](https://docs.netlify.com/site-deploys/create-deploys/#drag-and-drop).
In `config.toml` change

```toml
    registry = "https://ropensci.github.io/roregistry/registry.json"
    citations = "https://ropensci-org.github.io/ropensci_citations/citations_all_parts_clean.json"
```

to 

```toml
    registry = "URL-TO-NETLIFY-WEBSITE/registry.json"
    citations = "URL-TO-NETLIFY-WEBSITE/citations_all_parts_clean.json"
```

And open an issue for an Hugo person to change things back / change things back yourself when GitHub Pages is up again.
With this hacky change the site should be built but if the registry and citations are updated the site is not showing the latest data.

* If something like search or packages pages behave weirdly, look at error messages in the DevTools console (learn [how to open it using one of these resources](https://rmd-blogging-blr.netlify.app/webdev/devtools/) or via the browser menu, something like more tools > developer tools). Maybe one of the needed libraries can't be found because the related content delivery network (CDN) is down? Look at the status for that CDN (e.g. one of the JS files comes from `https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js` so you'd maybe check the Twitter account of jsdeliver). Maybe temporarily change for another CDN (e.g. `https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js` in the related partial), open an issue. For search the problem might be the file https://ropensci.org/search/index.json, try reading it with jsonlite to see if there is a wrong sign somewhere in a content file. For an example see https://github.com/ropensci/roweb3/pull/322.

### Search

What if search seems broken? 

* Look at error messages in the DevTools console (learn [how to open it using one of these resources](https://rmd-blogging-blr.netlify.app/webdev/devtools/) or via the browser menu, something like more tools > developer tools). Maybe one of the needed library can't be found because the related CDN is down? Look at the status for that CDN. Maybe temporarily change for another CDN, open an issue.

* Look at the address `<deploy-url>/search/index.json` and see what error there is. You might want to copy the raw JSON into a [JSON linter](https://jsonlint.com/). 

    * If the error is due to something in the website e.g. the description of a blog post, change it. 
    * If the error is due to something in the packages registry ou might need to tweak `"title": "{{ $page.name}} - {{ $page.description | chomp | replaceRE "\n" "" | htmlEscape }}"` in themes/ropensci/layouts/search/list.json.json e.g. with one more replaceRE. If you are not a Hugo person and no Hugo person is available in the office :-) then make that line `"title": "{{ $page.name}}"` and open an issue tagging an Hugo person for later. It will simply make search less good for packages for a little while.
