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
usecases_ids <- usecases_ids[usecases_ids >= 1629]

get_info <- function(id) {
  message(id)
  Sys.sleep(2)
  topic <- discgolf::topic(id)
  post_id <- topic$post_stream$posts$id[1]
  post <- discgolf::post_get(post_id)
  
  text <- xml2::read_html(
      post$cooked
  )
  
  resource <- gsub(
    ", $", "",
    gsub(
    "\\\n", ", ",
    xml2::xml_text(
  xml2::xml_find_first(
    # https://stackoverflow.com/questions/60137188/xpath-picking-div-after-h4-with-specific-text
    text, '//h4[contains(text(), "used")]/following-sibling::*[1]'
    )
  )))
  
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
  
  list(title = topic$title,
       tags = topic$tags,
       resource = toString(resource),
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
