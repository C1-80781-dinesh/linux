#!/bin/bash

# Function to check validity of mobile number
is_valid_mobile() {
    local mobile_number=$1

    # Check if the number is 10 digits long and starts with 0 or +91
    if [[ ${mobile_number:0:1} == 0 ]] && [[ ${#mobile_number} == 10 ]]; then
        echo "Valid"
    elif [[ ${mobile_number:0:3} == +91 ]] && [[ ${#mobile_number} == 13 ]]; then
        echo "Valid"
    else
        echo "Invalid"
    fi
}

# Read mobile number from user
read -p "Enter mobile number: " mobile_number

# Check validity of mobile number and display the result
validity=$(is_valid_mobile $mobile_number)

if [[ $validity == "Valid" ]]; then
    echo "The entered mobile number $mobile_number is valid."
else
    echo "The entered mobile number $mobile_number is invalid."
fi