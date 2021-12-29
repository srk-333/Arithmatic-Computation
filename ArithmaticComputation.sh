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

# Array DescOrder

size=${#ComputArray[@]};

  for (( i=0;i<$size;i++ ))
    do
       for (( j=0;j<$size-1-$i;j++ ))
          do
              if [[ ${ComputArray[j]} -lt ${ComputArray[j+1]} ]]
                  then
                                   temp=${ComputArray[j]};
                                   ComputArray[$j]=${ComputArray[$((j+1))]};
                                   ComputArray[$((j+1))]=$temp;
               fi
           done
     done

# Array in ascending order

for (( i=0;i<$size;i++ ))
    do
       for (( j=0;j<$size-1-$i;j++ ))
          do
              if [[ ${ComputArray[j]} -gt ${ComputArray[j+1]} ]]
                  then
                                   temp=${ComputArray[j]};
                                   ComputArray[$j]=${ComputArray[$((j+1))]};
                                   ComputArray[$((j+1))]=$temp;
               fi
           done
     done







