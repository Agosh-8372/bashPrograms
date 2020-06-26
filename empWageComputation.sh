#!/bin/bash -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
random=$((RANDOM%3))
 Wage_perHour=20
 IS_FULL_TIME=1;
 IS_PART_TIME=2;
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
totalSalary=$((Wage_perHour * empHrs))
