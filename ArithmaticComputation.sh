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
