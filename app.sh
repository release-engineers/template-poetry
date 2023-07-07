#!/usr/bin/env bash
#
# This script is used to test the template.
#
# Run ./app.sh for usage information.
#

set -e
set -o pipefail

function debug() {
  trap 'printf -- "-- \033[0;36m${BASH_COMMAND}\033[0m\n"' DEBUG
}

command=$1

if [[ $command == "build" ]]; then
  debug
  # generate a project from the template
  generated_sources=$(mktemp -d)
  trap 'rm -rf "${generated_sources}"' EXIT
  cookiecutter --no-input --output-dir "${generated_sources}" . \
    name="Test" \
    email="test@release-engineers.com" \
    repo_name="demo" \
    github_owner="release-engineers"
  # verify that the generated project builds and runs
  (
    cd "${generated_sources}/demo"
    ./app.sh build
    ./app.sh run hello
  )
  exit 0
fi

if [[ -z $command ]]; then
  echo "Unknown command: ${command}"
fi

echo "Usage: $0 <command>"
echo "Commands:"
echo "  build            -- build an application from the template and verify the generated application can be built"

exit 1
