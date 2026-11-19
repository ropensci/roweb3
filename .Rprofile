if (file.exists('~/.Rprofile')) {
  base::sys.source('~/.Rprofile', envir = environment())
}

options(blogdown.new_bundle = TRUE)
options(blogdown.subdir = "blog")
options(blogdown.title_case = TRUE)
# Use the Hugo version Netlify uses, set once in netlify.toml
local({
  hugo_version_line <- grep(
    '^\\s*HUGO_VERSION\\s*=', readLines("netlify.toml"),
    value = TRUE
  )
  if (length(hugo_version_line) != 1) {
    stop("Expected exactly one HUGO_VERSION line in netlify.toml.")
  }
  options(blogdown.hugo.version = sub('.*"(.+)".*', "\\1", hugo_version_line))
})
options(blogdown.knit.on_save = FALSE)
options(blogdown.method = "markdown")
