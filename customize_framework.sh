#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
GIT_APPLY=$PORT_ROOT/tools/git.apply
BUILD_OUT=out

SEP_FRAME="framework2.jar.out"

function appendSmaliPart() {
    for file in `find $1/smali -name *.part`
    do
        filepath=`dirname $file`
        filename=`basename $file .part`
        dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

function overlaySmali() {
    for file in `find $1/smali -name *.smali`
    do
        filepath=`dirname $file`
        cp -f $file out/$filepath
    done
}

function applyPatch() {
	for file in $1/*.patch
	do
		cp $file out/
		cd out
		git.apply `basename $file`
        for file2 in `find $2 -name *.rej`
        do
            echo "$file2 fail"
            exit 1
        done
		cd ..
	done
}


if [ $2 = "$BUILD_OUT/framework" ]
then
    # remove all files at out/framework those exist in framework2.jar.out
	for file2 in `find framework2.jar.out -name *.smali`; do
			file=${file2/framework2.jar.out/$BUILD_OUT\/framework}
			echo "rm file: $file"
			rm -rf "$file"
	done

    for file2 in `find telephony-common.jar.out -name *.smali`; do
            file=${file2/telephony-common.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done
    cp -rf overlay/framework/smali/* $BUILD_OUT/framework/smali
    cp -rf ../android/Editor/* $BUILD_OUT/framework/smali/android/widget/
fi

if [ $2 = "$BUILD_OUT/framework2" ]
then
    # remove all files at out/framework1 those exist in framework.jar.out
	for file2 in `find framework.jar.out -name *.smali`; do
			file=${file2/framework.jar.out/$BUILD_OUT\/framework2}
			echo "rm file: $file"
			rm -rf "$file"
	done

    for file2 in `find telephony-common.jar.out -name *.smali`; do
            file=${file2/telephony-common.jar.out/$BUILD_OUT\/framework2}
            echo "rm file: $file"
            rm -rf "$file"
    done
    cp -rf overlay/framework2/smali/* $BUILD_OUT/framework2/smali
fi

if [ $2 = "$BUILD_OUT/telephony-common" ]
then
    # remove all files at out/framework1 those exist in framework.jar.out
	for file2 in `find framework.jar.out -name *.smali`; do
			file=${file2/framework.jar.out/$BUILD_OUT\/telephony-common}
			echo "rm file: $file"
			rm -rf "$file"
	done

    for file2 in `find framework2.jar.out -name *.smali`; do
            file=${file2/framework2.jar.out/$BUILD_OUT\/telephony-common}
            echo "rm file: $file"
            rm -rf "$file"
    done
fi

if [ $2 = "$BUILD_OUT/services" ]
then
    applyPatch "overlay/services"
    rm -rf $BUILD_OUT/services/smali/com/android/server/NotificationManagerService*
    rm $BUILD_OUT/services/smali/com/android/server/am/ActivityManagerService\$13\$1.smali
    cp -rf overlay/services/smali/* $BUILD_OUT/services/smali
fi

if [ $2 = "$BUILD_OUT/android.policy" ]
then
    applyPatch "overlay/android.policy"
    cp -rf overlay/android.policy/smali/* $BUILD_OUT/android.policy/smali
    rm $BUILD_OUT/android.policy/smali/com/android/internal/policy/impl/PhoneWindowManager\$13\$1.smali
    rm $BUILD_OUT/android.policy/smali/com/android/internal/policy/impl/PhoneWindowManager\$21\$1.smali
    rm $BUILD_OUT/android.policy/smali/com/android/internal/policy/impl/GlobalActions\$4\$1\$1.smali
    rm $BUILD_OUT/android.policy/smali/com/android/internal/policy/impl/GlobalActions\$4\$1.smali
fi
