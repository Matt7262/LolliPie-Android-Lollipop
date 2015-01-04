#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:7911424:06d59db65a8df22910cc4aaf36a70d5675fc7350; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7137280:47d9204bc8b2f7a546baa6e97cbbe7d454b06d81 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 06d59db65a8df22910cc4aaf36a70d5675fc7350 7911424 47d9204bc8b2f7a546baa6e97cbbe7d454b06d81:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
