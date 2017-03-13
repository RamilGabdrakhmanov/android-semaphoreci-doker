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
docker build -t android/image .
docker run --tty --interactive --volume=$(pwd):/opt/workspace --workdir=/opt/workspace --name="android-container" -d android/image
docker exec android-container ./gradlew tasks