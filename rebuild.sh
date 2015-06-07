#!/bin/sh
#
# Updates the REFRESHED_AT environment variable in Dockerfile and rebuilds
# the image.

DIR=$(cd "$(dirname $0)"; pwd) && cd $DIR
TAG=$(cat TAG)

./update.sh || exit $?
docker build -t "$TAG" .
STATUS=$?

if [ $STATUS -eq 0 ]; then
	echo "Rebuilt $TAG"
else
	echo "Rebuilding $TAG failed: $STATUS"
fi
exit $STATUS

