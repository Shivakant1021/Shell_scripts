#!bin/bash

fruits=("apple" "mangoes" "Banana")

fruits+=("orange")

unset fruits[1]

echo "Update arry: ${fruits[@]}"







