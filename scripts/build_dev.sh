#!/bin/bash

NAME="simpledbus-dev"

if ! [ -x "$(command -v docker)" ]; then
    echo "Docker is not installed! Install docker: https://docs.docker.com/get-docker/"
    exit 1
fi
echo "Building simpledbus dev image"
docker build -t "$NAME" -f test/Dockerfile .

# throw away old build directory to avoid cmake cache conflicts
echo "Cleaning cmake build artefacts"
rm -rf build
echo "Starting simpledbus dev environment"
docker run --rm -it -v `pwd`:/app -h "$NAME" "$NAME"