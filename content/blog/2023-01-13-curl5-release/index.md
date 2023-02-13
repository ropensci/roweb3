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

A new major version of the [curl](https://cran.r-project.org/web/packages/curl/index.html) package has been released to CRAN. This release both brings internal improvements as well as new user-facing functionality, in particular with respect to concurrent downloads. From the [NEWS](https://cran.r-project.org/web/packages/curl/NEWS) file:

```
curl 5.0.0
 - New function multi_download() which supports concurrent downloads and resuming
   download for large files, while giving detailed progress information.
 - Windows: updated libcurl to 7.84.0 + nghttp2
 - Windows: default to CURLSSLOPT_NATIVE_CA when using openssl unless an ennvar
   with CURL_CA_BUNDLE is set.
 - Use the new optiontype API for type checking if available (libcurl 7.73.0)
```

The curl package is used by most other R packages for performing HTTP requests. Over 60% of rOpenSci packages directly or indirectly depend on curl for network interaction, hence improvements and bugs in curl have a big impact on the entire ecosystem.

## New advanced download function

The most exciting new feature is `multi_download()`: an advanced alternative to `curl_download()`. It can perform many requests concurrently, with nice progress updates and support for interrupting and resuming large files. This function does not error in case any of the individual requests fail; it returns a data frame with information about the status of each request.


```r
pkg <- 'curl'
mirror <- 'https://cloud.r-project.org'
db <- available.packages(repos = mirror)
packages <- c(pkg, tools::package_dependencies(pkg, db = db, reverse = TRUE)[[pkg]])
versions <- db[packages,'Version']
urls <- sprintf("%s/src/contrib/%s_%s.tar.gz", mirror, packages,  versions)
res <- curl::multi_download(urls)
res
# A tibble: 316 × 10
#   success status_…¹ resum…² url   destf…³ error type  modified             time
#   <lgl>       <int>   <dbl> <chr> <chr>   <chr> <chr> <dttm>              <dbl>
# 1 TRUE          200       0 http… curl_5… NA    appl… 2023-01-12 18:10:03 0.260
# 2 TRUE          200       0 http… abbyyR… NA    appl… 2019-06-25 04:30:07 0.713
# 3 TRUE          200       0 http… addins… NA    appl… 2021-01-10 18:50:12 0.214
# 4 TRUE          200       0 http… alfred… NA    appl… 2021-07-26 10:20:03 0.225
# 5 TRUE          200       0 http… allcon… NA    appl… 2022-08-11 10:00:07 0.226
# 6 TRUE          200       0 http… AMAPVo… NA    appl… 2022-12-05 09:22:33 0.266
# 7 TRUE          200       0 http… AnnoPr… NA    appl… 2022-11-14 08:30:13 0.891
# 8 TRUE          200       0 http… anyfli… NA    appl… 2022-08-12 15:40:03 0.394
# 9 TRUE          200       0 http… anyLib… NA    appl… 2018-11-05 15:00:04 0.282
#10 TRUE          200       0 http… aopdat… NA    appl… 2022-08-31 13:10:04 0.237
# … with 306 more rows, 1 more variable: headers <list>, and abbreviated
#   variable names ¹status_code, ²resumefrom, ³destfile

all.equal(unname(tools::md5sum(res$destfile)), unname(db[packages, 'MD5sum']))
# TRUE
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

Right now OpenSSL is not the default, because Windows Native TLS back-end may be more robust, which has to do with the next topic.

## OpenSSL now uses the Windows certificate store

As mentioned above, libcurl on Windows can use one of two SSL back-ends (for https): SecureChannel (the native Windows TLS implementation) or OpenSSL. OpenSSL is also used by most other operating systems and is therefore better tested and moreover it supports HTTP/2. However there was always a big limitation with OpenSSL Windows: it required us to ship [a ca-bundle with root certificates](https://curl.se/docs/sslcerts.html), which gets outdated quickly and may not work well on corporate networks that use custom SSL certificates.

This has now changed because libcurl has gained a new experimental option [`CURLSSLOPT_NATIVE_CA`](https://curl.se/libcurl/c/CURLOPT_SSL_OPTIONS.html) which lets OpenSSL import the root certificates from the native Windows certificate store, instead of a custom ca-bundle. The R package now enables this option by default when using the OpenSSL back-end. Thereby curl in R should support the same TLS connections, regardless of which SSL back-end is in use. This might make OpenSSL once again the preferable option, and if this works well we may make it the default in a future version of the R package.

## Better internal type checking

The final topic is mostly an internal change, but I'm pretty proud of it because it is based on functionality in libcurl that I proposed myself, and is now finally widely available.

At the curl-up 2020 conference I gave a presentation [5 years of libcurl bindings for R](https://www.youtube.com/watch?v=jGv5pugYpN0), after which we had a discussion on potential improvements for language bindings, such as in the R package. Eventually this led to the [proposal of a new API](https://github.com/curl/curl/pull/5365) that exposes a list of supported libcurl options and their types, to the language binding. This is important such that when users in R set an option in `new_handle()`, it can be verified that the option is valid and has the correct type (e.g. string, number, vector), because passing invalid types to libcurl will result in a crash.

The proposal was merged later in 2020, and is now (2 years later) available in the stable versions of most operating systems. Version 5.0.0 of the R package (conditionally) use this API if available, which makes the type bindings safer to use.

{{< tweet user="bagder" id="1299001582520946696" >}}

