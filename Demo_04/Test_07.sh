#! /bin/bash


#使用if elif语句进行多条件判断
echo "Please enter a score:"
read score

if [ -z "${score}" ];then
	echo "You enter noting.	Please enter a score:"
	read score
else
	if  [ "${score}" -lt 0 -o "${score}" -gt 100 ];then
		echo "The score should be between 0 and 100.Please enter again:"
		read score
	else
		if [ "${score}" -ge 90 ];then
			echo "The grade is A."
		elif [ "${score}" -ge 80 ];then
			echo "The grade is B."
		elif [ "${score}" -ge 70 ];then
			echo "The grade is C."
		elif [ "${score}" -ge 60 ];then
			echo "The grade is D."
		else
			echo "The grade is E."
		fi
	fi
fi
			
