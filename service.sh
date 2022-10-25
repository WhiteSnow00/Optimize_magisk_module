#!/system/bin/sh
MODDIR=${0%/*}
    sh $MODDIR/script/set_io.sh
    sh $MODDIR/script/set_cpu_affinity.sh
    sh $MODDIR/script/set_mi_rtmm.sh
    sh $MODDIR/script/opt_writeback.sh
    sh $MODDIR/script/opt_fstrim.sh
