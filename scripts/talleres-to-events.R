# Convert scripts/talleres.csv (champions program workshops in Spanish)
# into event files in content/events/ (issue #1373).
# Run from the repository root: Rscript scripts/talleres-to-events.R
#
# - A row without a title is another session of the workshop above it;
#   "Encuentro N" rows of the same workshop are merged too.
# - Yanina Bellini Saibene co-teaches the workshops of Maëlle Salmon.
# - Times in the CSV are in UTC-3; event files use UTC.
# - A training event file with the same start date is overwritten,
#   keeping the summary of its resources.

talleres <- read.csv(
  "scripts/talleres.csv",
  encoding = "UTF-8",
  stringsAsFactors = FALSE,
  check.names = FALSE
)
names(talleres) <- c("title", "instructor", "material", "date", "time")
talleres[] <- lapply(talleres, trimws)

# Group sessions into workshops ----
talleres$title <- sub(" - Encuentro [0-9]+$", "", talleres$title)
for (i in seq_len(nrow(talleres))[-1]) {
  if (talleres$title[i] == "") {
    talleres$title[i] <- talleres$title[i - 1]
  }
}
talleres$workshop <- cumsum(
  c(TRUE, talleres$title[-1] != talleres$title[-nrow(talleres)])
)

# Times, from UTC-3 to UTC ----
parse_time <- function(date, time) {
  as.POSIXct(paste(date, time), format = "%d/%m/%Y %H:%M", tz = "Etc/GMT+3")
}
hours <- regmatches(talleres$time, gregexpr("[0-9]{2}:[0-9]{2}", talleres$time))
if (any(lengths(hours) != 2) || !all(grepl("UTC ?-3$", talleres$time))) {
  stop("Unexpected format in the Hora column, expected '09:00 a 11:00 UTC-3'.")
}
talleres$start <- parse_time(talleres$date, vapply(hours, `[`, "", 1))
talleres$end <- parse_time(talleres$date, vapply(hours, `[`, "", 2))
format_utc <- function(x) format(x, "%Y-%m-%dT%H:%M:%S", tz = "UTC")

# Helpers ----
slugify <- function(x) {
  x <- iconv(x, "UTF-8", "ASCII//TRANSLIT")
  x <- tolower(gsub("[^A-Za-z0-9]+", "-", x))
  gsub("^-|-$", "", x)
}
yaml_quote <- function(x) sprintf("'%s'", gsub("'", "''", x))
enumerate <- function(x) {
  if (length(x) == 1) return(x)
  paste(paste(x[-length(x)], collapse = ", "), "y", x[length(x)])
}

existing_training_file <- function(date) {
  candidates <- list.files(
    "content/events",
    pattern = sprintf("^%s-.*\\.md$", date),
    full.names = TRUE
  )
  is_training <- vapply(
    candidates,
    function(path) any(readLines(path, encoding = "UTF-8") == "training: true"),
    logical(1)
  )
  candidates[is_training]
}

# One file per workshop ----
for (sessions in split(talleres, talleres$workshop)) {
  sessions <- sessions[order(sessions$start), ]
  title <- sprintf("%s (capacitación para campeones)", sessions$title[1])
  instructors <- unique(sessions$instructor[sessions$instructor != ""])
  if ("Maëlle Salmon" %in% instructors) {
    instructors <- unique(append(
      instructors,
      "Yanina Bellini Saibene",
      after = match("Maëlle Salmon", instructors)
    ))
  }
  urls <- unique(sessions$material[grepl("^https?://", sessions$material)])
  start_date <- format(sessions$start[1], "%Y-%m-%d")
  date_end <- format_utc(sessions$end[nrow(sessions)])

  description <- if (nrow(sessions) == 1) {
    ""
  } else {
    sprintf(
      "Taller en %d sesiones: %s.",
      nrow(sessions),
      enumerate(format(sessions$start, "%d/%m"))
    )
  }

  existing <- existing_training_file(start_date)
  if (length(existing) > 1) {
    stop("Several training events on ", start_date, ": ", toString(existing))
  }
  existing_summary <- if (length(existing) == 1) {
    grep("^    summary: ", readLines(existing, encoding = "UTF-8"), value = TRUE)
  } else {
    character(0)
  }

  resources <- if (length(urls) > 0) {
    c(
      "resources: # can be added later, one entry per talk (don't add while still empty, add once there are resources)",
      unlist(lapply(urls, function(url) c(
        sprintf("  - title: %s", yaml_quote(title)),
        sprintf("    speaker: %s", paste(instructors, collapse = ", ")),
        sprintf("    slides: %s", url),
        "    language: es",
        existing_summary
      )))
    )
  } else {
    message("No URL for the material of ", dQuote(sessions$title[1], FALSE), ", no resources added.")
    if (length(existing_summary) > 0) {
      message("The summary in ", existing, " is lost, add it back by hand.")
    }
    NULL
  }

  lines <- c(
    "---",
    sprintf("title: %s", yaml_quote(title)),
    "training: true",
    sprintf("dateStart: '%s'", format_utc(sessions$start[1])),
    sprintf("dateEnd: '%s'", date_end),
    sprintf("date: %s # UTC!! same as dateEnd", date_end),
    sprintf("description: %s", if (description == "") '""' else yaml_quote(description)),
    "location: 'online'",
    "eventlang: Español",
    'country: "🌐" # emoji',
    "ropensci: true",
    "outputs: ",
    "- HTML",
    "- Calendar ",
    "tags: ",
    "  - champions program",
    "author:",
    sprintf("  - %s", instructors[1]),
    "attendees:",
    sprintf("  - %s", instructors),
    resources,
    "---",
    ""
  )

  path <- if (length(existing) == 1) {
    existing
  } else {
    file.path("content/events", sprintf("%s-%s.md", start_date, slugify(sessions$title[1])))
  }
  message(if (length(existing) == 1) "Overwrote " else "Wrote ", path)
  writeLines(enc2utf8(lines), path, useBytes = TRUE)
}
