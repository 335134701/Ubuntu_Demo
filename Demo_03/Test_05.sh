#! /bin/bash

#具体第几个参数
echo "The first prarmeters  is ${1}"
#输出脚本的参数个数
echo "The number of parameters is ${#}"
#输出上一条命令的退出状态码
echo "The return code of last command is ${?}"
#输出当前脚本名称
echo "The script name is ${0}"
#输出所有的参数(以一个字符串的方式)
echo "The parameters are ${*}"
#输出所有参数(以单个参数的形式)
echo "The praremeters are ${@}"
#输出其中的几个参数
echo "\$1=${1}; \$5=${5}; \$11=${11}" 
#输出本程序的进程ID
echo "The programer's ID is  $$"
