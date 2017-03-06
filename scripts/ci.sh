echo "!!!!CI BEGIN 1!!!!!"

#!/bin/bash

# Fail immediately
echo "!!!!CI BEGIN 2!!!!!"
set -e

echo "!!!!CI BEGIN 3!!!!!"

ls -a

echo "!!!!CI BEGIN!!!!!"
echo "!!!!CI BEGIN!!!!!"
echo "!!!!CI BEGIN!!!!!"
echo "!!!!CI BEGIN!!!!!"
echo "!!!!CI BEGIN!!!!!"
echo "!!!!CI BEGIN!!!!!"
echo "!!!!CI BEGIN!!!!!"


export ANDROID_HOME="/usr/local/android-sdk-linux"

echo android home = $ANDROID_HOME
./gradlew test --stacktrace
