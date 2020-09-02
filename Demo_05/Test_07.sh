#! /bin/bash

#break跳出多层循环，根据参数指定跳出循环层数
for(( i=1;i<=9;i++))
do
	for((j=1;j<=i;j++))
	do
		let "product=i*j"
		printf "${i}*${j}=${product}"
		if [[ "${product}" -gt 9 ]];then
			printf "   "
		else
			printf "   "
		fi
		if [[ "${j}" -eq 5 ]];then
			break 2
		fi
	done
	echo
done


