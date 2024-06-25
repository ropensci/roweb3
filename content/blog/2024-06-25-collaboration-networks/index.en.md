---
title: "rOpenSci Community Collaboration Insight Using Social Networks Analysis"
author: 
  - Yanina Bellini Saibene
  - Sandro Camargo
editor:
  - Steffi LaZerte
date: '2024-06-25'
slug: collaboration-networks
categories:
  - blog
tags:
  - Community
description: 

---


In June 2022 I become rOpenSci Community Manager.  To do a good job in the role it is essential to know your community, so as soon I started I digged in reading our documentation, learning our processes and their metrics, making interviews with team-mates and community members.

In my previews experience working with scientific and technological communities of practice, I used a tool called Social Network Analysis to understand the interaction of the members and plan strategies around the activities. 

This blog post present how we have been using this tool for the management of the rOpenSci community.

## Community of Practice and Community Manager

A community manager in the context of a STEM community of practice is a person that facilitates the activities of the community and the interaction with their members.  Have responsibilities over task in technical, interpersonal, communication, program management and program development aspect.

> A community of practice is a group of people who **share a 
passion** for something that they **know 
how to do**, and who **interact regularly** 
in order to **learn how to do it better** -- _Etienne Wenger_

> A Community Manager **facilitates** the **activities** of a community and the **interactions** between **community members.** 
Community management may be considered as _“in-reach”_ rather than _“outreach”_ or public engagement. - CSCCE

rOpenSci is a community of practice and our passion is to build tools, resources, and social and technical infrastructure to enable open and reproducible research using R. We interact regularly in different activities and spaces in order to learn how to do it better.

## Community Iteractions and Connectivity

rOpenSci records a lot of data and generates statistics and summaries, for example, how many packages we reviewed, how many blog posts we wrote, how many community calls we organized and how many people came. This are very useful and show us an overal idea of our community and our activities.

Now, communities are built on connections, and those summaries and number don't give us many information about the growth and strength of professional and interpersonal connections in our community.

Know our community connectivity is useful to __plan targeted__ and __effective interventions__ to:

- improve collaborations.
- improve information flow.
- improve knowledge reuse.
- effective knowledge (co)creation.
- effective knowledge transfer.

We can try to answer questions at a given moment in time, for example:

- Who is connected to whom? Who is not connected?
- Where, and who, are the __hubs__?
- Where and about what are the __clusters__? Are there __silos__?

Or how thing changes over time:

- Are new __connection__ forming?
- Are new __patterns__ of connectivity forming?
- How was our network __before and after__ the introduction of an activity?

## Social Network Analysis

Here is where Social Networks Analysis comes into play. I'm not talking about instagram or mastodon here, I'm talking about networks build by individuals u organization that have some kind of relationship.

> Group of individuals who relate to others for a specific purpose, characterized by the existence of information flows.

### Basic elements and metrics

You can map the nodes and edges to explore the connections and patterns that exist
and make conclusions based off of that exploration, for example, here we have map network, with the people as nodes and the edges as collaborations, for example, write a blog post together, being co-authors.

{{< figure src = "red-elements.png" alt = "Two cartoon persons speaking with a can phone. Each person is a node, the thread is the edge and that edge can have direction.">}}


* The *degree* of a node is how many connection have, higer degree, more connected is the node.

* The *multiplexity* show the number of connection between two nodes, for example
you co-author more than one blog post.

* *Betweenness centrality* measures the number of times a node lies on the shortest path between other nodes. What it tells us: This measure shows which nodes are 'bridges' between nodes in a network.

* The *clossness* scores each node based on how close it is to all other nodes in the network.
It is useful for finding the individuals who are best placed to influence the entire network most quickly.

* The *Clusters or communities* are groups that work together, their nodes have high number of connection between them. A *clique* cluster have all their memebers interconnected and a *silo* don't have connection with other clusters on the network.

### Data for a network

For this type of analysis we need data that reveal some kind of connection between the actors in a network.

The most common data collection methods used in social network analysis are surveys and interviews collect from members in the network. As you can imagine, this can be costly in time and money.  

The data also could come from existing data, like data on social media connections, and it can come from your own knowledge of the relationships that exist in the network.

So we thought, is it possible that we already have that data in another format and we can accommodate it to analyze the connectivity of our community? is it possible that we could collect that data in an automated or semi-automated way to repeat the analysis?


#### Path to contribute at rOpenSci

Fortunately at rOpenSci we have a [Contributing Guide](https://contributing.ropensci.org/), there is a whole book describing the different ways you can contribute to the community (check our [Tip Sheet for a summary](/blog/2022/09/13/contributing-ropensci/)). For example, you can, Write a blog post, Review a package, Maintain a package, Speak at a Community Call, Become a champion or Host a coworking session. 

{{< figure src = "contributions.png" alt = "Cartoons people doing differents contribution to rOpenSci: Write a blog post, Review a package, Speak at a community call, Maintain a package, Become a champion, Host a coworking session">}}

Many of these forms of contribution can be made with other people and there we have our nodes and a connection between them.  In our examples: 

* for a blog post the nodes are the authors and the edge is build by authorship, by writing a post together. We can get that data from our website.  

* For a package review, the nodes are the authors, editors and reviewers and the edge is the peer-review conducted together. The data source is our peer-review database and the github repo and issues where we conduct all the process.

* The authors, mantainers and contributors of a package are nodes in the _Maintain a package_ way of contributions. The infomration is on GitHub.

* Speak at a Community Call, the node are the speakers, host and moderators, and the edge is the participation in the same call. The data is in our community calls database and our webpage.

* Become a champion, the nodes are the mentors and the mentees and the edge is the mentorship relationship. The data is in our mentorship program database and our webpage.  

* Host a co working session, the node are the attendees and the host. The edge is the participation in the same session. The data is in our our webpage. 

As we can see, there are many ways to represent interactions and collaborations in our community, and many of those information is open and public. 

When we put together collaborations like this, we can build a network of interactions and collaborations in our community.  This is how our network looks like in 2022:

{{< figure src = "full_network.png" alt = "A network of nodes and edges, the nodes are the people and the edges are the collaborations.There are severals groups of nodes with the same colors that identify clusters">}}

This networks include public data about blogs post, books, events, packages, reviews, translations and champions program. It is not complete, because do not include other spaces like our Slack or our Forum, but is a good approximation. 

## Let's see an example with the Blog

The best part is that we can create this networks with R. Let's see an example with the blog post. We can extract the data we need from the YAML of each post in our webpage: the `title`, the list of `authors` and the `date`. 

```
---
title: Agrandando nuestra comunidad con publicaciones multi-idioma
author:
  - Yanina Bellini Saibene
  - Pao Corrales
  - Elio Campitelli
  - Maëlle Salmon
date: '2023-01-12'

[...]

---
```

The following code performs this task and save the data in a csv file:

1. Read all the files in the `content/blog/` folder with the `.md` extension  
2. Create a tibble with the variables to store: _date, title, author, year_ and _contribution_type_.
3. For each markdown document
4. Read the YAML header, extract the value of each variable
5. and add a row in the dataset with the information
6. After process all the documents, we save the dataset to a CSV file

``` r 
file_list <- fs::dir_ls(path = "content/blog/", 
                        recurse = TRUE, 
                        type = "file", 
                        glob = "*.md") 

datos <- tibble(date = character(), 
                title = character(),
                author = character(), 
                year = character(), 
                contribution_type = character())
                
for (documento in file_list){ 
  doc <- rmarkdown::yaml_front_matter(input = file.path(documento)) 
  datos <- tibble::add_row(datos, 
                           date = doc$date, 
                           title = doc$title, 
                           author = doc$author, 
                           year = as.character(year(date(doc$date))), 
                           contribution_type = 'blog post' 
                           )  
}

write_csv(datos, "blog_post_authors.csv")                 

```








