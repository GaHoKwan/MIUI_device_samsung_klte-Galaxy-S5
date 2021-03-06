import common
import edify_generator
import os
import copy

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = """ui_print(" ");
ui_print("********************************************");
ui_print("* Galaxy S4/S5 Miui7 Based on Mokee OS  ");
ui_print("*              ^.^     Welcome     ^.^");
ui_print("*       http://weibo.com/kwangaho");
ui_print("********************************************");
show_progress(0.750000, 15);"""
      return

def CopyVariantFiles(input_zip, output_zip, script):

  print "[GaHoKwan CUST] OTA: copy variant files"
  for info in input_zip.infolist():
    if info.filename.startswith("VARIANT/variant/"):
      basefilename = info.filename[8:]
      info2 = copy.copy(info)
      info2.filename = basefilename
      data = input_zip.read(info.filename)
      output_zip.writestr(info2, data)

def Writeboot(info):
    for filename in os.listdir("other"):
        if not (filename.find('.img')==-1):
            data=open(os.path.join(os.getcwd(),"other",filename)).read()
            common.ZipWriteStr(info.output_zip, filename, data)

    extra_img_flash = """set_progress(0.800000);
show_progress(0.180000, 10);
ui_print("Update Boot image...");
package_extract_file("boot_klte.img", "/dev/block/platform/msm_sdcc.1/by-name/boot");
ifelse(is_substring("G900I", getprop("ro.bootloader")), package_extract_file("boot_kltebcm.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));
ifelse(is_substring("G900P", getprop("ro.bootloader")), package_extract_file("boot_kltebcm.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));
ifelse(is_substring("G9006", getprop("ro.bootloader")), package_extract_file("boot_kltechn.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));
ifelse(is_substring("G9008", getprop("ro.bootloader")), package_extract_file("boot_kltechn.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));
ifelse(is_substring("SCL23", getprop("ro.bootloader")), package_extract_file("boot_kltejpn.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));
ifelse(is_substring("SCL23", getprop("ro.bootloader")), delete("/system/app/NfcNci.apk"));
ifelse(is_substring("SC04F", getprop("ro.bootloader")), package_extract_file("boot_kltejpn.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));
ifelse(is_substring("SC04F", getprop("ro.bootloader")), delete("/system/app/NfcNci.apk"));
ifelse(is_substring("G9009D", getprop("ro.bootloader")), package_extract_file("boot_k3gduos.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));
ifelse(is_substring("I9508V", getprop("ro.bootloader")), package_extract_file("boot_jsglte.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));
set_progress(1.000000);"""
    info.script.AppendExtra(extra_img_flash);

def RemoveCount(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ui_print" in edify.script[i] and "Update" and "Boot" and "image..." in edify.script[i]:
      edify.script[i] = 'delete("/data/system/count");'
      return

def RemoveCountonIncrementalOTA(info):
    remove_Count = """mount("ext4", "EMMC", "/dev/block/platform/msm_sdcc.1/by-name/userdata", "/data");
delete("/data/system/count");"""
    info.script.AppendExtra(remove_Count);

def UpdatePerm(info):
    extra_Perm = """set_metadata_recursive("/system/etc/init.d", "uid", 0, "gid", 2000, "dmode", 0755, "fmode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/etc/init.d", "uid", 0, "gid", 0, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/bin/mcd", "uid", 0, "gid", 0, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/bin/restore_devicesettings", "uid", 0, "gid", 0, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/bin/running_mode_battery", "uid", 0, "gid", 0, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/bin/running_mode_standard", "uid", 0, "gid", 0, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/bin/running_mode_performance", "uid", 0, "gid", 0, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");"""
    info.script.AppendExtra(extra_Perm);

def Setmetadata(info):
    extra_metadata = """ui_print("Update VARIANT..."); 
ifelse(is_substring("G9009D", getprop("ro.bootloader")),package_extract_dir("variant/cdma", "/system"));
ifelse(is_substring("G900R", getprop("ro.bootloader")),package_extract_dir("variant/cdma", "/system"));
ifelse(is_substring("G900I", getprop("ro.bootloader")),package_extract_dir("variant/bcmnfc", "/system"));
ifelse(is_substring("G900P", getprop("ro.bootloader")),package_extract_dir("variant/bcmnfc", "/system"));
ifelse(is_substring("I9508V", getprop("ro.bootloader")),package_extract_dir("variant/jsglte", "/system"));
 ui_print("Update MetaData...");
set_metadata_recursive("/system", "uid", 0, "gid", 0, "dmode", 0755, "fmode", 0644, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata_recursive("/system/addon.d", "uid", 0, "gid", 0, "dmode", 0755, "fmode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata_recursive("/system/bin", "uid", 0, "gid", 2000, "dmode", 0755, "fmode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/bin/app_process", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:zygote_exec:s0");
set_metadata("/system/bin/clatd", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:clatd_exec:s0");
set_metadata("/system/bin/dhcpcd", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:dhcp_exec:s0");
set_metadata("/system/bin/dnsmasq", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:dnsmasq_exec:s0");
set_metadata("/system/bin/drmserver", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:drmserver_exec:s0");
set_metadata("/system/bin/efsks", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:kickstart_exec:s0");
set_metadata("/system/bin/hostapd", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:hostapd_exec:s0");
set_metadata("/system/bin/installd", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:installd_exec:s0");
set_metadata("/system/bin/keystore", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:keystore_exec:s0");
set_metadata("/system/bin/ks", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:kickstart_exec:s0");
set_metadata("/system/bin/mediaserver", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:mediaserver_exec:s0");
set_metadata("/system/bin/mksh", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:shell_exec:s0");
set_metadata("/system/bin/mtpd", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:mtp_exec:s0");
set_metadata("/system/bin/netcfg", "uid", 0, "gid", 3003, "mode", 02750, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/bin/netd", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:netd_exec:s0");
set_metadata("/system/bin/ping", "uid", 0, "gid", 0, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:ping_exec:s0");
set_metadata("/system/bin/pppd", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:ppp_exec:s0");
set_metadata("/system/bin/qcks", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:kickstart_exec:s0");
set_metadata("/system/bin/racoon", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:racoon_exec:s0");
set_metadata("/system/bin/rild", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:rild_exec:s0");
set_metadata("/system/bin/run-as", "uid", 0, "gid", 2000, "mode", 0750, "capabilities", 0xc0, "selabel", "u:object_r:runas_exec:s0");
set_metadata("/system/bin/sdcard", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:sdcardd_exec:s0");
set_metadata("/system/bin/servicemanager", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:servicemanager_exec:s0");
set_metadata("/system/bin/surfaceflinger", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:surfaceflinger_exec:s0");
set_metadata("/system/bin/vold", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:vold_exec:s0");
set_metadata("/system/bin/wpa_supplicant", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:wpa_exec:s0");
set_metadata_recursive("/system/etc/dhcpcd", "uid", 0, "gid", 0, "dmode", 0755, "fmode", 0644, "capabilities", 0x0, "selabel", "u:object_r:dhcp_system_file:s0");
set_metadata("/system/etc/dhcpcd/dhcpcd-run-hooks", "uid", 1014, "gid", 2000, "mode", 0550, "capabilities", 0x0, "selabel", "u:object_r:dhcp_system_file:s0");
set_metadata_recursive("/system/etc/init.d", "uid", 0, "gid", 2000, "dmode", 0755, "fmode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/etc/init.d", "uid", 0, "gid", 0, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata_recursive("/system/etc/ppp", "uid", 0, "gid", 0, "dmode", 0755, "fmode", 0555, "capabilities", 0x0, "selabel", "u:object_r:ppp_system_file:s0");
set_metadata("/system/vendor", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata_recursive("/system/vendor/etc", "uid", 0, "gid", 2000, "dmode", 0755, "fmode", 0644, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/vendor/etc/audio_effects.conf", "uid", 0, "gid", 0, "mode", 0644, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/vendor/firmware", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata_recursive("/system/vendor/firmware/keymaster", "uid", 0, "gid", 2000, "dmode", 0755, "fmode", 0644, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/vendor/lib", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/vendor/lib/egl", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata_recursive("/system/vendor/lib/hw", "uid", 0, "gid", 2000, "dmode", 0755, "fmode", 0644, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/vendor/lib/hw/power.msm8974.so", "uid", 0, "gid", 0, "mode", 0644, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata_recursive("/system/vendor/lib/mediadrm", "uid", 0, "gid", 2000, "dmode", 0755, "fmode", 0644, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/vendor/lib/mediadrm/libwvdrmengine.so", "uid", 0, "gid", 0, "mode", 0644, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata_recursive("/system/xbin", "uid", 0, "gid", 2000, "dmode", 0755, "fmode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/xbin/librank", "uid", 0, "gid", 0, "mode", 06755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/xbin/procmem", "uid", 0, "gid", 0, "mode", 06755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/xbin/procrank", "uid", 0, "gid", 0, "mode", 06755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");"""
    info.script.AppendExtra(extra_metadata);

def CreateSymlinks(info):
    extra_links = """ui_print("Update FirmWare...");
symlink("/data/misc/audio/mbhc.bin", "/system/etc/firmware/wcd9320/wcd9320_mbhc.bin");
symlink("/data/misc/audio/wcd9320_anc.bin", "/system/etc/firmware/wcd9320/wcd9320_anc.bin");
symlink("/data/misc/audio/wcd9320_mad_audio.bin", "/system/etc/firmware/wcd9320/wcd9320_mad_audio.bin");
symlink("/firmware/image/keymaste.b00", "/system/vendor/firmware/keymaster/keymaster.b00");
symlink("/firmware/image/keymaste.b01", "/system/vendor/firmware/keymaster/keymaster.b01");
symlink("/firmware/image/keymaste.b02", "/system/vendor/firmware/keymaster/keymaster.b02");
symlink("/firmware/image/keymaste.b03", "/system/vendor/firmware/keymaster/keymaster.b03");
symlink("/firmware/image/keymaste.mdt", "/system/vendor/firmware/keymaster/keymaster.mdt");
symlink("/firmware-modem/image/adsp.b00", "/system/etc/firmware/adsp.b00");
symlink("/firmware-modem/image/adsp.b01", "/system/etc/firmware/adsp.b01");
symlink("/firmware-modem/image/adsp.b02", "/system/etc/firmware/adsp.b02");
symlink("/firmware-modem/image/adsp.b03", "/system/etc/firmware/adsp.b03");
symlink("/firmware-modem/image/adsp.b04", "/system/etc/firmware/adsp.b04");
symlink("/firmware-modem/image/adsp.b05", "/system/etc/firmware/adsp.b05");
symlink("/firmware-modem/image/adsp.b06", "/system/etc/firmware/adsp.b06");
symlink("/firmware-modem/image/adsp.b08", "/system/etc/firmware/adsp.b08");
symlink("/firmware-modem/image/adsp.b09", "/system/etc/firmware/adsp.b09");
symlink("/firmware-modem/image/adsp.b10", "/system/etc/firmware/adsp.b10");
symlink("/firmware-modem/image/adsp.b11", "/system/etc/firmware/adsp.b11");
symlink("/firmware-modem/image/adsp.b12", "/system/etc/firmware/adsp.b12");
symlink("/firmware-modem/image/adsp.b13", "/system/etc/firmware/adsp.b13");
symlink("/firmware-modem/image/adsp.mdt", "/system/etc/firmware/adsp.mdt");
symlink("/firmware-modem/image/mba.b00", "/system/etc/firmware/mba.b00");
symlink("/firmware-modem/image/mba.mdt", "/system/etc/firmware/mba.mdt");
symlink("/firmware-modem/image/modem.b00", "/system/etc/firmware/modem.b00");
symlink("/firmware-modem/image/modem.b01", "/system/etc/firmware/modem.b01");
symlink("/firmware-modem/image/modem.b02", "/system/etc/firmware/modem.b02");
symlink("/firmware-modem/image/modem.b03", "/system/etc/firmware/modem.b03");
symlink("/firmware-modem/image/modem.b04", "/system/etc/firmware/modem.b04");
symlink("/firmware-modem/image/modem.b05", "/system/etc/firmware/modem.b05");
symlink("/firmware-modem/image/modem.b08", "/system/etc/firmware/modem.b08");
symlink("/firmware-modem/image/modem.b10", "/system/etc/firmware/modem.b10");
symlink("/firmware-modem/image/modem.b11", "/system/etc/firmware/modem.b11");
symlink("/firmware-modem/image/modem.b13", "/system/etc/firmware/modem.b13");
symlink("/firmware-modem/image/modem.b14", "/system/etc/firmware/modem.b14");
symlink("/firmware-modem/image/modem.b15", "/system/etc/firmware/modem.b15");
symlink("/firmware-modem/image/modem.b16", "/system/etc/firmware/modem.b16");
symlink("/firmware-modem/image/modem.b17", "/system/etc/firmware/modem.b17");
symlink("/firmware-modem/image/modem.b18", "/system/etc/firmware/modem.b18");
symlink("/firmware-modem/image/modem.b19", "/system/etc/firmware/modem.b19");
symlink("/firmware-modem/image/modem.b20", "/system/etc/firmware/modem.b20");
symlink("/firmware-modem/image/modem.b21", "/system/etc/firmware/modem.b21");
symlink("/firmware-modem/image/modem.b22", "/system/etc/firmware/modem.b22");
symlink("/firmware-modem/image/modem.b25", "/system/etc/firmware/modem.b25");
symlink("/firmware-modem/image/modem.b26", "/system/etc/firmware/modem.b26");
symlink("/firmware-modem/image/modem.b27", "/system/etc/firmware/modem.b27");
symlink("/firmware-modem/image/modem.mdt", "/system/etc/firmware/modem.mdt");
symlink("/firmware/image/dtcpip.b00", "/system/etc/firmware/dtcpip.b00");
symlink("/firmware/image/dtcpip.b01", "/system/etc/firmware/dtcpip.b01");
symlink("/firmware/image/dtcpip.b02", "/system/etc/firmware/dtcpip.b02");
symlink("/firmware/image/dtcpip.b03", "/system/etc/firmware/dtcpip.b03");
symlink("/firmware/image/dtcpip.mdt", "/system/etc/firmware/dtcpip.mdt");
symlink("/firmware/image/mc_v2.b00", "/system/etc/firmware/mc_v2.b00");
symlink("/firmware/image/mc_v2.b01", "/system/etc/firmware/mc_v2.b01");
symlink("/firmware/image/mc_v2.b02", "/system/etc/firmware/mc_v2.b02");
symlink("/firmware/image/mc_v2.b03", "/system/etc/firmware/mc_v2.b03");
symlink("/firmware/image/mc_v2.mdt", "/system/etc/firmware/mc_v2.mdt");
symlink("/firmware/image/playread.b00", "/system/etc/firmware/playread.b00");
symlink("/firmware/image/playread.b01", "/system/etc/firmware/playread.b01");
symlink("/firmware/image/playread.b02", "/system/etc/firmware/playread.b02");
symlink("/firmware/image/playread.b03", "/system/etc/firmware/playread.b03");
symlink("/firmware/image/playread.mdt", "/system/etc/firmware/playread.mdt");
symlink("/firmware/image/sec_stor.b00", "/system/etc/firmware/sec_stor.b00");
symlink("/firmware/image/sec_stor.b01", "/system/etc/firmware/sec_stor.b01");
symlink("/firmware/image/sec_stor.b02", "/system/etc/firmware/sec_stor.b02");
symlink("/firmware/image/sec_stor.b03", "/system/etc/firmware/sec_stor.b03");
symlink("/firmware/image/sec_stor.mdt", "/system/etc/firmware/sec_stor.mdt");
symlink("/firmware/image/skm.b00", "/system/etc/firmware/skm.b00");
symlink("/firmware/image/skm.b01", "/system/etc/firmware/skm.b01");
symlink("/firmware/image/skm.b02", "/system/etc/firmware/skm.b02");
symlink("/firmware/image/skm.b03", "/system/etc/firmware/skm.b03");
symlink("/firmware/image/skm.mdt", "/system/etc/firmware/skm.mdt");
symlink("/firmware/image/skmm_ta.b00", "/system/etc/firmware/skmm_ta.b00");
symlink("/firmware/image/skmm_ta.b01", "/system/etc/firmware/skmm_ta.b01");
symlink("/firmware/image/skmm_ta.b02", "/system/etc/firmware/skmm_ta.b02");
symlink("/firmware/image/skmm_ta.b03", "/system/etc/firmware/skmm_ta.b03");
symlink("/firmware/image/skmm_ta.mdt", "/system/etc/firmware/skmm_ta.mdt");
symlink("/firmware/image/sshdcpap.b00", "/system/etc/firmware/sshdcpap.b00");
symlink("/firmware/image/sshdcpap.b01", "/system/etc/firmware/sshdcpap.b01");
symlink("/firmware/image/sshdcpap.b02", "/system/etc/firmware/sshdcpap.b02");
symlink("/firmware/image/sshdcpap.b03", "/system/etc/firmware/sshdcpap.b03");
symlink("/firmware/image/sshdcpap.mdt", "/system/etc/firmware/sshdcpap.mdt");
symlink("/firmware/image/tima_atn.b00", "/system/etc/firmware/tima_atn.b00");
symlink("/firmware/image/tima_atn.b01", "/system/etc/firmware/tima_atn.b01");
symlink("/firmware/image/tima_atn.b02", "/system/etc/firmware/tima_atn.b02");
symlink("/firmware/image/tima_atn.b03", "/system/etc/firmware/tima_atn.b03");
symlink("/firmware/image/tima_atn.mdt", "/system/etc/firmware/tima_atn.mdt");
symlink("/firmware/image/tima_key.b00", "/system/etc/firmware/tima_key.b00");
symlink("/firmware/image/tima_key.b01", "/system/etc/firmware/tima_key.b01");
symlink("/firmware/image/tima_key.b02", "/system/etc/firmware/tima_key.b02");
symlink("/firmware/image/tima_key.b03", "/system/etc/firmware/tima_key.b03");
symlink("/firmware/image/tima_key.mdt", "/system/etc/firmware/tima_key.mdt");
symlink("/firmware/image/tima_lkm.b00", "/system/etc/firmware/tima_lkm.b00");
symlink("/firmware/image/tima_lkm.b01", "/system/etc/firmware/tima_lkm.b01");
symlink("/firmware/image/tima_lkm.b02", "/system/etc/firmware/tima_lkm.b02");
symlink("/firmware/image/tima_lkm.b03", "/system/etc/firmware/tima_lkm.b03");
symlink("/firmware/image/tima_lkm.mdt", "/system/etc/firmware/tima_lkm.mdt");
symlink("/firmware/image/tima_pkm.b00", "/system/etc/firmware/tima_pkm.b00");
symlink("/firmware/image/tima_pkm.b01", "/system/etc/firmware/tima_pkm.b01");
symlink("/firmware/image/tima_pkm.b02", "/system/etc/firmware/tima_pkm.b02");
symlink("/firmware/image/tima_pkm.b03", "/system/etc/firmware/tima_pkm.b03");
symlink("/firmware/image/tima_pkm.mdt", "/system/etc/firmware/tima_pkm.mdt");
symlink("/firmware/image/tzpr25.b00", "/system/etc/firmware/tzpr25.b00");
symlink("/firmware/image/tzpr25.b01", "/system/etc/firmware/tzpr25.b01");
symlink("/firmware/image/tzpr25.b02", "/system/etc/firmware/tzpr25.b02");
symlink("/firmware/image/tzpr25.b03", "/system/etc/firmware/tzpr25.b03");
symlink("/firmware/image/tzpr25.mdt", "/system/etc/firmware/tzpr25.mdt");
symlink("/firmware/image/venus.b00", "/system/etc/firmware/venus.b00");
symlink("/firmware/image/venus.b01", "/system/etc/firmware/venus.b01");
symlink("/firmware/image/venus.b02", "/system/etc/firmware/venus.b02");
symlink("/firmware/image/venus.b03", "/system/etc/firmware/venus.b03");
symlink("/firmware/image/venus.b04", "/system/etc/firmware/venus.b04");
symlink("/firmware/image/venus.mdt", "/system/etc/firmware/venus.mdt");
symlink("/firmware/image/widevine.b00", "/system/vendor/firmware/widevine.b00");
symlink("/firmware/image/widevine.b01", "/system/vendor/firmware/widevine.b01");
symlink("/firmware/image/widevine.b02", "/system/vendor/firmware/widevine.b02");
symlink("/firmware/image/widevine.b03", "/system/vendor/firmware/widevine.b03");
symlink("/firmware/image/widevine.mdt", "/system/vendor/firmware/widevine.mdt");"""
    info.script.AppendExtra(extra_links);

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def FullOTA_InstallEnd(info):
    CopyVariantFiles(info.input_zip, info.output_zip, info.script)
    RemoveDeviceAssert(info)
    WritePolicyConfig(info)
    RemoveCount(info)
    CreateSymlinks(info)
    Setmetadata(info)
    Writeboot(info)
	
def IncrementalOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
    UpdatePerm(info)
    RemoveCountonIncrementalOTA(info)
