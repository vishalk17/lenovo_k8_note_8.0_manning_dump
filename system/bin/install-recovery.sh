#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:14950096:86137388cf5b3ce3d89e09918dc4049c24f63fc0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:10804944:c2812e7f929d4259c6dba8827a9c83bf8eb25d5d EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery 86137388cf5b3ce3d89e09918dc4049c24f63fc0 14950096 c2812e7f929d4259c6dba8827a9c83bf8eb25d5d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
