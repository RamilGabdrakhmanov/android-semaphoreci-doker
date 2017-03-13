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
docker build -t acl/image .
docker run --tty --interactive --volume=$(pwd):/opt/workspace --workdir=/opt/workspace --name="acl-container" -d acl/image
docker exec acl-container ./gradlew tasks