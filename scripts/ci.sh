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

docker exec acl ./gradlew test


echo "!!!!CI COMPLETE!!!!!"

