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
docker build -t gfx/docker-android-project .
docker run --tty --interactive --volume=$(pwd):/opt/workspace --workdir=/opt/workspace --rm gfx/docker-android-project /bin/sh -c "./gradlew build"
docker run --tty --interactive --volume=$(pwd):/opt/workspace --workdir=/opt/workspace --rm gfx/docker-android-project /bin/sh -c "./gradlew build"

echo "!!!!RUN COMPLETE!!!!!!"
echo "!!!!RUN COMPLETE!!!!!!"
echo "!!!!RUN COMPLETE!!!!!!"
echo "!!!!RUN COMPLETE!!!!!!"
echo "!!!!RUN COMPLETE!!!!!!"
echo "!!!!RUN COMPLETE!!!!!!"