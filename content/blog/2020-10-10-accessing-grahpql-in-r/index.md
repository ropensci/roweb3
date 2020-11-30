---
title: Accessing GrahpQL from R
author:
  - Dennis Irorere
  - Scott Chamberlain
date: '2020-12-08'
slug: accessing-grahpql-in-r
categories:
  - blog
tags:
  - Packages
  - API
  - R
  - ghql
  - graphql
  - community
package_version: 0.1.0
description: Ever tried interacting with a GraphQL server in R and felt like giving up even before getting anywhere? Well, I have been there and I wrote this blog post to assist others.
twitterImg: blog/2020/10/10/accessing-grahpql-in-r/GHQL.png
output:
  html_document:
    keep_md: yes
---
### Introduction
Few months ago, I embarked on a full stack spatial data project at work. The project kicked off amazingly, until I was almost backed to the wall when I discovered that some of the data sources were served via a GraphQL API. Before now, I haven't worked with GraphQL. But, I have heard a lot about it and how amazing it is for querying data. 

GraphQL is a query language for application programming interfaces (APIs) that prioritizes giving clients exactly the data they request. It's designed to make APIs flexible, fast and friendly. Basically, it is used to load data from a server to a client and it does this in a much more efficient manner than traditional methods and services.

I started off installing the [GraphQL playground](https://www.graphqlbin.com/v2/new), which is now my go to tool to interact with GraphQL API and it offers a great workflow to understand the schema and structure of any GraphQL API. I recommend you try it out.

After hours of trying out the GraphQL playground, I finally understood the schema of the GraphQL API endpoint for the project I'm working on. Well, that was the easy part I must say. 

Now that I can query the API, everything should seem great. Right? Well, it's not. Why? Well, the GraphQL API I was working with fetches the geospatial data as json file instead of geojson. Probably, because of my lack of understanding of how GraphQL truly worked with spatial data. The issue now is, I can see my data. But, just not in the format that I can work with. I am tempted to talk about the technicality behind it, but I won't... maybe another time. 

### How did I find out about ghql?
At work, our scripting language of choice is R. R is a free software environment for statistical computing and graphics. Well, that's how it's officially defined. But, trust me its gradually evolving to do more than statistical computing and making of beautiful graphics. It was time for me to programmatically access data with GraphQL API from R. I felt excited because, I'm an R lover. But, I knew it was a going to be a huge work, I guess I was ready for the huge work. 

After spending days researching about the R packages that can interact with a GraphQL API, I found three packages. I picked `ghql` over the others because, it was an rOpenSci package.


### Moving on
In order for R to interact with any GraphQL API, it requires a GraphQL client. That's where `ghql`, a GraphQL client for R, developed by Scott Chamberlain comes into play. Still confused? Well, so was I at first. I tried interacting with a GraphQL server in R and felt like giving up even before getting anywhere. Hopefully this blog post will assist others.
<!--html_preserve-->
{{< figure src = "GHQL.png" width = "350" alt = "GraphQL client and R connection flow" caption = "GraphQL client and R connection flow" class = "center">}}
<!--/html_preserve-->

### Working with `Countries List`, a GraphQL public API
Let's say you were working on a project that required country-specific data, such as currency, or language. You could get such data from the [Countries GraphQL API](https://github.com/trevorblades/countries) which is a public GraphQL API for information about countries, continents, and languages. This public API uses [Countries List](https://annexare.github.io/Countries/) and [provinces](https://github.com/substack/provinces) as data sources, so the schema follows the shape of those data, with a few exceptions:
- The codes used to key the objects in the original data are available as a code property on each item returned from the API.
- The country.continent and country.languages are objects and arrays of objects, respectively.
- Each Country has an array of states populated by their states/provinces, if any.

Loading the libraries

```r
library(ghql)
library(jsonlite)
library(dplyr)
```

Link to the GraphQL schema api

```r
link <- 'https://countries.trevorblades.com/'
```

Create a new graphqlClient object 

```r
conn <- GraphqlClient$new(url = link)
```

Define a Graphql Query

```r
query <- '
query($code: ID!){
  country(code: $code){
    name
    native
    capital
    currency
    phone
    languages{
      code
      name
    }
  }
}'
```

The `ghql` query class and define query in a character string

```r
new <- Query$new()$query('link', query)
```

Inspecting the schema

```r
new$link
```

```
##  
##  
## query($code: ID!){
##   country(code: $code){
##     name
##     native
##     capital
##     currency
##     phone
##     languages{
##       code
##       name
##     }
##   }
## }
```

Define a variable as a named list

```r
variable <- list(
  code = "DE"
)
```

Making a request, passing in the query and then the variables. Then you convert the raw object to a structured json object

```r
result <- conn$exec(new$link, variables = variable) %>% 
  fromJSON(flatten = F)
result
```

```
## $data
## $data$country
## $data$country$name
## [1] "Germany"
## 
## $data$country$native
## [1] "Deutschland"
## 
## $data$country$capital
## [1] "Berlin"
## 
## $data$country$currency
## [1] "EUR"
## 
## $data$country$phone
## [1] "49"
## 
## $data$country$languages
##   code   name
## 1   de German
```

Convert the json data into a tibble object

```r
country_data <- result$data$country %>% 
  as_tibble()
country_data
```

```
## # A tibble: 1 x 6
##   name    native      capital currency phone languages$code $name 
##   <chr>   <chr>       <chr>   <chr>    <chr> <chr>          <chr> 
## 1 Germany Deutschland Berlin  EUR      49    de             German
```

## More examples
Working with a GraphQL API without a defined variable named list


```r
link <- 'https://countries.trevorblades.com/'

# R6 class for constructing graphql queries
conn <- GraphqlClient$new(url = link)

## Define query
## Create a query class first
qry <- Query$new()

## The graphQL server schema 
qry$query('x', '{
continent(code: "AF") {
    countries{
    code
    name
    native
    capital
    currency
    phone
    languages {
      name
    }
    }
}
  }
          ')

## Execute the query
res <- conn$exec(qry$queries$x)

# Convert the the output from raw to json format
res <- jsonlite::fromJSON(res, 
                          flatten = TRUE)

## convert the from json to dataframe object
res_data <- res$data$continent$countries %>% 
  as_tibble()

## Inspect the first 6 rows of the data
res_data
```

```
## # A tibble: 58 x 7
##    code  name             native            capital   currency phone languages  
##    <chr> <chr>            <chr>             <chr>     <chr>    <chr> <list>     
##  1 AO    Angola           Angola            Luanda    AOA      244   <df[,1] [1~
##  2 BF    Burkina Faso     Burkina Faso      Ouagadou~ XOF      226   <df[,1] [2~
##  3 BI    Burundi          Burundi           Bujumbura BIF      257   <df[,1] [2~
##  4 BJ    Benin            Bénin             Porto-No~ XOF      229   <df[,1] [1~
##  5 BW    Botswana         Botswana          Gaborone  BWP      267   <df[,1] [2~
##  6 CD    Democratic Repu~ République démoc~ Kinshasa  CDF      243   <df[,1] [5~
##  7 CF    Central African~ Ködörösêse tî Bê~ Bangui    XAF      236   <df[,1] [2~
##  8 CG    Republic of the~ République du Co~ Brazzavi~ XAF      242   <df[,1] [2~
##  9 CI    Ivory Coast      Côte d'Ivoire     Yamousso~ XOF      225   <df[,1] [1~
## 10 CM    Cameroon         Cameroon          Yaoundé   XAF      237   <df[,1] [2~
## # ... with 48 more rows
```

### The last dance (conclusion)
So, you have stuck with me this far? Thanks!

My final thought. I think GraphQL can greatly simplify data needs for both client product developers, server-side engineers and data scientist. It's still early to assertain the extent of it's impact in the technological world. But, it seems very promising since the Team behind GraphQL are continously improving the technology, and there is a growing community.

