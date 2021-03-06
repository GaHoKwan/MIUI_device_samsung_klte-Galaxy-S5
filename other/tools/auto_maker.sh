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

export PWD_DIR=`pwd`

echo "               Usage:  LAST_TARGET_BUILD_NUMBER                    " 
function get_make_command()
{
  echo command make
}

function mka_timer()
{
    local start_time=$(date +"%s")
    $@
    local ret=$?
    local end_time=$(date +"%s")
    local tdiff=$(($end_time-$start_time))
    local hours=$(($tdiff / 3600 ))
    local mins=$((($tdiff % 3600) / 60))
    local secs=$(($tdiff % 60))
    local ncolors=$(tput colors 2>/dev/null)
    if [ -n "$ncolors" ] && [ $ncolors -ge 8 ]; then
        color_failed="\e[0;31m"
        color_success="\e[0;32m"
        color_reset="\e[0m"
    else
        color_failed=""
        color_success=""
        color_reset=""
    fi
    echo
    if [ $ret -eq 0 ] ; then
        printf "${color_success}#### make completed successfully "
    else
        printf "${color_failed}#### make failed to build some targets "
    fi
    if [ $hours -gt 0 ] ; then
        printf "(%02g:%02g:%02g (hh:mm:ss))" $hours $mins $secs
    elif [ $mins -gt 0 ] ; then
        printf "(%02g:%02g (mm:ss))" $mins $secs
    elif [ $secs -gt 0 ] ; then
        printf "(%s seconds)" $secs
    fi
    printf " ####${color_reset}\n\n"
    return $ret
}

function make()
{
    mka_timer $(get_make_command) "$@"
}

echo "                                                                   " 
echo "  -LAST_TARGET_BUILD_NUMBER  if you want to build ota diff package " 
echo "      use [LAST_TARGET_BUILD_NUMBER] last the MIUI Version         " 
echo "             it is more effective. (such as 5.4.29)                " 
echo "                                                                   "
echo -ne "Please Input last the MIUI Version"
echo -ne "\nInput:"
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

if [ -e out/ZIP/system/bin/mdnsd_original ];then
	cp -f stockrom/system/build.prop out/ZIP/system/build.prop
fi

function init(){
	echo ">>> Init Environment ...    "
	cd ..
	source build/envsetup.sh >/dev/null
	echo "<<< Init Environment Done!  "
	cd -
}

function clean(){
	echo ">>> Sure Cleaning WorkSpace? (y/n) <<<"
	read c
	if [ "$c" == "y" ]; then
		echo ">>> Cleaning WorkSpace ...  "
		make clean
		echo "<<< Clean WorkSpace Done!   "
	else
		echo ">>> Without Cleaning WorkSpace! "
	fi
}

function fullota(){
	echo ">>>  Making Fullota ... "
	make fullota BUILD_NUMBER=$BUILD_NUMBER SHOW_COMMANDS=true 
	if [ "$?" == "0" ]; then
		copyfullota
		echo ">>>  Fullota  Done! "
	else
		echo "[GaHoKwan CUST] OTA: Fullota  Fail Pleace Check Logreport! "
	fi
}

function copyfullota(){
	echo ">>>  Copying Fullota.zip "
	cp out/fullota.zip miui7_KLTE_luo2888_"$BUILD_NUMBER"__4.4.zip
}

function otadiff(){
	echo ">>>  OTA Diff Package   "
	if [ "$LAST_BUILD_NUMBER" == "" ]; then
		echo ">>>  Skip To Make Diffota !!! "
		cp out/target_files.zip $BUILD_NUMBER-target.zip
	else
		echo ">>>  Sure Make Diffota?(y/n) <<< "
		read m
		if [ "$m" == "y" ]; then
			echo ">>>  Making Diffota ... "
			../tools/releasetools/ota_from_target_files -k ../build/security/testkey -i $LAST_TARGET out/target_files.zip out/diffota.zip
			if [ "$?" == "0" ]; then
				copydiffota
				echo "<<<  Make Diffota Done! "
			fi
		fi
	fi
}

function copydiffota(){
	echo ">>>  Copying Diffota.zip"
	cp out/diffota.zip miui_ota_KLTE_luo2888_"$LAST_BUILD_NUMBER"_"$BUILD_NUMBER"__4.4.zip
	echo ">>>  Copying  Target_files.zip"
	cp out/target_files.zip $BUILD_NUMBER-target.zip
}

OUTDIR=$PWD_DIR/out

# Function Start
if [ "$1" = '' ]; then
    BUILD_DATE
elif [ "$1" = 'diffota' ]; then
    init
    BUILD_NUMBER=$2
	  otadiff
	  source other/tools/md5.sh
    exit 0
else
    BUILD_NUMBER=$1
fi
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
	echo "[GaHoKwan CUST] OTA: All Done For Fullota"
else
	echo "[GaHoKwan CUST] OTA: Fullota Maybe Make Fail Pleace Check Logreport! "
fi

echo "[GaHoKwan CUST] OTA: Thank For Using Auto Maker Script"
echo "[GaHoKwan CUST] OTA: All Rights Reserved by luo2888"
# Script End
