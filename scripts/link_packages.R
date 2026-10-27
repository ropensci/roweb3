library(jsonlite)

# Step 1: Build registry lookup
message("Fetching rOpenSci registry...")
registry_url <- "https://raw.githubusercontent.com/ropensci/roregistry/gh-pages/packages.json"
pkgs <- jsonlite::fromJSON(registry_url)$package
# lowercase -> canonical name lookup
pkg_lookup <- setNames(pkgs, tolower(pkgs))

make_link <- function(canonical) {
  sprintf("[%s](https://docs.ropensci.org/%s)", canonical, canonical)
}

# Apply fn to each regex match in a single string; return modified string.
# fn receives each matched substring, must return a single character.
gsub_fn <- function(pattern, fn, text, perl = TRUE) {
  m <- gregexpr(pattern, text, perl = perl)
  matches <- regmatches(text, m)[[1]]
  if (length(matches) == 0L) return(text)
  replacements <- vapply(matches, fn, character(1L))
  regmatches(text, m) <- list(replacements)
  text
}

# Split a single string into segments, marking protected regions that must not
# be modified: Markdown links [text](url), bare URLs, autolinks <url>,
# and backtick code spans `code`.
split_protected <- function(text) {
  protected_pattern <- paste(
    "\\[[^\\]]+\\]\\([^)]+\\)",  # [text](url) Markdown links
    "<https?://[^>]+>",           # <URL> autolinks
    "https?://[^\\s)<>\"]+",      # bare URLs
    "`[^`]+`",                    # `code` spans
    sep = "|"
  )
  m <- gregexpr(protected_pattern, text, perl = TRUE)[[1]]

  if (m[1L] == -1L) {
    return(list(list(text = text, is_protected = FALSE)))
  }

  lens <- attr(m, "match.length")
  segs <- list()
  prev <- 1L

  for (i in seq_along(m)) {
    start <- m[i]
    end <- start + lens[i] - 1L
    if (start > prev) {
      segs <- c(segs, list(list(text = substr(text, prev, start - 1L), is_protected = FALSE)))
    }
    segs <- c(segs, list(list(text = substr(text, start, end), is_protected = TRUE)))
    prev <- end + 1L
  }
  if (prev <= nchar(text)) {
    segs <- c(segs, list(list(text = substr(text, prev, nchar(text)), is_protected = FALSE)))
  }
  segs
}

join_segments <- function(segs) {
  paste(vapply(segs, `[[`, character(1L), "text"), collapse = "")
}

# Apply fn only to unprotected segments of text; return recombined string.
process_gaps <- function(text, fn) {
  segs <- split_protected(text)
  for (i in seq_along(segs)) {
    if (!segs[[i]]$is_protected) {
      segs[[i]]$text <- fn(segs[[i]]$text)
    }
  }
  join_segments(segs)
}

# Escape special regex metacharacters in a literal string.
regex_escape <- function(x) {
  gsub("([.^$*+?(){}|\\[\\]\\\\])", "\\\\\\1", x, perl = TRUE)
}

# Process the resource: field value.
# Returns list(text = new_value, matched = character vector of canonical names).
process_resource <- function(value, pkg_lookup) {
  matched <- character()

  # Pass A: update existing [text](url) links — if text is a known package,
  # rewrite to canonical URL.
  result <- gsub_fn(
    "\\[([^\\]]+)\\]\\([^)]+\\)",
    function(m) {
      link_text <- sub("^\\[([^\\]]+)\\].*", "\\1", m)
      lower <- tolower(link_text)
      if (lower %in% names(pkg_lookup)) {
        canonical <- pkg_lookup[[lower]]
        matched <<- c(matched, canonical)
        make_link(canonical)
      } else {
        m
      }
    },
    value
  )

  # Pass B1: {name} patterns in unprotected gaps.
  result <- process_gaps(result, function(gap) {
    gsub_fn(
      "\\{([A-Za-z][A-Za-z0-9.]*)\\}",
      function(m) {
        name <- sub("^\\{(.*)\\}$", "\\1", m)
        lower <- tolower(name)
        if (lower %in% names(pkg_lookup)) {
          canonical <- pkg_lookup[[lower]]
          matched <<- c(matched, canonical)
          make_link(canonical)
        } else {
          m
        }
      },
      gap
    )
  })

  # Pass B2: bare word tokens in unprotected gaps.
  # Dots excluded from token chars to avoid "targets." matching "targets".
  result <- process_gaps(result, function(gap) {
    gsub_fn(
      "[A-Za-z][A-Za-z0-9]*",
      function(m) {
        lower <- tolower(m)
        if (lower %in% names(pkg_lookup)) {
          canonical <- pkg_lookup[[lower]]
          matched <<- c(matched, canonical)
          make_link(canonical)
        } else {
          m
        }
      },
      gap
    )
  })

  list(text = result, matched = unique(matched))
}

# In a body line string, link bare occurrences of matched_pkgs without
# touching protected segments (existing links, URLs, code spans).
link_in_body <- function(line, matched_pkgs) {
  for (canonical in matched_pkgs) {
    esc <- regex_escape(canonical)

    # Replace {canonical} occurrences (case-insensitive).
    line <- process_gaps(line, function(gap) {
      gsub(
        sprintf("\\{%s\\}", esc),
        make_link(canonical),
        gap,
        ignore.case = TRUE,
        perl = TRUE
      )
    })

    # Replace bare word occurrences (word boundary, case-insensitive).
    bare_pattern <- sprintf("\\b%s\\b", esc)
    line <- process_gaps(line, function(gap) {
      gsub(bare_pattern, make_link(canonical), gap, ignore.case = TRUE, perl = TRUE)
    })
  }
  line
}

# Step 2+: Process each use case file
files <- list.files(
  "content/usecases",
  pattern = "^index\\.md$",
  recursive = TRUE,
  full.names = TRUE
)

message("Processing ", length(files), " use case files...")
changed <- 0L

for (filepath in files) {
  lines <- readLines(filepath, warn = FALSE)

  # Locate front matter delimiters (first two lines that are exactly "---")
  delims <- which(trimws(lines) == "---")
  if (length(delims) < 2L) next

  fm_start <- delims[1L] + 1L
  fm_end   <- delims[2L] - 1L
  body_start <- delims[2L] + 1L

  fm_lines   <- if (fm_start <= fm_end) lines[fm_start:fm_end] else character(0)
  body_lines <- if (body_start <= length(lines)) lines[body_start:length(lines)] else character(0)

  # Find the resource: line
  resource_idx <- grep("^resource:", fm_lines)
  if (length(resource_idx) == 0L) next

  resource_line <- fm_lines[resource_idx[1L]]
  value_raw <- sub("^resource:\\s*", "", resource_line)

  # Determine if the value was quoted and extract the raw value
  if (grepl('^".*"$', value_raw)) {
    resource_value <- sub('^"(.*)"$', "\\1", value_raw)
    was_quoted <- TRUE
  } else {
    resource_value <- trimws(value_raw)
    was_quoted <- FALSE
  }

  # Process the resource field
  res <- process_resource(resource_value, pkg_lookup)
  new_resource_value <- res$text
  matched_pkgs <- res$matched

  # Process the body: link matched packages in the package-heading section
  new_body_lines <- body_lines
  if (length(matched_pkgs) > 0L && length(body_lines) > 0L) {
    pkg_heading_idx <- grep(
      paste(
        # English variants: "Package used", "Packages used", "Package or resource used", etc.
        "^#{1,4}\\s+\\*?(rOpenSci\\s+)?[Pp]ackage[s]?(?:\\s+or\\s+resource[s]?)?\\s+used\\*?\\s*$",
        # Spanish: "Paquete o recurso rOpenSci utilizado"
        "^#{1,4}\\s+[Pp]aquete[s]?\\s+o\\s+recurso[s]?",
        sep = "|"
      ),
      body_lines,
      perl = TRUE
    )

    if (length(pkg_heading_idx) > 0L) {
      h_idx <- pkg_heading_idx[1L]

      # Find the next heading after h_idx
      all_headings <- grep("^#{1,4}\\s", body_lines)
      next_h <- all_headings[all_headings > h_idx]

      section_end <- if (length(next_h) > 0L) next_h[1L] - 1L else length(body_lines)

      section_lines <- body_lines[(h_idx + 1L):section_end]

      # Process each line individually to preserve blank lines exactly.
      new_section_lines <- vapply(
        section_lines,
        function(line) link_in_body(line, matched_pkgs),
        character(1L),
        USE.NAMES = FALSE
      )

      if (!identical(new_section_lines, section_lines)) {
        new_body_lines <- c(
          if (h_idx >= 1L) body_lines[seq_len(h_idx)] else character(0),
          new_section_lines,
          if (section_end < length(body_lines)) body_lines[(section_end + 1L):length(body_lines)] else character(0)
        )
      }
    }
  }

  # Check whether anything changed
  resource_changed <- !identical(new_resource_value, resource_value)
  body_changed     <- !identical(new_body_lines, body_lines)
  if (!resource_changed && !body_changed) next

  # Rebuild the resource line preserving original quoting style
  new_fm_lines <- fm_lines
  if (resource_changed) {
    if (was_quoted) {
      new_fm_lines[resource_idx[1L]] <- sprintf('resource: "%s"', new_resource_value)
    } else {
      new_fm_lines[resource_idx[1L]] <- sprintf("resource: %s", new_resource_value)
    }
  }

  # Reassemble: first "---", front matter, second "---", body
  new_lines <- c(
    lines[seq_len(delims[1L])],  # includes the opening ---
    new_fm_lines,
    lines[delims[2L]],           # closing ---
    new_body_lines
  )

  writeLines(new_lines, filepath)
  changed <- changed + 1L
  message("Updated: ", filepath)
}

message("Done. Modified ", changed, " files.")
