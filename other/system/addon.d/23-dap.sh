#!/sbin/sh
# 
# /system/addon.d/25-ddp.sh
#
. /tmp/backuptool.functions

list_files() {
cat <<EOF
addon.d/23-dap.sh
app/As.apk
app/AsUI.apk
app/As/As.apk
app/AsUI/AsUI.apk
lib/libdlbdapstorage.so
lib/soundfx/libswdap-mod.so
etc/dolby/ds-default.xml
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/$FILE
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/$FILE $R
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
	# Stub
  ;;
  post-restore)
    # Normal/vendor config locations
	CONFIG_FILE=/system/etc/audio_effects.conf
	VENDOR_CONFIG=/system/vendor/etc/audio_effects.conf

	# If vendor exists, patch it instead
	if [ -f $VENDOR_CONFIG ];
	then
		CONFIG_FILE=$VENDOR_CONFIG
	fi
	
	# Remove library & effect
	sed -i '/dap/,/}/d' $CONFIG_FILE
	
	# Add libary
	sed -i 's/^libraries {/libraries {\n  dap {\n    path \/system\/lib\/soundfx\/libswdap-mod.so\n  }/g' $CONFIG_FILE

	# Add effect
	sed -i 's/^effects {/effects {\n  dap {\n    library dap\n    uuid 9d4921da-8225-4f29-aefa-39537a041337\n  }/g' $CONFIG_FILE
  ;;
esac
