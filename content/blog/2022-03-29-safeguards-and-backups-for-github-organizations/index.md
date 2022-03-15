---
title: Safeguards and Backups for GitHub Organizations
author:
  - Maëlle Salmon
date: '2022-03-29'
slug: safeguards-and-backups-for-github-organizations
categories: []
tags:
  - tech notes
package_version: 0.1.0
description: Some practical steps we've taken to safeguard our GitHub organizations.
---

At rOpenSci, much of our code, content and infrastructure is hosted on GitHub over several organizations described on our resources page.
In this post, we shall summarize some steps we've taken to safeguard our GitHub organizations.

## Paying attention to access rights

GitHub defines several possible [roles for organizations](https://docs.github.com/en/organizations/managing-peoples-access-to-your-organization-with-roles/roles-in-an-organization).
The principal ones are:

- _Organization owners_ who have all rights;
- _Organization members_ who only have basic rights and access to specific repositories (more on that later!);
- _Outside collaborators_ who only have access to specific repositories.

To decide what role to give someone we use the [**principle of least privilege**](https://en.wikipedia.org/wiki/Principle_of_least_privilege) -- obviously balanced with trust.

### Organization owners

We make sure all organization owners have enabled [two-factor authentication (2FA) for their GitHub Account](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa/configuring-two-factor-authentication).

Making sure someone has enabled 2FA means asking but also answering questions!


#### Short two-factor authentication (2FA) primer

Once 2FA has been enabled new log-ins necessitate both a password (hopefully stored in a password manager) and a temporary code produced by an app e.g. Duo Mobile.
So there are two log-in things, the password and the temporary code: these are the two factors!

If the device with the app is unavailable (imagine your dog steals it), then the user needs to enter a recovery code that had been given by GitHub when the user enabled 2FA (hopefully the recovery codes also live in the password manager).

Note that when using a password manager, it's useful to back up the password database.

### Organization members

We prefer e.g. package regular contributors to be organization members rather than outside collaborators because it's more welcoming.
In practice, it means they can publicize their organization ownership on their GitHub profile.

Now, organization members have [no base permissions](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/setting-base-permissions-for-an-organization).

We add members to repositories via [teams](https://docs.github.com/en/organizations/organizing-members-into-teams/about-teams).
We make sure maintainers of packages have admin rights on their repositories, as the package, is, well, theirs. 🙂

We also encourage members to enable 2FA for their account, via a [note in our development guide](https://devguide.ropensci.org/package-development-security-best-practices.html#miscellaneous).
If you're reading this and haven't enabled 2FA for your GitHub account yet, take the time to do it. :wink:


## GitHub backups