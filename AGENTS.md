# Notes for coding agents

## Writing and refactoring Hugo layouts

These notes apply both to new layouts and partials and to refactoring existing ones (when asked to "streamline" or "make maintainable" a file).
Most layouts live in `themes/ropensci/layouts/`; a few shortcodes are in `layouts/shortcodes/`.
Either way, the aim is code that explains itself without extra comments, and a site that tells people what went wrong when content or data breaks an assumption.
This helps the people who maintain the layouts and the people who add content and data (blog posts, events, team members, packages).

When refactoring, keep the rendered output identical (see "Checking the output" below).
There are two exceptions; mention them in your summary:

- Adding checks (see "Checks"): they change nothing for valid content.
- Whitespace that browsers collapse (indentation, blank lines), when keeping it would make the template harder to read, e.g. a shared partial whose callers were indented differently.
  Never remove whitespace between inline elements entirely, which can change the rendering.

### Naming

- One variable, one meaning.
  Never reuse a name for two different things in the same file (e.g. `$list` as a loop's field name and later as the result).
- Name variables after what they hold, including their shape: `$itemsByKey` (a dict used as a lookup), `$orderedKeys` (a slice that keeps the order), `$authorPage` (a page), `$personLink` (name + url dict), `$result` (what the partial returns).
- Use the same name as other layouts for the same concept.
- Name values that hide an assumption, e.g. `{{- $mainRole := index $person.roles 0 -}}` rather than an inline `index`.

### Context (`.`)

- In nested `range`/`with`, bind loop variables (`range $entry := ...`) and use them (`$entry.url`) instead of `.`, whose meaning changes at each level.
- Inside `with $somePage`, `.` is that page: refer to outer values by their variable (`$outer.name`), never by `.`.

### Idioms

- Prefer `where` to `apply`/`in` tricks for "is there an element with this field": `{{ if not (where $people "name" $name) }}`.
- Split long `slice`/`dict` literals over several lines inside the action.
- Logic duplicated across layouts goes in a returning partial, called with `partial "name.html" $arg`, e.g. `partials/blogs/combined-authors.html` or `partials/calendar/future-events.html`.
  Check for such logic before writing a new layout.
  A "same as in other-file.html" comment is a sign of duplication.
- Pass a partial what it needs and nothing more: a partial that can compute something from its argument (anything it can derive from the page) should not ask callers for it.
- `return` needs a single value: wrap pipelines, `{{- return (a | b) -}}`.
- Keep the defensive bits that look redundant unless you check them.
  For example, `merge` lowercases dict keys, so `index $d "A/Url"` finds nothing afterwards (checked with Hugo 0.166): hash such keys with `md5` and name them (`$dedupKey`).
- Keep exact semantics: `eq $x true` is stricter than a bare truthy test, so don't swap one for the other silently.
- `cond` evaluates both branches; use `if`/`else` when a branch can error.

### Checks

Add informative checks wherever a layout relies on an assumption about content or data: a file exists, a field is set, a value is one of a known list.
Fail the build with `errorf` rather than rendering something silently wrong, empty or missing.
Existing examples:

- `partials/calendar/check-ropensci-param.html`: a future event without a Boolean `ropensci` front matter parameter.
- `partials/team/check-images.html`: a photo listed in `data/team/*.json` that is missing or not square.
- `partials/blogs/check-dois.html`: two blog posts (in any language) sharing a DOI.
- `partials/check-duplicate-urls.html`: two pages with the same URL (e.g. the same slug), called from `_default/baseof.html`.
- `software-review/list.html`: editors in `data/team/team.json` without a `github`, `stats` or `generalreview` entry.

Write the message for the person who edits the content, who may not read the layouts:

- What is wrong, naming the item: its title, its type, the language, with `%q` for values so empty ones show as `""`.
- Where it is: the data file or content folder to edit.
- How to fix it: the accepted values (e.g. `delimit $types ", "`), or, when a new value is legitimate, what else to update (the list in the layout, the i18n label).
- Use a raw string (backticks) for messages that contain double quotes.

Put the check next to what it protects (e.g. right after the list of known values), and mention it in the partial's header comment ("Fails the build for ...").

Test a new check both ways: the current site must still build, and a broken throwaway copy of the site (in the scratchpad, never the repository) must fail with the message.
Delete that copy and its build afterwards (see "Checking the output").
Build without `--quiet`, which hides the message.

### Comments

- Keep the header comment of a partial that documents its input ("Context:") and its return value; drop comments that only paraphrase the code.
- Put that comment at the top. Existing partials use both `{{/* ... */}}` and `{{- /* ... */ -}}`; prefer the trimmed form in new code.

### Other output formats

Some sections have templates besides HTML (e.g. JSON: `blog/list.json.json`, `search/list.json.json`; see `[outputs]` in `config.toml`).
Changing what an HTML layout shows may mean changing its other templates too, and logic both need goes in a returning partial (see "Idioms").

### Checking the output

Build with the Hugo version Netlify uses (`HUGO_VERSION` in `netlify.toml`), which may be older than your local one: download it to the scratchpad if needed.
Build with `HUGO_PARAMS_DETERMINISTIC=true`, which makes `partial "shuffle.html"` keep the original order, so that two builds of the same code give the same pages.
In layouts, use `partial "shuffle.html"` rather than `shuffle`, or that page will differ between any two builds.

1. Before editing: `HUGO_PARAMS_DETERMINISTIC=true hugo --quiet -d <scratch>/before`.
2. After editing: the same with `-d <scratch>/after`, then `Rscript scripts/html-diff.R <scratch>/before <scratch>/after <scratch>/html-diff`.
   It writes `summary.md` (changed, added and removed files, and each distinct change once with the number of pages it affects) and `full.diff`.
   It ignores leading and trailing whitespace, blank lines, keyword meta lines, tag pages and sitemaps: tag names vary between builds.
   For a refactoring, the summary must show no change, or only the exceptions listed at the top.
   For a new layout, also look at the new pages in all languages: en (the default) at the root, and `es/`, `fr/`, `pt/`, `tr/`.
3. Pages that use `now` (future events, the current EiC) can differ if the two builds straddle a date change.
4. Delete the build folders (`before`, `after`) and any throwaway copy of the site as soon as you have read the results: each build is about 700 MB, and a few dozen fill the disk.
   Keep only what you reuse, e.g. the downloaded Hugo binary.
5. Don't commit; leave the changes for review.

The same comparison runs on GitHub for PRs with the `check-html-diff` label (`.github/workflows/html-diff.yml`).
It builds the PR (merged into its base branch) and the base branch with Netlify's Hugo version, and posts the summary as the job summary, the full diff as the `html-diff` artifact, and the counts as a PR comment (not for PRs from forks).
Suggest adding the label to PRs that change layouts, and check its summary against what you expected to change.
