#!/bin/bash
#In this script working on functions 


echo "this function is for addition"
function addition(){
	let a=10
	let b=20
	sum=$((a + b ))
	echo "the addition of two number is: $sum"
}

addition


echo "this funtion is for subtraction"

function subtraction(){
	let a=20
	let b=30
	sub=$((b-a))
	echo "the subtraction of two number is: $sub"

}
subtraction

echo "this function is for multiplication"

function multiplication(){
      read -p "Enter First number: " number1
      read -p "Enter Second Number: " number2
      mul=$((number1*number2))
      echo "The multiplication of two Number is: $mul"

}
multiplication








