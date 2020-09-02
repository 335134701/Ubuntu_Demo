#! /bin/bash

#定义变量x
x=5
#执行左移赋值复合运算
let "x<<=4"
echo "${x}"
#执行右移复合运算
let "x>>=2"
echo "${x}"
x=$((x>>=1))
echo "${x}"
x=$[x>>=1]
echo "${x}"
#执行按位或赋值运算
let "x|=2"
echo "${x}"

