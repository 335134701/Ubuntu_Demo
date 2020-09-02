#! /bin/bash

#删除指定数组元素
linux=("Debian" "RedHat" "Ubuntu" "UTS" "CentOS")
echo "长度:${#linux[@]}"
echo "数组:${linux[@]}"
unset linux[3]
echo "长度:${#linux[@]}"
echo "数组:${linux[@]}"
echo

#删除整个数组
linux=("Debian" "RedHat" "Ubuntu" "UTS" "CentOS")
echo "长度:${#linux[@]}"
echo "数组:${linux[@]}"
unset linux
echo "长度:${#linux[@]}"
echo "数组:${linux[@]}"
echo



