#!/bin/bash

#
# Intended for CI systems to use when running test suite or deploying.
#
# Dockerfile can be used locally for testing these scripts and also adding additional
# tools to the environment.
#

# Fail immediately
set -e

#
# Local Docker engine may not have access to such sensitive paths, so we do not want
# it linked when run locally. Note that if the script requires access (e.g. deploy.sh)
# then this command will not work and you need to run it manually.
#
if [ $CI ]; then
  CI_ARGS="-v $HOME/.ssh/id_rsa:/root/.ssh/id_rsa -v $HOME/.aws/credentials:/root/.aws/credentials"
fi

# Build image and run
docker build -t sabre:1.0 .
docker run --rm -it \
       -v $PWD:/var/sabre \
       $CI_ARGS \
       -w /var/sabre sabre:1.0 \
       $1