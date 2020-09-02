#! /bin/bash
v1="     "
if [ "${v1}" ];then
	echo "这是一个空字符串！"
	echo "字符串长度为：${#v1}"
else 
	echo "这不是一个空字符串！"
fi 
v2=123
v3=456
if [ "${v2}" != "${v3}" ];then
	echo "两个字符串不相等！"
	echo "字符串长度为：${#v2}"
	echo "字符串长度为：${#v3}"
else 
	echo "这两个字符串相等！"
fi
v4=123456
v5=123456
if [ "${v4}" = "${v5}" ];then
	echo "两个字符串相等！"
	echo "字符串长度为：${#v4}"
	echo "字符串长度为：${#v5}"
else 
	echo "这两个字符串不相等！"
fi
v6=
if [ -z "${v6}" ];then
	echo "这是一个空字符串！"
	echo "字符串长度为：${#v6}"
fi

v7="123456"
if [ -n "${v7}" ];then
	echo "这不是一个空字符串！"
	echo "字符串长度为：${#v7}"
fi  
