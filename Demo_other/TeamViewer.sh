#! /bin/bash
function  InstallTeamViewer(){
	cd ${Path}
	if [ ! -f ${Path}/teamviewer-host_armhf.deb ];then
		wget http://download.teamviewer.com/download/linux/version_11x/teamviewer-host_armhf.deb
		if [ $? -eq 0 ];then
			echo "teamviewer-host_armhf下载成功"
		else 
			echo "teamviewer-host_armhf下载失败，脚本程序终止"
			exit 1
		fi
	fi
	
	sudo dpkg -i teamviewer-host_armhf.deb
	sudo apt-get -f install
	if [ $? -eq 0 ];then
		echo "teamviewer-host_armhf安装成功"
	else 
		echo "teamviewer-host_armhf安装失败，脚本程序终止"
		exit 1
	fi
	sudo apt-get install gdebi -y
	if [ $? -eq 0 ];then
		echo "gdebi安装成功"
	else 
		echo "gdebi安装失败，脚本程序终止"
		exit 1
	fi
	sudo gdebi teamviewer-host_armhf.deb
	if [ $? -eq 0 ];then
		echo "teamviewer_linux_x64安装成功"
	else 
		echo "teamviewer_linux_x64安装失败，脚本程序终止"
		exit 1
	fi
}

function Main()
{
	#echo ${Path}
	if [ ! -d "${Path}/Software" ];then
		mkdir ${Path}/Software
	else
		echo "Software文件夹已经存在"
	fi
	Path=${Path}/Software
	InstallTeamViewer
}
cd /home/${USER}
Path=$(pwd)
Main


