#! /bin/bash
#条件判断语句
if [ -f $(pwd)/Test_03/file1.txt ];then 
	echo "文件存在！"
else 
	echo "文件不存在！"
fi
echo
if [ -f $(pwd)/Test_03/file1.txt -a -f $(pwd)/Test_03/file3.txt ];then 
	echo "文件存在！"
else 
	echo "文件不存在！"
fi
echo
if [ -f $(pwd)/Test_03/file1.txt -o -f $(pwd)/Test_03/file3.txt ];then 
	echo "文件存在！"
else 
	echo "文件不存在！"
fi
echo
if [ -f $(pwd)/Test_03/file1.txt -a -f $(pwd)/Test_03/file2.txt -a -f $(pwd)/Test_03/file3.txt ];then 
	echo "文件存在！"
else 
	echo "文件不存在！"
fi
echo
if [ -f $(pwd)/Test_03/file1.txt -o -f $(pwd)/Test_03/file2.txt -o -f $(pwd)/Test_03/file3.txt ];then 
	echo "文件存在！"
else 
	echo "文件不存在！"
fi
echo 
shell程序中，如果想要将多条命令放在同一行，需要使用分号隔开
#shell程序
if [ -f $(pwd)/Test_03/file1.txt ];[ -f $(pwd)/Test_03/file2.txt ];then 
	echo "文件存在！"
else 
	echo "文件不存在！"
fi
echo
if [ -f $(pwd)/Test_03/file1.txt ];[ -f $(pwd)/Test_03/file2.txt ];then 
	echo "文件存在！"
else 
	echo "文件不存在！"
fi
echo 
if [ -f $(pwd)/Test_03/file1.txt ];[ -f $(pwd)/Test_03/file2.txt ];[ -f $(pwd)/Test_03/file3.txt ];then 
	echo "文件存在！"
else 
	echo "文件不存在！"
fi
echo 


