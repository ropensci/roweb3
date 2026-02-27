---
slug: patentsview-breaking-release
title: "Breaking Release of the Patentsview Package"
package_version: 1.0.0
author:
  - Russ Allen
  - Chris Baker
date: '2026-03-10'
output: hugodown::md_document
tags:
  - Software Peer Review
  - packages
  - R
  - community
  - tech notes
  - Patents
  - PatentsView
  - API
  - API client
  - USPTO
description: "Breaking Release of the Patentsview Package"
editor: Steffi LaZerte
params:
  doi: "10.59350/7m5q0-0mm59"
---

The patentsview R package was created by Chris Baker to simplify interactions with the 
patentsiew API as announced in Chris' 
[blog post](/blog/2017/09/19/patentsview/) 
in 2017.  Fast-forwarding to today finds us in a precarious
position as the Patentsview API team had made breaking changes and obsoleted
the original API (all calls to the original endpoints return 410 Gone).

> The updated R package is now on CRAN but as this Tech Note was being prepared
> the API team made troubling changes.   In late February they replaced their
> [forum](https://patentsview.org/forum) with a message saying the page is temporarily
> unavailable.  They have also removed the link to request an API key, it's unclear
> whether they'd honor requests for API keys using the link below.  Nothing has been
> announced but the long term viability of the API seems uncertain.

:fork_and_knife: Here you've come to a fork (and knife) in the road, continue reading 
if you are/were using the original version of the patentview package, we'll guide 
you through the necessary changes.  If you have an interest in US patent data but haven't
used the patentsview package yet, check out Chris' blog post, reworked to use the
new version of the R package and API.  It's now a 
[vignette](https://docs.ropensci.org/patentsview/articles/ropensci-blog-post.html)
in the updated R package.  


## User Impacting API changes:
1. Users will need to [request an API key](https://patentsview-support.atlassian.net/servicedesk/customer/portals) and set an environmental variable PATENTSVIEW_API_KEY to its value.
2. Endpoint changes:
   - The nber_subcategories, one of the original seven endpoints, was removed
   - cpc_subsections is now cpc_group
   - The remaining five original endpoints went from plural to singular, "patents" is now "patent" for example.
Interestingly, the returned data structures are still plural for the most part.
   - There are now 27 endpoints, more than one may need to be called to retrieve fields that were
available from a single call to one of the original endpoints
   - Now some of the endpoints return HATEOAS (Hypermedia as the Engine of Application State) links that can be called to retrieve additional data
3. Some fields are now nested and need to be fully qualified when used in a query,
for instance, `search_pv('{"cpc_current.cpc_group_id":"A01B1/00"}')` when using the patent endpoint.
   In the fields parameter, nested fields can be fully qualified or a new API shorthand can be used, where
group names can specified. When group names are used, all of the group's nested fields will be returned
by the API. For example, the new version of the API and R package will accept `fields = c("assignees")` when
using the patent endpoint where all nested assignees' fields will be returned by the API.
5. Some field's names have changed, most significantly, patent_number is now patent_id,
and some fields were removed entirely, for instance, rawinventor_first_name and rawinventor_last_name.
6. The original version of the API had queryable fields and additional fields which could be 
retrieved but couldn't be part of a conditional query.  That notion does not apply to the 
new version of the API as all fields are now queryable.  You may be able
to simplify your code if you found yourself doing post processing on returned data
because a field you were interested in was not queryable.
7. Now there isn't supposed to be a difference between
operators used on strings vs full text fields, as there was in the original
version of the API.  See the tip below the [Syntax section](https://search.patentsview.org/docs/docs/Search%20API/SearchAPIReference/#syntax).
8. Result set paging has changed significantly.  This would matter only if users implemented their own
paging, the R package continues to handle result set paging with search_pv()'s `all_pages = TRUE`. 
There is a new [Result set paging](https://docs.ropensci.org/patentsview/articles/result-set-paging.html) vignette to explain the way the API now pages, 
using the `size` and `after` parameters rather than using `page` and `per_page`.
9. Result set sizes are seemingly unbounded now.  The original version of the API capped result sets at
100,000 rows.

The API team also [renamed the API](https://search.patentsview.org/docs/#naming-update), 
    PatentsView's Search API is now the PatentSearch API. 
Note that the R package will retain its name, continue to use `library(patentsview)`

## Highlights of the R package:

1. Throttling is now enforced by the API and handled by the R package (sleep as specified by the throttle response before a retry)
2. There are five new vignettes
   - [API Changes](https://docs.ropensci.org/patentsview/articles/api-changes.html)
   - [Converting an existing script](https://docs.ropensci.org/patentsview/articles/converting-an-existing-script.html)
   - [Result set paging](https://docs.ropensci.org/patentsview/articles/result-set-paging.html), should custom paging be needed
    - [Understanding the API](https://docs.ropensci.org/patentsview/articles/understanding-the-api.html), the API team's jupyter notebook converted to R and enhanced
   - [Accessing patent data with the patentsview package](/blog/2017/09/19/patentsview/), the blog post that announced the original version of the R package has been changed to work with the new version of the API
3. The R package changed internally from using httr to httr2.  This only affects users if 
they passed additional arguments (...) to `search_pv()`.  Previously if they passed `config = httr::timeout(40)`
they'd now pass `timeout = 40` (name-value pairs of valid curl options, as found in curl::curl_options() see [req_options](https://httr2.r-lib.org/reference/req_options.html))
4. Now that the R package is using httr2, users can make use of its last_request() method to see what was sent to the API.  This could be useful when trying to fix an invalid request.  Also fun would be seeing the raw API response.
```
httr2::last_request()
httr2::last_response()
httr2::last_response() |> httr2::resp_body_json() 
```
5. A new function was added
`retrieve_linked_data()` to retrieve data from a HATEOAS link the API sent back, retrying if throttled
6. An existing function was removed.  With the API changes, there is less of a need for
`cast_pv_data()` which was previously part of the R package.  The API now returns most fields as appropriate
types, boolean, numeric etc., instead of always returning strings.

## Online API Documentation

The Patentsview API team has thoughtfully provided a Swagger UI page for the new version of the API at https://search.patentsview.org/swagger-ui/.
Think of it as an online version of Postman already loaded with the API's new endpoints and returns.
The Swagger UI page documents what fields are returned by each endpoint on a successful call
(http response code 200).
You can even send in requests and see actual API responses if you enter your API key and press
an endpoint's "Try it out" and "Execute" buttons.  Even error responses can be informative, the API's X-Status-Reason response header
usually points out what went wrong.

In a similar format, the [updated API documentation](https://search.patentsview.org/docs/docs/Search%20API/EndpointDictionary/)
lists what each endpoint does.  Additionally, the R package's fieldsdf data frame has been updated,
now listing the new set of endpoints and fields that can be queried and/or returned.  The R package's
reference pages have also been updated.

## Final Thoughts
As shown in the updated [Top Assignees](https://docs.ropensci.org/patentsview/articles/top-assignees.html) vignette, there will be occasions now where multiple API calls are needed to retrieve the same data as in a single API call in the original version of the API and R package.
Additionally, the [reworked rOpenSci post](https://docs.ropensci.org/patentsview/articles/ropensci-blog-post.html) explains what changes had to be made since assignee latitude
and longitude are no longer available from the patent endpoint.

Issues for the R package can be raised in the [patentsview repo](https://github.com/ropensci/patentsview/issues).

Patentsview is funded by the [USPTO](https://www.uspto.gov/), who may be looking to cut costs.  If nothing else,
it's been a great run, starting in 2015 for the API and 2017 for the R package.