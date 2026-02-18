---
title: "pdftools for extracting complex (e.g. text-wrapped/multiline) tables from pdfs"
reporter: "Lizlaw"
date: 2021-01-26
resource: "[pdftools](https://docs.ropensci.org/pdftools)"
original_url: "https://discuss.ropensci.org/t/pdftools-for-extracting-complex-e-g-text-wrapped-multiline-tables-from-pdfs/2327"
language: English
---

Extracting a complex table from pdf using pdftools::pdf_data. Example uses a table spread over multiple pages, and containing multiple(text-wrapped) lines per cell, and left and centre justified cell entries. 

#### rOpenSci package or resource used*
[pdftools](https://docs.ropensci.org/pdftools)

#### What did you do? 
Extraction of complex tables from a pdf document, based on data extracted by pdftools::pdf_data(). Example has a table spread over multiple pages, and text wrapping across multiple lines per cell. 

Process is semi-automated: requires user to input, e.g. rules to clip text to the table, and identify useful points for identification of columns and rows. Code currently developed as an R script (including functions) with the intention to develop further into a package when I have time (or integrated into someone else's), see the readme file in the linked repository for updates. 

#### URL or code snippet for your use case*
[pdf2complextable](https://github.com/lizlaw/pdf2complextable)

#### Sector
academic / industry / government / non-profit / other

#### Field(s) of application 
Evidence synthesis, meta-analysis, data gathering in any discipline. Example is from ecology. 


