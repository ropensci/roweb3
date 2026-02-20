---
title: "Using jsonvalidate to validate the packages.json file from your personal universe"
reporter: "Hugo Gruson"
date: 2021-10-05
resource: "jsonvalidate (and R-universe)"
original_url: "https://discuss.ropensci.org/t/using-jsonvalidate-to-validate-the-packages-json-file-from-your-personal-universe/2643"
language: [English]
---

#### rOpenSci package or resource used*

[jsonvalidate](https://docs.ropensci.org/jsonvalidate/index.html)
(and [R-universe](https://r-universe.dev))

#### What did you do? 

Use the jsonvalidate package to validate the contents of `packages.json` against a schema in your personal R-universe.
This can be part of a GitHub Action set up to run on pull requests to ensure you only merge correctly formatted changes.


#### URL or code snippet for your use case*

`schema.json`:
```
{
    "$schema": "http://json-schema.org/draft-07/schema#",
    "title": "r-universe packages.json",
    "description": "A packages.json file controlling the contents of your r-universe",
    "type": "array",
    "items": {
      "type": "object",
      "properties": {
        "package": {
          "description": "The name of the R package",
          "type": "string"
        },
        "url": {
          "description": "The URL to the git repository with the package source code",
          "type": "string",
          "format": "uri"
        },
        "subdir": {
          "description": "A subfolder of the repository containing the R package",
          "type": "string"
        },
        "branch": {
          "description": "The branch from which the package should be built",
          "type": "string"
        }
      },
      "required": ["package", "url"]
    }
}
```

`.github/workflows/validate-json.yaml`:
```
name: Validate JSON

on:
  push:
    branches: [main, master]
  pull_request:
    branches: [main, master]

jobs:
  validate-json:
    runs-on: ubuntu-latest
    env:
      GITHUB_PAT: ${{ secrets.GITHUB_TOKEN }}
    steps:
      - uses: actions/checkout@v4

      - uses: r-lib/actions/setup-r@v2
        with:
          use-public-rspm: true

      - name: Install V8
        run: sudo apt install libv8-dev

      - name: Install jsonvalidate
        run: |
          Rscript -e 'install.packages("jsonvalidate")'
      - name: Validate packages.json
        run: |
          jsonvalidate::json_validate(
            "packages.json",
            "schema.json",
            # Use "ajv" because other engines do not support schemas newer than v4
            engine = "ajv",
            error = TRUE
          )
        shell: Rscript {0}
```


