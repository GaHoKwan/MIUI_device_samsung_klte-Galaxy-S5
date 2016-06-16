#!/bin/bash

function unpack(){
  unpack_bootimg boot_klte.img boot_klte
  unpack_bootimg boot_kltebcm.img boot_kltebcm
  unpack_bootimg boot_kltechn.img boot_kltechn
  unpack_bootimg boot_kltejpn.img boot_kltejpn
}

function repack(){
  pack_bootimg boot_klte boot_klte.img
  pack_bootimg boot_kltebcm boot_kltebcm.img
  pack_bootimg boot_kltechn boot_kltechn.img
  pack_bootimg boot_kltejpn boot_kltejpn.img
  sleep 2
  echo 'SEANDROIDENFORCE' >>boot_klte.img
  echo 'SEANDROIDENFORCE' >>boot_kltebcm.img
  echo 'SEANDROIDENFORCE' >>boot_kltechn.img
  echo 'SEANDROIDENFORCE' >>boot_kltejpn.img
}

function update_ramdisk(){
  rm -rf boot_kltebcm/RAMDISK
  rm -rf boot_kltechn/RAMDISK
  rm -rf boot_kltejpn/RAMDISK
  cp -rf boot_klte/RAMDISK boot_kltebcm/
  cp -rf boot_klte/RAMDISK boot_kltechn/
  cp -rf boot_klte/RAMDISK boot_kltejpn/
}

if [ "$1" == "unpack" ]; then
  unpack
fi

if [ "$1" == "repack" ]; then
  repack
fi

if [ "$1" == "update_ramdisk" ]; then
  update_ramdisk
fi
