#!/bin/bash
#
# Intended for CI systems to use when running test suite or deploying.
#
# Dockerfile can be used locally for testing these scripts and also adding additional
# tools to the environment.
#

# Fail immediately
set -e


# Build image and run
echo "Start build"
docker build -t gfx/docker-android-project .
echo "start run"
docker run --tty --interactive --volume=$(pwd):/opt/workspace --workdir=/opt/workspace --rm gfx/docker-android-project /bin/sh -c "./gradlew build"