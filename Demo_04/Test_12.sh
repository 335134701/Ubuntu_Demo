#! /bin/bash

#变量定义
n=10
#加法运算
let n+=1
echo "${n}"
#乘法运算
let n*=10
echo "${n}"
#幂运算
let n=n**2
echo "${n}"

