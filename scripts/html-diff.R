# Compare two builds of the site, grouping the pages by change.
#
# Usage: Rscript scripts/html-diff.R <base build dir> <head build dir> <output dir>
#
# Writes to the output dir:
#   summary.md  changed/added/removed files, and each distinct change once with the pages it affects;
#   comment.md  the counts and the three most common changes, one line each (for the PR comment);
#   full.diff   the diff of every changed file, with context.
#
# Build both with HUGO_PARAMS_DETERMINISTIC=true (see partials/shuffle.html).
# Ignored because they differ between any two builds:
#   - tag pages (tags/) and sitemaps, whose tag names and order vary;
#   - keyword meta lines, which list tag names;
#   - leading/trailing whitespace and blank lines.
# JSON files are compared after reformatting with jq (sorted keys, one value per line), so layout changes don't show.
# Base R only, plus the system's diff and jq.

max_changes_shown <- 20
max_lines_per_change <- 40
max_files_listed <- 50

site_files <- function(build_dir) {
  paths <- list.files(build_dir, pattern = "\\.(html|xml|json|ics)$", recursive = TRUE)
  paths[!grepl("(^|/)tags/|(^|/)sitemap\\.xml$", paths)]
}

normalized_lines <- function(path) {
  lines <- if (endsWith(path, ".json")) json_lines(path) else readLines(path, warn = FALSE, encoding = "UTF-8")
  lines <- trimws(lines)
  lines[nzchar(lines) & !grepl('itemprop="keywords"|name="keywords"|property="article:tag"', lines)]
}

# A JSON file reformatted with sorted keys and one value per line, so that only changes to the data show,
# not to its layout. Falls back to the file's own lines when it isn't valid JSON.
json_lines <- function(path) {
  formatted <- suppressWarnings(system2("jq", c("-S", ".", shQuote(path)), stdout = TRUE, stderr = FALSE))
  if (is.null(attr(formatted, "status"))) formatted else readLines(path, warn = FALSE, encoding = "UTF-8")
}

run_diff <- function(base_lines, head_lines, context, labels) {
  base_file <- tempfile()
  head_file <- tempfile()
  on.exit(unlink(c(base_file, head_file)))
  writeLines(base_lines, base_file)
  writeLines(head_lines, head_file)
  suppressWarnings(system2(
    "diff",
    c(sprintf("-U%d", context), "--label", labels[[1]], "--label", labels[[2]], base_file, head_file),
    stdout = TRUE
  ))
}

# Each contiguous block of removed/added lines, without context or line numbers,
# so that the same change on different pages gives the same block.
changed_blocks <- function(base_lines, head_lines) {
  diff_lines <- run_diff(base_lines, head_lines, context = 0, labels = c("base", "head"))
  diff_lines <- diff_lines[-(1:2)] # the --- and +++ lines
  hunk_ids <- cumsum(startsWith(diff_lines, "@@"))
  blocks <- split(diff_lines, hunk_ids)
  unique(vapply(blocks, function(block) paste(block[-1], collapse = "\n"), character(1)))
}

# Language and first folder, e.g. "es/blog".
section <- function(paths) {
  language <- regmatches(paths, regexpr("^(es|fr|pt|tr)/", paths))
  has_language <- grepl("^(es|fr|pt|tr)/", paths)
  rest <- sub("^(es|fr|pt|tr)/", "", paths)
  prefix <- character(length(paths))
  prefix[has_language] <- language
  paste0(prefix, sub("/.*", "", rest))
}

section_table <- function(paths) {
  counts <- sort(table(section(paths)), decreasing = TRUE)
  c("| Section | Files |", "|---|---|", sprintf("| `%s` | %d |", names(counts), as.integer(counts)))
}

# A short description of a change for the PR comment: its first added line, else its first removed line.
one_line <- function(block) {
  lines <- strsplit(block, "\n", fixed = TRUE)[[1]]
  added <- lines[startsWith(lines, "+")]
  line <- substring(if (length(added)) added[[1]] else lines[[1]], 2)
  line <- gsub("`", "'", line, fixed = TRUE)
  if (nchar(line) > 100) paste0(substr(line, 1, 97), "...") else line
}

main <- function(base_dir, head_dir, out_dir) {
  dir.create(out_dir, showWarnings = FALSE, recursive = TRUE)
  base_files <- site_files(base_dir)
  head_files <- site_files(head_dir)
  added <- sort(setdiff(head_files, base_files))
  removed <- sort(setdiff(base_files, head_files))

  changed <- character()
  pages_by_block <- list()
  full_diff <- file(file.path(out_dir, "full.diff"), open = "w", encoding = "UTF-8")
  for (path in sort(intersect(base_files, head_files))) {
    base_lines <- normalized_lines(file.path(base_dir, path))
    head_lines <- normalized_lines(file.path(head_dir, path))
    if (identical(base_lines, head_lines)) next
    changed <- c(changed, path)
    writeLines(run_diff(base_lines, head_lines, context = 3, labels = paste0(c("base/", "head/"), path)), full_diff)
    for (block in changed_blocks(base_lines, head_lines)) {
      pages_by_block[[block]] <- c(pages_by_block[[block]], path)
    }
  }
  close(full_diff)

  page_counts <- lengths(pages_by_block)
  first_pages <- vapply(pages_by_block, `[[`, character(1), 1)
  pages_by_block <- pages_by_block[order(-page_counts, first_pages)]

  counts <- sprintf(
    "Changed: %d · added: %d · removed: %d · distinct changes: %d (tag pages and sitemaps are not compared).",
    length(changed), length(added), length(removed), length(pages_by_block)
  )

  summary <- c("## HTML diff", "", counts)
  file_lists <- list(Changed = changed, Added = added, Removed = removed)
  for (title in names(file_lists)) {
    paths <- file_lists[[title]]
    if (!length(paths)) next
    summary <- c(summary, "", sprintf("<details><summary>%s files by section</summary>", title), "", section_table(paths))
    if (title != "Changed") {
      summary <- c(summary, "", sprintf("- `%s`", head(paths, max_files_listed)))
      if (length(paths) > max_files_listed) {
        summary <- c(summary, sprintf("- and %d more", length(paths) - max_files_listed))
      }
    }
    summary <- c(summary, "", "</details>")
  }
  if (length(pages_by_block)) {
    summary <- c(
      summary, "", "### Distinct changes", "",
      "Each change is shown once, with the number of pages that have it (a page can have several changes).",
      "The full diff, with context, is in the `html-diff` artifact of this run."
    )
    for (block in head(names(pages_by_block), max_changes_shown)) {
      pages <- pages_by_block[[block]]
      lines <- strsplit(block, "\n", fixed = TRUE)[[1]]
      if (length(lines) > max_lines_per_change) {
        lines <- c(head(lines, max_lines_per_change), sprintf("... %d more lines", length(lines) - max_lines_per_change))
      }
      summary <- c(
        summary, "",
        sprintf("<details><summary>%d page(s), e.g. <code>%s</code></summary>", length(pages), pages[[1]]),
        "", "```diff", lines, "```", "", "</details>"
      )
    }
    if (length(pages_by_block) > max_changes_shown) {
      summary <- c(summary, "", sprintf("And %d more distinct changes, in the artifact.", length(pages_by_block) - max_changes_shown))
    }
  }
  writeLines(summary, file.path(out_dir, "summary.md"), useBytes = TRUE)

  comment <- counts
  if (length(pages_by_block)) {
    top <- head(names(pages_by_block), 3)
    comment <- c(
      comment, "", "Most common changes:",
      sprintf("- %d page(s): `%s`", lengths(pages_by_block[top]), vapply(top, one_line, character(1)))
    )
  }
  writeLines(comment, file.path(out_dir, "comment.md"), useBytes = TRUE)

  cat(sprintf(
    "changed=%d added=%d removed=%d distinct_changes=%d\n",
    length(changed), length(added), length(removed), length(pages_by_block)
  ))
}

args <- commandArgs(trailingOnly = TRUE)
if (length(args) != 3) {
  stop("Usage: Rscript scripts/html-diff.R <base build dir> <head build dir> <output dir>")
}
main(args[[1]], args[[2]], args[[3]])
