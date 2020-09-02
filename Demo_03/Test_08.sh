#! /bin/bash

#定义变量v1
v1="chunxiao"
#输出含有变量名的字符串
echo 'Hello,${v1}'

#定义变量v2
v2="chunxiao"
#输出变量的值
echo "Hello,${v2}"

#变量替换
v3=`pwd`
echo "current working directory is ${v3}"

#变量替换
v4=$(pwd)
echo "current working directory is ${v4}"

#变量转义
echo "${SHELL}"
echo "\${SHELL}"
