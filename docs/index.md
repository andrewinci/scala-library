---
layout: default
title: Scala lib template
nav_order: 1
---
# Scala lib template

Simple template to create a scala library.

Use cookiecutter to configure the template.

```bash
cookiecutter https://github.com/andrewinci/scala-library-template.git
```

## Features

- Munit for testing
- Scalafmt
- Publish to GH packages on tag
- Auto release with [semantic-version](https://github.com/conventional-changelog/standard-version) and [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/)
- CircleCi config
    - Use the tag as package version
    - Code coverage with Coveralls
    - Snyk orb