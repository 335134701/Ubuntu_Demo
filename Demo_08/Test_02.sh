#! /bin/bash

#基本正则表达式
#行首定位符^
#转换成数组
str=(`ls / | grep ^t`)
for s in "${str[@]}"
do
	echo "-------${s}"
done
#转换成字符串
strr=`ls / | grep ^t`
echo "*******${strr}"
echo

#行尾定位符$
#转换成数组
str=(`ls / | grep t$`)
for s in "${str[@]}"
do
	echo "-------${s}"
done
#转换成字符串
strr=`ls / | grep t$`
echo "*******${strr}"
echo

#单字符匹配.
#转换成数组
str=(`ls / | grep tm.`)
for s in "${str[@]}"
do
	echo "-------${s}"
done
#转换成字符串
strr=`ls / | grep tm.`
echo "*******${strr}"
echo

#限定符*
#转换成数组
str=(`ls /etc | grep ^sys*`)
for s in "${str[@]}"
do
	echo "-------${s}"
done
#转换成字符串
strr=`ls /etc | grep ^sys*`
echo "*******${strr}"
echo

#字符集匹配[]
#转换成数组
str=(`ls /etc | grep ^ss[0-9]`)
for s in "${str[@]}"
do
	echo "-------${s}"
done
#转换成字符串
strr=`ls /etc | grep ^ss[0-9]`
echo "*******${strr}"
echo



