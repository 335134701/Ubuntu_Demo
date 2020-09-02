#! /bin/bash
function Compare(){
	DirPath=$(pwd)/cdrtools-3.02
	echo ${DirPath}
	if [ -d ${DirPath} ];then
		echo "cdrtools-3.02 已经安装"
		
	else
		echo "cdrtools-3.02 没有安装"
		sudo wget https://nchc.dl.sourceforge.net/project/cdrtools/alpha/cdrtools-3.02a07.tar.gz
		sudo tar -xzvf cdrtools-3.02a07.tar.gz
		cd cd cdrtools-3.02
		sudo make
		sudo make install
	fi

}
function main()
{
	cd /home
	FilePath=$(pwd)/*.sblive
	echo ${FilePath}
	if [ -f ${FilePath} ];then
		echo ${FilePath} "  文件存在"
		sudo mkdir sblive
		sudo tar -vxf ${FilePath} -C sblive
		sudo mv sblive/syslinux/syslinux.cfg sblive/syslinux/isolinux.cfg
		sudo mv sblive/syslinux sblive/isolinux
		Compare
		sudo /opt/schily/bin/mkisofs -iso-level 3 -r -V sblive -cache-inodes -J -l -b isolinux/isolinux.bin -no-emul-boot -boot-load-size 4 -boot-info-table -c isolinux/boot.cat -o sblive.iso sblive
		sudo rm -rf ${FilePath}
		sudo rm -rf ${pwd}/sblive
		echo ".ISO文件已生成"
	else
		echo ${FilePath} " 文件不存在"
		exit 1
	fi

}
main



