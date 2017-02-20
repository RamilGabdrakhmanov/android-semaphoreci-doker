#!/bin/bash

# Fail immediately
set -e

cd services/bot

npm install -s
npm test