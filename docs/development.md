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