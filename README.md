# release-engineers/template-poetry

[![Status: Production ready](https://img.shields.io/badge/status-production_ready-green)](https://release-engineers.com/open-source-badges/)

`cookiecutter` template for Python projects using Poetry.

## Usage

```bash
cookiecutter gh:release-engineers/template-poetry
```

Additionally, if you'd like to publish your package to PyPI through the "Release" GitHub Actions workflow;

- Configure a GitHub repository secret `PYPI_TOKEN`, set it to your PyPI API token.
- Configure a GitHub repository variable `PYPI_PUBLISH_ENABLED`, set it to `true`.

## Technologies

- Bash
- [Docker](https://www.docker.com/)
- [Python](https://www.python.org/)
- [Poetry](https://python-poetry.org/)
- [Fire](https://github.com/google/python-fire)
- [Pytest](https://pytest.org/)
- [GitHub Actions](https://docs.github.com/en/actions)

