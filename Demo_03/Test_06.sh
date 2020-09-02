#! /bin/bash

#输出命令搜索路径
echo "commands path is ${PATH}"
#输出当前的登录名称
echo "current login name is ${LOGNAME}"
#输出当前用户的主目录
echo "current user's home is ${HOME}"
#输出当前的shell
echo "current shell is ${SHELL}"
#输出当前工作目录
echo "current path is ${PWD}"
#输出定义命令编辑模式下可使用的命令行长度
echo "The length is ${CLUMNS}"
#输出命令历史文件
echo "The file of Order ${HISTFILE}"
#SHELL设置自动退出时间
TMOUT=5


