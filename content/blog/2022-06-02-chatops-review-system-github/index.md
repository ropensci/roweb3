---
title: 'Editorial Automation: Why & How to Set Up Chat-Ops for your Own Review System on GitHub'
author:
  - Maëlle Salmon
date: '2022-06-02'
slug: chatops-review-system-github
categories: []
tags:
  - tech notes
description: Could the editorial bot generator buffy fit your needs? How to know, how to set it up.
twitterImg: blog/2022/06/02/chatops-review-system-github/diagram.png
twitterAlt: Diagram representing automation for rOpenSci software peer review. On the left, a GitHub issue thread with emojis as avatars, and wobbly lines as text. Under the GitHub issue thread, a legend indicating who among the emojis is Author /Editor / Reviewer / ropensci-review-bot. At the center of the diagram is an Heroku app using the buffy Ruby tool, that receives information from GitHub via webhooks. The app digests messages received and depending on the command pings an external service represented on the right (with a plumber logo); fills the Airtable-based software review database; manages ropensci GitHub organization via GitHub API; posts back or labels in the GitHub issue thread.
---

At rOpenSci Software Peer-Review, processes have been enhanced with :sparkles: automation :sparkles:. 
For instance, for checking compliance of a software package with some criteria, instead of cloning a git repository locally, installing its dependencies, running the checks, and manually posting the results… we can simply type the following **command** into a GitHub issue comment:

```
@ropensci-review-bot check package
```

Similarly, we can use the following command to register a reviewer in the submission issue metadata (filling YAML data) as well as in our Airtable database.

```
@ropensci-review-bot add @maelle to reviewers
```

Inspiring?
In this post we shall explain how to assess whether adopting the editorial bot generator buffy, like we did, is the right fit for your system.
We will detail steps involved in setting buffy up for your own needs.

## What is an editorial bot generator?

The editorial bot generator buffy is the tool that supports the aforementioned commands.
It is a **Ruby codebase** that one can 

* **configure** and **extend**, 
* then **deploy** on for instance Heroku where it is on all the time, 
* and hook into **GitHub issues** via, well, **webhooks**. 🪝

Every time a new issue is opened, every time an issue comment is created, their contents are sent to the deployed app.
If it corresponds to the **regular expression** of a **registered command**, something happens: a check is launched somewhere, a database is updated, information is copied back to the GitHub issue, etc.

The "visible" bot is the **GitHub account used as bot face**: commands are addressed to it, and a "Personal" Access Token of its is used to post GitHub issue comments.

The initial set of possible commands and actions is the list of buffy **responders**.
One can add responders by writing buffy code following documented instructions.
Note that one of the responders allows to launch a GitHub Action Workflow which can circumvent absence of Ruby knowledge on a team -- although a pure Ruby responder would be faster.
You can also send a call to any API, so if you can build an external API, you can really implement many things.

## The editorial bot generator buffy is for you if...

* You run a submission process (of papers, software, conference abstracts) that is handled in GitHub issue threads (or could be moved there)?
* Your process involves tedious steps (editing issue comments, switching issue labels, copy-pasting URLs into an external database, running automatic checking tools) that can be automated via scripts possibly interacting with web APIs?
* You can recognize interesting responders in [buffy docs](https://buffy.readthedocs.io/en/latest/) or you have Ruby talent on your team or contractor contacts, who could [write custom responders](https://buffy.readthedocs.io/en/latest/custom_responder.html) for you?
* You have time and resources to spend at least a few days setting it up and communicating the change of processes to your users?
* You have, little but longer term, time to maintain the installation e.g. responding to Heroku security updates or updating your buffy codebase with upstream changes?

## How to set up the editorial bot generator buffy for your system

We shall first show how buffy usage works, afterwards we shall go into details of how to get there.
The following diagram represents the whole automation toolset we use for rOpenSci software peer-review.

{{< figure src="diagram.png" alt="Diagram representing automation for rOpenSci software peer review. On the left, a GitHub issue thread with emojis as avatars, and wobbly lines as text. Under the GitHub issue thread, a legend indicating who among the emojis is Author /Editor / Reviewer / ropensci-review-bot. At the center of the diagram is an Heroku app using the buffy Ruby tool, that receives information from GitHub via webhooks. The app digests messages received and depending on the command pings an external service represented on the right (with a plumber logo); fills the Airtable-based software review database; manages ropensci GitHub organization via GitHub API; posts back or labels in the GitHub issue thread.">}}

We can observe, on the left, a GitHub issue thread corresponding to a submission. The submission has 
- a title, 
- a body that was created based on a GitHub issue template, 
- labels indicating the progress of the submission from editorial checks to final decision, 
- an assignee who is the editor, 
- various commenters who are the author, the editor, reviewers, the bot account.

Every time an issue is created or updated with a new comment, information about that event is sent to the central app via a webhook.
There on Heroku, if the comment corresponds to a registered command, actions (the formerly _tedious steps_ 🙂) are made accordingly.
Possible actions include filling an Airtable base via Airtable API, launching an external software check on a [plumber API](https://www.rplumber.io/), inviting the author to the ropensci GitHub organization, posting a comment back into the GitHub issue thread with some results or confirmation.

How does one achieve this?

### Initial preparation & installation steps

* Read / skim through [buffy readthedocs website](https://buffy.readthedocs.io/en).

Follow [buffy installation instructions](https://buffy.readthedocs.io/en/latest/installation.html).

* Fork the buffy codebase to an organization of yours, create a branch there. Ours is named `ropensci`. The organization does not have to be where the review repository also lives.
* Create a test review repository, that is to say a copy of your production review repository so you can experiment without bothering serious watchers. The test repository should contain the same issue templates and issue labels as the production repository.
* [Create a bot account](https://buffy.readthedocs.io/en/latest/installation.html#create-the-bot-github-user) (save its credentials and 2FA method into, for instance, your team's 1Password vault). Give it access to your production and test review repositories. It might even need more access to your GitHub organization based on what you'll task it to do. Follow buffy docs to create a Personal Access Token, save it temporarily on your computer as you'll need to save it in the app configuration.
* Set up a Heroku account and app for [buffy deployment](https://buffy-ropensci.readthedocs.io/en/latest/installation.html#deploy-buffy) -- or do the same on another service such as Render. Following the instructions worked for us. Make sure your pricing tier allows for the app to listen all the time. If the app is sleeping it will not be able to digest comments from GitHub.
* Check the build logs of your Heroku apps indicate success.
* In your test and production repositories, [set up a webhook](https://buffy-ropensci.readthedocs.io/en/latest/installation.html#configure-a-webhook-to-send-events-from-github-to-buffy) to send GitHub issue comments to Heroku or your other service.
 
As mentioned in the docs, at this stage in your test review repository you can write the following comment (replace the username with your bot account username)

```
@ropensci-review-bot help
```

What if it does not work?

* Re-read the installation steps to ensure you did not miss anything.
* Look into the webhooks of your repository, maybe there is a failure message there.
* Consult the [logs of the Heroku app](https://devcenter.heroku.com/articles/logging) (we found it most convenient to use Heroku CLI for this... to copy-paste info to our Ruby developer).

### Configuration, tests, documentation

Now comes the time to adapt your buffy version to your needs!
Good news: you can keep doing this forever depending on how your needs evolve.
Bad news: you _will_ keep doing this forever as you'll always see opportunies for improvement. :wink:

To configure your buffy installation you will be making changes in these places
* In the `/config/settings-production.yml` file of the branch of your **buffy fork**;
* In other folders of the branch of your **buffy fork** if you are _adding custom responders_;
* In issue templates (`.github/ISSUE_TEMPLATE`) and buffy templates `.buffy/templates` of your **review repository (or repositories**, if you created a test review repository for experimenting with buffy, which we'd recommend). Indeed, issue templates will contain placeholders/wrappers for HTML variables like `<!--editor-->  <!--end-editor-->` -- otherwise the bot won't be able to fill this information. _buffy_ templates are for comments you will want the bot to post, for instance a checklist at the end of the review process.

Follow buffy docs on [configuration](https://buffy.readthedocs.io/en/latest/configuration.html).
You will be adding (registering) responders by adding them to the YAML file `/config/settings-production.yml`, with subfields indicating some options.
For instance you might want to use the ["assign editor" responder](https://buffy.readthedocs.io/en/latest/responders/assign_editor.html) to store the editor username in the issue comment _without assigning the issue to them_ so you'll set `add_as_assignee` to `false`. 

You'll find responders and their parameters in buffy docs. 
You can also check out the [readthedocs website of rOpenSci's version of buffy](https://buffy-ropensci.readthedocs.io/en/latest/) in case some of our custom responders are relevant for you (they are at the bottom of the list, with rOpenSci in front of their name).

After each responder addition or configuration, try it out by creating issues and typing comments in them.
If it works, you will be convinced you have added one feature to your system, congratulations!

Afterwards, the feature should be officially released by telling actors of your system about it.
In our case, we wrote announcements in the slack channel we have for editors, and we updated our dev guide.
Updating guidance is particularly rewarding as bot commants typically replace lines of tedious task descriptions. :grin:

## Conclusion

In this post we presented the editorial bot generator buffy.
We hope to make it easier for you to choose whether to adopt it for your own submission system, and to know _how_ to adopt it.
The costs linked to buffy usage are:
* developer time to set it up, tweak or add responders, document its usage, long-term maintenance;
* users' time to learn how to use GitHub comments (lower cost for newcomers to your system, higher cost for those who had gotten used to tedious steps);
* a subscription to Heroku or a similar service to ensure the app is always listening.

In our experience, adopting buffy has been worth it as once it's well adopted, it
* decreases the cognitive load needed for handling a review as one does not need to hop into different tabs or apps;
* simplifies future process changes, as the command could remain the same whilst the background tasks change.

Feel free to comment with any question you might have about buffy!