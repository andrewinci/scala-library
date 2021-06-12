# {{cookiecutter.repo_name}}

See [here](https://andrewinci.github.io/scala-library-template/) to setup the template.

## Get started using this library

🚧 Under construction 🚧

```scala
externalResolvers += "{{cookiecutter.repo_name}}" at "https://maven.pkg.github.com/"
libraryDependencies += "{{cookiecutter.organization}}" %% "{{cookiecutter.repo_name}}" % "0.1.0-SNAPSHOT"
```

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
- [x] Automatic changelog
- [x] https://www.scala-sbt.org/sbt-site/ (using just the docs)
