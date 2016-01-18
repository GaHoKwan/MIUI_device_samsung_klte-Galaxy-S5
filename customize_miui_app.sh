#/bin/bash

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

curdir=`pwd`

function applyPatch () {
    for patch in `find $1 -name "*.patch"`
    do
        cd out
        $GIT_APPLY ../$patch
        cd ..
        for rej in `find $2 -name *.rej`
        do
            echo "Patch $patch fail"
            exit 1
        done
    done
}

function changeID () {
    tools_dir=$curdir/other/tools
    if [ -f out/framework-res_miui/res/values/public.xml ]; then
        echo "exists!"
    else
        apktool d -f $PORT_ROOT/miui/XXHDPI/system/framework/framework-res.apk -o out/framework-res_miui
    fi
    cd out
    python $tools_dir/idtoname.py framework-res_miui/res/values/public.xml $1/smali
    python $tools_dir/nametoid.py $curdir/framework-res/res/values/public.xml $1/smali
    cd -
}

function appendSmaliPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

function mergyXmlPart() {
	for file in `find $1/res -name *.xml.part`
	do
		src=`dirname $file`
		dst=${src/$1/$2}
		$XMLMERGYTOOL $src $dst
	done
}

if [ $1 = "DeskClock" ];then
    changeID $1
fi

if [ $1 = "DownloadProvider" ];then
	changeID $1
fi

if [ $1 = "MiuiSystemUI" ];then
    applyPatch $1 $2
    $XMLMERGYTOOL $1/res/values $2/res/values
    changeID $1
fi

if [ $1 = "miuisystem" ];then
	sed -i -e '/  - 16/a\  - 17' $2/apktool.yml
	applyPatch $1 $2
	cp $1/klte.xml $2/assets/device_features/
	cp $1/klte_legacy.xml $2/assets/device_features/
fi

if [ $1 = "SecurityCenter" ];then
	applyPatch $1 $2
fi

if [ $1 = "Settings" ];then
    sed -i -e '/  - 17/a\  - 18' $2/apktool.yml
	$XMLMERGYTOOL $1/res/values $2/res/values
	$XMLMERGYTOOL $1/res/values-zh-rCN $2/res/values-zh-rCN
	applyPatch $1 $2
	changeID $1
fi

if [ $1 = "TeleService" ];then
	applyPatch $1 $2
	changeID $1
	$XMLMERGYTOOL $1/res/values $2/res/values
	$XMLMERGYTOOL $1/res/values-zh-rCN $2/res/values-zh-rCN
    # Copy LTE Xml
    cp -f $1/res/xml/preferred_network_type_lte_x5.xml $2/res/xml/preferred_network_type_lte_x5.xml
    #fix read sim card contact preson
    sed -i 's/MiuiIccProvider/IccProvider/g' $2/smali/com/android/phone/IccProvider.smali
fi

if [ $1 = "XiaomiServiceFramework" ];then
    applyPatch $1 $2
fi
