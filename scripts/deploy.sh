#!/bin/bash

# Fail fast
set -e

# Install Sabre
bundle install

# Deploy
bundle exec sabre apply bot acl-staging