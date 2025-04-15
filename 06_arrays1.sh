#!/bin/bash

fruits=("apple" "mangoes" "Banana")

read -p "Enter fruit: " fruit
fruits+=("$fruit")

unset fruits[1]

echo "Updated array: ${fruits[@]}"






