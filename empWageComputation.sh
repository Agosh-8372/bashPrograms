#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_MONTH_HR=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;
   totalEmpHrs=0;
   totalWorkingDays=0;
while [[ $totalEmpHrs -le  $MAX_MONTH_HR && $totalWorkingDays -le $NUM_WORKING_DAYS ]]
do
    ((totalWorkingDays++))
   random=$((RANDOM%3))
    case  $random in
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
totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
done
totalSalary=$(( $totalEmpHrs*$EMP_RATE_PER_HR ))
