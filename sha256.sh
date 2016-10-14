#!/bin/bash
if [ $# = 0 ]; then
	echo "Error: No files given."
	exit 1
fi
for i in "$@"; do
	shasum -a 256 $i
done
exit 0
