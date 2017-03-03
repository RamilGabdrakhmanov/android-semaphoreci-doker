#!/bin/bash

# Fail immediately
set -e

cd app

./gradlew -PtestfairyChangelog="$(git log -1 --pretty=%B)" testfairyStagingRelease