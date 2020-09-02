#! /bin/bash
v1=16
v2=18
v3=16
v4=13

if [ ${v1} -eq ${v3} ];then
	echo "${v1}等于${v3}！"
else
	echo "${v1}不等于${v3}！"
fi

if [ ${v1} -ne ${v2} ];then
	echo "${v1}不等于${v2}！"
else
	echo "${v1}等于${v2}！"
fi

if [ ${v1} -gt ${v4} ];then
	echo "${v1}大于${v4}！"
else
	echo "${v1}小于${v4}！"
fi

if [ ${v1} -lt ${v2} ];then
	echo "${v1}小于${v2}！"
else
	echo "${v1}大于${v2}！"
fi

if [ ${v1} -ge ${v4} ];then
	echo "${v1}大于等于${v4}！"
else
	echo "${v1}小于等于${v4}！"
fi

if [ ${v1} -le ${v2} ];then
	echo "${v1}小于等于${v2}！"
else
	echo "${v1}大于等于${v2}！"
fi

