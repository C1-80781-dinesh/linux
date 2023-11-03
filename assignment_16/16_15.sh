#!/bin/bash

echo "Enter first file:"
read file1

echo "Enter second file:"
read file2

if [ -f "$file1" ] && [ -f "$file2" ]; then


    while read line; do

        echo "$line" >> $file2
    done < <(tac $file1)

    echo "The contents of $file1 have been appended to $file2 in reverse case."

else
    echo "Either $file1 or $file2 does not exist."
fi
