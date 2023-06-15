# {{cookiecutter.repo_name}}

Requires:

- Docker
- [Poetry](https://python-poetry.org/)

Technologies:

- Python
- Docker
- [Poetry](https://python-poetry.org/)

## Build

To build a Docker image tagged `{{cookiecutter.repo_name}}:${version}` (where `${version}` is defined by `pyproject.toml`) run the following;

```bash
./app.sh build
```

## Run

```bash
./app.sh run <args>
```
