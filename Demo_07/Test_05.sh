#! /bin/bash

#数组赋值
linux=("Debian" "RedHat" "Ubuntu" "UTS" "CentOS")
echo "linux长度:${#linux[@]}"
echo "linux数组:${linux[@]}"
linux2=(${linux[@]})
echo "linux2长度:${#linux2[@]}"
echo "linux2数组:${linux2[@]}"
linux2=("${linux[@]}")
echo "linux2长度:${#linux2[@]}"
echo "linux2数组:${linux2[@]}"
echo "${linux2[3]}"
echo

#连接数组
linux=("Debian" "RedHat" "Ubuntu" "UTS" "CentOS")
shell=("bash" "csh" "ksh" "rsh" "sh" "rc" "tesh")
echo "第一个数组：${linux[@]}"
echo "第一个数组：${shell[@]}"
linuxshell=("${linux[@]}" "${shell[@]}")
echo "合并的数组:${linuxshell[@]}"
echo "合并的数组长度为:${#linuxshell[@]}"
echo

#加载文件内容到数组
if [ ! -f $(pwd)/demo.txt ];then
	touch demo.txt
	for ((i=0;i<10;i++))
	do
		echo "第${i}个元素为:${i}" >> demo.txt
	done
fi
content=(`cat $(pwd)/demo.txt`)
for s in "${content[@]}"
do
	echo "-------${s}"
done
