#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

# Check if directory exists

if [ -d "$SOURCE_DIRECTORY" ]
then
    echo -e "${G}Source directory exists${N}"
else
    echo -e "${R}Please make sure source directory exists${N}"
    exit 1
fi

# Find log files older than 14 days

FILES=$(find "$SOURCE_DIRECTORY" -type f -name "*.log" -mtime +14)

# Check if files exist

if [ -n "$FILES" ]
then
    echo -e "${Y}Files older than 14 days:${N}"

    for file in $FILES
    do
        echo "Deleting file: $file"

        rm -f "$file"

        if [ $? -eq 0 ]
        then
            echo -e "${G}Successfully deleted: $file${N}"
        else
            echo -e "${R}Failed to delete: $file${N}"
        fi
    done

else
    echo -e "${R}No files older than 14 days found${N}"
fi