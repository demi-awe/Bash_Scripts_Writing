#!/bin/bash


for (( i=20; i>=1; i-- ))
do
    echo "The value of i is "$i   
    theDifference=$(($i - 1))
    theSum=$(($theDifference + $i))
    echo "The sum of i and the difference is "$theSum
done
