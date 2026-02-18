library(jsonlite)
library(fs)

usecases <- fromJSON("data/usecases/usecases.json")

make_slug <- function(title) {
  title |>
    tolower() |>
    gsub("[^a-z0-9]+", "-", x = _) |>
    gsub("^-|-$", "", x = _)
}

for (i in seq_len(nrow(usecases))) {
  uc <- usecases[i, ]
  slug <- make_slug(uc$title)
  dir <- file.path("content", "usecases", slug)
  fs::dir_create(dir)

  # Build front matter
  image_line <- if (!is.na(uc$image) && uc$image != "noimage") {
    paste0("image: ", uc$image, "\n")
  } else {
    ""
  }
  resource_line <- if (!is.na(uc$resource) && nchar(uc$resource) > 0) {
    paste0("resource: ", encodeString(uc$resource, quote = '"'), "\n")
  } else {
    ""
  }
  url_line <- if (!is.na(uc$url) && nchar(uc$url) > 0) {
    paste0("original_url: ", encodeString(uc$url, quote = '"'), "\n")
  } else {
    ""
  }
  front_matter <- paste0(
    "---\n",
    "title: ", encodeString(uc$title, quote = '"'), "\n",
    "reporter: ", encodeString(uc$reporter, quote = '"'), "\n",
    "date: ", uc$date, "\n",
    image_line,
    resource_line,
    url_line,
    "language: ", uc$language, "\n",
    "---\n\n"
  )

  body <- uc$body

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
  body <- paste(keep, collapse = "\n")

  # Replace Discourse upload image links with local image filename
  if (!is.na(uc$image) && uc$image != "noimage") {
    body <- gsub("!\\[([^]]*)\\]\\(upload://[^)]+\\)", paste0("![\\1](", uc$image, ")"), body)
  }

  content <- paste0(front_matter, body, "\n")
  writeLines(content, file.path(dir, "index.md"))

  # Copy image if it exists
 if (!is.na(uc$image) && uc$image != "noimage") {
    src <- file.path("themes", "ropensci", "assets", "usecases", uc$image)
    if (file.exists(src)) {
      fs::file_copy(src, file.path(dir, uc$image), overwrite = TRUE)
    } else {
      message("Image not found: ", src)
    }
  }
}

message("Generated ", nrow(usecases), " use case pages")
