#! /bin/bash
#输出输入参数个数 
function GetParameterSum()
{
	echo "The function has ${#} parameters."
}
#通过位置变量接收参数值
function GetParamertByPosition()
{
	echo "All parameters are ${*}."
	echo "All parameters are ${@}."
	echo "The first parameter is ${1}."
	echo "The second parameter is ${2}."
}
#移动位置参数
function MovePositionParameter()
{
	i=0
	while (( ${#} > 0 ))
	do 
		let "i=i+1"
		echo "The ${i} parameter is ${1}."
		shift
	done
}
#通过getopts获取函数参数
function Getopts()
{
	while getopts "a:b:c:d" arg
	do
		case "${arg}" in
			a)
				echo "a's arguement is ${OPTARG}."
			;;
			b)
				echo "b's arguement is ${OPTARG}."
			;;
			c)
				echo "c's arguement is ${OPTARG}."
			;;
			d)
				echo "c"
			;;
			?)
				echo "unknown arguement."		
			;;
		esac
	done
}
#传递数组与参数
function PassArarParameter()
{
	echo "number of  elements is ${#}!"
	while [ ${#} -gt 0 ]
	do 
		echo "${1}"
		shift
	done
}
#计算输入参数积并返回
function sum()
{
	let "z=${1}*${2}"
	echo "The sum is ${z}."
}
GetParameterSum a a a aa ddd c
GetParameterSum sa 56 5
GetParameterSum dsafdsafadf
GetParameterSum
echo
GetParamertByPosition ad aa dfdg dfadf asdf 
echo
MovePositionParameter a d g s e f s
echo
Getopts -a dsfsd -b sdafdasfdsfsdafdas -c sdafdsafadsff -e
echo
a=(a b c "da dd" f)
PassArarParameter "${a[@]}"
PassArarParameter ${a[@]}
PassArarParameter "${a[*]}"
PassArarParameter ${a[*]}
echo
len=$(sum 90 90)
echo ${len}
