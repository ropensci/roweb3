---
title: 'Upgrading rtweet'
author:
  - Lluís Revilla Sancho
date: '2022-07-10'
slug: rtweet-1-0-0
categories:
  - blog
tags:
  - rtweet
  - R
package_version: 1.0.0
description: Update from rtweet 0.7.0 to 1.0.0.
twitterImg: blog/2019/06/04/post-template/name-of-image.png
twitterAlt: Alternative description of the image
tweet: Do you use rtweet? It has been updated read how to update your code to rtweet 1.0.0 by @Lluis_Revilla!
---

In this post I will provide some examples of what has changed between rtweet 0.7.0 and rtweet 1.0.0. 
I hope both the changes and this guide will help all users.
I won't provide a full list of changes but you can consult it on the [NEWS](https://docs.ropensci.org/rtweet/news/index.html).

## **Big breaking change**

### More consistent output

This is probably what will affect more users.
All functions that return data about tweets[^1] return the same columns.

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

rtweet now minimizes the processing of tweets and only returns the same data as provided by the API but making it easier to handle by R.
However, to preserve the nested nature of the data returned some fields are now nested inside other.
Some columns previously provided by rtweet are now not returned.
At the same time it provides with new columns about each tweet like the `withheld_*` columns.

If you scanned through the columns you might have noticed that there aren't `"user_id"` or `"screen_name"` columns returned.
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

This should help finding the right columns of data but if you don't find what you are looking for it might be nested inside a column. 
For example the entities column (which is present in both tweets and users!) have the following useful columns:

```r
> names(tweets$entities[[1]])
[1] "hashtags"      "symbols"       "user_mentions" "urls"         
[5] "media" 
```

Similarly if you look up for a user via `search_users()` or `lookup_users()` you'll get similar data:

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

Now `get_followers()` and `get_friends()` return the same columns:

```r
> colnames(get_followers("_R_Foundation"))
[1] "from_id" "to_id"  
> colnames(get_friends("_R_Foundation"))
[1] "from_id" "to_id"  
```

This will make it easier to build networks of connections (Although you might want to convert screen names to ids or viceversa).

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

An unexpected consequence of returning more data as in the API is that it is now harder to save it in a tabular format.
For instance one tweet might have one media, mention two user and have three hasthags.
There isn't a simple way to saved it in a single row uniformly for all tweets or 
it could lead to confusion.

This resulted in deprecating `save_as_csv`, `read_twitter_csv` and related functions because it doesn't work with the new data structure and it won't be possible to load it from a csv. 
They will be removed in later versions.

## **Other breaking changes**

If you tweet via `post_tweet()` and add an image, gif or video you'll need to provide the media alternative text. 
Without `media_alt_text` it will not allow you to post.

`tweet_shot()` has been deprecated as it did no longer work correctly. 
There might be possible to bring it back, but I don't understand the code provided and can't maintain it (see the long discussion about it [on the issue](https://github.com/ropensci/rtweet/issues/458)). 
  
emojis, langs and stopwordslangs data provided with rtweet is no longer available.
I don't think it is the right place to provide this kind of data and I don't want to be responsible to update them. 

The functions like `suggested_*()` have been removed as they didn't work since 2019.

## **Easier authentication**

As part of this release there have been a big rewritte of the authentication protocol.
While it is version compatible it has also some new functions that are important as these functions make it easier for different use cases to work with rtweet and the  API.

If you just want to test the package use the default authentication `auth_setup_default()` that comes with rtweet.
If you use it for one or two days you won't notice any problem.

If you want to use the package more than a couple of days, I recommend you to set up your own token via `rtweet_user()`.
It will open a window to authenticate via the authenticated account in your default browser.
This authentication won't allow you to do everything but it will avoid running out of requests and being rate-limited. 

If you want to make a heavier usage of the package I recommend to register yourself as developer and use one of the following two mechanisms for different use cases:

- Collect data and analyze: `rtweet_app()`.
- Set up a bot: `rtweet_bot()`

Find more information on the [Authentication with rtweet vignette](https://docs.ropensci.org/rtweet/articles/auth.html).

Previously rtweet saved each token created, if you don't use the default token you'll need to save them manually via `auth_save(token, "my_app")`. 
Bonus, if you name your token as default (`auth_save(token, "default")`) it will be used since loading the library.

The tokens are now not saved on your home directory but via `tools::R_user_dir("rtweet", "config")`. 
If you have previous tokens saved or problems identifying which token is which use `auth_sitrep()`.
This will provides clues to which tokens might be duplicated or misconfigurated but it won't check if they work. 
It will also automatically move your tokens to the new path.

To check which credentials you have stored use `auth_list()` and load them via `auth_as("my_app")`.
All the rtweet functions will use the latest token loaded with `auth_as` (unless you manually specify one when calling it).
If you are not sure which token you are using you can use `auth_get()` it will return the token in use, list them or ask you to authenticate.




## **Other changes**

Some other changes aren't too big to be worth their own section or are not breaking changes but are worthy enough of a mention:

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

The interest on download and keep track of interactions in twitter is big. 
It is big enough that Twitter is releasing a new API to provide more information about this.


## **Future**

Twitter API v2 is being released and soon it will replace API v1. 
rtweet up to now, including this release, uses API v1 so it will need to adapt to the new endpoints and new data returned.

First will be the streaming endpoints in November, so expect more (breaking?) changes around those dates if not earlier.

I would also like to make it easier for users, dependencies and the package itself to handle the outputs.
To this regard I would like to provide some classes to handle the different type of objects it returns.

This would help to avoid some current shortcomings. 
Specifically I would like to provide functions to make it easier to reply to previous tweets, 
provide shortcuts to find out some nested information and subset tweets and the accompanying user information.


## **Conclusions**

While I made many breaking changes I hope this helps both users and maintainers.

Feel free to ask on the [rOpenSci community](https://discuss.ropensci.org/tag/rtweet) if you have questions about the transition or find something amiss. 
Please let me know, it will help me prioritize which endpoints I are more relevant to the community. 
Yes, the academic archive endpoint is on the radar. 

It is also possible that I overlooked something and I thought the code is working but it isn't.
For example, after several months of changing the way the API is parsed several users found it wasn't handling some elements. 
Let me know of such or similar cases and I'll try to fix it.

In case you find a bug, check the open issues and if not reported previously open an [issue on github](https://github.com/ropensci/rtweet/issues/). 
Don't forget to make a [reprex](https://cran.r-project.org/web/packages/reprex/readme/README.html) and if possible provide the id of the tweets you are having trouble with.
In some occasions when I came to look at a bug I couldn't reproduce it as I wasn't finding which tweet caused the error. 

Finally, you can read the whole [NEWS online](https://docs.ropensci.org/rtweet/news/index.html) and the examples.

Happy tweeting!

[^1]: Specifically these: `get_favorites()`, `get_favorites_user()`, `get_mentions()`,
`get_my_timeline()`, `get_retweets()`, `get_timeline()`, `get_timeline_user()`, 
`lists_statuses()`, `lookup_statuses()`, `lookup_tweets()`, `search_30day()`, 
`search_fullarchive()`, `search_tweets()`, `tweet_shot()` and `tweet_threading()`.