#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
random=$((RANDOM%2))
if [ $random -eq 0 ]
then
echo "Employee is absent "
else
echo "Employee is present "
fi
