echo "!!!!CI BEGIN 1!!!!!"

#!/bin/bash

# Fail immediately
echo "!!!!CI BEGIN 2!!!!!"
set -e

echo "!!!!CI BEGIN 3!!!!!"

echo "!!!!CI BEGIN!!!!!"
echo "!!!!CI BEGIN!!!!!"
echo "!!!!CI BEGIN!!!!!"
echo "!!!!CI BEGIN!!!!!"
echo "!!!!CI BEGIN!!!!!"
echo "!!!!CI BEGIN!!!!!"
echo "!!!!CI BEGIN!!!!!"

#./gradlew test
docker run --tty --interactive --volume=$(pwd):/opt/workspace --workdir=/opt/workspace --rm gfx/docker-android-project /bin/sh -c "./gradlew test"