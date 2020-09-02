#! /bin/bash

if [ ! -d $(pwd)/Test_03 ];then
	mkdir Test_03
	mkdir $(pwd)/Test_03/dir1
	touch $(pwd)/Test_03/file1.txt
	touch $(pwd)/Test_03/file2.txt
	touch $(pwd)/Test_03/hello.sh
	echo "这是一个测试！" >> $(pwd)/Test_03/file1.txt
	echo '#! /bin/bash'  >> $(pwd)/Test_03/hello.sh
fi


# -a file 文件是否存在，如果存在，则结果为0
echo "The order is 'test -a $(pwd)/Test_03/file1.txt' "
test -a $(pwd)/Test_03/file1.txt
echo "The result is ${?}"
echo "The order is 'test -a $(pwd)/Test_03/file3.txt' "
test -a $(pwd)/Test_03/file3.txt
echo "The result is ${?}"
echo 
# -b file  文件是否存在，且为块文件，如果文件file 是一个已存在的块文件，则结果为0
echo "The order is 'test -b $(pwd)/Test_03/file1.txt' "
test -b $(pwd)/Test_03/file1.txt
echo "The result is ${?}"
echo "The order is 'test -b $(pwd)/Test_03/file3.txt' "
test -b $(pwd)/Test_03/file3.txt
echo "The result is ${?}"
echo
# -c file  文件是否存在，且为字符文件，如果文件file 是一个已存在的字符文件，则结果为0
echo "The order is 'test -c $(pwd)/Test_03/file1.txt' "
test -c $(pwd)/Test_03/file1.txt
echo "The result is ${?}"
echo "The order is 'test -c $(pwd)/Test_03/file3.txt' "
test -c $(pwd)/Test_03/file3.txt
echo "The result is ${?}"
echo 
# -d file  文件是否存在，且为目录，如果文件file 是一个已存在的目录，则结果为0
echo "The order is 'test -d $(pwd)/Test_03/dir1' "
test -d $(pwd)/Test_03/dir1
echo "The result is ${?}"
echo "The order is 'test -d $(pwd)/Test_03/dir1' "
test -d $(pwd)/Test_03/dir1
echo "The result is ${?}"
echo 
# -e file 同操作符 -a
echo "The order is 'test -e $(pwd)/Test_03/file1.txt' "
test -e $(pwd)/Test_03/file1.txt
echo "The result is ${?}"
echo "The order is 'test -e $(pwd)/Test_03/file3.txt' "
test -e $(pwd)/Test_03/file3.txt
echo "The result is ${?}"
echo
# -s 文件长度是否大于0或者文件为非空文件，如果file是一个非空文件，则结果为0
echo "The order is 'test -s $(pwd)/Test_03/file1.txt' "
test -s $(pwd)/Test_03/file1.txt
echo "The result is ${?}"
echo "The order is 'test -s $(pwd)/Test_03/file2.txt' "
test -s $(pwd)/Test_03/file2.txt
echo "The result is ${?}"
echo
# -f 文件存在，并且为常规文件，如果file是一个已经存在的常规文件，则结果为0
echo "The order is 'test -f $(pwd)/Test_03/file1.txt' "
test -f $(pwd)/Test_03/file1.txt
echo "The result is ${?}"
echo "The order is 'test -f $(pwd)/Test_03/file2.txt' "
test -f $(pwd)/Test_03/file2.txt
echo "The result is ${?}"
echo
# -w 文件是否存在且可写，如果文件是一个可写文件则结果为0
echo "The order is 'test -w $(pwd)/Test_03/file1.txt' "
test -w $(pwd)/Test_03/file1.txt
echo "The result is ${?}"
chmod -r -w $(pwd)/Test_03/file2.txt
echo "The order is 'test -w $(pwd)/Test_03/file2.txt' "
test -w $(pwd)/Test_03/file2.txt
echo "The result is ${?}"
chmod +wr $(pwd)/Test_03/file2.txt
echo

# -L 文件是否存在，并且为符号链接，如果文件file是一个已存在的符号链接，则结果为0
echo "The order is 'test -L $(pwd)/Test_03/file1.txt' "
test -L $(pwd)/Test_03/file1.txt
echo "The result is ${?}"
echo "The order is 'test -L $(pwd)/Test_03/file2.txt' "
test -L $(pwd)/Test_03/file2.txt
echo "The result is ${?}"
echo
# -u 文件是否设置suid位，如果文件已经设置suid，则结果为0
echo "The order is 'test -u $(pwd)/Test_03/file1.txt' "
test -u $(pwd)/Test_03/file1.txt
echo "The result is ${?}"
echo "The order is 'test -u $(pwd)/Test_03/file2.txt' "
test -u $(pwd)/Test_03/file2.txt
echo "The result is ${?}"
echo
# -r 文件是否存在，并且可读，如果文件file是一个已存在的可读文件，则结果为0
echo "The order is 'test -r $(pwd)/Test_03/file1.txt' "
test -r $(pwd)/Test_03/file1.txt
echo "The result is ${?}"
chmod -r -w $(pwd)/Test_03/file2.txt
echo "The order is 'test -r $(pwd)/Test_03/file2.txt' "
test -r $(pwd)/Test_03/file2.txt
echo "The result is ${?}"
chmod +wr $(pwd)/Test_03/file2.txt
echo

# -x 文件是否存在，并且可执行，如果文件file是一个已存在的可执行文件，则结果为0
echo "The order is 'test -x $(pwd)/Test_03/file1.txt' "
test -x $(pwd)/Test_03/file1.txt
echo "The result is ${?}"
echo "The order is 'test -x $(pwd)/Test_03/hello.sh' "
test -x $(pwd)/Test_03/hello.sh
echo "The result is ${?}"
echo

