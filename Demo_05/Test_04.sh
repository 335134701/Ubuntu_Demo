#! /bin/bash


#C语言风格的for循环
for((i=0;i<=5;i++))
do 
	echo "${i}"
done 
echo
echo

#for循环遍历数组
array=("adddd" "bddd" "c" "d")

for a in ${array[*]}
do
	echo ${a}
done

