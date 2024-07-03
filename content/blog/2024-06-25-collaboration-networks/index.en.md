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
  - networks
  - social network analysis
  - community-manager-tools
description: 

---


In June 2022 I (Yani) become the rOpenSci Community Manager. To do a good job in this kind of role it is essential to know your community, so as soon I started I dug in: reading our documentation, learning our processes and their metrics, and conducting interviews with team-mates and community members.

In my previous experience working with scientific and technological communities of practice, I had used a tool called Social Network Analysis to understand the interaction of the members and plan strategies around the activities. This served me well and I was looking forward to applying it to the rOpenSci community

In this blog post we present how we have used this tool to better understand and manage the rOpenSci community.

## Community of practice and community manager

In the context of a STEM community of practice, a community manager is someone who facilitates community activities and interactions among members. A community manager has responsibilities for tasks with technical, interpersonal, communication, program management and program development aspects.

> A community of practice is a group of people who **share a 
passion** for something that they **know 
how to do**, and who **interact regularly** 
in order to **learn how to do it better**    
<span style="float:right"> -- <em>Etienne Wenger</em></span>

> A Community Manager **facilitates** the **activities** of a community and the **interactions** between **community members.** 
Community management may be considered as _“in-reach”_ rather than _“outreach”_ or public engagement.     
<span style="float:right"> -- <em>CSCCE</em></span>

rOpenSci is a community of practice and our passion is to build tools, resources, and social and technical infrastructure to enable open and reproducible research using R. We interact regularly in different activities and spaces in order to learn how to do it better.

## Community interactions and connectivity

rOpenSci keeps track of many metrics relating to the health and enthusiasm of our community. For example, how many packages we reviewed, how many blog posts we wrote, how many community calls we organized and how many people came. This are very useful and show us an overal idea of our community and our activities.

However, communities are built on connections, and those summaries and number don't give us much information about the growth and strength of professional and interpersonal connections in our community.

If we understand the connectivity in our community we can __plan targeted__ and __effective interventions__ to:

- improve collaborations.
- improve information flow.
- improve knowledge reuse.
- effective knowledge (co)creation.
- effective knowledge transfer.

## Social Network Analysis

Here is where Social Networks Analysis comes into play. I'm not talking about Instagram or Mastodon here, I'm talking about networks of relationships among individuals or organization.

> Group of individuals who relate to others for a specific purpose, characterized by the existence of information flows.

By exploring these networks, we can try to answer questions for a given moment in time, for example:

- Who is connected to whom? Who is not connected?
- Where, and who, are the __hubs__?
- Where and about what are the __clusters__? Are there __silos__?

We can also look at how thing change over time:

- Are new __connections__ forming?
- Are new __patterns__ of connectivity forming?
- How did our network __change__ with the introduction of an activity?
### Basic elements and metrics

To answer these questions, we can map and explore the *nodes* and *edges* of our community network. Nodes are points or vertices and are connected to each other by edges. Together the pattern of connections makes up a network.

In our community, nodes and edges could represent individual community members and their collaborations, for example, co-writing a blog post together, or being authors on the same R package. 

{{< figure src = "red-elements.png" alt = "Two cartoon persons speaking with a can phone. Each person is a node, the thread is the edge and that edge can have direction." caption = "A basic network, with two nodes (community members) and an edge between them (an interaction).">}}


* The *degree* of a node is how many connections it has. The higher the degree, the more connected the node. For example, a community member who interacts with many different community members.

* The *multiplexity* show the number of connection between two nodes, for example
you co-author more than one blog post.

* *Betweenness centrality* measures the number of times a node lies on the shortest path between other nodes. This indicates which nodes are 'bridges' between nodes in a network. For example community members who often interact with different groups of members.

* The *clossness* scores each node based on how close it is to all other nodes in the network.
For example, this can be useful for finding community members who are best placed to influence the entire network most quickly.

* *Clusters or communities* are groups of nodes with a high number of connections among that. For example, community members who often work together. A *clique* is when all members are interconnected and a *silo* is when members have no connections with other clusters on the network.

### Data for a network

For this type of analysis we need data that reveal connections among actors in a network.

The most common data collection methods used in social network analysis are surveys and interviews with members in the network. As you can imagine, this can be costly in time and money.  

Data can also come from secondary sources, like social media connections, or from your own knowledge of the relationships that exist in the network.

So we considered, is it possible that we already have the data we need to analyze the connectivity of our community? Is it possible that we could collect this data in an automated or semi-automated way to repeat the analysis, allowing us to explore how our network changes over time?


#### Pathways to contributing at rOpenSci

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

## Using R to build the network

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

The next step is to transform the list of author of each blog post in a network format.

First we create the vertices with each author and how many blog post each author wrote.

``` r
author <- datos |> 
  group_by(author) |> 
  mutate(n = n()) |>
  select(author, n) |>
  distinct()

```
Now we need to create the edge or relations between the nodes or vertices. 

This code take the list we create in the previews step, group by title and year and keep all the blog post that have two authors or more.  Then, for each group, the `combn` function create a matrix with two rows and columns representing all the unique combination of two authors. We transpose this data to get two columns that become _from_ and _to_, representing the nodes.

``` r
relations <- datos |> 
  group_by(title, year) |>
  filter(n() > 1) |> 
  summarise(as.data.frame(t(combn(author, 2)))) |>
  select(from=V1, to=V2, title, year)

```

Now we create the network with the `igraph` package. 

``` r
library(igraph)

g_blog <- graph_from_data_frame(d = relations, 
                              vertices = author, 
                              directed = FALSE)

```

And plot the rOpenSci collaboration network of blog post authors from 2014 to June 2024.

``` r

plot(g_blog, 
     vertex.size = 4, 
     vertex.label.cex = 0.5, 
     edge.arrow.size = 0.5, 
     edge.curved = 0.5, 
     edge.width = 0.5)

```

{{< figure src = "blog_network.png" alt = "Blog post authors network from 2014 to 2024. The network have 253 nodes and 1147 edges. Have two very differentiate parts, one with their members with high connection between them and the other with small cluster of two to six nodes, but not connected to the more dense network. It also have severals nodes without connection to any other node of the network.">}}


We can also calculate the degree of each node, the betweenness and the closeness to analize some of the characteristics of the nodes and the network.

``` r
degree(g_blog)
betweenness(g_blog)
closeness(g_blog)
```

As we can identify network members we know that Maëlle Salmon have the maximun number of contributions as active staff member and Noam Ross have the higest degree and the higest centrality. It is the most connected member in the blog post network. 

## Conclusion

This is a small example of what we can do. We could have a network for each year and see how the model changes over time or for some fraction of the data, for example, only the blog post in Spanish. We can map the network to geographic area and check what countries are more present and wich collaborate more between them.

Social Network Analysis is a powerful tool to understand the interactions and collaborations in a community and R have powerfull packages to do the analisys. So, what if you wanted to do the same for your community?. Here are our tips.

* Define the nodes in your network (people, countries, organizations, ...) 
* Define the type(s) of connection you have in your network.
    * Start with your paths for contributions.
    * Identify which contributions can be done in teams.
* Probably you are alredy registering information about those type of connection.
* You can automatize a portion of the data collection.
    * Formalize the workflow (code ;-)) so you can repeat & reproduce.
* It is hard to capture all type of interactions.
  * Take into account open/close/privacy of the data. 
* Knowing the nodes help to understand the clusters and the interactions.
  * Lean on the people who have been in the network for the longest time.
* You can take snapshot of the network model ... 
* ... so you can compare it at different times.
* ... so you can use it for measure the impact of interventions and programs.
* Share what you find with your community
* ... and other community managers.  

