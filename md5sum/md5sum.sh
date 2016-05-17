#!/bin/bash
direc=$(pwd)
for file in *.conf
do
    echo $file
    md5sum $file > "$file".md5
    echo "#########################"
done