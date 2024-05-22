#!/bin/bash


read -p "Enter your number: " number

read -p "Enter your number: " number2

sum=$((number+number2))
echo "sum is $sum"
difference=$((number-number2))
echo "difference is $difference"
product=$((number*number2))
echo "product is $product"
echo "quotient is " $((number/number2)) 
