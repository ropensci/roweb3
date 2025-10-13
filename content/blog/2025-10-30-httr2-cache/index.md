---
title: A Primer on Domain Verification
author: 
- Athanasia Mo Mowinckel
- Maëlle Salmon
editor:
  - 
date: '2025-10-30'
slug: httr2-cache
description: Learn how to manage httr2 OAuth tokens in CI/CD when interactive auth fails.
output: hugodown::md_document
tags:
  - oAuth
  - tech notes
---


When developing R packages that wrap OAuth-protected APIs, a common challenge emerges: how to authenticate in CI/CD environments where interactive OAuth flows aren't possible. 
While httr2 provides excellent OAuth support for interactive use, getting it to work seamlessly in automated testing and deployment pipelines requires understanding how to transfer authentication from local development to CI.

This post walks through a general pattern for solving this problem, using examples from the recent new development on the `meetupr` package (which wraps the Meetup API) to illustrate the concepts.

## Understanding httr2's OAuth Flow

httr2's `req_oauth_auth_code()` handles OAuth2 authentication for local development:

1. Opens the user's browser for authentication  
2. Exchanges the authorization code for tokens (access + refresh)  
3. Caches the tokens to disk for future use  
4. Automatically refreshes expired tokens using the refresh token  

The cached token file contains everything needed: the access token, refresh token, and expiration time. 
This means httr2 handles token refresh transparently - no additional code required.

## The CI Problem

In CI environments, this interactive flow fails because:

1. **No browser**: CI environments can't open browsers for user authentication  
2. **Fresh environments**: Each CI run starts with no cached credentials  

### What About httr2's Non-Interactive OAuth Methods?

httr2 provides several non-interactive authentication methods that work well for CI:

- `req_oauth_client_credentials()`: For service-to-service authentication  
- `req_oauth_bearer_jwt()`: For JWT-based authentication  
- `req_oauth_device()`: For device flow authentication  

These are excellent options when available! 
However, they have limitations:

- **Not universally supported**: Many APIs don't support device flow or service accounts  
- **Account restrictions**: Some providers (like Meetup) restrict certain OAuth methods to paid accounts  
- **Different permission models**: Service accounts often have different access levels than user accounts  

In the case of `meetupr`, we discovered that:

- JWT authentication requires a Pro Meetup account  
- OAuth with localhost redirect requires a Pro Meetup account  
- Device flow is not supported by the Meetup API  
- Only Pro accounts can create new OAuth applications at all (previously made applications are still valid, though) 

When these non-interactive methods aren't available or practical, transferring interactive tokens to CI becomes the most viable approach.

## The Solution: Transfer the Cached Token

Rather than reimplementing OAuth logic or creating separate CI authentication paths, we can transfer httr2's cached token from local development to CI. 
This approach works because httr2's token cache includes refresh tokens, allowing long-term authentication without re-authenticating.

### Understanding httr2's Cache Structure

httr2 stores OAuth tokens in the httr2 cache directory:

```r
httr2::oauth_cache_path()

~/Library/Caches/httr2
```

Token files follow this naming pattern:

```
client-name/{hash}-token.rds.enc
```

The hash is generated based on your OAuth client configuration (client ID, auth URLs, etc.), and the client name is sanitized to be filesystem-safe and can be customized.
The `.rds` file contains the complete token object, and is already encrypted by httr2.

### Step 1: Export the Token

The first step is to export the cached token from your local machine in a format suitable for CI secrets.
In this example, we will read the cached token file, as a raw binary file, and base64 encode it for easy transport.
This way, we don't have to know how httr2 deals with encryption internally, we read and write the exact same bytes.

Create a function to find and encode the token for CI:

```r
your_package_auth_setup_ci <- function(client_name = "your-client-name") {
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

**Why export the filename?** The filename (hash) is how httr2 matches cached tokens to OAuth clients. 
If we save the token with a different name, httr2 won't find it.

### Step 2: Restore the Token in CI

Create a function to restore the token from environment variables:

```r
your_package_auth_load_ci <- function(client_name = "your-client-name") {
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

### Step 3: Integrate with Your Request Function

Call the load function automatically before making requests:

```r
your_api_request <- function(...) {
  # In CI, restore token if needed
  if (!interactive()) {
    your_package_auth_load_ci()
  }
  
  httr2::request("https://api.example.com") |>
    httr2::req_oauth_auth_code(
      client = your_oauth_client(),
      auth_url = "https://example.com/oauth/authorize",
      redirect_uri = "http://localhost:1410",
      cache_disk = TRUE  # Use httr2's default caching
    ) |>
    # ... additional request configuration
}
```

### Step 4: Leverage HTTR2_OAUTH_CACHE (optional)

httr2 provides the `HTTR2_OAUTH_CACHE` environment variable to specify where tokens should be cached. 
You can set this to `.` (current directory) in CI to ensure tokens are stored in the working directory.
This could make it easier to debug if needed, as the token file will be visible in the CI workspace.


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
    
  - name: Run tests
    run: Rscript -e "testthat::test_dir('tests')"
```

**GitLab CI:**
```yaml
variables:
  HTTR2_OAUTH_CACHE: "."
  API_TOKEN: $API_TOKEN
  API_TOKEN_FILENAME: $API_TOKEN_FILENAME

test:
  script:
    - Rscript -e "testthat::test_dir('tests')"
```

## Complete User Workflow

From your package users' perspective:

**One-time local setup:**
```r
library(yourpackage)

# Authenticate interactively (opens browser)
your_package_auth()

# Export for CI
your_package_auth_setup_ci()
# Copy the output to CI secrets
```

**CI configuration:**
Set three secrets in your CI provider:
- `API_TOKEN`: The base64-encoded token content
- `API_TOKEN_FILENAME`: The base64-encoded filename
- `HTTR2_OAUTH_CACHE=.` as environment variable

**In CI, your code works normally:**
```r
library(yourpackage)
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

By understanding how httr2 caches tokens you can create a solution that:

- Minimizes package code  
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
