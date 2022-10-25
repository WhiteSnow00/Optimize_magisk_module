#!/vendor/bin/sh
busybox=/data/adb/magisk/busybox
if [[ -f $busybox ]]; then
  sm fstrim 2>/dev/null
  $busybox fstrim /data 2>/dev/null
  sm fstrim 2>/dev/null
fi
