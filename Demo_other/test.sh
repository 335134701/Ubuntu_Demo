#! /bin/bash

#判断软件是否安装，如果未安装则安装
function CheckOrInstall_Software()
{
	echo
	local software_status=127
	case "${1}" in
	  	yum)
			yum search ${2}
			software_status=${?}
			echo ${software_status}
	  	;;
	  	dpkg)
			dpkg -l ${2}
			software_status=${?}
		;;
		make)
		;;
		*)
			echo "Unknown arguement!"
		;;
	esac	  
	echo -e ${INFOTime}"\033[34mThe method \"CheckOrInstall_Software()\" run success!\033[0m"
	echo
}

#CheckOrInstall_Software -y 'Desktop' -y 'X Window System' -y 'Chinese Support'
CheckOrInstall_Software "yum" 'Desktop'
CheckOrInstall_Software "yum" 'X Window System'
CheckOrInstall_Software "yum" 'Chinese Support'
