#!/bin/bash -x
echo "Enter first number"
read a
echo "Enter second number"
read b
echo "enter third number"
read c
first=$(((a+b)*c))
second=$(((a*b)+c))
third=$(((c+a)/b))
fourth=$(((a%b)+c))

declare -A dict
dict[count]="$first"
dict[count1]="$second"
dict[count2]="$third"
dict[count3]="$fourth"
echo "Dictionary is: "${dict1[@]}

declare -a Arry
Arry=(${dict[@]})
echo "values in Array:" ${Array1[*]}

for(( i=0; i<4; i++))
do
    for(( j=0; j<4-i-1; j++))
       do
           if [ ${Arry[j]} -gt ${Arry[$((j+1))]} ]
                then
		        temp=${Arry[j]}
            		Arry[$j]=${Arry[$((j+1))]}
            		Arry[$((j+1))]=$temp
        	fi
	done
done
echo "Array in Ascending order:" ${Arry[*]}

for(( i=0; i<4; i++))
do
        for(( j=0; j<4-i-1; j++))
        do
                if [ ${Arry[j]} -lt ${Arry[$((j+1))]} ]
                then
                        temp=${Arry[j]}
                        Arry[$j]=${Arry[$((j+1))]}
                        Arry[$((j+1))]=$temp
                fi
        done
done
echo "Array in Descending order:" ${Arry[*]}
