#!/bin/bash

# Function to find the nth term of the Fibonacci series
fibonacci() {
 if [ "$1" -le "1" ]; then
    echo "$1"
 else
    local n=$1
    n=$((n - 1))
    local term1=$(fibonacci $n)
    n=$((n - 1))
    local term2=$(fibonacci $n)
    local result=$((term1 + term2))
    echo "$result"
 fi
}

# Reading input from user
echo "Enter the number of terms in the Fibonacci series: "
read numberOfTerms

# Checking if the number of terms is positive
if [ "$numberOfTerms" -gt "0" ]; then
 # Calling the fibonacci function for each term
 for i in $(seq 1 $numberOfTerms)
 do
    result=$(fibonacci $i)
    echo "$result"
 done
else
 echo "Number of terms should be a positive integer."
fi
