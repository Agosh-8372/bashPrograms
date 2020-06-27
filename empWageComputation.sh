#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
 WAGE_PER_HR=20;
 IS_FULL_TIME=1;
 IS_PART_TIME=2;
 NUM_WORK_DAYS=20;
 MAX_MONTH_HR=100;
totalEmpHrs=0;
totalWorkingDays=0;
 function getWorkHrs(){
   local empCheck=$1;
     case  $empCheck in
            $IS_FULL_TIME)
               empHrs=8;
                ;;
            $IS_PART_TIME)
               empHrs=4
                ;;
              *)
               empHrs=0
                  ;;
    esac
   echo $empHrs
}
function getEmpWage(){
local empHrs=$1;
echo $((empHrs*$WAGE_PER_HR))
}
while [[ $totalEmpHrs -lt $MAX_MONTH_HR  &&  $totalWorkingDays -lt $NUM_WORK_DAYS ]]
do
((totalWorkingDays++))
empCheck=$((RANDOM%3))
empHrs=$( getWorkHrs $empCheck)
totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
dailyWage[$totalWorkingDays]=$( getEmpWage $empHrs )
done
totalSalary=$(( $WAGE_PER_HR * $totalEmpHrs ))
echo "day - " ${!dailyWage[@]}
echo "daily Wage - "${dailyWage[@]}
echo "total salary " $totalSalary

