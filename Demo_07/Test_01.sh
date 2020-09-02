#! /bin/bash

array[1]=one
array[3]=three
#输出数组元素
echo "${array[@]}"
echo "${array[*]}"

#使用declare申明数组
declare -a arrayy
arrayy[0]=1
arrayy[1]=2
echo "${arrayy[@]}"

#定义数组
array=(1 2 3 4 5 6 7 8)
echo "The first element is ${#array[0]}"
echo "The first element is ${array[0]}"
echo "The element of this array are \" ${array[@]} \""
echo "The element of this array are \" ${array[*]} \""
echo "The size of the array is ${#array[@]}"
echo "The size of the array is ${#array[*]}"
echo

#通过键值定义数组(数字)
array=([0]=one [5]=five)
echo "The first element is ${array[5]}"
echo "The element of this array are \" ${array[@]} \""
echo "The element of this array are \" ${array[*]} \""
echo "The size of the array is ${#array[@]}"
echo "The size of the array is ${#array[*]}"
echo

#通过键值定义数组(字符串)
declare -A arrayf
arrayf=([test]=rose [testd]=apple)
echo "The first element is ${arrayf[test]}"
echo "The first element is ${arrayf[testd]}"
echo "The element of this array are \" ${arrayf[@]} \""
echo "The element of this array are \" ${arrayf[*]} \""
echo "The size of the array is ${#arrayf[@]}"
echo "The size of the array is ${#arrayf[*]}"
echo
 
#数组与普通变量
declare -a arrayt
arrayt="hello,world!"
echo "${arrayt[0]}"
echo "${arrayt[@]}"
echo "${arrayt[*]}"
echo








