---
title: "Filtering pdfs using RegEx in their body"
reporter: "Augustus Pendleton"
date: 2020-06-25
resource: "[pdftools](https://docs.ropensci.org/pdftools)"
original_url: "https://discuss.ropensci.org/t/filtering-pdfs-using-regex-in-their-body/2150"
language: English
---

#### rOpenSci package or resource used*
pdftools

#### What did you do? 
I used pdftools to scan a large number of pdfs from a folder, and then stringr::str_which() to search the body of each pdf for any RegEx expression you want. Pdfs with matching RegEx expressions are saved in a new folder of your choosing.


#### URL or code snippet for your use case*
pdf_selector<-function(file_folder,new_folder,search_pattern){
  library(pdftools)
  library(tidyverse)
  setwd(file_folder)
  dir.create(new_folder)
  filenames<-list.files(file_folder,pattern="*.pdf",full.names=TRUE)
  pdfs<-lapply(filenames,pdf_text)%>%
    lapply(paste,sep=" ",collapse=" ")
  l<-lapply(pdfs,str_which,pattern=search_pattern)%>%
    as.logical()%>%
    replace_na(FALSE)
  sapply(filenames[l],file.copy,to=new_folder)
}

#file_folder is the directory to folder containing the pdfs you want to search, as a string
#new_folder is the name of the new folder you want to make with your filtered pdfs, as a string
#search_pattern is the RegEx expression you want to search for, as a string
#Make sure to set your working directory to contain the pdf-containing folder, or include the full directory path in your file_folder argument

#### Sector
academic


#### Field(s) of application 
social science, qualitative science, meta-analysis



