#!/bin/bash

### stash_clean - drops all stash entries after given list position
### args:
### 	1) number in list where you want to start deleting

if [ $# != 1 ]; then
	echo "Usage: $0 [stash_position]"
	exit 1
fi

# needed for ebegin / eend functions
. /etc/init.d/functions.sh

# drops all stash entries after (STASH_POS - 1)
while [ $? = 0 ]
do
	ebegin "dropping stash item(s)"
	git stash drop stash@{$1}
	eend $?
done

