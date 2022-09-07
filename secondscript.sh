#!/bin/bash
echo "This script is designed to check if a directory exists in your home folder or not"
#DIRECTORY_NAME=$(pwd)/scripts
read -p "Enter your directory name: " user_directory
FULL_DIRECTORY_PATH=$(pwd)/$user_directory
# if [ $FULL_DIRECTORY_PATH = "/home/ubuntu/scripts" ]
if [ -d $FULL_DIRECTORY_PATH ]
then
    echo "The name of your directory in the home folder is "$FULL_DIRECTORY_PATH
else
    echo "This folder does not exist, create it with mkdir"
fi


