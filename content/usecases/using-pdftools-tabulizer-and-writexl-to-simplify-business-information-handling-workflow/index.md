---
title: "Using pdftools, tabulizer, and writexl to simplify business information handling workflow"
reporter: "David Hood"
date: 2019-08-27
resource: "[pdftools](https://docs.ropensci.org/pdftools), tabulizer, [writexl](https://docs.ropensci.org/writexl)"
original_url: "https://discuss.ropensci.org/t/using-pdftools-tabulizer-and-writexl-to-simplify-business-information-handling-workflow/1815"
language: English
---

Providing a script for a workflow to liberate the contents of PDFs

#### Packages used
[pdftools](https://github.com/ropensci/pdftools), [tabulizer](https://github.com/ropensci/tabulizer), [writexl](https://github.com/ropensci/writexl)


#### Code Snippet

They have a script which, when they hit the source button, opens a select file dialog box and they pick the pdf, then it saves a word document with the full text, and an excel file of one sheet per table, in the same directory. they also have the option of coming on some R courses I regularly run if they want to start working with the information inside of R.

    library(officer)
    library(pdftools)
    library(tabulizer) #needs JDK installed
    library(writexl)

    target <- file.choose()
    target_no_suffix <- gsub("\\.pdf$","", target, ignore.case = TRUE)
    PDFtext <- pdf_text(target) #pdf_tools
    #a character array for each page, want paragraphs for officer
    PDFparas <- unlist(strsplit(PDFtext, "\n"))
    PDFextracted <-  extract_tables(target) #tabulizer
    # 1 character matrix per table, want dataframes for writexl
    PDFtables <- lapply(extracted,as.data.frame, stringsAsFactors=FALSE)
    write_xlsx(PDFtables, paste0(target_no_suffix, "_excel.xlsx"), col_names=FALSE) #writexl
    #officer word making code
    my_doc <- read_docx()
    for (scannedpage in PDFparas){
      my_doc <- body_add_par(my_doc, scannedpage)
    }
    print(my_doc, target = paste0(target_no_suffix,"_word.docx"))

#### Sector
industry

#### Field(s) of application 
workflows, compliance, document handling


#### What did you do? 

The finance people where I work told me they have a workflow bottleneck with receiving statements as pdfs and being unable to free up the information in them to make checking easier as Acrobat's save as Excel can't really cope with the kind they are receiving and, at a bare minimum, being able to sort the information on the statements into a convenient order would save them at hundreds of hours a year (at the moment they are printing them out and then cross checking and ticking off the paper copy).

This is an example of introducing R to a previously unused area, not as a replacement for Excel, but to solve a specific workflow bottleneck. R is being their helpful friend within their present needs.

