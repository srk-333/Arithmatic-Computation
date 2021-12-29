#!/bin/bash -x

read -p "Enter First number " a;
read -p "Enter Second number " b;
read -p "Enter Third  number " c;

firstComput=$(( a + b * c ));
SecondComput=$(( a * b + c ));
ThirdComputation=$(( c + a / b ));
