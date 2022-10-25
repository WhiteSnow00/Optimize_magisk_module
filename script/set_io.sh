#!/system/bin/sh
loop=$(cat /sys/block/zram0/backing_dev | grep -o "loop[0-9]*")
    echo deadline > /sys/block/$loop/queue/scheduler
        echo 1024 > /sys/block/$loop/queue/read_ahead_kb
        echo 1024 > /sys/block/zram0/queue/read_ahead_kb
        echo 128 > /sys/block/sda/queue/read_ahead_kb
        echo 128 > /sys/block/sde/queue/read_ahead_kb
    echo 0 > /sys/module/subsystem_restart/parameters/enable_ramdumps
    echo 0 > /sys/module/subsystem_restart/parameters/enable_mini_ramdumps
