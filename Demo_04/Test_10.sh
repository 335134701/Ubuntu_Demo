#! /bin/bash

#紧凑格式，计算36+8的和
result=$((36+8))
echo "${result}"
#松散格式，计算3+9的和
result=$(( 3 + 9 ))
echo "${result}"
#计算3和6的乘积
result=$((3*6))
echo "${result}"
#计算7和5的商
result=$((7/5))
echo "${result}"
#计算8和3的余数
result=$((8%3))
echo "${result}"
#复合运算
result=$(((1-4)*5))
echo "${result}"

