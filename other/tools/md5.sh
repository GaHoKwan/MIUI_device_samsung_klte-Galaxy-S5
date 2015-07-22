#!/bin/bash
#
OUTDIR=/home/jay/miui/v6-kitkat/klte/out
GET_FULLOTA_MD5SUM=`md5sum $OUTDIR/fullota.zip |cut -c 1-10`
GET_DIFFOTA_MD5SUM=`md5sum $OUTDIR/diffota.zip |cut -c 1-10`
mv miui6_KLTE_luo2888_"$BUILD_NUMBER"__4.4.zip miui6_KLTE_luo2888_"$BUILD_NUMBER"_"$GET_FULLOTA_MD5SUM"_4.4.zip
if [ -e $OUTDIR/diffota.zip ]; then
	mv miui_ota_KLTE_luo2888_"$LAST_BUILD_NUMBER"_"$BUILD_NUMBER"__4.4.zip miui_ota_KLTE_luo2888_"$LAST_BUILD_NUMBER"_"$BUILD_NUMBER"_"$GET_DIFFOTA_MD5SUM"_4.4.zip
fi
