#!/bin/bash

author="William Shakespeare "
poem="When that I was and a little tiny boy"
#read -p "filename: " filename
read -p "word 1: " word1
read -p "word 2: " word2
read -p "word 3: " word3


#grep "$word1\|$word2\|$word3" sampledata.txt
cat sampledata.txt | grep "$word1\|$word2\|$word3"
if [ $? == 0 ]
then
    echo "The poem is called $poem and the author is $author"
else
    echo "The words doesn't exist"
fi