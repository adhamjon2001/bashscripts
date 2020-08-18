#!/bin/bash

read -p "Enter first command: " command1
read -p "Enter second command: " command2

$command1

if [ $? == 0 ]
then
    $command2
else
    echo "Command 1 was invalid. Error:$?"
fi