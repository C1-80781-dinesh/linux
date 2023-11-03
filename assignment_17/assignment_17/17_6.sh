#!/bin/bash

# Take input from user
echo "Enter number of lines : "
read n

# Function to print following lines
print_lines() {
    a=$1
    while [ $a -le $n ]
    do
        # Calculate nth line using a loop
        str=""
        i=1
        while [ $i -le $a ]
        do
            if [ $i -le $a/2 ]
            then
                j=$i
            else
                j=$a-($i-1)
            fi
            str=$str$j
            i=$((i+1))
        done
        echo "$str"
        a=$((a+1))
    done
}

# Call function to print lines
print_lines 1