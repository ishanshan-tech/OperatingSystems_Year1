#!/bin/bash

list_files() {
    ls -l
}
disk_space() {
    df -h
}
system_path() {
    echo $PATH
}

# Define function to display command history
history_path() {
    cat ~/.zsh_history
    
}



# Define function to backup files
backup_files() {
    read -p "Enter the name of the directory to backup: " source_directory
    backup_directory="./BackupFolder"

    echo "Backing up files from '$source_directory' to '$backup_directory'..."
    cp "$source_directory" "$backup_directory"
    echo "Backup complete."
    echo "Listing contents of '$backup_directory'"
    ls -la "$backup_directory"
    read -p "Press Enter to continue"


}

# Define function to exit the script
exit_script() {
    exit 0
}

# Display menu and prompt user for choice
while true; do
    echo " * Bash Commands * "
    echo "1. List files"
    echo "2. Show free disk space"
    echo "3. Show system path"
    echo "4. Display command history"
    echo "5. Backup files"
    echo "6. Exit"

    read -p "Enter your choice [1-6]: " choice
    echo "----------------------------------------------------------------"
    
    case $choice in
        1) list_files ;;
        2) disk_space ;;
        3) system_path ;;
        4) history_path ;;
        5) backup_files ;;
        6) exit_script ;;
        *) echo "Invalid choice. Please enter a number from 1 to 6." ;;
    esac
    echo
    echo "----------------------------------------------------------------" 
    echo # Print an empty line 
done
