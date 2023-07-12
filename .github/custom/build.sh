#!/usr/bin/env bash

# generate a project from the template
generated_sources=$(mktemp -d)
trap 'rm -rf "${generated_sources}"' EXIT

pip install cookiecutter
cookiecutter --no-input --output-dir "${generated_sources}" . \
  name="Test" \
  email="test@release-engineers.com" \
  repo_name="demo" \
  github_owner="release-engineers"

# verify that the generated project builds and runs
cd "${generated_sources}/demo"
poetry build
