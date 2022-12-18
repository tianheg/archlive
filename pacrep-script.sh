#!/usr/bin/env bash

# Watch packages info inside packages.x86_64
file="packages.x86_64"
while read -r line; do
echo -e "#####################################
#####################################
$line
$(pacman -Si $line)" >> pacrep-info.txt
done <$file

## Refers
# https://phoenixnap.com/kb/bash-read-file-line-by-line
# https://linuxize.com/post/bash-write-to-file/
