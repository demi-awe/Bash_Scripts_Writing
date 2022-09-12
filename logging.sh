#!/bin/bash
firstName=$1
pin=$2

if [[ $2 -eq 7911 ]]
    then
        echo "Welcome "$1 " Pin is correct, logging in..." 
        echo $(date) "User" $1 "logging in with a corrent pin "$2 >> access_logs.log
    elif [[ $2 -eq 2389 ]]
    then
        echo "Unfortunately "$1 " Pin was recently changed, please use new PIN" 
        echo $(date) "User" $1 "logging in with a changed pin "$2 >> access_logs.log
    else
        echo "Aww!!! "$1 "Wrong pin."     
        echo $(date) "User" $1 "logging in with a wrong pin "$2 >> access_logs.log   
fi
