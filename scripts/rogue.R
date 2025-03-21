library("rlang")

find_doi <- function(url) {
  
  if (grepl("-salmon/$", url)) {
    return("10.59350/w7s82-a2377")
  }
  
  if (url == "https://ropensci.org/es/blog/2024/03/11/r_open_sci_dev_guide_0_9_0_ahora_multilingüe_y_mejor/") {
    return("10.59350/sce7g-vhp14 ")
  }
  
  if (url == "https://ropensci.org/blog/2022/08/09/working-with-qualtrics-data-excluding/") {
    return("10.59350/6j9e7-fr071 ")
  }
  
  if (url == "https://ropensci.org/blog/2023/05/18/ropensci-champions-program-teams-meet-césar-and-marc/") {
    return("10.59350/65508-xdy47 ")
  }
  
  if (url == "https://ropensci.org/es/blog/2023/09/26/cómo_traducir_una_entrada_de_blog_de_hugo_con_babeldown/") {
    return("10.59350/jwd37-v2p92 ")
  }
  
  result <- httr2::request(
    glue::glue(
      "https://rogue-scholar.org/api/records?q=metadata.identifiers.identifier:%22{url}%22"
      )
  ) |>
    httr2::req_perform() |>
    httr2::resp_body_json()
  
  return(result$hits$hits[[1]]$pids$doi$identifier)
}

get_lang_urls <- function(lang) {
  local_sitemap <- withr::local_tempfile()
  curl::curl_download(
    sprintf("https://ropensci.org/%s/sitemap.xml", lang), 
    local_sitemap
  )
  sitemap <- xml2::read_xml(local_sitemap)
  xml2::xml_ns_strip(sitemap)
  xml2::xml_find_all(sitemap, ".//loc") |>
    xml2::xml_text()
}
langs <- c("en", "es", "fr", "pt", "tr")
urls <- unlist(
  purrr::map(langs, get_lang_urls)
)

fixit <- function(post, urls = urls) {
  lines <- brio::read_lines(post)
  where_meta <- grep("---", lines)[1:2]
  yaml <- yaml::yaml.load(lines[(where_meta[1] + 1):(where_meta[2] - 1)])
  
  date <- gsub("-", "/", yaml[["date"]])
  date <- sub("T..\\:.*", "", date)
  file_slug <- sub(sprintf("content/blog/%s-", date), "", post)
  file_slug <- sub("\\/_index.md", "", file_slug)
  file_slug <- sub("\\.md", "", file_slug)
  slug <- yaml[["slug"]] %||% file_slug
  
  if (grepl("index\\...\\.md", fs::path_file(post))) {
    lang <- sub("index\\.", "", sub("\\.md", "", fs::path_file(post)))
    if (lang %in% c("pt", "tr")) {
      message(post)
      return(NULL)
    }
    if (lang == "en") {
      url <- sprintf("https://ropensci.org/blog/%s/%s/", date, tolower(slug))
    } else {
      url <- sprintf("https://ropensci.org/%s/blog/%s/%s/", lang, date, tolower(slug))
    }
    
  } else {
    url <- sprintf("https://ropensci.org/blog/%s/%s/", date, tolower(slug))
    url <- sub("ë", "%C3%AB", url)
  }
  
  if (! url %in% c(urls, "https://ropensci.org/es/blog/2024/03/11/r_open_sci_dev_guide_0_9_0_ahora_multilingüe_y_mejor/", "https://ropensci.org/blog/2023/05/18/ropensci-champions-program-teams-meet-césar-and-marc/", "https://ropensci.org/es/blog/2023/09/26/cómo_traducir_una_entrada_de_blog_de_hugo_con_babeldown/")) {
    browser()
  }
  
  doi <- find_doi(url)
  
  if ("params" %in% names(yaml)) {
    lines <- append(
      lines, 
      values = sprintf('  doi: "%s"', doi),
      after = where_meta[2] - 1
    )
  } else {
    lines <- append(
      lines, 
      values = c("params:", sprintf('  doi: "%s"', doi)),
      after = where_meta[2] - 1
    )
  }
  
  brio::write_lines(lines, post)
}

posts <- fs::dir_ls(
  path = "content/blog",
  glob = "*.md",
  recurse = TRUE
)
posts <- setdiff(
  posts, 
  c("content/blog/_index.md",  "content/blog/2021-02-03-targets/raw_data_source.md", "content/blog/2021-02-03-targets/README.md")
)

purrr::walk(posts, fixit, urls = urls)