---
title: Safeguards and Backups for GitHub Organizations
author:
  - Maëlle Salmon
date: '2022-03-22'
slug: safeguards-and-backups-for-github-organizations
categories: []
tags:
  - tech notes
package_version: 0.1.0
description: Some practical steps we've taken to safeguard our GitHub organizations.
---

At rOpenSci, much of our code, content and infrastructure is hosted on GitHub over several organizations -- described on our [resources page](/resources/).
This post summarizes some steps we've taken to safeguard our GitHub organizations.

## Paying attention to access rights & individual security setup

GitHub defines several possible [roles for organizations](https://docs.github.com/en/organizations/managing-peoples-access-to-your-organization-with-roles/roles-in-an-organization).
The principal ones are:

- _Organization owners_ who have all rights;
- _Organization members_ who only have basic rights and access to specific repositories (more on that later!);
- _Outside collaborators_ who only have access to specific repositories.

To decide what role to give someone we use the [**principle of least privilege**](https://en.wikipedia.org/wiki/Principle_of_least_privilege) -- obviously balanced with trust... and some consideration of the bus factor.
We want everyone to be able to do their job (e.g. accessing all repo settings), to not have only one person able to perform something (in case of vacation and other vacancy reasons), but not give people unnecessary access to sensitive settings and information.

Note that GitHub organization repositories have more fine grained access rights than [repositories hosted in individual accounts](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-user-account/managing-access-to-your-personal-repositories).
This might be taken into account if you're on the fence about creating a GitHub organization to host a package repository.

### Organization owners

We enforce [two-factor authentication (2FA) for their GitHub Account](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa/configuring-two-factor-authentication) for all organization owners.
Making sure someone has enabled 2FA means asking but also answering questions from those not familiar with 2FA yet!
As an organization owner, one can see whether organization owners and members have enabled 2FA for their account.


#### Short two-factor authentication (2FA) primer

Before any 2FA specific advice, do you use a password manager?
Is it unlikely someone could gain access to that password manager? (e.g. is it protected by a strong password, is it not left open on a mobile device with no PIN code)
Is your password database synced up somewhere on the cloud?
If not, solving those three challenges will also increase the safety of your accounts, and your peace of mind.

Now to 2FA...

Once [2FA has been enabled](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa/configuring-two-factor-authentication) new log-ins necessitate both a password -- hopefully stored in a password manager-- and a temporary code produced by an app e.g. Duo Mobile.
So there are two log-in things, the password and the temporary code: these are the two factors!

If the device with the app is unavailable (imagine your dog steals it :crying_cat:), then the user needs to enter a recovery code that had been given by GitHub when the user enabled 2FA. 
Hopefully the recovery codes also live in the password manager.

Some 2FA apps will offer some sort of cloud synchronization so you could e.g. more easily change phones (e.g. [DuoMobile's "Duo Restore"](https://guide.duo.com/duo-restore)).

### Organization members

We prefer e.g. package regular contributors to be organization members rather than outside collaborators because it's more [welcoming](https://devdevguide.netlify.app/collaboration.html#welcoming-collaborators-to-ropensci).
In practice, it means they can [publicize their organization membership](https://docs.github.com/en/enterprise-server@3.2/admin/user-management/managing-organizations-in-your-enterprise/configuring-visibility-for-organization-membership) on their GitHub profile.

Now, in our case organization members have [no base permissions](https://docs.github.com/en/organizations/managing-access-to-your-organizations-repositories/setting-base-permissions-for-an-organization).
Other organizations might choose to let every organization member have write access to all repositories. Additional member privileges can be [tweaked](https://docs.github.com/en/organizations/managing-organization-settings) (repository creation, issue deletion, etc.).

We add members to repositories via [GitHub teams](https://docs.github.com/en/organizations/organizing-members-into-teams/about-teams).
We make sure maintainers of packages have admin rights on their repositories, as the package, is, well, theirs. 🙂

We also encourage members to enable 2FA for their account, via a [note in our development guide](https://devguide.ropensci.org/package-development-security-best-practices.html#miscellaneous).
If you're reading this and haven't enabled 2FA for your GitHub account yet, take the time to [do it](#short-two-factor-authentication-2fa-primer). :wink:

## GitHub backups

Despite the aforementioned safeguards, something could still go wrong: data loss via an accident (deleting an upstream repository instead of a fork, force-pushing when one shouldn't) or a hacked account.
How to limit the consequences of a GitHub disaster?

### Pushing to several remotes

One strategy to not lose the content of git repos is to push to several remotes (say, a GitHub _and_ a GitLab repository).
It is also great to have a remote to push to when one of them, say GitHub, is down.

### Backing up entire repositories (issues included!)

The GitHub documentation explains that ["To download an archive of your repository, you can use the API for user or organization migrations."](https://docs.github.com/en/repositories/archiving-a-github-repository/backing-up-a-repository).
The archives in question contains both the git repo (so, your code) but *also issues and PRs* as JSON data.
Having a complete repository archive is crucial as a GitHub repository is used to not only store the code but also project management aspects of package maintenance.

#### Listing repositories to back-up

Listing all repositories in an organization might look like

```r
repos <- gh::gh(
  "/orgs/{org}/repos",
  org = "ropensci",
  type = "all",
  per_page = 100,
  .limit = Inf
) |> 
  purrr::map_chr("name")
```

However depending on the scope of your [Personal Access Token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token), this might miss private repositories.
You could manually list private repositories in e.g. a text file.

By the way, regarding GitHub Personal Access Tokens and R especially with the `gh` package, we recommend
- the [usethis vignette "Managing Git(Hub) Credentials"](https://usethis.r-lib.org/articles/git-credentials.html);
- [Danielle Navarro's blog post "Managing GitHub credentials from R, difficulty level linux"](https://blog.djnavarro.net/posts/2021-08-08_git-credential-helpers/).

No matter where you run your code that uses a GitHub Personal Access Token, ensure that PAT is safe (e.g. store it as a GitHub Actions secret, not in clear text in the repository).

#### Creating and collecting repo archives

We've found that it's best to launch one migration per repository e.g.

```r
magick_migration <- gh::gh(
  "POST /orgs/{org}/migrations",
  org = "ropensci",
  repositories = as.list("magick")
)
```

as opposed to creating one gigantic migration archive per organization.

This code snippet above launches the creation of the GitHub archive. 
After waiting a bit one can inquire about its status, and once it's exported, download the archive:

```r
migration_url <- migration[["url"]]
repo <- "ropensci_magick"

get_migration_state <- function(migration_url) {
  status <- gh::gh(migration_url)
  status$state
}

while (get_migration_state(migration_url) != "exported") {
  print("Waiting for export to complete...)
  Sys.sleep(60)
}

# Download
handle <- curl::handle_setheaders(
  curl::new_handle(followlocation = FALSE), 
  "Authorization" = paste("token", Sys.getenv("GITHUB_PAT")),
  "Accept" = "application/vnd.github.v3+json"
)

url <- sprintf("%s/archive", migration_url)
req <- curl::curl_fetch_memory(url, handle = handle)
headers <- curl::parse_headers_list(req$headers)
final_url <- headers$location
archive_folder <- sprintf("archive-%s", repo)
fs::dir_create(archive_folder)
curl::curl_download(
  final_url, 
  file.path(archive_folder, sprintf("%s_migration_archive.tar.gz", repo))
)
```

Above we downloaded each repo archive in a specific folder e.g. `archive-ropensci_magick/ropensci_magick_migration_archive.tar.gz` as it was the file structure that worked best with the S3 storage we then uploaded the archive to.

### Saving repository archives

To store the backups online, there are several cheap and convenient storage services with an S3 compatible API, such as [Amazon S3](https://blog.djnavarro.net/posts/2022-03-17_using-aws-s3-in-r/) or "Digital Ocean spaces". 
These services can be interfaced using any S3 client, including R packages such as arrow.

### Regularly running all these steps

Ideally the backups should be fairly regular.
We opted for weekly backups.
The scripts creating, downloading and uploading the archives could run on GitHub Actions (which should work until a GitHub disaster :sweat_smile:) or some other service.

All in all it could be quite cheap to run the code and store the archives.
As a bonus one could imagine using the archives for analyses over one or a few GitHub organizations: after having collected all issues as JSON files, no need to perform GitHub API calls to e.g. identify the most prolific bug reporters. :bar_chart:

## Conclusion

In summary we'd recommend balancing trust with security when choosing what rights to given to indidivual organization members (what role for this person? what "base permission" for all organization members?).
We also recommend promoting two-factor authentication (2FA) as well as the use of password managers.
Lastly, we suggest regularly backing up GitHub repositories via using GitHub V3 API migration endpoint and a cloud storage service.

What are your own safeguards? Maybe you use a self-hosted GitLab instance and have more control?
In any case, we welcome comments below!