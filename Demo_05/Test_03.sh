#! /bin/bash

#输出所有参数
echo "${*}"
for arg in ${*}
do 
	echo "${arg}"
done
echo
#输出所有参数
echo "${@}"
for arg in ${@}
do 
	echo "${arg}"
done
echo
for arg 
do 
	echo "${arg}"
done

