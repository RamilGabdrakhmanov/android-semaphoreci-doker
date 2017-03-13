#!/bin/bash

# Fail immediately
set -e

docker exec acl ./gradlew test

