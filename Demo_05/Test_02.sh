#! /bin/bash

#通过ls命令的输出结果作为for循环条件
for file in $(pwd)/*
do 
	#输出每个文件名称
	echo "${file}"
done


