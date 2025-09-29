---
title: A primer on domain verification
author: 
- Maëlle Salmon
editor:
date: '2025-10-06'
slug: verification
description: How domain verification helps against impersonation and takeover attacks, and how to use it.
output: hugodown::md_document
tags:
  - security
  - tech notes
params:
  doi: "10.59350/rwy6x-q8112"
---

Are you [the mother goat or the wolf](https://en.wikipedia.org/wiki/The_Wolf_and_the_Seven_Young_Goats)?
Consumers of your online content might care!
Be it on social media or other platforms, your profile can sometimes be "verified".
What does it mean? How does one get a green checkmark where it matters?
Here's a primer on domain verification.

## A basic verification workflow

Say you, Jane Doe, have your resume and blog on website A.
You also publish content on website B, for instance Mastodon.
How do readers of website B ensure they're reading content by "Jane Doe from website A" and not a malicious impersonator?
Well, you can _verify_ the domain of website A on website B.

The platform for website B will ask you to publish something on website A that proves that you are the same person.
You will go and publish it, then ask website B to query website A to check you did.
If website B finds what it asked for on website A, it can put a green check mark near the domain of website A on your profile of website B.
Readers now know you are the same person on websites A and B!

## An example: Mastodon

Below is the [Mastodon profile](https://ecoevo.social/@noamross) of rOpenSci director Noam Ross, that features a few URLs including `ropensci.org/about` highlighted in green. 
That URL is _verified_.

{{< figure src="noam.png" alt="" >}}

In clear text on our [about page](/about/) you can read that Noam is rOpenSci executive director indeed, but that's not what Mastodon used to assess whether that URL, `ropensci.org/about`, represented Noam in some way.
What it used is this metadata field in the head of the website:

```html
<a rel=me href=https://ecoevo.social/@noamross><img src=/images/users/mastodon.svg alt style=max-width:16px;max-height:16px></a>
```

After we added that field to the website, Noam went to his Mastodon profile settings to add the URL which triggered a query from Mastodon to `ropensci.org/about`.
Mastodon found this field in the web page, and was able to verify that URL.

This DIY verification is actually one of [Mastodon's selling points](https://joinmastodon.org/verification), as it doesn't rely on some arbitrary mesure of popularity or importance, just on logic.

## Another example: GitHub

Below is the [GitHub profile](https://github.com/ropensci) of rOpenSci, that features a green "verified" badge as well as the URL to our website. 
That URL is _verified_.

{{< figure src="ropensci.png" alt="" >}}

In this case, what was used was not a field in the metadata of `ropensci.org`.
What GitHub asked us from the [settings](https://docs.github.com/en/organizations/managing-organization-settings/verifying-or-approving-a-domain-for-your-organization) was to publish a _DNS TXT record_ with a given name and given content. Think `blabla-identity-challenge-ropensci-github.ropensci.org` with `random-characters` as content.

We created that record in the dashboard of our DNS provider, then asked GitHub to query the record.
It can take a little while for the DNS record to be online for real, but in our case it was more or less instantaneous.

It is possible to have several GitHub organizations point to the same website, all with a green "verified" badge.
You simply have to do the domain verification once per GitHub organization.
See for instance our [ropenscilabs](https://github.com/ropenscilabs) and [ropensci-books](https://github.com/ropensci-books) organizations.

## Another example: GitHub Pages

You can publish websites using a service called GitHub Pages.
By default, the website for a repository hosted at `github.com/account/repo` will be served at `account.github.io/repo`.
You can however use a _custom domain_.

- On the side of GitHub Pages, in the settings of your repository, you declare you want your website to be served at `custom.domain.io` for instance.

- On the side of your DNS provider, you create a record, for instance an A record for `custom.domain.io` that points to one of the IP addresses of GitHub Pages. A very general IP address not specific to your repository at all.

And... that's it! So, what prevents anyone from creating a repository on GitHub with malicious content and have its custom domain point to `custom.domain.io`?

Well, you can add another step to prevent such a takeover attack.
You can [verify your domain for GitHub Pages](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/verifying-your-custom-domain-for-github-pages)!

It works like the domain verification for GitHub profiles, with TXT records. 
It is controlled at the user or organization level, not at the repository level.
It is different from domain verification for profiles in that:

- it is done from another part of the settings. Follow the docs!
- you cannot verify `domain.io` for instance for two GitHub organization. The latest verification will overwrite the previous one![^ouch] So you have to painstakingly verify `custom.domain.io`, `custom1.domain.io` etc.

[^ouch]: Not only that, it will also deactivate all the custom domains of that first organization, if they relied on the verification at the domain, not the subdomain level. Ask me how I know. :melting_face:

## Conclusion

In this post, we gave a small primer on domain verification, a process by which you prove that your content under a given website comes from the same you under another website.
Using domain verification when it exists, and requesting it when it doesn't, makes us a bit safer against impersonations or takeover attacks.