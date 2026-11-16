#!/usr/bin/env bash
# Compare two builds of the site and write a Markdown summary and a full diff.
# Usage: scripts/html-diff.sh <base build dir> <head build dir> <output dir>
# Writes <output dir>/summary.md, <output dir>/full.diff, and one change-<key>.diff per distinct change.
#
# Build both with HUGO_PARAMS_DETERMINISTIC=true (see partials/shuffle.html).
# Ignored because they differ between any two builds:
#   - tag pages (tags/) and sitemaps, whose tag names and order vary;
#   - keyword meta lines, which list tag names;
#   - leading/trailing whitespace and blank lines.
set -euo pipefail

base=$1
head=$2
out=$3
mkdir -p "$out"

normalize() {
  grep -v 'itemprop="keywords"\|name="keywords"\|property="article:tag"' "$1" |
    sed 's/^[[:space:]]*//; s/[[:space:]]*$//' |
    grep -v '^$' || true
}

is_ignored() {
  [[ $1 =~ (^|/)tags/ || $1 =~ (^|/)sitemap\.xml$ ]]
}

files() {
  (cd "$1" && find . -type f \( -name '*.html' -o -name '*.xml' -o -name '*.json' -o -name '*.ics' \) | sed 's|^\./||' | sort)
}

changed=()
added=()
removed=()
: > "$out/full.diff"
: > "$out/changes.tsv"
rm -f "$out"/change-*.diff

while IFS= read -r f; do
  is_ignored "$f" && continue
  if [[ ! -f "$head/$f" ]]; then
    removed+=("$f")
  elif ! cmp -s <(normalize "$base/$f") <(normalize "$head/$f"); then
    changed+=("$f")
    file_diff=$(diff -u --label "base/$f" --label "head/$f" <(normalize "$base/$f") <(normalize "$head/$f") || true)
    printf '%s\n' "$file_diff" >> "$out/full.diff"
    # Pages with the same change (e.g. a footer edit) get the same key: the diff without file names and line numbers.
    change_key=$(printf '%s\n' "$file_diff" | tail -n +3 | sed 's/^@@.*@@/@@/' | md5sum | cut -c1-12)
    printf '%s\t%s\n' "$change_key" "$f" >> "$out/changes.tsv"
    [[ -f "$out/change-$change_key.diff" ]] || printf '%s\n' "$file_diff" > "$out/change-$change_key.diff"
  fi
done < <(files "$base")

while IFS= read -r f; do
  is_ignored "$f" && continue
  [[ -f "$base/$f" ]] || added+=("$f")
done < <(files "$head")

by_section() {
  # Count files by language and section, e.g. "es/blog".
  sed -E 's#^((es|fr|pt|tr)/)?([^/]+).*#\1\3#' | sort | uniq -c | sort -rn |
    awk '{printf "| `%s` | %s |\n", $2, $1}'
}

{
  echo "## HTML diff"
  echo
  echo "Changed: ${#changed[@]} · added: ${#added[@]} · removed: ${#removed[@]} (tag pages and sitemaps are not compared)."
  for kind in changed added removed; do
    declare -n list=$kind
    if (( ${#list[@]} )); then
      echo
      echo "<details><summary>${kind^} files by section</summary>"
      echo
      echo "| Section | Files |"
      echo "|---|---|"
      printf '%s\n' "${list[@]}" | by_section
      echo
      echo "</details>"
    fi
  done
  if (( ${#changed[@]} )); then
    echo
    echo "### Distinct changes"
    echo
    echo "Pages with the same change are grouped. The full diff is in the \`html-diff\` artifact of this run."
    cut -f1 "$out/changes.tsv" | sort | uniq -c | sort -rn | head -n 15 |
      while read -r count change_key; do
        example=$(awk -F'\t' -v k="$change_key" '$1 == k {print $2; exit}' "$out/changes.tsv")
        echo
        echo "<details><summary>$count page(s), e.g. <code>$example</code></summary>"
        echo
        echo '```diff'
        head -n 60 "$out/change-$change_key.diff"
        echo '```'
        echo
        echo "</details>"
      done
    distinct=$(cut -f1 "$out/changes.tsv" | sort -u | wc -l)
    if (( distinct > 15 )); then
      echo
      echo "And $((distinct - 15)) more distinct changes, in the artifact."
    fi
  fi
} > "$out/summary.md"

echo "changed=${#changed[@]} added=${#added[@]} removed=${#removed[@]}"
