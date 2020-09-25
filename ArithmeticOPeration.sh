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

Dict[k1] = `awk 'BEGIN{printf("%0.2f", '$num1' + '$num2' * '$num3' )}'`;
Dict[k2] = `awk 'BEGIN{printf("%0.2f", '$num1' * '$num2' + '$num3' )}'`;
Dict[k3] = `awk 'BEGIN{printf("%0.2f", '$num1' + '$num2' / '$num3' )}'`;
Dict[k4] = `awk 'BEGIN{printf("%0.2f", '$num1' % '$num2' + '$num3' )}'`;

echo "result is:" ${Dict[@]}


Array=${Dict[@]}

DescendingRes=$(for i in ${Array[@]};do echo $i;done | sort -nr);
echo "res in descending order:" $DescendingRes

AscendingRes=$(for i in ${Array[@]};do echo $i;done | sort -n);
echo "Res in Ascending oder:" $AscendingRes
