# Notes for coding agents

## Writing and refactoring Hugo layouts

These notes apply both to new layouts and partials under `layouts/` and to refactoring existing ones (when asked to "streamline" or "make maintainable" a file).
Either way, the aim is code that explains itself without extra comments, and a site that tells people what went wrong when content or data breaks an assumption.
This helps the people who maintain the layouts and the people who add content and data (workshops, authors, participants, the call).
`layouts/partials/gallery-items.html` is a worked example.

When refactoring, keep the rendered output identical (see "Checking the output" below).
The one exception is adding checks (see "Checks"): they change nothing for valid content, but mention them in your summary.

### Naming

- One variable, one meaning.
  Never reuse a name for two different things in the same file (e.g. `$list` as a loop's field name and later as the result).
- Name variables after what they hold, including their shape: `$itemsByKey` (a dict used as a lookup), `$orderedKeys` (a slice that keeps the order), `$participantsPage` (a page), `$personLink` (name + url dict), `$result` (what the partial returns).
- Use the same name as other layouts for the same concept (e.g. `$field` for `"projects"`/`"outreach"`/`"post_program"`, as in `layouts/participants/list.html`).
- Name values that hide an assumption, e.g. `{{- $cohort := index $person.roles 0 -}}` rather than an inline `index`.

### Context (`.`)

- In nested `range`/`with`, bind loop variables (`range $entry := ...`) and use them (`$entry.url`) instead of `.`, whose meaning changes at each level.
- Inside `with $somePage`, `.` is that page: refer to outer values by their variable (`$person.name`), never by `.`.

### Idioms

- Prefer `where` to `apply`/`in` tricks for "is there an element with this field": `{{ if not (where $people "name" $name) }}`.
- Split long `slice`/`dict` literals over several lines inside the action.
- Logic duplicated across layouts goes in a returning partial, called with `partial "name.html" $arg`, e.g. `layouts/partials/participant-id.html` or `layouts/partials/workshop-number.html`.
  Check for such logic before writing a new layout.
  A "same as in other-file.html" comment is a sign of duplication.
- Pass a partial what it needs and nothing more: a partial that can compute something from its argument (e.g. the workshops from a workshop's `.Parent`) should not ask callers for it.
- `return` needs a single value: wrap pipelines, `{{- return (a | b) -}}`.
- Keep the defensive bits that look redundant unless you check them, e.g. the `md5` dict keys in `gallery-items.html`: `merge` lowercases dict keys, so `index $d "A/Url"` finds nothing afterwards (checked with Hugo 0.166).
  Name the key instead (`$dedupKey`).
- Keep exact semantics: `eq $x true` is stricter than a bare truthy test, so don't swap one for the other silently.
- `cond` evaluates both branches; use `if`/`else` when a branch can error.

### Checks

Add informative checks wherever a layout relies on an assumption about content or data: a file exists, a field is set, a value is one of a known list.
Fail the build with `errorf` rather than rendering something silently wrong, empty or missing.
Existing examples:

- `layouts/workshops/workshop.html`: a workshop author without an author file.
- `layouts/partials/entry-url.html`: a package without `"docs_url"`.
- `layouts/gallery/list.html`: a gallery item whose type is not in `$types`, which would otherwise get a card but no filter.

Write the message for the person who edits the content, who may not read the layouts:

- What is wrong, naming the item: its title, its type, the language, with `%q` for values so empty ones show as `""`.
- Where it is: the data file or content folder to edit.
- How to fix it: the accepted values (e.g. `delimit $types ", "`), or, when a new value is legitimate, what else to update (the list in the layout, the i18n label).
- Use a raw string (backticks) for messages that contain double quotes.

Put the check next to what it protects (e.g. right after the list of known values), and mention it in the partial's header comment ("Fails the build for ..."), as in `entry-url.html`.

Test a new check both ways: the current site must still build, and a broken throwaway copy of the site (in the scratchpad, never the repository) must fail with the message.
Build without `--quiet`, which hides the message.

### Comments

- Keep the header comment of a partial that documents its input ("Context:") and its return value; drop comments that only paraphrase the code.
- Match the style of existing partials: `{{- /* ... */ -}}` at the top.

### Markdown version of each page, and llms.txt

Every HTML page has a Markdown version next to it (`about/index.md` next to `about/index.html`), for LLMs and other tools, and each language has an `llms.txt` listing them (https://llmstxt.org).
The theme links each page's `.md` from its `<head>`.
See the output formats in `config.toml` and `layouts/index.llms.txt`.
Keep this true whenever you add or change a layout, a section or a kind of content:

- A new layout gets a Markdown template beside it, with the same name and the `.md` suffix: `layouts/call/list.html` has `layouts/call/list.md`, the home page `layouts/index.md`.
  The `layouts/_default/list.md` and `single.md` fallbacks only fit pages whose information is all in their title, description and content.
- Changing what an HTML layout shows means changing its Markdown template too.
- The Markdown gives the same information as the HTML page, as text: the data, not the interface.
  So no filters, buttons or random subsets, and a fixed order instead of `shuffle` (e.g. by title, as in `layouts/gallery/list.md`), so the file only changes when the data does.
- Logic both templates need goes in a returning partial (see "Idioms"), e.g. `participants.html`, `workshop-tabs.html`, `program-numbers.html`.
  This also makes the checks run for both.
- Markdown templates are plain text (Go's `text/template`, no HTML escaping).
  From them, call only partials that `return` a value; a partial that renders HTML would put HTML in the Markdown.
- Link to pages of the site with `partial "markdown-url.html" $page`.
  It gives the absolute URL of the page's Markdown version, or of its HTML page when it has none.
- Render page content with `{{ strings.TrimSpace .RenderShortcodes }}`, which keeps the author's Markdown.
- To avoid runs of blank lines, start each optional block with `{{- with ... }}` followed by a blank line, as in the existing templates.
- A section or page with its own `outputs` in its front matter (like the slides, `outputs: [Reveal]`) gets no `.md` unless it lists `markdown` there too.
  The slides deliberately don't: the workshop's `.md` links to them.
- `llms.txt` lists the main menu, the workshops and the authors.
  A page reachable through none of these, e.g. a new kind of content, needs its own section in `layouts/index.llms.txt`.

### Checking the output

1. Before editing, build to the scratchpad: `hugo --quiet -d <scratch>/before`.
2. After editing: `hugo --quiet -d <scratch>/after`, then `diff -rq <scratch>/before <scratch>/after`.
   For a refactoring, only the pages below may differ.
   For a new layout, look at the new pages in all three languages (es, the default, at the root; `en/`; `pt/`), and at their `index.md` too.
   Check that every `index.html` has an `index.md`; the only exceptions are the slides and `es/index.html` (a redirect): `cd <scratch>/after && for f in $(find . -name index.html -not -path './reveal-js/*'); do [ -f "${f%.html}.md" ] || echo "$f"; done`.
   Also check that no `.md` file or `llms.txt` contains `{{` or HTML entities such as `&#39;`.
3. Some pages differ between any two builds, even without edits:
   - The home page (`layouts/index.html`) and the gallery (`layouts/gallery/list.html`) use `shuffle`.
     Compare those files with `diff <(sort before/f) <(sort after/f)`: the gallery pages must have the same lines.
     Sorting hides reordering, so also compare the lines with a fixed order (e.g. the filter buttons) unsorted.
     The home page shows a random subset, so only its non-random parts can be compared.
   - The 404 pages (`404.html`, `en/404.html`, `pt/404.html`) come from one of two competing templates, the site's or reveal-js's, at random.
4. Don't commit; leave the changes for review.
