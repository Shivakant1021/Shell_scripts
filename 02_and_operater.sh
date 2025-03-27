#!/bin/bash

# Read user input
read -p "What is your age?: " age
read -p "What is your country?: " country

# Check if user is eligible to vote
if [[ $age -ge 18 ]] && [[ "$country" == "India" ]]; then
    echo "You can VOTE!"
else
    echo "You cannot vote!"
fi

: '
This is a multi-line comment.
Another comment line.
'





