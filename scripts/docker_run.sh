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
docker build -t sabre:1.0 .
docker run --rm -it \
       -v $PWD:/var/sabre \
       $CI_ARGS \
       -w /var/sabre sabre:1.0 \
       $1