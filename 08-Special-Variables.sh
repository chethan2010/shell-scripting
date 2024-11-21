#!/bin/bash


echo "To print all variables: $@"

echo "To print Number of variables Passed: $#"

echo "To print Script Name: $0"

echo "Current working directory: $PWD"

echo "Home directory of current user: $HOME"


echo "Which user is running this script: $USER"

echo "Which user is running this script: $HOSTNAME"

echo "To print process Id of current shellscript: $$"
sleep 60 &
echo "Proces id of last back ground command: $!"
