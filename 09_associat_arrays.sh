#!/bin/bash


echo "Normal Arrays Example:"
fruits=("apple" "banana" "Mangoes");
echo "${fruits[1]}"



echo "Associate array Example:(Bash 4+)"
declare -A user
user[name]="Shiva"
user[age]=35
echo "${user[name]} is ${user[age]} years old."





