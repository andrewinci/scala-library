# Scala library template

## Quick start

Use [cookiecutter](https://cookiecutter.readthedocs.io/en/1.7.3/README.html)

```bash
cookiecutter https://github.com/andrewinci/scala-library-template.git
```

or [cruft](https://cruft.github.io/cruft/)

```bash
cruft create https://github.com/andrewinci/scala-library-template.git
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

## Todo

- [x] Set the version from tag
- [x] Automatic changelog
- [x] https://www.scala-sbt.org/sbt-site/ (using just the docs)
- [x] Complete how to use