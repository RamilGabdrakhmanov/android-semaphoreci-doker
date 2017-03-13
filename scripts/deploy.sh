#!/bin/bash

# Fail immediately
set -e

docker exec android-container ./gradlew testfairyStagingRelease

