---
slug: "deposits-in-the-wild"
title: Deposits In The Wild
author:
  - Collin Schwantes
date: 2024-09-17
tags:
  - deposits
  - FAIR-data
  - reproducibility
  - zenodo
  - frictionless
  - community
# The summary below will be used by e.g. Mastodon preview cards
description: "Using the deposits and frictionless packages to create FAIR data for a complex project"
social: "A post about using R to create FAIR data for complex projects by @collinschwantes@fosstodon.org!"
# this field is for the storing the name(s) of the editor(s) of your post
# you can leave it empty until you know who'll review your PR
editor:
  - Yanina Bellini Saibene
  - Mark Padgham
---



<script type="module">
    import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid/dist/mermaid.esm.min.mjs';
    mermaid.initialize({ startOnLoad: true });
  </script>



For the better part of a year, I have been looking for an opportunity to use the rOpenSci package [deposits](https://docs.ropensci.org/deposits/) in my
role as the Data Librarian at EcoHealth Alliance.
I had done some initial testing with [Mark Padgham](/author/mark-padgham/), the brilliant person who developed this package, but there weren't any projects ready for me to put deposits through its paces.
Enter the *Rift Valley Fever Virus in South Africa* project, a ten year, multiple part study of humans, wildlife (mosquitoes and wild ungulates), and domestic animals that uses every data store from Dropbox to Google Drive to Airtable to ODK with a healthy mix of file formats for tabular data. 
Additionally, the principal investigators (PIs) on the project are very enthusiastic about making the data FAIR (Findability, Accessibility, Interoperability, and Reusability).  

The team and I put together workflow in [targets](https://books.ropensci.org/targets/) with the mechanics of ETL (Extract, Transform and Load) largely handled by our [ohcleandat](https://ecohealthalliance.github.io/ohcleandat/) package. 
The underlying philosophy of the ETL process is the original data are only lightly modified (stripping white spaces, column names to snake case, etc) while humans do any cleaning that requires thought via validation logs. 
Changes made in logs are then applied to the data before they are integrated into various larger workpackages. 
Those workpackages are then deposited into Zenodo to create versioned single sources of truth with digital object identifiers. 

<pre class="mermaid">
flowchart LR
    accTitle: Workflow Overview for cleaning data from multiple sources
    accDescr {
        Data from multiple sources including dropbox, googledrive, airtable, and open data kit are     ingested and transformed. 
        Data entry errors are recorded in a validation log and corrected manually in the log.Corrections made in the validation logs are applied to the data, the data are then integrated before being prepared for archive in Zenodo.
              }
    A[Dropbox] --> E(ETL in targets with ohcleandat)
    B[GoogleDrive] --> E
    C[Airtable] --> E
    D[ODK] --> E
    J[Validation Logs] --> E
    E --> J
    E --> F[Cleaned Integrated Data]  
    F --> G(Prep for Archive in targets with deposits)
    G --> H{Zenodo}
</pre>

## An abbreviated intro to deposits

The first thing you have to know about deposits is that it uses the R6 class. 
R6 is an object oriented framework where each class of object has a set of methods (functions) that can be applied to it. 
This is really nice because you can access all of the available methods of a `depositClient` object by using `cli$SOME_METHOD()` - where its less convenient for people who work in Rstudio is when you're looking for the help page for `SOME_METHOD` - instead you have to look for `depositClient` and scroll to the link to `SOME_METHOD`.

The next kind of tricky thing is [adding api tokens to the environment](https://docs.ropensci.org/deposits/articles/install-setup.html#setup-api-tokens). 
This can be done in a number of different ways ([encrypted .env file](https://ecohealthalliance.github.io/eha-ma-handbook/16-encryption.html), [usethis::edit_r_environ](https://usethis.r-lib.org/reference/edit.html), etc) but is essential to using this package. Remember that these tokens are sensitive credentials and should not be openly shared.

deposits works as an intermediary between a remote service ([Zenodo](https://zenodo.org/) or [Figshare](https://figshare.com/)) and your local machine. 
Via deposits you can create, read, update, or delete items on a remote service.    


<pre class="mermaid">
flowchart LR
    accTitle: Basic overview of the deposits client
    accDescr: The deposits client keeps track of local and remote data and monitoring both for changes.
    A[Local storage] <--> B{depositsClient}
    B <--> C[Zenodo/Figshare]
</pre>    

deposits allows you to pre-populate the metadata for those items. This is incredibly useful if you have to deposit many items with similar metadata, if you have highly collaborative items with dozens of co-authors/contributors, or if you want to update many items with the same bit of metadata. 
You might be asking yourself - do Zenodo and Figshare really use the same terms with the same properties in their APIs? The answer is no, but they both use flavors of [Dublin Core](https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#section-1) that Mark has mapped to common standard. 
deposits uses JSON validation to enforce the standard and the package also provides a template of properly formatted metadata. 

Finally, deposits allows you to push items to a service and publish them. 
On zenodo, you may push items up as embargoed or open (restricted is coming soon pending a pull request). 

## What does our workflow look like?

We created a `deposits_metadata.csv` that contains all of the DCMI (Dublin Core Metadata Initiative) terms we would like to pre-populate across ~35 zenodo deposits.
Because certain DCMI terms like creator can have multiple attributes, we augmented the `deposits_metadata.csv` with a `creator_metadata.csv` file that contains additional terms. 
I opted to use csv files because:  
1) they are very easy to maintain
2) the are extremely interoperable 
3) we have a very limited number of tables.  

If there were additional tables to link or more complicated relationships I would use a relational database like MySQL (or Airtable).  


<pre class="mermaid">
flowchart LR
    accTitle: Overview of metadata workflow
    accDescr {
       Deposit metadata and creator metadata are stored as CSV files. 
       Those CSV files are ingested into targets along with their corresponding data files. 
       The metadata files and data files are combined in targets to create a Zenodo deposit.
        }
    A[Deposit Metadata CSV] --> G(ELT in targets)
    B[Creator Metadata CSV] --> G
    C[ Data Files]  --> G
    G --> H{Zenodo}
</pre>

`deposits_metadata.csv`


|title	| format	|created	|creator	| files   |...|
|------|---------|---------|---------|---------|----|
|Work package 1| dataset| 2024-09-01| "Collin, Mindy, Johana" | "dat1.csv, dat2.csv"| ...| 

  

Each row in `deposits_metadata.csv` corresponds to a work package - a collection of data files that will become a deposit. 
The PIs on the project requested access to raw, semi-clean, and clean versions of the data. 
They also provided lists of who should be credited for what and who should have access to what. 
Unfortunately in Zenodo you cannot restrict access to specific files like you can in the [Open Science Framework](https://osf.io/) (OSF), so a different deposit has to be made for each group that needs access. 

We then map over each row in the dataset in targets using [the group iterator](https://docs.ropensci.org/targets/reference/tar_group.html) to create the draft deposits that we need. 
The `depositClient` plays very nicely with targets, and can even be tar_loaded when you need to interactively debug. 

Another important component of our workflow is generating codebooks/data dictionaries/structural metadata for the different work packages. 
By default, deposits creates a frictionless data package that describes all the files/resources in a deposit. 
The `datapackage.json` file contains a minimal description of the different files that contains the field name and field type. 
We can augment this with field descriptions, term URIs, or any number of additional attributes that would helpful when describing the data.  
To do this, we use  `ohcleandat::create_structural_metadata` and `ohcleandat::update_structural_metadata` to create/update the codebooks then `ohcleandat::expand_frictionless_metadata()` to add those elements to `datapackage.json`. 
Because each deposit contains multiple data files and multiple codebook files, we have to iteratively `purrr::walk` over them to properly update the data.

```R
#' purrr::walk over ohcleandat::expand_frictionless_metadata
#'
#' @param file_paths List with the elements data and codebook
#'
#' @return Invisible. writes updated datapackage.json
#' @export
#'
#' @examples
walk_expand_frictionless_metadata <- function(file_paths,dir_path){
  purrr::walk2(file_paths$codebook,file_paths$data,function(codebook_path,data_path){
    if(is.na(codebook_path)){
      msg <- sprintf("No codebook listed for %s",data_path)
      return(NA)
    }
    
    codebook_df <- readr::read_csv(file = codebook_path)
    ## check dataset_name matches resource_name
    resource_name<- get_resource_name(data_path)
    
    if(unique(codebook_df$dataset_name) != resource_name){
      msg<- sprintf("resource_name and dataset_name do not match. 

Check that the proper name was added to the codebook and that
the files are in the proper order in deposits_metadata.csv. 
resource_name is taken from the file name for a given dataset.

%s != %s",
                    resource_name, unique(codebook_df$dataset_name) )
      
      stop(msg)
    }
    
    data_package_path <- sprintf("%s/datapackage.json",dir_path)
    
    
    ohcleandat::expand_frictionless_metadata(structural_metadata = codebook_df,
                                             resource_name = resource_name, # name of the file with no extension
                                             resource_path = data_path,
                                             data_package_path = data_package_path)
  })
}
```

When we go to add this updated `datapackage.json` file to the deposit, the order of operations matters. 
If we are creating an item, the function might look like this:

```R
#' Create Zenodo Deposit and Expand Metadata
#'
#' @param cli deposits client
#' @param metadata_dcmi_complete list of DCMI metadata terms
#' @param file_paths paths to data files
#' @param dir_path path to directory where workpackage files are stored locally
#'
#' @return updated deposits client
#' @export
#'
#' @examples
create_zenodo_deposit <- function(cli,metadata_dcmi_complete, file_paths,dir_path){
  
  
  ## populate descriptive metadata for zenodo

  cli$deposit_fill_metadata(metadata = metadata_dcmi_complete)
  
  cli$deposit_new(prereserve_doi = TRUE)
  
  ## add resources - adds everything in dir_path
  cli$deposit_add_resource(path = dir_path)

  #upload files  
  cli$deposit_upload_file(path = dir_path)
  
  # expand structural metadata
  walk_expand_frictionless_metadata(file_paths,dir_path)
  
  # update structural metadata - has to be done in this order or datapackage.json is re-written on upload
  
  cli$deposit_update(path = dir_path)
  
  return(cli)
  
}
  
```

and updating a deposit might look something like:

```R
update_zenodo_deposit <- function(cli, metadata_updated,metadata_dcmi_complete, file_paths, dir_path){
  
  
  ## retrieve the deposit
  print("getting deposit from id")
  cli$deposit_retrieve(as.integer(metadata_updated$deposit_id))
  
  data_package_path <- sprintf("%s/datapackage.json",dir_path)
  
  ## update descriptive metadata
  ## don't need to walk over this because there is only one set of descriptive for the data package
  ## metadata for the deposit
  print("updating descriptive metadata")
  ohcleandat::update_frictionless_metadata(descriptive_metadata = metadata_dcmi_complete,
                                           data_package_path = data_package_path
  )
  
  cli$deposit_fill_metadata(metadata_dcmi_complete)
  
  ## expand metadata
  print("expanding metadata")
  walk_expand_frictionless_metadata(file_paths,dir_path)
  
  ## update the deposit
  print("updating deposit")
  cli$deposit_upload_file(path = dir_path)
  
  
  print("returning cli")
  return(cli)
}
```

We can even keep our `deposits_metadata.csv` file updated using the `depositClient`.

```R
#' Update deposits metadata
#' 
#' Find workpackage titles that match deposit titles 
#' 
#' @param cli deposits Client
#' @param metadata_formatted dataframe of formatted descriptive metadata
#' @return
#' @author Collin Schwantes
#' @export
update_zenodo_metadata <- function(cli, metadata_formatted) {

  df_doi_id <- purrr::map_df(metadata_formatted$title , function(x){
        
      df <- data.frame(identifier = NA_character_, deposit_id = NA_character_)
    
      deposits_found <- cli$deposits |>
      dplyr::filter(title == x) |> 
      dplyr::select(title, id, doi)
    
    if(nrow(deposits_found) == 0){
      message("No matching items found")
      return(df)
    }
      
    if(nrow(deposits_found) > 1){
      warning("clean up your deposits?")
      return(df)
    }
      
      df$identifier <- as.character(deposits_found$doi)
      df$deposit_id <- as.character(deposits_found$id)
    
      return(df)
  })
  
  
  metadata_formatted$identifier<- df_doi_id$identifier
  metadata_formatted$deposit_id<- df_doi_id$deposit_id

  return(metadata_formatted)
}
```
We can create many deposits with good descriptive metadata, extend the structural metadata, and keep out deposits_metadata.csv up to date using deposits, ohcleandat, and a little dplyr. 

## Potential pain points

1) Some of the more complex DCMI terms require nested lists with very particular structures. 
This can be hard to reason about if you're not super familiar with [JSON](https://eloquentjavascript.net/04_data.html) or how the [jsonlite](https://arxiv.org/abs/1403.2805) package converts json to R objects. 
Mark provides good examples of constructing the `creator` objects in the deposits documentation. 
Even if you are a JSON wizard,
the [entities documentation](https://developers.zenodo.org/#entities) in the Zenodo API is super helpful.  
2) Metadata errors can feel a little cryptic until you get a better understanding of [JSON validation](https://cran.rstudio.com/web/packages/jsonvalidate/vignettes/jsonvalidate.html) and stare at the [deposits json schema](https://github.com/ropenscilabs/deposits/blob/main/inst/extdata/dc/schema.json) for a minute or two. 
3) Collaboration can be challenging because drafts have to be manually shared in Zenodo.  `¯\_(ツ)_/¯`. 


## Conclusions

We were able put the deposits package through the wringer with the RVF2 project and it performed extremely well.
The deposits package is great for making and managing a collection of Zenodo deposits.
It takes a second to get the hang of the `R6` object oriented structure and JSON data validation, but once you do, the thoughtful package design results in a smooth workflow whether you're updating a single deposit or a large batch.   

<pre class="mermaid">
flowchart LR
    accTitle: Expanded diagram of data deposition workflow
    accDescr {
        Deposit and creator metadata files are ingested into targets along with all the files for a set workpackages that will be stored in Zenodo. 
        Those files are manipulated in targets to create or update a valid deposit. 
        Finaly the deposit is  pushed to Zenodo and the deposit metadata csv is updated with digital object identifiers and a zenodo deposit identifier. 
        }
    A[Deposit Metadata CSV] --> G[ETL in targets]
    B[Creator Metadata CSV] --> G
    C[Workpackage Files]  --> G
    G --> H{Zenodo}
    G ---> A
</pre>
