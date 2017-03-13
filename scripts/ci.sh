#!/bin/bash

# Fail immediately
set -e

docker exec acl-container ./gradlew test

