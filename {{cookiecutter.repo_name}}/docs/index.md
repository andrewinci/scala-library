---
layout: default
title: Scala lib template
nav_order: 1
---
# Scala lib template

Simple template to create a scala library.

## Configure the template

- Create a new repo starting from this template
- In `.circleci/config.yml` set
    - the `owner-repo` parameter
    ```
    parameters:
        owner-repo:
            type: string
            default: "andrewinci/scala-library-template"
    ```
- In `build.sbt` set the `githubOwner` and the `repoName`
    ```scala
    val _repoName = "scala-library-template"
    val _githubOwner = "andrewinci"
    ```
- Setup the project in [CircleCI project](https://app.circleci.com/projects/project-dashboard/github/andrewinci)
- Set the env variable `GITHUB_TOKEN` in [CircleCI env var](https://app.circleci.com/settings/project/github/andrewinci/scala-library-template/environment-variables) to allow publishing packages
- Add an SSH to enable auto-release in [CircleCI SSH Key](https://app.circleci.com/settings/project/github/andrewinci/test-lib/ssh)
- Update the CircleCI config with SSH fingerprint

## Features

- Munit for testing
- Scalafmt
- Publish to GH packages on tag
- Auto release with [semantic-version](https://github.com/conventional-changelog/standard-version) and [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/)
- CircleCi config
    - Use the tag as package version
    - Code coverage with Coveralls
    - Snyk orb