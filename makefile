#
# Makefile for Klte
#

# The original zip file, MUST be specified by each product
local-zip-file := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_Klte.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := StockSettings

local-modified-priv-apps :=

PORT_PRODUCT := luo288_klte

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := 

local-miui-removed-priv-apps := 

local-miui-modified-apps := miuisystem Settings TeleService MiuiSystemUI Music SecurityCenter

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XXHDPI

# All apps need to be removed from original ZIP file
#local-remove-apps   := 

include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
#updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
#pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
BUILD_COUNT := $(shell date +%Y%m%d)
local-pre-zip-misc:
	cp -rf other/system $(ZIP_DIR)/
	@echo ">>> Remove miui prebuilt binaries"
	rm -rf $(ZIP_DIR)/system/bin/app_process_vendor
	cp -rf stockrom/system/bin/app_process $(ZIP_DIR)/system/bin/app_process
	rm -rf $(ZIP_DIR)/system/bin/debuggerd_vendor
	cp -rf stockrom/system/bin/debuggerd $(ZIP_DIR)/system/bin/debuggerd
	rm -rf $(ZIP_DIR)/system/bin/dexopt_vendor
	cp -rf stockrom/system/bin/dexopt $(ZIP_DIR)/system/bin/dexopt
	@echo ">>> Fix mdnsd"
	mv $(ZIP_DIR)/system/bin/mdnsd $(ZIP_DIR)/system/bin/mdnsd_original
	@echo ">>> Some changes"
	echo "ro.sf.lcd_density=465" >> $(ZIP_DIR)/system/build.prop
	echo "ro.miui.has_real_blur=0" >> $(ZIP_DIR)/system/build.prop
	echo "ro.miui.has_handy_mode_sf=0" >> $(ZIP_DIR)/system/build.prop
	sed -i 's/qemu.sf.lcd_density/persist.sys.density/g' $(ZIP_DIR)/system/lib/libsurfaceflinger.so
	#security patch
	echo "ro.build.version.security_patch=2015-12-01" >> $(ZIP_DIR)/system/build.prop
	echo "ro.build.version.base_os=" >> $(ZIP_DIR)/system/build.prop
	@echo ">>> Use auto brightadj"
	echo "persist.power.useautobrightadj=true" >> $(ZIP_DIR)/system/build.prop
