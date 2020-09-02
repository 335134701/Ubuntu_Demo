#! /bin/bash

#申明一个整数变量并赋值
declare -i a=5
echo "${a}"
#申明一个整数变量
declare -i b
#对申明的整数变量进行赋值
b=7
echo "${b}"
#显示所有变量的属性，包括环境变量
declare -p
echo
echo
#显示变量a的属性
declare -p a
echo
echo
#显示变量b的属性
declare -p b
echo
echo
#显示变量a,b的属性
declare -p a b
#定义变量为只读变量
declare -r c=6
echo "${c}"
c=9
echo "${c}"
#显示所有自定义函数，包括名称和函数体
function test()
{
	echo 
	echo "测试自定义函数！"
	echo
}
declare -f
#将变量定义为环境变量，在其他程序中可以使用
d=13
declare -x d
echo ${d}
declare +x d

