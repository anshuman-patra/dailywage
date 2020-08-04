#!/bin/bash  

echo "welcome to employee wage"
#empCheck=$((RANDOM%3))
EMP_WAGE_PER_HR=20
full_hr=8
part_hr=4
NUMBER_OF_WORKING_DAYS=20
MAX_WORKING_HRS=100
totalSalary=0
totalEmpHr=0
totalWorkingDays=0
function  employeewage()
{
while [[ $totalEmpHr -le $MAX_WORKING_HRS || $totalWorkingDays -le $NUMBER_OF_WORKING_DAYS ]]
do
((totalWorkingDays++))


empCheck=$((RANDOM%3))
case $empCheck in
                2)
                        #echo "Employee is Part-Time"
                 emphr=$part_hr         
		wage=$(( $EMP_WAGE_PER_HR * $emphr ))
               	#echo "wage per day "$wage 
               ;;
                1)
                        #echo "Employee is Full-Time"
                         emphr=$full_hr
                         wage=$(( $EMP_WAGE_PER_HR * $emphr ))

              #  echo "wage per day "$wage
                ;;
 		0)
                        #echo "Employee is absent"

                  emphr=0       
                  wage=$(( $EMP_WAGE_PER_HR * $emphr ))


          #      echo "wage per day "$wage
		;;

              
                                   
        esac
totalEmpHr=$(( $totalEmpHr + $emphr ))
totalSalary=$(( $totalEmpHr * $EMP_WAGE_PER_HR ))
done

echo "Total Wage of Emp:" $totalSalary
}
( employeewage )
 
