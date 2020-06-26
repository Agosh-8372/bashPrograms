#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
random=$((RANDOM%2))
Wage_perHour=20
full_dayHrs=8
if [ $random -eq 1 ]
then
echo "Employee is present "
echo "salary = $((Wage_perHour * full_dayHrs))"
else
echo "Employee is absent "
echo "salary = 0"
fi
