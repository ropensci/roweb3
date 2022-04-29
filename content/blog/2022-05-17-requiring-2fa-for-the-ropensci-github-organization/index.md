---
title: Requiring 2FA for Our Main GitHub Organization
author:
  - Maëlle Salmon
date: '2022-05-17'
slug: requiring-2fa-for-the-ropensci-github-organization
categories: []
tags:
  - github
  - security
  - tech notes
package_version: 0.1.0
description: How we went about requiring two-factor authentication for our main GitHub organization
---

Following our recent post on ["Safeguards and Backups for GitHub Organizations"](/blog/2022/03/22/safeguards-and-backups-for-github-organizations/), one month ago we went one step further and made two-factor authentication (2FA) required for all members and outside collaborators of our main organization, [`ropensci`](https://github.com/ropensci/).
Here is how (and why) we went about it.

## Why (not) require 2FA?

We used to only require [two-factor authentication](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa/configuring-two-factor-authentication) of organization owners (which is not an actual setting of GitHub, just a rule we set for ourselves).
However, requiring 2FA for the whole organization seemed like a logical step towards more security.
Hopefully it also inspires more 2FA adoption beyond the `ropensci` organization as new adopters of the setting can tell their collaborators about it.

When one starts requiring 2FA for an organization, all members and outside collaborators who have _not_ enabled it are removed from the organization and receive a notification from GitHub.

One aspect we pondered was whether it'd be potentially unfair to require 2FA. Many 2FA systems rely on the user having a mobile device, which could be a barrier for some.
However, GitHub provides many different 2FA methods (not only those requiring a mobile device), so in the end we decided to go for it, but to make careful note of feedback from organization members and collaborators.

## Communicating the change in advance

As [recommended in GitHub docs](https://docs.github.com/en/organizations/keeping-your-organization-secure/managing-two-factor-authentication-for-your-organization/requiring-two-factor-authentication-in-your-organization#prerequisites=), we communicated about the change in advance, sending emails to all organization members and outside collaborators without 2FA two weeks before the switch.
This was meant to ensure that as few people as possible lost access to their repositories.

Email addresses were collected via the GitHub API, and for those who do not have a public email address on GitHub, using a search engine as well as [email addresses used for recent commits](https://www.nymeria.io/blog/how-to-manually-find-email-addresses-for-github-users). 🕵️
Taking the time to do so was also crucial to, again, remove as few people as possible from the organization.

We sent emails using the [gmailr package](https://gmailr.r-lib.org/).
We manually went through automatic responses to decide action (e.g. scheduling a new email after someone was back from vacation, looking for a newer email address).

Here's the text we used:

```
Dear ropensci GitHub organization member,
To increase the security of the `ropensci` GitHub organization, we plan 
to make two-factor authentication ("2FA") required for members on April 18th. 
On this date, you will lose access to any ropensci GitHub repository 
you previously had access to.
Docs: https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa/configuring-two-factor-authentication
Obviously we encourage anyone to enable 2FA if you had not done so yet. 
Please email me or info@ropensci.org if you have:
- any question regarding 2FA,
- enabled 2FA after April 18th and would like to added back.
I will be glad to help!
Thanks and best wishes,
> Maëlle on behalf of the rOpenSci team.'
```

With the subject `[Action required] Enable GitHub Two-Factor Authentication to Preserve Access`.

We also posted a message about the change in our Slack workspace, as well as quite a few Slack DMs in particular to package maintainers.

Note that we actually had to send two emails as we first misread the documentation and thought members could become outside collaborators without 2FA. 
That's not true! 😅
Thanks to organization members and outside collaborators for their patience. 🙏

## Viewing people removed from the organization

To see respectively removed organization members and collaborators, as organization owners we were able to use the URLs

- `https://github.com/organizations/<org-name>/settings/audit-log?q=action%3Aorg.remove_outside_collaborator`;
- `https://github.com/organizations/<org-name>/settings/audit-log?q=action%3Aorg.remove_member`.

Before confirming the 2FA requirement, GitHub actually shows you which members you are about to remove from the organization.
We went ahead anyway as we assumed the GitHub notification might reach some of them better than our previous email, and as the removal of people is reversible as soon as they have enabled 2FA.

## Re-instating organization members

After we pulled the switch on April 19th, a few people reached out to tell us they had enabled 2FA.
It was straightforward to add them back to the organization as GitHub lets you choose to [_re-instate_ an organization member](https://docs.github.com/en/organizations/managing-membership-in-your-organization/reinstating-a-former-member-of-your-organization) within three months of their removal, so they get added to the teams and repos they used to belong to.
We strove to re-instate people timely.

If you were an organization member or outside collaborator who was removed from the organization, please reach out to us if you have enabled 2FA and would like to be reinstated, or if you have any question about 2FA.

## Conclusion

Two-factor authentication is now required for our main GitHub organization.
It was a change made for the best for most people, but which might have created some pain and frustration for a few people depending on when they got the notification.
We thank everyone for their collaboration and understanding.

As a further GitHub security step for us and you, dear reader, let's mention
- pruning repositories from former, now inactive, collaborators (docs for [personal repos](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-user-account/managing-access-to-your-personal-repositories/removing-a-collaborator-from-a-personal-repository), for [repos hosted in organizations](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories));
- pruning OAuth apps installed from [personal accounts](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/reviewing-your-authorized-applications-oauth) and from [organizations](https://docs.github.com/en/enterprise-cloud@latest/organizations/restricting-access-to-your-organizations-data/about-oauth-app-access-restrictions);
- a recent GitHub post [5 simple things every developer can do to ship more secure code](https://github.blog/2022-04-22-5-simple-things-every-developer-can-do-to-ship-more-secure-code/).

And more generally, we recommend the article [Ten quick tips for staying safe online](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1008563) by Danielle Smalls and Greg Wilson.