#!/bin/bash

read -p "What is the file you want to check: " filename
read -p "what is the first word: " word1

cat $filename | grep -n $word1

if [ $? == 0 ]
then
    read -p "what is the second word: " word2
    cat $filename | grep -n $word2
    if [ $? == 0 ]
    then
        read -p "what is the third word: " word3
        cat $filename | grep -n $word3
        if [ $? != 0 ]
        then
            echo "Third word does not exist. Error:$?"
        fi
    else
    echo "Second word doesn't exist. Error:$?"
fi
else
    echo "Fist word doesn't exist. Error:$?"
fi
