#!/bin/bash

while true; do
   clear
   echo "File and Directory Operations Menu"
   echo "-----------------------------------------------------------"
   echo "1. List files and directories in the given path"
   echo "2. Display information about a file or directory"
   echo "3. Create a directory"
   echo "4. Create a file"
   echo "5. Copy a file or directory"
   echo "6. Move/Rename a file or directory"
   echo "7. Delete a file or directory"
   echo "8. Exit"
   echo -n "Enter the number of your choice: "
   read choice
   case $choice in
       1) 
           echo -n "Enter the path to list files and directories: "
           read path
           ls -l "$path"
           ;;
       2) 
           echo -n "Enter the path of the file or directory: "
           read path
           stat "$path"
           ;;
       3) 
           echo -n "Enter the directory path and name: "
           read path
           mkdir -p "$path"
           ;;
       4) 
           echo -n "Enter the file path and name: "
           read path
           touch "$path"
           echo "Add some contents to the file:"
           read -r content
           echo "$content" > "$path"
           ;;
       5) 
           echo -n "Enter the source path: "
           read src_path
           echo -n "Enter the destination path: "
           read dest_path
           cp -r "$src_path" "$dest_path"
           ;;
       6) 
           echo -n "Enter the file or directory path to move/rename: "
           read path
           echo -n "Enter the new file or directory name: "
           read new_name
           mv "$path" "$new_name"
           ;;
       7) 
           echo -n "Enter the file or directory path to delete: "
           read path
           rm -rf "$path"
           ;;
       8) 
           break
           ;;
       *) 
           echo "Invalid choice. Please enter a number between 1 and 8