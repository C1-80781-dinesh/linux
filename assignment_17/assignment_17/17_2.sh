#!/bin/bash

echo "Please enter a word: "
read word

echo "The lower case of the word is: "
echo "$word" | tr '[:upper:]' '[:lower:]'