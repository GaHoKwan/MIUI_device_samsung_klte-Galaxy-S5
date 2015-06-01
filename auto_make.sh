#!/bin/bash
#
#auto maker for miui patchrom
echo -e "\e[40;32;1m"
clear
BUILD_NUMBER=$1
LAST_TARGET=$2

if [ "$1" == "" ];then
	echo "             Usage: $0 BUILD_NUMBER  LAST_TARGET                     " 
	echo "                                                                     " 
	echo "  - BUILD_NUMBER  the MIUI Version (such as 5.5.25)                  " 
	echo "                                                                     " 
	echo "   LAST_TARGET: if you want to build ota diff package                " 
	echo "          use [LAST_TARGET] file to PATH2, it is more effective.     " 
	echo "                                                                     " 
	sleep 4
	exit
fi

init(){
	echo "============================"
	echo ">>> Init Environment ...    "
	echo "============================"
	cd ..
	source build/envsetup.sh
	cd -
	pwd
}

clean(){
	echo "============================"
	echo ">>> Cleaning WorkSpace ...  "
	echo "============================"
	make clean
}

fullota(){
	echo "============================"
	echo "          Fullota           "
	echo "============================"
	make fullota BUILD_NUMBER=$BUILD_NUMBER
	echo "============================"
	echo ">>>  Copying Fullota.zip    "
	echo "============================"
	cp out/fullota.zip $BUILD_NUMBER-fullota.zip
}

otadiff(){
	echo "============================"
	echo "       OTA Diff Package     "
	echo "============================"
	echo "----------------------------"
	echo "     Sure make otadiff?     "
	echo "----------------------------"
	read anykey
	../tools/releasetools/ota_from_target_files -k ../build/security/testkey -i $LAST_TARGET out/target_files.zip OTA-$LAST_TARGET-$BUILD_NUMBER.zip
	echo "================================="
	echo ">>>  Copying  Target_files.zip   "
	echo "================================="
	cp out/target_files.zip $BUILD_NUMBER-target.zip
}


init
fullota
otadiff
echo "================================="
echo "             Done!               "
echo "================================="
