#!/bin/bash

path=$1

# check if the path is a directory or a file
if [ -d "$path" ]; then
    # directory
    dir_count=$(find "$path" -type d | wc -l)
    file_count=$(find "$path" -type f | wc -l)
    echo "Directory '$path' contains $dir_count directories and $file_count files."

elif [ -f "$path" ]; then
    # file
    permission=$(ls -l "$path" | cut -d ' ' -f 1)
    size=$(ls -l "$path" | awk '{print $5}')
    owner=$(ls -l "$path" | awk '{print $3}')
    echo "File '$path' has permissions: $permission, size: $size bytes, and owner: $owner."

else
    # invalid path
    echo "Error: '$path' is not a valid file or directory."
fi