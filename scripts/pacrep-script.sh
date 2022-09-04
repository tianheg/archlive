#!/usr/bin/env bash

# Watch packages info inside packages.x86_64
file="$(dirname $(dirname $(realpath $0) ) )/packages.x86_64"
rm $(dirname $(realpath $0))/pacrep-info.txt
while read -r line; do
echo -e "############
$line
$(pacman -Si $line | sed -n '4p')" >> "$(dirname $(realpath $0))/pacrep-info.txt"
done <$file

## Refers
# https://phoenixnap.com/kb/bash-read-file-line-by-line
# https://linuxize.com/post/bash-write-to-file/
