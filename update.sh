#!/bin/sh
#
# Updates the REFRESHED_AT environment variable in Dockerfile causing packages
# and gits to be refreshed at the next build.

DIR=$(cd "$(dirname $0)"; pwd) && cd $DIR
TAG=$(cat TAG)
TODAY=$(date +"%Y-%m-%d")

sed -i .bak -E "s/^(ENV REFRESHED_AT) .+$/\1 $TODAY/" Dockerfile
STATUS=$?

if [ $STATUS -eq 0 ]; then
	echo "Updated REFRESHED_AT for $TAG to $TODAY"
else
	echo "Updating REFRESHED_AT for $TAG failed: $STATUS"
fi
exit $STATUS

