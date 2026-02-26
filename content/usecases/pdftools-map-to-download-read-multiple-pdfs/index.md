---
title: "pdftools + map to download & read multiple pdfs"
reporter: "Silvia Gutiérrez"
date: 2021-07-15
resource: "[pdftools](https://docs.ropensci.org/pdftools)"
original_url: "https://discuss.ropensci.org/t/pdftools-map-to-download-read-multiple-pdfs/2545"
language: [English]
---

#### rOpenSci package or resource used
[pdftools](https://docs.ropensci.org/pdftools/)

other important packages:

purrr and glue
#### What did you do?
I wrote code snippet that shows how to 
- create a list of URLs with glue::glue
- download multiple pdfs using purrr::walk2 
- read them all with purrr::map & pdftools::pdf_text

#### URL or code snippet for your use case
[Github code](https://github.com/ColmexBDCV/tricks_for_librarians/blob/30e2cbb8d12d18e70906b57b1d44f0bdcf55f2a8/RCode/pdftools-y-tesseract/purrr-y-pdftools_demo.R)

#### Sector
academic / non-profit 

#### Field(s) of application
humanities and any other field interested in downloading


