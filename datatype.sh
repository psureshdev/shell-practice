#!/bin/bash

num1=10
num2=5

timestamp=$(date)

echo "script excute at $timestamp"
sum= $((num1+num2))
echo "sum of $num1 and $num2 is $sum"