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
- `software-review/list.html`: editors in `data/team/team.json` without a `github`, `stats` or `generalreview` entry.

Write the message for the person who edits the content, who may not read the layouts:

- What is wrong, naming the item: its title, its type, the language, with `%q` for values so empty ones show as `""`.
- Where it is: the data file or content folder to edit.
- How to fix it: the accepted values (e.g. `delimit $types ", "`), or, when a new value is legitimate, what else to update (the list in the layout, the i18n label).
- Use a raw string (backticks) for messages that contain double quotes.

Put the check next to what it protects (e.g. right after the list of known values), and mention it in the partial's header comment ("Fails the build for ...").

Test a new check both ways: the current site must still build, and a broken throwaway copy of the site (in the scratchpad, never the repository) must fail with the message.
Build without `--quiet`, which hides the message.

### Comments

- Keep the header comment of a partial that documents its input ("Context:") and its return value; drop comments that only paraphrase the code.
- Put that comment at the top. Existing partials use both `{{/* ... */}}` and `{{- /* ... */ -}}`; prefer the trimmed form in new code.

### Other output formats

Some sections have templates besides HTML (e.g. JSON: `blog/list.json.json`, `search/list.json.json`; see `[outputs]` in `config.toml`).
Changing what an HTML layout shows may mean changing its other templates too, and logic both need goes in a returning partial (see "Idioms").

### Checking the output

1. Before editing, build to the scratchpad: `hugo --quiet -d <scratch>/before`.
   Build a second time (`<scratch>/before2`) and `diff -rq` the two to see which files differ even without edits.
2. After editing: `hugo --quiet -d <scratch>/after`, then `diff -rq <scratch>/before <scratch>/after`.
   For a refactoring, only the files that also differed in step 1 may differ.
   For whitespace changes, compare with leading whitespace and blank lines removed: `sed 's/^\s*//' f | grep -v '^$'`.
   For a new layout, look at the new pages in all languages: en (the default) at the root, and `es/`, `fr/`, `pt/`, `tr/`.
3. Some pages differ between any two builds, even without edits:
   - Pages that use `shuffle` (e.g. the brands fragments, `partials/team/people.html`, `software-review`, `citations`, `usecases`, `help-wanted`, `multilingual-publishing`).
     Compare those files with `diff <(sort before/f) <(sort after/f)`: they must have the same lines.
     Sorting hides reordering, so also compare the parts with a fixed order unsorted.
     Pages that show a random subset (`first 3 (shuffle ...)`) can only be compared outside that subset.
   - Pages that use `now` (future events, the current EiC) depend on the build date.
4. Don't commit; leave the changes for review.
