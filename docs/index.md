---
layout: default
title: Scala lib template
nav_order: 1
---
# Scala lib template

Simple template to create a scala library.

## Use the template

- Create a new repo starting from this template
- In `build.sbt` set the `githubOwner` and the `repoName`
    ```scala
    val _repoName = "scala-library-template"
    val _githubOwner = "andrewinci"
    ```
- Make sure to have the Github token stored in the git configs (see Development)
- Try the configuration locally running `sbt test`
- Push the changes and enable the project in [CircleCI](https://app.circleci.com/projects/project-dashboard/github/<gitub_owner>)
- Set the env variable `GITHUB_TOKEN` in [CircleCI](https://app.circleci.com/settings/project/github/<gitub_owner>/<repo_name>/environment-variables) to allow publishing packages

## Features

- Munit for testing
- Scalafmt
- Publish to GH packages on tag
- Auto release with [semantic-release](https://github.com/semantic-release/semantic-release) and [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/)
- CircleCi config
    - Use the tag as package version
    - Code coverage with Coveralls
    - Snyk orb


## Get started using this library

🚧 Under construction 🚧

```scala
externalResolvers += "scala-library-template packages" at "https://maven.pkg.github.com/"
libraryDependencies += "andrewinci" %% "scala-library-template packages" % "0.1.0-SNAPSHOT"
```