library("magrittr")

# install github.com/sckott/discgolf
# read setup docs
usecases <- discgolf::category_latest_topics("usecases", page = NULL)

get_ids <- function(list) {
  list$topic_list$topics$id
}
usecases_ids <- unlist(lapply(usecases, get_ids))
length(usecases_ids)
# remove intro and others
usecases_ids <- usecases_ids[!usecases_ids %in% c(33, # intro
                                                  2092, # jsonlite
                                                  2129, # ochRe
                                                  2053, # tradestatistics dashboard
                                                  1667, # post by Scott not an use case
                                                  0)]
# only keep the ones after the template was defined
usecases_ids <- usecases_ids[usecases_ids >= 1629] %>% 
  sort()
.get_packages <- function() {
  "https://raw.githubusercontent.com/ropensci/roregistry/gh-pages/packages.json" %>%
  jsonlite::read_json() %>%
  purrr::map_chr("package")
}
get_packages <- memoise::memoise(.get_packages)

link_resource <- function(resource, packages = get_packages()) {
  resource <- trimws(resource)
  resource <- sub("\\.$", "", resource)
  if (resource %in% packages) {
    return(sprintf("[%s](https://docs.ropensci.org/%s)", resource, resource))
  }
  if (resource == "rOpenSci package development guide book") {
    return("[rOpenSci package development guide book](https://devguide.ropensci.org)")
  }
  if (resource == "rOpenSci contributing guide book") {
    return("[rOpenSci contributing guide book](https://contributing.ropensci.org)")
  }
  if (resource == "rOpenSci blog guide book") {
    return("[rOpenSci blog guide book](https://blogguide.ropensci.org)")
  }
  if (resource == "HTTP testing in R book") {
    return("[HTTP testing in R book](https://books.ropensci.org/http-testing)")
  }
  return(resource)
}
get_info <- function(id, packages = packages) {
  message(id)
  Sys.sleep(2)
  topic <- discgolf::topic(id)
  post_id <- topic$post_stream$posts$id[1]
  post <- discgolf::post_get(post_id)
  
  text <- xml2::read_html(
      stringr::str_squish(post$cooked)
  )

  xml2::xml_remove(xml2::xml_find_all(text, "//h4/child::a"))
  h4s <- xml2::xml_find_all(text, "//h4")
  h4 <- h4s[grepl("used", xml2::xml_text(h4s))][1]
  if (length(h4) == 0) {
    resource <- NA
  } else {
    resource <- gsub(
    ", $", "",
    gsub(
    "\\\n", ", ",
    xml2::xml_text(
  xml2::xml_find_first(h4, "following-sibling::*[1]")
  ))) %>% toString()
  }
  
  if (!is.null(topic$image_url)) {
    image_url <- topic$image_url
    image <- paste0(topic$slug, ".", tools::file_ext(topic$image_url))
    
    download.file(image_url,
        file.path(
          "themes", 
          "ropensci", 
          "assets", 
          "usecases", 
          image
        )
      )
    
  } else {
    image = "noimage"
  }

  resource <- paste0(
    purrr::map_chr(strsplit(resource, ",")[[1]], link_resource),
    collapse = ", "
  )
  
  list(title = topic$title,
       reporter = topic$details$created_by$name,
       tags = topic$tags,
       resource = resource,
       url = paste0("https://discuss.ropensci.org/t/", topic$slug, "/", topic$id),
       image = image,
       date = as.character(as.Date(topic$created_at)))
}

topics <- purrr::map(usecases_ids, get_info)

jsonlite::write_json(
  topics, 
  file.path("data", "usecases", "usecases.json"),
  pretty = TRUE,
  auto_unbox = TRUE
  )
