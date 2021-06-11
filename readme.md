# Scala lib template

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

## Get started

🚧 Under construction 🚧

```scala
externalResolvers += "scala-library-template packages" at "https://maven.pkg.github.com/"
libraryDependencies += "andrewinci" %% "scala-library-template packages" % "0.1.0-SNAPSHOT"
```

## Development

This library is using the `sbt-github-packages` plugin.
In order to publish and download the package from GH it is required to
configure the GH token with access to the GH packages repo.

```bash
git config --global github.token <personal token>
```

Use `sbt scalafmtAll` to format the code.

Use `sbt test` to run the tests

Use `sbt IntegrationTest / test` to run the integration tests

## Release

Just create a tag in Github

## Features

- Circleci config
- Munit
- Code coverage
- Scalafmt
- Publish to GH packages on tag
- Use the tag as package version

## Todo

- [x] Set the version from tag
- [ ] Complete how to use
- [ ] Automatic changelog
- [ ] https://www.scala-sbt.org/sbt-site/
