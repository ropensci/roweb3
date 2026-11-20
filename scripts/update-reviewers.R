# Update data/reviewers/reviewers.json, the list of software peer reviewers
# shown on the software-review page, from the reviews table in Airtable.
# Run from the repository root: Rscript scripts/update-reviewers.R
# Runs weekly in .github/workflows/update-reviewers.yml, which opens a PR.
#
# Environment variables:
# - AIRTABLE_ID: the ID of the Airtable base ("app...").
# - AIRTABLE_API_KEY: an Airtable personal access token that can read it.
# - GITHUB_PAT (optional locally, as gh finds your Git credentials).
#
# - The reviewer field of the reviews table links to the reviewers table,
#   which holds the GitHub logins.
# - Rows without a review URL (pending reviews) are skipped.
# - The review date is the Airtable date or, if empty, the date of the
#   review comment on GitHub. Dates are reused from the existing JSON
#   so that only new reviews need a GitHub API call.
# - Names are fetched from GitHub profiles on every run, never reused from
#   the existing JSON: people change their names, and an old name could
#   deadname someone. Without a profile name, the GitHub login is shown.

# Airtable table and field names ----
reviews_table <- "reviews"
reviews_fields <- c(
  reviewer = "github",
  review_url = "review_url",
  date = "review_date"
)
reviewers_table <- "reviewers-prod"
reviewers_fields <- c(github = "github")

output_path <- "data/reviewers/reviewers.json"

# Airtable records ----
airtable_id <- Sys.getenv("AIRTABLE_ID")
airtable_key <- Sys.getenv("AIRTABLE_API_KEY")
if (!nzchar(airtable_id) || !nzchar(airtable_key)) {
  stop("Set the AIRTABLE_ID and AIRTABLE_API_KEY environment variables.")
}

table_not_found <- function(table) {
  function(e) {
    stop(
      sprintf(
        "Airtable table %q not found (or not readable with this token). Update the table names at the top of scripts/update-reviewers.R.",
        table
      ),
      call. = FALSE
    )
  }
}

fetch_records <- function(table) {
  records <- list()
  offset <- NULL
  repeat {
    response <- httr2::request("https://api.airtable.com/v0") |>
      httr2::req_url_path_append(airtable_id, table) |>
      httr2::req_url_query(pageSize = 100, offset = offset) |>
      httr2::req_auth_bearer_token(airtable_key) |>
      httr2::req_retry(max_tries = 3) |>
      httr2::req_perform() |>
      tryCatch(
        httr2_http_403 = table_not_found(table),
        httr2_http_404 = table_not_found(table)
      ) |>
      httr2::resp_body_json()
    records <- c(records, response$records)
    offset <- response$offset
    if (is.null(offset)) break
  }
  message(length(records), " rows in the Airtable table ", table)
  records
}

# Airtable leaves empty fields out of each record:
# a field absent from all records is probably misnamed.
check_fields <- function(records, fields, table) {
  seen_fields <- unique(unlist(lapply(records, \(record) names(record$fields))))
  missing_fields <- setdiff(fields, seen_fields)
  if (length(missing_fields) > 0) {
    stop(
      sprintf(
        "Field(s) %s not found in the Airtable table %s. Fields found: %s. Update the field names at the top of scripts/update-reviewers.R.",
        toString(missing_fields),
        table,
        toString(sort(seen_fields))
      ),
      call. = FALSE
    )
  }
}

# Linked records and lookup fields come as lists: keep the first value.
field_value <- function(record, field) {
  value <- unlist(record$fields[[field]])
  if (length(value) == 0) "" else trimws(as.character(value[[1]]))
}

review_records <- fetch_records(reviews_table)
check_fields(review_records, reviews_fields, reviews_table)
reviewer_records <- fetch_records(reviewers_table)
check_fields(reviewer_records, reviewers_fields, reviewers_table)

login_by_record_id <- setNames(
  vapply(reviewer_records, field_value, "", reviewers_fields[["github"]]),
  vapply(reviewer_records, `[[`, "", "id")
)
reviewer_ids <- vapply(
  review_records,
  field_value,
  "",
  reviews_fields[["reviewer"]]
)

reviews <- data.frame(
  github = unname(ifelse(
    reviewer_ids %in% names(login_by_record_id),
    login_by_record_id[reviewer_ids],
    ""
  )),
  review_url = vapply(
    review_records,
    field_value,
    "",
    reviews_fields[["review_url"]]
  ),
  date = vapply(review_records, field_value, "", reviews_fields[["date"]])
)

# Clean the reviews ----
# Review URLs come in several shapes, e.g. "[<review-url>](https://...)"
# or with trailing characters: keep the comment URL itself.
comment_url_pattern <- "https://github\\.com/[^/]+/[^/]+/issues/[0-9]+#issuecomment-[0-9]+"
url_match <- regexpr(comment_url_pattern, reviews$review_url)
reviews$review_url <- ifelse(
  url_match > 0,
  substring(
    reviews$review_url,
    url_match,
    url_match + attr(url_match, "match.length") - 1
  ),
  ""
)

no_login <- reviews$github == "" & reviews$review_url != ""
if (any(no_login)) {
  warning(
    "Review(s) without a reviewer GitHub login in Airtable, skipped: ",
    toString(reviews$review_url[no_login]),
    call. = FALSE
  )
}
reviews <- reviews[reviews$github != "" & reviews$review_url != "", ]
reviews$github <- sub("^@", "", reviews$github)
if (any(grepl("^rec[A-Za-z0-9]{14}$", reviews$github))) {
  stop(sprintf(
    "The field %s of the Airtable table %s contains record IDs (linked records), not GitHub logins. Update the field names at the top of scripts/update-reviewers.R.",
    reviewers_fields[["github"]],
    reviewers_table
  ))
}
reviews <- reviews[
  !duplicated(data.frame(tolower(reviews$github), reviews$review_url)),
]

# Airtable dates may come with a time: keep the day.
reviews$date <- substr(reviews$date, 1, 10)

# Dates ----
known_dates <- character()
if (file.exists(output_path)) {
  for (reviewer in jsonlite::read_json(output_path)) {
    for (review in reviewer$reviews) {
      known_dates[[review$url]] <- review$date
    }
  }
}

comment_date <- function(review_url) {
  parts <- regmatches(
    review_url,
    regexec(
      "github\\.com/([^/]+)/([^/]+)/issues/[0-9]+#issuecomment-([0-9]+)",
      review_url
    )
  )[[1]]
  comment <- tryCatch(
    gh::gh(
      "GET /repos/{owner}/{repo}/issues/comments/{comment_id}",
      owner = parts[[2]],
      repo = parts[[3]],
      comment_id = parts[[4]]
    ),
    error = function(e) NULL
  )
  if (is.null(comment)) "" else substr(comment$created_at, 1, 10)
}

for (i in which(reviews$date == "")) {
  url <- reviews$review_url[[i]]
  reviews$date[[i]] <- if (url %in% names(known_dates)) {
    known_dates[[url]]
  } else {
    comment_date(url)
  }
}

no_date <- reviews$date == ""
if (any(no_date)) {
  warning(
    "Review(s) without a date in Airtable whose GitHub comment could not be found, skipped: ",
    toString(reviews$review_url[no_date]),
    call. = FALSE
  )
}
reviews <- reviews[!no_date, ]

# Names ----
profile_name <- function(login) {
  profile <- tryCatch(
    gh::gh("GET /users/{username}", username = login),
    error = function(e) NULL
  )
  name <- trimws(profile$name %||% "")
  if (nzchar(name)) name else login
}

reviewer_keys <- unique(tolower(reviews$github))
reviewers <- lapply(reviewer_keys, function(key) {
  own_reviews <- reviews[tolower(reviews$github) == key, ]
  own_reviews <- own_reviews[order(own_reviews$date, own_reviews$review_url), ]
  login <- own_reviews$github[[1]]
  list(
    github = login,
    name = profile_name(login),
    reviews = lapply(seq_len(nrow(own_reviews)), function(i) {
      list(url = own_reviews$review_url[[i]], date = own_reviews$date[[i]])
    })
  )
})

# Sort by name, ignoring case and accents ----
sort_key <- function(x) tolower(iconv(x, "UTF-8", "ASCII//TRANSLIT", sub = ""))
names_and_logins <- vapply(
  reviewers,
  \(r) paste(sort_key(r$name), tolower(r$github)),
  ""
)
reviewers <- reviewers[order(names_and_logins, method = "radix")]

dir.create(dirname(output_path), showWarnings = FALSE, recursive = TRUE)
jsonlite::write_json(reviewers, output_path, auto_unbox = TRUE, pretty = TRUE)
message(
  length(reviewers),
  " reviewers, ",
  nrow(reviews),
  " reviews written to ",
  output_path
)
