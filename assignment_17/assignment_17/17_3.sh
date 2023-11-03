#!/bin/bash

# Continuously running menu
while true; do
    clear
    echo "Enter month name or number to check the number of days."
    echo "13. Exit"
    read -p "Enter your choice: " choice

    # Convert month name to month number if input is alphabetic
    if [[ "$choice" =~ [A-Za-z] ]]; then
        month_number=$(date -d "$choice 1 2000" +%m)
    else
        month_number=$choice
    fi

    # Handle user input
    case $month_number in
        1) month="January";;
        2) month="February";;
        3) month="March";;
        4) month="April";;
        5) month="May";;
        6) month="June";;
        7) month="July";;
        8) month="August";;
        9) month="September";;
        10) month="October";;
        11) month="November";;
        12) month="December";;
        13) exit;;
        *) echo "Invalid choice, please choose again";;
    esac

    # Check if the month number is valid and then calculate the number of days
    if [[ "$month_number" =~ ^(0[1-9]|1[0-2])$ ]]; then
        days=$(date -d "$month_number 1 2000 + 1 month - 1 day" +%d)
        echo "Days in $month are: $days"
    else
        echo "Invalid month number, please choose again"
    fi

    # Pause before the next iteration
    read -p "Press enter to continue..."
done