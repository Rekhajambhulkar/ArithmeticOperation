#! /bin/bash -x

declare -A resDict
declare -a Array

echo "Welcome in ArithmeticOperation"

#Take input from User
echo "Enter 1st no:" 
read num1 
echo "Enter 2nd no:" 
read num2
echo "Enter 3rd no:"
read num3

echo $num1 $num2 $num3

resDict["k1"]= `awk 'BEGIN{printf("%0.2f", '$num1' + '$num2' * '$num3' )}'`;
resDict["k2"]= `awk 'BEGIN{printf("%0.2f", '$num1' * '$num2' + '$num3' )}'`;
resDict["k3"]= `awk 'BEGIN{printf("%0.2f", '$num1' + '$num2' / '$num3' )}'`;
resDict["k4"]= `awk 'BEGIN{printf("%0.2f", '$num1' % '$num2' + '$num3' )}'`;

echo "result is:" ${resDict[@]}

echo "keys" ${resDict[@]}
