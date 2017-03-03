#!/bin/bash

# Fail immediately
set -e

docker run --tty --interactive --volume=$(pwd):/opt/workspace --workdir=/opt/workspace --rm gfx/docker-android-project /bin/sh -c "./gradlew test"