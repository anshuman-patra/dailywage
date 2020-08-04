#!/bin/bash 
echo "welcome to employee wage"
empCheck=$((RANDOM%3))
EMP_WAGE_PER_HR=20
full_hr=8
part_hr=4
case $empCheck in
                2)
                        echo "Employee is Part-Time"
                         wage=$(( $EMP_WAGE_PER_HR * $full_hr ))

               	echo "wage per day "$wage 
               ;;
                1)
                        echo "Employee is Full-Time"
                         
                         wage=$(( $EMP_WAGE_PER_HR * $full_hr ))

                echo "wage per day "$wage
                ;;
 		0)
                        echo "Employee is absent"

                         wage=$(( $EMP_WAGE_PER_HR * $part_hr ))

                echo "wage per day "$wage
		;;

                *)
                        #echo "Employee is Absent"
                        empHr=0
                ;;
        esac
