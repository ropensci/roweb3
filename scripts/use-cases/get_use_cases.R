old_use_cases <- jsonlite::read_json(
  file.path("data", "usecases", "usecases-legacy.json")
)
use_cases_path <- file.path("data", "usecases", "usecases.json")


discussions <- gh::gh(
  "GET /repos/ropensci/discussions/discussions",
  .limit = Inf
)

handle_discussion <- function(discussion) {
  body <- discussion[["body"]] |>
    commonmark::markdown_xml() |>
    xml2::read_xml() |>
    xml2::xml_ns_strip()

  resource <- xml2::xml_find_first(
    body,
    "//heading[contains(., 'resource') or contains(., 'recurso')]/following-sibling::paragraph"
  ) |>
    xml2::xml_text()

  url <- xml2::xml_find_first(
    body,
    "//heading[contains(., 'URL')]/following-sibling::paragraph"
  ) |>
    xml2::xml_text() |>
    trimws()
  not_single_url <- grepl(" ", url)
  if (not_single_url) {
    url <- discussion[["html_url"]]
  }

  image <- xml2::xml_find_first(
    body,
    "//heading[contains(., 'Image') or contains(., 'Imagen')]/following-sibling::paragraph"
  ) |>
    xml2::xml_child() |>
    xml2::xml_attr("destination")
  image_path <- file.path(
    "themes",
    "ropensci",
    "assets",
    "usecases",
    sprintf("use-case-%s", discussion$number)
  )

  if (!is.na(image)) {
    curl::curl_download(
      image,
      image_path
    )
  }
  image_info <- magick::image_read(image_path) |>
    magick::image_info()
  image_ext <- tolower(image_info[1, ][["format"]])
  new_image_path <- fs::path_ext_set(image_path, sprintf(".%s", image_ext))
  fs::file_move(
    image_path,
    new_image_path
  )

  alt <- xml2::xml_find_first(
    body,
    "//heading[contains(., 'Alt') or contains(., 'alternativo')]/following-sibling::paragraph"
  ) |>
    xml2::xml_text()

  language <- xml2::xml_find_first(
    body,
    "//heading[contains(., 'Language') or contains(., 'Idioma')]/following-sibling::paragraph"
  ) |>
    xml2::xml_text()

  language <- sub("Español", "Spanish", language)
  language <- sub("Inglés", "English", language)

  title <- discussion[["title"]]

  reporter_name <- gh::gh(
    "GET /users/{user}",
    user = discussion$user$login
  )$name
  reporter <- sprintf("[%s](%s)", reporter_name, discussion$user$html_url)

  date <- as.Date(discussion$created_at)
  list(
    title = title,
    reporter = reporter,
    resource = resource,
    url = url,
    image = fs::path_file(new_image_path),
    alt = alt,
    date = date,
    language = language,
    body = discussion$body
  )
}

use_cases <- purrr::map(discussions, handle_discussion)
use_cases <- c(old_use_cases, use_cases)

jsonlite::write_json(
  use_cases,
  use_cases_path,
  auto_unbox = TRUE,
  pretty = TRUE
)
