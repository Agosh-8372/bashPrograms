#!/bin/bash -x
IS_HEAD=1;
IS_TAIL=0;
totalflip=20;
countH=0;
countT=0;
while [[ $countH -lt 21 && $countT -lt 21 ]]
do
	random=$((RANDOM%2))
	case $random in
		$IS_HEAD)
			((countH++))
				;;
		$IS_TAIL)
			((countT++))
				;;
	esac
done
echo "Number of times Head appeared :" $countH
echo "Number of times Tail appeared :" $countT

if [[ $countH -eq 21 && $countT -eq 21 ]]
then
	echo "Tie"
elif [[ $countH -eq 21 ]]
then
	total=$(( countH-countT ))
        echo "Head won by " $total
else
	total=$(( countT-countH ))
        echo "Tail Won by " $total
fi
