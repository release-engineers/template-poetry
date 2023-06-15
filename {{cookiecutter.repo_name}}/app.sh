#!/usr/bin/env bash
#
# This script is used to build and run the application in a docker container.
#
# Run ./app.sh for usage information.
#

set -e
set -o pipefail

command=$1

if [[ $command == "build" ]]; then
    poetry install --sync
    poetry build --format wheel
    version=$(poetry version --short)
    docker build --tag "{{cookiecutter.repo_name}}:${version}" --file Dockerfile .
    exit 0
fi

if [[ $command == "run" ]]; then
    version=$(poetry version --short)
    shift
    docker run --rm --publish 8000:8000 "{{cookiecutter.repo_name}}:${version}" "$@"
    exit 0
fi

if [[ -z $command ]]; then
  echo "Unknown command: ${command}"
fi
echo "Usage: $0 <command>"
echo "Commands:"
echo "  build -- build the docker image containing the local virtualenv and the application"
echo "  run   -- run the docker image associated with the current version, passing any arguments"
exit 1
