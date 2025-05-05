use_cases_path <- file.path("data", "usecases", "usecases.json")
use_cases <- jsonlite::read_json(use_cases_path)

add_lang <- function(use_case) {
  use_case[["language"]] <- cld3::detect_language(use_case[["title"]])
  use_case
}

use_cases <- purrr::map(use_cases, add_lang)

jsonlite::write_json(
  use_cases,
  use_cases_path,
  pretty = TRUE,
  auto_unbox = TRUE
)
