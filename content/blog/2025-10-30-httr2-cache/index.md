---
title: "Cache Me If You Can – httr2 OAuth Token Management for CI/CD"
author: 
- Athanasia Mo Mowinckel
- Maëlle Salmon
editor:
  - 
date: '2025-10-30'
slug: httr2-cache
description: Learn how to manage httr2 OAuth tokens in CI/CD, where interactive authentication is not possible.
output: hugodown::md_document
tags:
  - oAuth
  - tech notes
crossposts:
- name: R-Ladies blog blog
  url: https://rladies.org/blog/2025/httr2-cache/
params:
  doi: "10.59350/n1nwn-agm75"
---

This issue popped up as we were working on a refactoring of the [meetupr](https://github.com/rladies/meetupr) package, which interfaces with the Meetup API and is maintained by the R-Ladies+ organization.
We were switching from the superseded httr package to its successor httr2, which has a more modern and flexible approach to OAuth.
These modern oAuth flows opens up a browser for user authentication and make it clear to the user what permissions they are granting.

We also knew that we wanted to support CI/CD (continuous integration and continuous delivery/deployment) for users of the package, as R-Ladies itself uses it to download an archive of Meetup groups and events.
While httr2 provides excellent OAuth support for interactive use, getting it to work seamlessly in automated testing and deployment pipelines requires understanding how to transfer authentication from local development to CI.

This issue popped up as we were working on a refactoring of the `meetupr` package, which interfaces with the Meetup API.
We were switching from the older `httr` package to `httr2`, which has a more modern and flexible approach to OAuth.
We also knew that we wanted to support CI/CD for users of the package, as R-Ladies uses it to store an archive of Meetup groups and events.
httr2's `req_oauth_auth_code()` handles [OAuth2](https://blog.r-hub.io/2021/01/25/oauth-2.0/) authentication for local development:
This post walks through a general pattern for solving this problem, using examples from the recent new development on the `meetupr` package (which wraps the Meetup API) to illustrate the concepts.

## Understanding httr2's OAuth Flow

httr2's `req_oauth_auth_code()` handles OAuth2 authentication for local development:

1. Opens the user's browser for authentication  
2. Exchanges the authorization code for tokens (access + refresh)  
3. Encrypts the token for security, and caches it to disk for future use (by default to the httr2 installed cache directory) 
4. Automatically refreshes expired tokens using the refresh token  


## The CI Problem

In CI environments, this interactive flow fails because:

1. **No browser**: CI environments can't open browsers for user authentication  
2. **Fresh environments**: Each CI run starts with no cached credentials  

### What About httr2's Non-Interactive OAuth Methods?

httr2 provides [several non-interactive authentication methods](https://httr2.r-lib.org/reference/req_oauth_auth_code.html#see-also) that work well for CI. 
These are excellent options when available! 
However, they have limitations:

- **Not universally supported**: Many APIs don't support device flow or service accounts  
- **Account restrictions**: Some providers (like Meetup) restrict certain OAuth methods to paid accounts  
- **Different permission models**: Service accounts often have different access levels than user accounts  

In the case of `meetupr`, we discovered that:

- While they support JWT (JSON Web Tokens) authentication, it requires a Pro Meetup account  
- OAuth with localhost redirect requires a Pro Meetup account  
- Device flow is not supported by the Meetup API  
- Only Pro accounts can create new OAuth applications at all (previously made applications are [grandfathered](https://en.wikipedia.org/wiki/Grandfather_clause)) 

When these non-interactive methods aren't available or practical, transferring tokens that have been created locally and interactively to CI becomes the most viable approach.

## The Solution: Transfer the Cached Token

Rather than reimplementing OAuth logic or creating separate CI authentication paths, we can transfer httr2's cached token from local development to CI. 
This approach works because httr2's token cache includes refresh tokens, allowing long-term authentication without re-authenticating.

### Understanding httr2's Cache Structure

httr2 stores OAuth tokens as encrypted `.rds` files in the httr2 cache directory:

```r
httr2::oauth_cache_path()

~/Library/Caches/httr2
```

Token files follow this naming pattern:

```
client-name/{hash}-token.rds.enc
```

The hash is generated based on your OAuth client configuration (client ID, auth URLs, etc.), and the client name is sanitized to be filesystem-safe and can be customized.
The `.rds.enc` file contains the complete token object, and is already encrypted by httr2.

Once we base64encode the token file, we can store it as a CI secret and restore it in the CI environment.
It will look like a long string of random characters, but it's just the exact bytes of the cached token file encoded for safe transport.

### Step 1: Export the Token

The first step is to export the cached token from your local machine in a format suitable for CI secrets.
In this example, we will read the cached token file, as a raw binary file, and base64 encode it for easy transport.
This way, we don't have to know how httr2 deals with encryption internally, we read and write the exact same bytes.

Create a function to find and encode the token for CI, that will be run locally by the user:

```r
use_ci_auth <- function(client_name = "your-client-name") {
  # Find httr2's cached token
  cache_dir <- file.path(
    httr2::oauth_cache_path(),
    client_name
  )

  cache_files <- list.files(
    cache_dir,
    pattern = "^[a-f0-9]+-token\\.rds(\\.enc)?$",
    full.names = TRUE,
    recursive = TRUE
  )

  
  if (length(cache_files) == 0) {
    cli::cli_abort("No token found. Please authenticate first.")
  }
  
  # Use the most recent token if multiple exist
  cache_path <- cache_files[which.max(file.mtime(cache_files))]
  cache_filename <- basename(cache_path)
  
  # Base64 encode for environment variables
  token_bytes <- readBin(cache_path, "raw", file.size(cache_path))
  encoded_token <- base64enc::base64encode(token_bytes)
  
  # Display setup instructions
  cli::cli_alert_info("Set these as CI secrets:")
  cli::cli_code("API_TOKEN={encoded_token}")
  cli::cli_code("API_TOKEN_FILENAME={cache_filename}")
  
  invisible(list(
    token = encoded_token, 
    filename = cache_filename
  ))
}
```

**Why base64 encode?** Environment variables often have restrictions on allowed characters.
Base64 encoding ensures the token can be safely stored and transmitted.
It is also a character string, which makes is possible to copy-paste into CI secret fields.
This solution was suggested by [Noam Ross](https://www.noamross.net/) in a discussion on the rOpenSci Slack.

**Why export the filename?** The filename (hash) is how httr2 matches cached tokens to OAuth clients. 
If we save the token with a different name, httr2 won't find it.

### Step 2: Store as CI Secrets

The user should copy the output from `use_ci_auth()` and store them as secrets in their CI provider.


### Step 3: Restore the Token in CI

Create a function to restore the token from environment variables:

```r
load_ci_auth <- function(client_name = "your-client-name") {
  encoded_token <- Sys.getenv("API_TOKEN")
  token_filename <- Sys.getenv("API_TOKEN_FILENAME")
  
  if (!nzchar(encoded_token) || !nzchar(encoded_filename)) {
    return(invisible(FALSE))
  }
  
  # Decode token
  token_bytes <- base64enc::base64decode(encoded_token)

  token_path <- file.path(
    httr2::oauth_cache_path(), 
    client_name,
    token_filename
  )
  
  # Check if already restored
  if (file.exists(token_path)) {
    return(invisible(TRUE))
  }
  
  # Write token with exact original filename
  writeBin(token_bytes, token_path)
  
  cli::cli_alert_success("Token loaded for CI")
  invisible(TRUE)
}
```

Tell your users to call this function at the start of their scripts in CI environments.


### Step 3: Leverage HTTR2_OAUTH_CACHE (optional)

httr2 provides the `HTTR2_OAUTH_CACHE` environment variable to specify where tokens should be cached. 
You can set this to `.` (current directory) in CI to ensure tokens are stored in the working directory.
This could make it easier to debug if needed, as the token file will be visible in the CI workspace.
This could potentially be less secure, as the files may be accessible in CI logs or artifacts.
While logs and artifacts should not be easy to create without explicit user action, it's something to be aware of.

## CI Configuration

Here's how users can set this up in their CI:

**GitHub Actions:**
```yaml
env:
  HTTR2_OAUTH_CACHE: .
  API_TOKEN: ${{ secrets.API_TOKEN }}
  API_TOKEN_FILENAME: ${{ secrets.API_TOKEN_FILENAME }}

steps:
  - uses: actions/checkout@v4
  
  - name: Setup R
    uses: r-lib/actions/setup-r@v2
    
  - name: Install dependencies
    run: Rscript -e "install.packages('yourpackage')"

  - name: Restore token
    run: Rscript -e "yourpackage::load_ci_auth()"
    
  - name: Run script
    run: Rscript your_script.R
```

## Complete User Workflow

From your package users' perspective:

**One-time local setup:**
```r
library(yourpackage)

# Authenticate interactively (opens browser)
your_package_auth()

# Export for CI
use_ci_auth()
# Copy the output to CI secrets
```

```sh
# Example output:
kVwTUAOpQOQh+g/UoD9MD88DmYSLYyrhVF/Y4WtJpo+qR3NoWFduufvIT26Ra5A2B0C3aYTdTpET7Sj+Lr0AQ75Da8qMo8Fs+3tqquIgidUJCZiN3rszHKYgFbgSvabnn/rKAYRKIoAn0KPUwD0AQ9UgePWpJduZaQ51cVqsoDoW4NJ6oc3XDgyQEROD4pqxw4sbX2omVMUAFUF+5M35fQSCYPf63wr4fuj9Lf5guFMGn7pAndW9EeTe1H9kYQ9y47JPgbTS+6SL17Ee7sUEPqqTr1AMmqhwB8Oz0pBv3n7odaOKa4qFqHjT5yXgpFSqgDUhDzUFr0VE1kOplDCUopn/CBTh+IAy/o/BT4vrBUo7J84fIO2IAocTp0fhPvzXqpkhMgKZCrT3H/ZxCKFIVUDGFMwGE5RAodggcM3deaD+FNShSGy82+T23gTL0OXYdT5cRgLD2PC96v7T8RdYGA3V0Q34BIHVsn9OgqgqG23jN/wC4wPUYftZ/Qw7vcH9v/SZ/fj0/U9d/3e//AKY/5Xt/U9Tp7r8r0/S6fg9DAkg8Vv8Ahl+3jv6EX9BP2vph9p/orf0f/b+l7YvT7d+0f5fp+z6f4P6el0/vcDOzAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDAYDA/9k=
```

**CI configuration:**
Set three secrets in your CI provider:
- `API_TOKEN`: The base64-encoded token content
- `API_TOKEN_FILENAME`: The base64-encoded filename

**In CI, your code works normally:**

```r
library(yourpackage)
load_ci_auth() # Loads the token from CI secrets
result <- your_api_function()  # Just works!
```

## Why This Approach Works

1. **httr2 does the heavy lifting**: Token refresh, expiration handling, and caching are all built-in  
2. **Refresh tokens enable long-term access**: Even though access tokens expire (often hourly), refresh tokens typically last weeks or months  
3. **No duplicate logic**: You're not reimplementing OAuth for CI  
4. **Same code everywhere**: No conditional logic for local vs CI environments  
5. **Secure by default**: CI secrets are encrypted at rest; base64 encoding is sufficient for transfer  


## Conclusion

Managing OAuth in CI doesn't require complex custom logic. 
When httr2's purpose-built non-interactive methods aren't available due to API provider limitations, transferring cached tokens provides a robust alternative.

By understanding how httr2 caches tokens we created a solution that:

- Works transparently for users  
- Leverages httr2's battle-tested OAuth implementation  
- Maintains security best practices  
- Provides a fallback when API restrictions limit authentication options  

The key insight: **don't fight the framework**. 
httr2's caching and refresh logic are robust - use them instead of reimplementing OAuth for CI environments. 
And always check if httr2's non-interactive methods work for your API first - they're the preferred solution when available!

## Resources

- [httr2 OAuth documentation](https://httr2.r-lib.org/articles/oauth.html)  
- [httr2 API wrapping guide](https://httr2.r-lib.org/articles/wrapping-apis.html)  
- [httr2 OAuth reference](https://httr2.r-lib.org/reference/index.html#oauth)  
- [meetupr package](https://github.com/rladies/meetupr) - Real-world implementation  
