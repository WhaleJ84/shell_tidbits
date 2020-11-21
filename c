#!/usr/bin/env sh

# dynamically show contents of directory or edit file
# if a directory, go to and show contents
if [ -d "$1" ]; then
	cd "$1"
	la
# if nothing is given, go home
elif [ -z "$1" ]; then
	cd "$HOME"
# if it's nothing or a file, then edit it
else
	vi "$1"
fi

