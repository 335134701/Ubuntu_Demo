#! /bin/bash

#条件语句
#使用空命令作为判断条件
if : ;then
	echo "always trus"
fi
echo
#使用&&代替if语句
test -f $(pwd)/Test_03/file1.txt && echo "文件存在！"
echo


