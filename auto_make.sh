#!/bin/bash
#
#auto maker for miui patchrom
echo -e "\e[40;32;1m"
clear
BUILD_NUMBER=$1
LAST_BUILD_NUMBER=$2
LAST_TARGET="$2"-target.zip

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

if [ -e out/ZIP/system/app/com.android.nfc-1.apk ];then
	cp -f stockrom/system/build.prop out/ZIP/system/build.prop
	mv out/ZIP/system/app/com.android.nfc-1.apk out/ZIP/system/app/Nfc.apk
	mv out/ZIP/system/priv-app/QuickSearchBox.apk out/ZIP/system/app/QuickSearchBox.apk
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
	echo "--------------------------------"
	echo "  Sure Cleaning WorkSpace? (y/n)"
	echo "--------------------------------"
	read c
	if [ "$c" == "y" ]; then
		echo "============================"
		echo ">>> Cleaning WorkSpace ...  "
		echo "============================"
		make clean
	else
		echo ">>> Without Cleaning WorkSpace ...  "
	fi
}

GET_FULLOTA_MD5SUM=`md5sum out/fullota.zip |cut -c 1-10`

fullota(){
	echo "============================"
	echo "          Fullota           "
	echo "============================"
	make fullota BUILD_NUMBER=$BUILD_NUMBER
	echo "============================"
	echo ">>>  Copying Fullota.zip    "
	echo "============================"
	cp out/fullota.zip miui6_KLTE_luo2888_"$BUILD_NUMBER"_"$GET_FULLOTA_MD5SUM"_4.4.zip
}

GET_DIFFOTA_MD5SUM=`md5sum diffota.zip |cut -c 1-10`

otadiff(){
	echo "============================"
	echo "       OTA Diff Package     "
	echo "============================"
	echo "----------------------------"
	echo "     Sure make otadiff?     "
	echo "----------------------------"
	read m
	if [ "$m" == "y" ]; then
		../tools/releasetools/ota_from_target_files -k ../build/security/testkey -i $LAST_TARGET out/target_files.zip out/diffota.zip
		cp out/diffota.zip miui_ota_KLTE_luo2888_"$LAST_BUILD_NUMBER"_"$BUILD_NUMBER"_"$GET_DIFFOTA_MD5SUM"_4.4.zip
		echo "================================="
		echo ">>>  Copying  Target_files.zip   "
		echo "================================="
		cp out/target_files.zip $BUILD_NUMBER-target.zip
	else
		echo ">>>  Skip to make otadiff !!!   "
	fi
}


init
clean
fullota
otadiff
echo "================================="
echo "             Done!               "
echo "================================="
