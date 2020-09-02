#! /bin/bash
#输出数组第一个元素
a=(1 2 3 4)
echo ${a}
echo
#通过数组下标访问数组
a=(a b c d e)
echo "${a[0]}"
echo "${a[1]}"
echo "${a[2]}"
echo "${a[3]}"
echo "${a[4]}"
echo 

#计算数组长度
a=("sadfa" "dsafffdfd" "dasfdasfasd" "asfddsfdsfasdf")
echo "${#a[@]}"
echo "${#a[*]}"
echo "${#a[0]}"
echo "${#a[1]}"
echo "${#a[2]}"
echo "${#a[3]}"
echo "${#a[4]}"
echo

#通过循环遍历数组
for i in {0..6}
do
	echo ${a[${i}]}
done
echo

#引用所有的数组元素
for e in "${a[@]}"
do
	echo ${e}
done 
echo 


len="${#a[@]}"
for ((i=0;i<${len};i++))
do
	echo ${a[${i}]}
done 
echo

#数组元素替换
a=(1 2 3 4 5 6)
echo ${a[@]}
echo "${a[@]/3/52}"
a=${a[@]/3/77}
echo "${a[@]}"






