#! /bin/bash


#循环结构
for var in 1 2 3 4 5 6
do 
	#依次输出列表中数字
	echo "the number is ${var}"
done
echo
echo
for var in {1..8}
do 
	#依次输出列表中数字
	echo "the number is ${var}"
done
echo
echo
sum=0
for i in {1..100..2}
do 
	let "sum=sum+i"
done
echo "the sum is ${sum}"


for day in Mon Tue Wed Thu Fri Sat Sun
do 
	#输出循环变量的值
	echo "${day}"
done
