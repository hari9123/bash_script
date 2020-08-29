#!/bin/bash

###Calculator Script

read -p "provide first input:" a
read -p "provide second input:" b

echo "=============== Please select the one of the below operations ===============
1.Addition
2.Subtraction
3.Multiplication
4.Division
5.Exit
"
read x
case $x in
1)
opr=$(echo "sclae=3; $a + $b"|bc )
;;
2)
opr=$((a-b))
;;
3)
opr=$((a*b))
;;
4)
opr=$(echo "scale=3;$a/$b"|bc)
;;
5)
echo "You choose to exit"
;;
*)
echo "Please select correct operation"
;;
esac
if [[ $x -gt 0 && $x -lt 5 ]]
then
echo "your result is : ${opr}"
fi 



