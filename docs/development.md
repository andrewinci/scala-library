---
layout: default
title: Development
nav_order: 2
---
# Development

## Base commands

Use `sbt scalafmtAll` to format the code.

Use `sbt test` to run the tests

Use `sbt IntegrationTest / test` to run the integration tests

## Publish/Consume the lib

This library is using the `sbt-github-packages` plugin.
In order to publish and download the package from GH it is required to
configure the GH token with access to the GH packages repo.

```bash
git config --global github.token <personal token>
```
alternatively it is possible to export the Github token with
```bash
export GITHUB_TOKEN="<token_with_packages_access>"
```

To publish the package run:
```bash
# version should be of the form \d+.\d+.\d+
sbt "set version := \"<version>\"" publish
```

## Documentation

The documentation is generated with the [just the docs](https://pmarsceill.github.io/just-the-docs/) template.
To render the documentation locally:
- Run `bundle install` to install the required gems
- Run `bundle exec jekyll serve` to serve the documentation
