#!/bin/bash

welcome_message() {
    echo "**********************************************"
    echo "* Welcome $USER! This is your home directory. *"
    echo "**********************************************"
}

welcome_message

echo "The contents of your home directory are:"
ls -la ~
