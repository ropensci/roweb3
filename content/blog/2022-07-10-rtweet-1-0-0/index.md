---
title: 'Upgrading rtweet'
author:
  - Lluís Revilla Sancho
date: '2022-07-21'
slug: rtweet-1-0-0
categories:
  - blog
tags:
  - rtweet
  - api
  - packages
  - tech notes
package_version: 1.0.1
description: Update from rtweet 0.7.0 to 1.0.1.
tweet: Do you use rtweet? It has been updated - read how to update your code to rtweet 1.0.1 by @Lluis_Revilla!
---

In this post I will provide some examples of what has changed between rtweet 0.7.0 and rtweet 1.0.1. 
I hope both the changes and this guide will help all users.
I highlight the most important and interesting changes in this blog post, and for a full list of changes you can consult it on the [NEWS](https://docs.ropensci.org/rtweet/news/index.html).

## **Big breaking changes**

### More consistent output

This is probably what will affect the most users.
All functions that return data about tweets[^1] now return the same columns.

For example if we search some tweets we'll get the following columns:

```r
> tweets <- search_tweets("weather")
> colnames(tweets)
 [1] "created_at"                    "id"                           
 [3] "id_str"                        "full_text"                    
 [5] "truncated"                     "display_text_range"           
 [7] "entities"                      "metadata"                     
 [9] "source"                        "in_reply_to_status_id"        
[11] "in_reply_to_status_id_str"     "in_reply_to_user_id"          
[13] "in_reply_to_user_id_str"       "in_reply_to_screen_name"      
[15] "geo"                           "coordinates"                  
[17] "place"                         "contributors"                 
[19] "is_quote_status"               "retweet_count"                
[21] "favorite_count"                "favorited"                    
[23] "retweeted"                     "lang"                         
[25] "quoted_status_id"              "quoted_status_id_str"         
[27] "quoted_status"                 "possibly_sensitive"           
[29] "retweeted_status"              "text"                         
[31] "favorited_by"                  "scopes"                       
[33] "display_text_width"            "quoted_status_permalink"      
[35] "quote_count"                   "timestamp_ms"                 
[37] "reply_count"                   "filter_level"                 
[39] "query"                         "withheld_scope"               
[41] "withheld_copyright"            "withheld_in_countries"        
[43] "possibly_sensitive_appealable"
```

rtweet now minimizes the processing of tweets and only returns the same data as provided by the API while making it easier to handle by R.
However, to preserve the nested nature of the data returned some fields are now nested inside other.
For example, previously fields `"bbpx_coords"`, `"geo_coords"`, `"coords_coords"` were returned as separate columns, but they are now nested inside `"place"`, `"coordinates"` or `"geo"` depending where they are provided.
Some columns previously calculated by rtweet are now not returned, like `"rtweet_favorite_count"`.
At the same time it provides with new columns about each tweet like the `"withheld_*"` columns.

If you scanned through the columns you might have noticed that columns `"user_id"` and `"screen_name"` are no longer returned.
This data is still returned by the API but it is now made available to the rtweet users via `users_data()`:

```r
> colnames(users_data(tweets))
 [1] "id"                      "id_str"                 
 [3] "name"                    "screen_name"            
 [5] "location"                "description"            
 [7] "url"                     "protected"              
 [9] "followers_count"         "friends_count"          
[11] "listed_count"            "created_at"             
[13] "favourites_count"        "verified"               
[15] "statuses_count"          "profile_image_url_https"
[17] "profile_banner_url"      "default_profile"        
[19] "default_profile_image"   "withheld_in_countries"  
[21] "derived"                 "withheld_scope"         
[23] "entities" 
```

This blog post should help you find the right data columns, but if you don't find what you are looking for it might be nested inside a column.  
Try using `dplyr::glimpse()` to explore the data and locate nested columns.
For example the entities column (which is present in both tweets and users) have the following useful columns:

```r
> names(tweets$entities[[1]])
[1] "hashtags"      "symbols"       "user_mentions" "urls"         
[5] "media" 
```

Similarly if you look up a user via `search_users()` or `lookup_users()` you'll get consistent data:

```r
> users <- lookup_users(c("twitter", "rladiesglobal", "_R_Foundation"))
> colnames(users)
 [1] "id"                      "id_str"                 
 [3] "name"                    "screen_name"            
 [5] "location"                "description"            
 [7] "url"                     "protected"              
 [9] "followers_count"         "friends_count"          
[11] "listed_count"            "created_at"             
[13] "favourites_count"        "verified"               
[15] "statuses_count"          "profile_image_url_https"
[17] "profile_banner_url"      "default_profile"        
[19] "default_profile_image"   "withheld_in_countries"  
[21] "derived"                 "withheld_scope"         
[23] "entities"               
```

You can use `tweets_data()` to retrieve information about their latest tweet:

```r
> colnames(tweets_data(users))
 [1] "created_at"                    "id"                           
 [3] "id_str"                        "text"                         
 [5] "truncated"                     "entities"                     
 [7] "source"                        "in_reply_to_status_id"        
 [9] "in_reply_to_status_id_str"     "in_reply_to_user_id"          
[11] "in_reply_to_user_id_str"       "in_reply_to_screen_name"      
[13] "geo"                           "coordinates"                  
[15] "place"                         "contributors"                 
[17] "is_quote_status"               "retweet_count"                
[19] "favorite_count"                "favorited"                    
[21] "retweeted"                     "lang"                         
[23] "retweeted_status"              "possibly_sensitive"           
[25] "quoted_status"                 "display_text_width"           
[27] "user"                          "full_text"                    
[29] "favorited_by"                  "scopes"                       
[31] "display_text_range"            "quoted_status_id"             
[33] "quoted_status_id_str"          "quoted_status_permalink"      
[35] "quote_count"                   "timestamp_ms"                 
[37] "reply_count"                   "filter_level"                 
[39] "metadata"                      "query"                        
[41] "withheld_scope"                "withheld_copyright"           
[43] "withheld_in_countries"         "possibly_sensitive_appealable"
```

You can merge them via:

```
users_and_last_tweets <- cbind(users, id_str = tweets_data(users)[, "id_str"])
```

In the future ([see below](#future)), with helper functions managing the output of rtweet will become easier.

Finally, `get_followers()` and `get_friends()` now return the same columns:

```r
> colnames(get_followers("_R_Foundation"))
[1] "from_id" "to_id"  
> colnames(get_friends("_R_Foundation"))
[1] "from_id" "to_id"  
```

This will make it easier to build networks of connections (although you might want to convert screen names to ids or vice versa).

### More consistent interface

All paginated functions that don't return tweets now use a consistent pagination interface (except the premium endpoints). 
They all store the "next cursor" in an `rtweet_cursor` attribute, which will be automatically retrieved when you use the `cursor` argument.
This will make it easier to continue a query you started:

```r
users <- get_followers("_R_Foundation")
users
     
# use `cursor` to find the next "page" of results
more_users <- get_followers("_R_Foundation", cursor = users)
```

They support `max_id` and `since_id` to find earlier and later tweets respectively:

```r
# Retrieve all the tweets made since the previous request
newer <- search_tweets("weather", since_id = tweets)
# Retrieve tweets made before the previous request
older <- search_tweets("weather", max_id = tweets)
```

If you want more tweets than it is allowed by the rate limits of the API, you can use `retryonratelimit` to wait as long as needed:

```r
long <- search_tweets("weather", n = 1000, retryonratelimit = TRUE)
```

This will keep busy your terminal until the 1000 tweets are retrieved.


### Saving data

An unexpected consequence of returning more data (now matching that returned by the API) is that it is harder to save it in a tabular format.
For instance one tweet might have one media, mention two users and have three hashtags.
There isn't a simple way to save it in a single row uniformly for all tweets or 
it could lead to confusion.

This resulted in deprecating `save_as_csv`, `read_twitter_csv` and related functions because they don't work with the new data structure and it won't be possible to load the complete data from a csv. 
They will be removed in later versions.

Many users will benefit from saving to RDS (e.g., `saveRDS()` or `readr::write_rds()`), and those wanting to export to tabular format can simplify the data to include only that of interest before saving with generic R functions (e.g., `write.csv()` or `readr::write_csv()`).


## **Other breaking changes**

- Accessibility is important and for this reason if you tweet via `post_tweet()` and add an image, gif or video you'll need to provide the media alternative text. 
  Without `media_alt_text` it will not allow you to post.

- `tweet_shot()` has been deprecated as it no longer works correctly. 
  It might be possible to bring it back, but the code is complex and I do not understand enough to maintain it. 
  If you're interested in seeing this feature return, checkout the discussion about this [issue](https://github.com/ropensci/rtweet/issues/458) and let me know if you have any suggestions.
  
- rtweet also used to provide functions for data on `emojis`, `langs` and `stopwordslangs`. 
 These are useful resources for text mining in general - not only in tweets - however they need to be updated to be helpful and would be better placed in other packages, for instance emojis is now on the [bdpar package](https://cran.r-project.org/package=bdpar). 
Therefore they are no longer available in rtweet.

- The functions like `suggested_*()` have been removed as they have been broken since 2019.


## **Easier authentication**

An exciting part of this release has been a big rewrite of the authentication protocol.
While it is compatible with previous rtweet authentication methods it has also some important new functions which make it easier to work with rtweet and the twitter API in different ways.

### Different ways to authenticate

If you just want to test the package, use the default authentication `auth_setup_default()` that comes with rtweet.
If you use it for one or two days you won't notice any problem.

If you want to use the package for more than a couple of days, I recommend you set up your own token via `rtweet_user()`.
It will open a window to authenticate via the authenticated account in your default browser.
This authentication won't allow you to do everything but it will avoid running out of requests and being rate-limited. 

If you plan to make heavy use of the package, I recommend registering yourself as developer and using one of the following two mechanisms, depending on your plans:

- Collect data and analyze: `rtweet_app()`.
- Set up a bot: `rtweet_bot()`

Find more information in the [Authentication with rtweet vignette](https://docs.ropensci.org/rtweet/articles/auth.html).


### Storing credentials

Previously rtweet saved each token created, but now non-default tokens are only saved if you ask. You can save them manually via `auth_save(token, "my_app")`. 
Bonus, if you name your token as default (`auth_save(token, "default")`) it will be used automatically upon loading the library.

Further, tokens are now saved in the location output by `tools::R_user_dir("rtweet", "config")`, rather than in your home directory.
If you have previous tokens saved or problems identifying which token is which use `auth_sitrep()`.
This will provides clues to which tokens might be duplicated or misconfigured but it won't check if they work. 
It will also automatically move your tokens to the new path.

To check which credentials you have stored use `auth_list()` and load them via `auth_as("my_app")`.
All the rtweet functions will use the latest token loaded with `auth_as` (unless you manually specify one when calling it).
If you are not sure which token you are using you can use `auth_get()` it will return the token in use, list them or ask you to authenticate.


## **Other changes of note**

This is a list of other changes that aren't too big or are not breaking changes but are worthy enough of a mention:

### Iteration and continuation of requests

Using cursors, pagination or waiting until you can make more queries is now easier.
For example you can continue previous requests via:

```r
users <- get_followers("_R_Foundation")
users

# use `cursor` to find the next "page" of results
more_users <- get_followers("_R_Foundation", cursor = users)
```


### Additions

There is now a function to find a thread of a user.
You can start from any tweet and it will find all the tweets of the thread:
`tweet_threading("1461776330584956929")`.

There is a lot of interest in downloading and keeping track of interactions on Twitter.
The amount of interest is big enough that Twitter is releasing a new API to provide more information of this nature.


## **Future**

Twitter API v2 is being released and soon it will replace API v1. 
rtweet up to now, including this release, uses API v1 so it will need to adapt to the new endpoints and new data returned.

First will be the streaming endpoints in November, so expect more (breaking?) changes around those dates if not earlier.

I would also like to make it easier for users, dependencies and the package itself to handle the outputs.
To this regard I would like to provide some classes to handle the different type of objects it returns.

This will help avoid some of the current shortcomings. 
Specifically I would like to provide functions to make it easier to reply to previous tweets, 
extract nested data, and subset tweets and the accompanying user information.


## **Conclusions**

While I made many breaking changes I hope these changes will smooth future development and help both users and maintainers.

Feel free to ask on the [rOpenSci community](https://discuss.ropensci.org/tag/rtweet) if you have questions about the transition or find something amiss. 
Please let me know! It will help me prioritize which endpoints are more relevant to the community. 
(And yes, the academic archive endpoint is on the radar.)

It is also possible that I overlooked something and I thought the code is working when it isn't.
For example, after several months of changing the way the API is parsed, several users found it wasn't handling some elements. 
Let me know of such or similar cases and I'll try to fix it.

In case you find a bug, check the open issues and if it has not already been reported, open an [issue on GitHub](https://github.com/ropensci/rtweet/issues/). 
Don't forget to make a [reprex](https://cran.r-project.org/web/packages/reprex/readme/README.html) and if possible provide the id of the tweets you are having trouble with.
Unfortunately it has happened that when I came to look at a bug I couldn't reproduce it as I wasn't able to find the tweet which caused the error. 

This release includes contributions from Hadely Wicham, Bob Rudis, Alex Hayes, Simon Heß, Diego Hernán, Michael Chirico, Jonathan Sidi, Jon Harmon, Andrew Fraser and many other that reported bugs or provided feedback.
Many thanks all for using it, your interest to keep it working and improving rtweet for all. 

Finally, you can read the whole [NEWS online](https://docs.ropensci.org/rtweet/news/index.html) and the examples.

Happy tweeting!

[^1]: Specifically these: `get_favorites()`, `get_favorites_user()`, `get_mentions()`,
`get_my_timeline()`, `get_retweets()`, `get_timeline()`, `get_timeline_user()`, 
`lists_statuses()`, `lookup_statuses()`, `lookup_tweets()`, `search_30day()`, 
`search_fullarchive()`, `search_tweets()`, `tweet_shot()` and `tweet_threading()`.
