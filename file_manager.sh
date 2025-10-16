#!/bin/bash

echo "Welcome to the File Manager"
echo "Choose an option:"
echo "1. List files"
echo "2. Create a file"
echo "3. Delete a file"
echo "4. Exit"

read -p "Enter your choice [1-4]: " choice

case $choice in
    1)
        ls -la
        ;;
    2)
        read -p "Enter filename to create: " filename
        touch "$filename"
        echo "$filename created."
        ;;
    3)
        read -p "Enter filename to delete: " filename
        rm -i "$filename"
        ;;
    4)
        echo "Exiting..."
        ;;
    *)
        echo "Invalid option"
        ;;
esac

chmod +x file_manager.sh
