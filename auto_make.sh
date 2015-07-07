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

if [ -e out/ZIP/system/priv-app/QuickSearchBox.apk ];then
	cp -f stockrom/system/build.prop out/ZIP/system/build.prop
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

fullota(){
	echo "============================"
	echo "          Fullota           "
	echo "============================"
	make fullota BUILD_NUMBER=$BUILD_NUMBER
	echo "============================"
	echo ">>>  Copying Fullota.zip    "
	echo "============================"
	cp out/fullota.zip miui6_KLTE_luo2888_"$BUILD_NUMBER"__4.4.zip
}

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
		cp out/diffota.zip miui_ota_KLTE_luo2888_"$LAST_BUILD_NUMBER"_"$BUILD_NUMBER"__4.4.zip
		echo "================================="
		echo ">>>  Copying  Target_files.zip   "
		echo "================================="
		cp out/target_files.zip $BUILD_NUMBER-target.zip
	else
		echo ">>>  Skip to make otadiff !!!   "
	fi
}

OUTDIR=/home/jay/miui/v6-kitkat/klte/out

init
clean
fullota
otadiff

if [ -e $OUTDIR/fullota.zip ]; then
	source md5.sh
fi

echo "================================="
echo "             Done!               "
echo "================================="
