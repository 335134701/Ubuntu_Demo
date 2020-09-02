#! /bin/bash

#计算2和100的差值
result=`expr 2 - 100`
echo "${result}"
#计算2和100的和
result=`expr 2 + 100`
echo "${result}"
#计算2和5的乘积
result=`expr 2 \* 5`
echo "${result}"
#计算24和8的商
result=`expr 24 / 8`
echo ${result}
#先计算6和8的差，再乘以12
result=`expr \( 6 - 8 \) \* 12`
echo "${result}"


