#! /bin/bash


#安装索引为元素赋值
declare -a students
students=(Jon Rose Tom Tim)
echo "The old students are :${students[@]}"
echo "The old students are :${students[*]}"
students[0]=Susan
students[3]=Jack
echo "The new students are :${students[@]}"
echo "The new students are :${students[*]}"
echo
declare -A grades
grades=([Jon]=90 [Rose]=80 [Tom]=60 [Tim]=50)
echo "The old grades are :${grades[@]}"
echo "The old grades are :${grades[*]}"
grades[Jon]=66
grades[Tim]=69
echo "The new grades are :${grades[@]}"
echo "The new grades are :${grades[*]}"
echo
echo

#通过集合为数组赋值
declare -a array
array=(Jon Rose Tom Tim)
echo "The old array are :${array[@]}"
echo "The old array are :${array[*]}"
array=(55 66 77 88 99)
echo "The new1 array are :${array[@]}"
echo "The new1 array are :${array[*]}"
array=(55 66 77 88 99 400 566)
echo "The new2 array are :${array[@]}"
echo "The new2 array are :${array[*]}"
array=(568 789)
echo "The new3 array are :${array[@]}"
echo "The new3 array are :${array[*]}"
tf=(16 8886 8899 899 46 8899)
array=${tf[@]}
echo "The new4 array are :${array[@]}"
echo "The new4 array are :${array[*]}"
echo
echo

#在数组末尾添加元素
declare -a array
array=(Jon Rose Tom Tim)
echo "The old array are :${array[@]}"
echo "The old array are :${array[*]}"
array[4]=Jack
array[5]=Susan
echo "The new1 array are :${array[@]}"
echo "The new1 array are :${array[*]}"
declare -A grades
grades=([Jon]=90 [Rose]=80 [Tom]=60 [Tim]=50)
echo "The old grades are :${grades[@]}"
echo "The old grades are :${grades[*]}"
grades[John]=66
grades[Timss]=69
echo "The new grades are :${grades[@]}"
echo "The new grades are :${grades[*]}"
echo
echo

#通过循环为数组元素赋值
declare -a arrayt
for i in {1..10}
do
	arrayt[${i}]=${i}
done
echo "The arrayt are :${arrayt[@]}"
echo "The arrayt are :${arrayt[*]}"
echo "The number of element is:${#arrayt[@]}"
echo "The number of element is:${#arrayt[@]}"

