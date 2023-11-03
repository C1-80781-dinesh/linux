#!/bin/bash

db="addressbook.db"
table="contacts"

# Function to initialize database
function init_db() {
    sqlite3 "$db" "CREATE TABLE IF NOT EXISTS $table (name TEXT, email TEXT, mobile TEXT);"
}

# Function to add a new contact
function add_contact() {
    read -p "Enter the Name: " name
    read -p "Enter the Email: " email
    read -p "Enter the Mobile Number: " mobile
    sqlite3 "$db" "INSERT INTO $table (name, email, mobile) VALUES ('$name', '$email', '$mobile');"
    echo "Contact added successfully!"
}

# Function to view all contacts
function view_contacts() {
    sqlite3 "$db" "SELECT * FROM $table;"
}

# Function to search for a contact
function search_contact() {
    read -p "Enter the Name: " name
    sqlite3 "$db" "SELECT * FROM $table WHERE name='$name';"
}

# Function to delete a contact
function delete_contact() {
    read -p "Enter the Name: " name
    sqlite3 "$db" "DELETE FROM $table WHERE name='$name';"
    echo "Contact deleted successfully!"
}

# Function to count contacts
function count_contacts() {
    sqlite3 "$db" "SELECT COUNT(*) FROM $table;"
}

# Main Menu
while true; do
    init_db
    echo "Address Book Menu"
    echo "------------------------------"
    echo "1. Add a new contact"
    echo "2. View all contacts"
    echo "3. Search for a contact"
    echo "4. Delete a contact"
    echo "5. Count of contacts"
    echo "6. Exit"
    read -p "Enter the number of your choice: " choice
    case $choice in
        1) add_contact ;;
        2) view_contacts ;;
        3) search_contact ;;
        4) delete_contact ;;
        5) count_contacts ;;
        6) break ;;
        *) echo "Invalid choice. Please enter a number between 1 and 