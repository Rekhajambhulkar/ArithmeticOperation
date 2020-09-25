#! /bin/bash -x

declare -A Dict
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

#compute the arithmetic Operations
Dict[k1] = `awk 'BEGIN{printf("%0.2f", '$num1' + '$num2' * '$num3' )}'`;
Dict[k2] = `awk 'BEGIN{printf("%0.2f", '$num1' * '$num2' + '$num3' )}'`;
Dict[k3] = `awk 'BEGIN{printf("%0.2f", '$num1' + '$num2' / '$num3' )}'`;
Dict[k4] = `awk 'BEGIN{printf("%0.2f", '$num1' % '$num2' + '$num3' )}'`;

#Store the res into the Dictionary
echo "result is:" ${Dict[@]}

#Reav values from Dictionary to array
Array=${Dict[@]}

#Sort the result in Descending order
DescendingRes=$(for i in ${Array[@]};do echo $i;done | sort -nr);
echo "res in descending order:" $DescendingRes

#Sort the result in Ascending order
AscendingRes=$(for i in ${Array[@]};do echo $i;done | sort -n);
echo "Res in Ascending oder:" $AscendingRes
