#!/bin/bash
echo "This script is designed to check if a file exists in a specified folder or not"
#DIRECTORY_NAME=$(pwd)/scripts
read -p "Enter your directory name: " user_directory
read -p "Enter your file name: " user_file
FULL_DIRECTORY_PATH=$(pwd)/$user_directory
filename=$FULL_DIRECTORY_PATH/$user_file

echo "The path to the file user entered is "$filename
# if [ $FULL_DIRECTORY_PATH = "/home/ubuntu/scripts" ]
if [ -e $filename ]
then
    last_line=$(tail -1 $filename)
    file_size_linux=$(du -sh $filename)
    echo "Your file exists with file details "$file_size_linux" and the last line of the file is "$last_line
    echo "Nothing to do"
elif [ $user_file = "HelloAanu.txt" ]
then
    echo "This is a demo line of code"
else
    echo "This file does not exist in this system, creating..."
    sh firstscript.sh
fi