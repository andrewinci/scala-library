# {{cookiecutter.repo_name}}

## Get started

Add `sbt-github-packages` to the `project/plugin.sbt`:
```scala
addSbtPlugin("com.codecommit" % "sbt-github-packages" % "0.5.3")
```

Update the `build.sbt` with the following:
```scala
    githubTokenSource := TokenSource.GitConfig("github.token") || TokenSource.Environment("GITHUB_TOKEN"),
    externalResolvers += "{{cookiecutter.repo_name}}" at "https://maven.pkg.github.com/{{cookiecutter.github_owner}}/{{cookiecutter.repo_name}}",
    libraryDependencies += "{{cookiecutter.organization}}" %% "{{cookiecutter.repo_name}}" % "<latest version>"
```

## Features

- Circleci config
- Munit
- Code coverage
- Scalafmt
- Publish to GH packages on tag
- Use the tag as package version
