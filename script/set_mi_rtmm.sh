#!/system/bin/sh
    mi_rtmm=''
    if [[ -d '/d/rtmm' ]]; then
      mi_rtmm=/d/rtmm/reclaim
    elif [[ -d '/sys/kernel/mm/rtmm' ]]; then
      mi_rtmm='/sys/kernel/mm/rtmm'
    else
      return
    fi
    chmod 000 $mi_rtmm/reclaim/auto_reclaim 2>/dev/null
    chown root:root $mi_rtmm/reclaim/auto_reclaim 2>/dev/null
    chmod 000 $mi_rtmm/reclaim/global_reclaim 2>/dev/null
    chown root:root $mi_rtmm/reclaim/global_reclaim 2>/dev/null
    chmod 000 $mi_rtmm/reclaim/proc_reclaim 2>/dev/null
    chown root:root $mi_rtmm/reclaim/proc_reclaim 2>/dev/null
    chmod 000 $mi_rtmm/reclaim/kill 2>/dev/null
    chown root:root $mi_rtmm/reclaim/kill 2>/dev/null
    chown root:root $mi_rtmm/compact/compact_memory 2>/dev/null
