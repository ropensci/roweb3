post <- "2022-04-19-software-review-editorial-challenges"
git_branch_name <- sprintf("%s-es", post)

gert::git_branch_checkout("main")
gert::git_pull()
if (!(git_branch_name) %in% gert::git_branch_list()[["name"]]) {
  gert::git_branch_create(git_branch_name)
} else {
  gert::git_branch_checkout(git_branch_name)
}

if (!fs::dir_exists(file.path("content", "blog", sprintf("%s-es", post)))) {
  fs::dir_copy(
  file.path("content", "blog", post),
  file.path("content", "blog", sprintf("%s-es", post))
)
}


new_post_path <- file.path("content", "blog", sprintf("%s-es/", post), "index.md")

wool <- tinkr::yarn$new(path = new_post_path)

.translate <- function(text) {
  doc <- httr2::request("https://api-free.deepl.com/v2/translate") |>
    httr2::req_headers("Authorization" = sprintf("DeepL-Auth-Key %s", Sys.getenv("DEEPL_KEY"))) |>
    httr2::req_body_form(
      text = text,
      target_lang = "ES",
      tag_handling = "xml",
      formality = "less"
    ) |>
    httr2::req_method("POST") |>
    httr2::req_perform() |>
    httr2::resp_body_json()
  doc$translations[[1]]$text
}
translate <- memoise::memoise(.translate)

# Translate body
wool$body <- xml2::read_xml(translate(as.character(wool$body)))

# Translate and adapt YAML
temporary_file <- withr::local_tempfile()
brio::write_lines(wool$yaml[-c(1, length(wool$yaml))], temporary_file)
yaml <- yaml::read_yaml(temporary_file)
yaml$title <- translate(yaml$title)
yaml$description <- translate(yaml$description)
yaml$tags <- c(yaml$tags, "Spanish")

# not featured by default
yaml$featured <- FALSE
yaml$slug <- sprintf("%s-es", yaml$slug)
# Ensure listing order
# need to tweak the other file manually for now
yaml$date <- sprintf("%sT00:00:01-07:00", yaml$date)
yaml::write_yaml(yaml, temporary_file)
wool$yaml <- c("---", brio::read_lines(temporary_file), "---")

wool$write(new_post_path)

hugodown::hugo_start()
gert::git_add(file.path("content", "blog", sprintf("%s-es", post)))
gert::git_commit("Add Spanish automatic translation")
gert::git_push()
usethis::pr_init(git_branch_name)
usethis::pr_push()