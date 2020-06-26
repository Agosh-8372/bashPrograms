#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
random=$((RANDOM%3))
 Wage_perHour=20
 full_dayHrs=8
 part_dayHrs=8
    if [ $random -eq 1 ]
    then
    echo "Employee is present and is full time "
    echo "salary = $((Wage_perHour * full_dayHrs))"
      elif [ $random -eq 2 ]
      then
      echo "Employee is present and is part-time "
      echo "salary = $((Wage_perHour * part_dayHrs))"
        else
        echo "Employee is absent"
        echo "salary = 0"
        fi
