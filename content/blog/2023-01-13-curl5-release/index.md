---
slug: curl5-release
title: 'curl 5.0.0: massive concurrent downloads and HTTP/2'
date: '2023-01-13'
author: Jeroen Ooms
description: 'A new major version of the curl package has been released to CRAN. This release both brings major big internal improvements as well as new user-facing functionality, in particular with respect to concurrent downloads.'
tags:
  - curl
  - http
  - tech notes
---

## curl 5.0.0 is on CRAN

A new major version of the [curl](https://cran.r-project.org/web/packages/curl/index.html) package has been released to CRAN. This release both brings major big internal improvements as well as new user-facing functionality, in particular with respect to concurrent downloads. From the [NEWS](https://cran.r-project.org/web/packages/curl/NEWS) file:

```
curl 5.0.0
 - New function multi_download() which supports concurrent downloads and resuming
   download for large files, while giving detailed progress information.
 - Windows: updated libcurl to 7.84.0 + nghttp2
 - Windows: default to CURLSSLOPT_NATIVE_CA when using openssl unless an ennvar
   with CURL_CA_BUNDLE is set.
 - Use the new optiontype API for type checking if available (libcurl 7.73.0)

```

The curl package is used by most other R packages for performing HTTP requests. Over 60% of rOpenSci packages directly or indirectly depends on curl for doing the heavy lifting, so improvements (and bugs) in curl have a big impact on the entire ecosystem.

## New advanced download function

The most exciting change is a new function `multi_download()` which provides an advanced alternative to `curl_download()`. It can perform many requests concurrently, with nice progress updates and support for interrupting and resuming large files. This function does not error in case any of the individual requests fail; it returns a data frame with information about each request and if it was successful.


```r
pkg <- 'curl'
mirror <- 'https://cloud.r-project.org'
db <- available.packages(repos = mirror)
packages <- c(pkg, tools::package_dependencies(pkg, db = db, reverse = TRUE)[[pkg]])
versions <- db[packages,'Version']
urls <- sprintf("%s/src/contrib/%s_%s.tar.gz", mirror, packages,  versions)
res <- curl::multi_download(urls)
all.equal(unname(tools::md5sum(res$destfile)), unname(db[packages, 'MD5sum']))
```

Above a small example from the `?multi_download` manual, which downloads all reverse dependencies for a given CRAN package. It downloads 316 files, total 261.41 Mb. On a fast server, the `multi_download()` part takes about 1 or 2 seconds.

The function scales well in terms of the number of requests. Below is an example, which downloads the DESCRIPTION file for the first 3000 CRAN packages. On a fast server (with HTTP/2 support) this again takes about 2 or 3 seconds.

```r
mirror <- 'https://cloud.r-project.org'
pkgs <- row.names(available.packages(repos = mirror))[1:3000]
urls <- sprintf('%s/web/packages/%s/DESCRIPTION', mirror, pkgs)
files <- sprintf('descriptions/%s.txt', pkgs)
dir.create('descriptions', showWarnings = FALSE)
res <- curl::multi_download(urls, files)
```

This second example will especially from HTTP/2 support because there are many small files that can be multiplexed, whereas with HTTP/1.1 these need to be requested one after another.

## Updated libcurl and HTTP/2 on Windows

The Windows binaries are now using [`libcurl 7.84.0`](https://curl.se/changes.html#7_84_0) with [`nghttp 1.51.0`](https://github.com/nghttp2/nghttp2/releases/tag/v1.51.0). The latter brings support for HTTP/2, but only when using the OpenSSL TLS backend, which is not (yet) the default. You can change this by setting the `CURL_SSL_BACKEND` environment variable in your `~/.Renviron` file and then restart R. The [Windows vignette](https://cran.r-project.org/web/packages/curl/vignettes/windows.html) explains this in more detail.

To test if HTTP/2 is working you can perform a verbose request:

```r
library(curl)
multi_download('https://httpbin.org/get', tempfile(), verbose = TRUE)
```

And the output will show `HTTP/2 200` somewhere in the response:

```
...
* Connection state changed (MAX_CONCURRENT_STREAMS == 128)!
< HTTP/2 200
...
```

Right now OpenSSL is not the default, because we think the Windows Native TLS implementation is still more robust, which has to do with the next topic.

## OpenSSL now uses the Windows certificate store

As mentioned above, libcurl on Windows can use one of two SSL back-ends (for https): SecureChannel (the native Windows TLS implementation) or OpenSSL. OpenSSL used by most other operating systems and is therefore better tested and also supports HTTP/2. However there was a big limitation with OpenSSL Windows: it required us to ship [a ca-bundle with root certificates](https://curl.se/docs/sslcerts.html), which gets outdated quickly and may not work on corporate networks that use custom SSL certificates.

This has now changed because libcurl has gained a new experimental option [`CURLSSLOPT_NATIVE_CA`](https://curl.se/libcurl/c/CURLOPT_SSL_OPTIONS.html) which allows OpenSSL to use the root certificates from the native Windows certificate store, instead of a custom ca-bundle. The R package now enables this option by default when using the OpenSSL back-end. Thereby curl in R should support the same TLS connections, regardless of which SSL back-end is in use. This might make OpenSSL once again the preferable option, and if this works well we may make it the default in a future version of the R package.

## Better internal type checking

The final topic is mostly an internal change, but I'm pretty proud of it because it is based on functionality in libcurl that I proposed myself, and is now finally widely available.

At the curl-up 2020 conference I gave a presentation [5 years of libcurl bindings for R](https://www.youtube.com/watch?v=jGv5pugYpN0), after which we had a discussion on potential improvements for language bindings, such as in the R package. Eventually this lead to the [proposal of a new set of APIs](https://github.com/curl/curl/pull/5365) that allows language bindings to list the options, and their types, at runtime. This is important such that when users in R set an option in `new_handle()` we can check if this option and the value given by the user (e.g. string, number, vector) is valid, because passing invalid types to libcurl will result in a crash.

The proposal was merged later in 2020, and is now (2 years later) available in the stable versions of most operating systems. Version 5.0.0 of the R package now (conditionally) use these APIs if available, which makes the type checking of request options more robust.

{{< tweet user="bagder" id="1299001582520946696" >}}

