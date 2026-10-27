library(fs)

make_slug <- function(title) {
  title |>
    tolower() |>
    gsub("[^a-z0-9]+", "-", x = _) |>
    gsub("^-|-$", "", x = _)
}

clean_body <- function(body) {
  # Remove unwanted sections (Twitter handle/handler/handles, Comments)
  # by splitting into lines and dropping from heading to next heading or end
  lines <- strsplit(body, "\n")[[1]]
  skip <- FALSE
  keep <- character()
  for (line in lines) {
    is_heading <- grepl("^#{1,4}\\s", line)
    is_twitter <- grepl("twitter handle", line, ignore.case = TRUE)
    is_comments <- grepl("^#{1,4}\\s*Comments\\s*$", line)
    if (is_twitter || is_comments) {
      skip <- TRUE
      next
    }
    if (skip && is_heading) {
      skip <- FALSE
    }
    if (!skip) {
      keep <- c(keep, line)
    }
  }
  paste(keep, collapse = "\n")
}

create_use_case_page <- function(
  title,
  reporter,
  date,
  image_filename,
  alt = NA,
  resource,
  url,
  language,
  body,
  image_src = NULL
) {
  slug <- make_slug(title)
  dir <- file.path("content", "usecases", slug)

  # Skip if page already exists
  if (file.exists(file.path(dir, "index.md"))) {
    return(FALSE)
  }

  fs::dir_create(dir)

  # Build front matter
  image_line <- if (!is.na(image_filename) && image_filename != "noimage") {
    paste0("image: ", image_filename, "\n")
  } else {
    ""
  }
  alt_line <- if (!is.na(alt) && nchar(alt) > 0) {
    paste0("alt: ", encodeString(alt, quote = '"'), "\n")
  } else {
    ""
  }
  resource_line <- if (!is.na(resource) && nchar(resource) > 0) {
    paste0("resource: ", encodeString(resource, quote = '"'), "\n")
  } else {
    ""
  }
  url_line <- if (!is.na(url) && nchar(url) > 0) {
    paste0("original_url: ", encodeString(url, quote = '"'), "\n")
  } else {
    ""
  }
  front_matter <- paste0(
    "---\n",
    "title: ",
    encodeString(title, quote = '"'),
    "\n",
    "reporter: ",
    encodeString(reporter, quote = '"'),
    "\n",
    "date: ",
    date,
    "\n",
    image_line,
    alt_line,
    resource_line,
    url_line,
    "language: ",
    language,
    "\n",
    "---\n\n"
  )

  body <- clean_body(body)

  content <- paste0(front_matter, body, "\n")
  writeLines(content, file.path(dir, "index.md"))

  # Download or copy image
  if (
    !is.na(image_filename) && image_filename != "noimage" && !is.null(image_src)
  ) {
    dest <- file.path(dir, image_filename)
    if (grepl("^https?://", image_src)) {
      tryCatch(
        curl::curl_download(image_src, dest),
        error = function(e) message("Failed to download image: ", image_src)
      )
    } else if (file.exists(image_src)) {
      fs::file_copy(image_src, dest, overwrite = TRUE)
    } else {
      message("Image not found: ", image_src)
    }
  }

  TRUE
}

# --- Fetch new use cases from GitHub discussions ---
message("Fetching discussions from GitHub...")
discussions <- gh::gh(
  "GET /repos/ropensci/discussions/discussions",
  .limit = Inf
)

handle_discussion <- function(discussion) {
  slug <- make_slug(discussion$title)
  dir <- file.path("content", "usecases", slug)
  if (file.exists(file.path(dir, "index.md"))) {
    return(NULL)
  }

  body_xml <- discussion$body |>
    commonmark::markdown_xml() |>
    xml2::read_xml() |>
    xml2::xml_ns_strip()

  resource <- xml2::xml_find_first(
    body_xml,
    "//heading[contains(., 'resource') or contains(., 'recurso')]/following-sibling::paragraph"
  ) |>
    xml2::xml_text()

  url <- xml2::xml_find_first(
    body_xml,
    "//heading[contains(., 'URL')]/following-sibling::paragraph"
  ) |>
    xml2::xml_text() |>
    trimws()
  not_single_url <- grepl(" ", url)
  if (not_single_url) {
    url <- discussion$html_url
  }

  image_url <- xml2::xml_find_first(
    body_xml,
    "//heading[contains(., 'Image') or contains(., 'Imagen')]/following-sibling::paragraph"
  ) |>
    xml2::xml_child() |>
    xml2::xml_attr("destination")

  # Download image to a temp file to determine format
  image_filename <- NA
  image_src <- NULL
  if (!is.na(image_url)) {
    tmp <- tempfile()
    tryCatch(
      {
        curl::curl_download(image_url, tmp)
        image_info <- magick::image_read(tmp) |> magick::image_info()
        image_ext <- tolower(image_info[1, ][["format"]])
        image_filename <- sprintf(
          "use-case-%s.%s",
          discussion$number,
          image_ext
        )
        image_src <- tmp
      },
      error = function(e) {
        message("Failed to download image for: ", discussion$title)
      }
    )
  }

  alt <- xml2::xml_find_first(
    body_xml,
    "//heading[contains(., 'Alt') or contains(., 'alternativo')]/following-sibling::paragraph"
  ) |>
    xml2::xml_text()

  language <- xml2::xml_find_first(
    body_xml,
    "//heading[contains(., 'Language') or contains(., 'Idioma')]/following-sibling::paragraph"
  ) |>
    xml2::xml_text()
  language <- sub("Español", "Spanish", language)
  language <- sub("Inglés", "English", language)

  reporter_name <- gh::gh(
    "GET /users/{user}",
    user = discussion$user$login
  )$name
  reporter <- sprintf("[%s](%s)", reporter_name, discussion$user$html_url)

  date <- as.Date(discussion$created_at)

  create_use_case_page(
    title = discussion$title,
    reporter = reporter,
    date = date,
    image_filename = image_filename,
    alt = alt,
    resource = resource,
    url = url,
    language = language,
    body = discussion$body,
    image_src = image_src
  )
}

results <- purrr::map(discussions, handle_discussion)
created <- sum(purrr::map_lgl(results, isTRUE))
message("Created ", created, " new use case pages from GitHub discussions")
