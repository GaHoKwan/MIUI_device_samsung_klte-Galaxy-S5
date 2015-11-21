#!/bin/bash
#
# The MIT License (MIT)
#
# All rights reserved by luo2888
#
# Weibo : www.weibo.com/kwangaho
#  QQ   : 625336209
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Auto maker Script for miui patchrom
# Script Start
echo "               使用方法:  LAST_TARGET_BUILD_NUMBER                    " 
echo "                                                                   " 
echo "  -LAST_TARGET_BUILD_NUMBER：假如你想制作一个差分升级补丁包                                      " 
echo "                     请输入上一期的 MIUI的版本号                                                                "  
echo "                  这会让你变得更加有效率. (比如输入 5.4.29)	                                              " 
echo "                                                                   "
echo -ne "请输入上一期MIUI版本号"
echo -ne "\n输入:"
read LAST_BUILD_NUMBER
function BUILD_DATE() {
	date=`date +%y%m%d`
	year="${date:1:1}"
	month="${date:2:2}"
	days="${date:4:2}"
#if month
	if [ $month -lt "10" ];then
		month=$(echo $month | sed 's/0//g')
	fi
#if days
	if [ $days -lt "10" ];then
		days=$(echo $days | sed 's/0//g')
	fi
	BUILD_NUMBER=$year.$month.$days
}

LAST_TARGET="$LAST_BUILD_NUMBER"-target.zip

if [ -e out/ZIP/system/priv-app/QuickSearchBox.apk ];then
	cp -f stockrom/system/build.prop out/ZIP/system/build.prop
	mv out/ZIP/system/bin/mdnsd_original out/ZIP/system/bin/mdnsd
fi

function init(){
	echo ">>> 正在初始化环境 ...    "
	cd ..
	source build/envsetup.sh >/dev/null
	echo "<<< 初始化环境完成!  "
	cd -
}

function clean(){
	echo ">>> 确定清理缓存文件? (y/n) <<<"
	read c
	if [ "$c" == "y" ]; then
		echo ">>> 正在清理缓存文件 ...  "
		make clean
		echo "<<< 缓存文件清理完成!   "
	else
		echo ">>> 跳过缓存文件清理! "
	fi
}

function fullota(){
	echo ">>>  正在制作完整刷机包 ... "
	make fullota BUILD_NUMBER=$BUILD_NUMBER SHOW_COMMANDS=true 
	if [ "$?" == "0" ]; then
		copyfullota
		echo ">>>  完整刷机包制作完成! "
	else
		echo "[GaHoKwan CUST] OTA: 完整刷机包制作错误，请检查记录日志! "
	fi
}

function copyfullota(){
	echo ">>>  正在复制完整刷机包 "
	cp out/fullota.zip miui6_KLTE_luo2888_"$BUILD_NUMBER"__4.4.zip
}

function otadiff(){
	echo ">>>  差分升级补丁包   "
	if [ "$LAST_BUILD_NUMBER" == "" ]; then
		echo ">>>  跳过差分升级补丁包制作 !!! "
	else
		echo ">>>  确定制作差分升级补丁包?(y/n) <<< "
		read m
		if [ "$m" == "y" ]; then
			echo ">>>  正在制作差分升级补丁包 ... "
			../tools/releasetools/ota_from_target_files -k ../build/security/testkey -i $LAST_TARGET out/target_files.zip out/diffota.zip
			if [ "$?" == "0" ]; then
				copydiffota
				echo "<<<  差分升级补丁包制作完成! "
			fi
		fi
	fi
}

function copydiffota(){
	echo ">>>  正在复制差分升级补丁包 "
	cp out/diffota.zip miui_ota_KLTE_luo2888_"$LAST_BUILD_NUMBER"_"$BUILD_NUMBER"__4.4.zip
	echo ">>>  正在复制 Target_files.zip"
	cp out/target_files.zip $BUILD_NUMBER-target.zip
}

OUTDIR=~/miui/v6-kitkat/klte/out

# Function Start
BUILD_DATE
init
clean
fullota
# Function End

if [ -e $OUTDIR/fullota.zip ]; then
	otadiff
	source other/tools/md5.sh
	export status=done
fi

if [ "$status" == "done" ]; then
	echo "[GaHoKwan CUST] OTA: 所有刷机包制作完成"
else
	echo "[GaHoKwan CUST] OTA: 刷机包制作过程中可能出现错误，导致无法到达最后一步，请检查记录日志! "
fi

echo "[GaHoKwan CUST] OTA: 感谢您使用patchrom自动编译"
echo "[GaHoKwan CUST] OTA: All Rights Reserved by luo2888"
# Script End
