#!/bin/bash -x

read -p "Enter First number " a;
read -p "Enter Second number " b;
read -p "Enter Third  number " c;

firstComput=$(( a + b * c ));
secondComput=$(( a * b + c ));
thirdComput=$(( c + a / b ));
fourthComput=$(( a % b + c ));

declare -A CompuDict;

CompuDict[A]=$firstComput;
CompuDict[B]=$secondComput;
CompuDict[C]=$thirdComput;
CompuDict[D]=$fourthComput;

declare -a ComputArray;

VALUES=()

count=0


 for DATA in "${CompuDict[@]}";

   do
       
         VALUES+=("${DATA##*:}")
	
             ((count++))

   done


 
for(( i=0;i<count; i++ ))

     do
	
         ComputArray[i]=${VALUES[i]}

    done



echo "Values of dictionary in the array: " ${ComputArray[@]}