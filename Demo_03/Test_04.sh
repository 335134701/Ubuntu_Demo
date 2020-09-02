#! /bin/bash

#定义函数
function func()
{
	#输出变量x的值
	echo "v1值："${v1}
	v1=200
	#函数内部定义变量
	v2=300
	echo "v2值："${v2}
	#函数内部定义局部变量
	local v3=500
	echo "v3值：${v3}"
	local v4=600
	echo "v4值：${v4}"
}

#在脚本中定义变量v1
v1=100
v4=700
func
echo "v1值：${v1}"
echo "v2值：${v2}"
echo "v3值：${v3}"
echo "v4值：${v4}"
